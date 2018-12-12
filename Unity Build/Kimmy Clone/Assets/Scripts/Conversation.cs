using System;
using UnityEngine;
using System.Collections;
using System.Net;
using System.Timers;
using Ink.Runtime;
using TMPro;
using UnityEngine.UI;

// We need to figure out the following
// (A) how to read the dialogue line by line, and have the variables and sprites update line by line


public class Conversation : MonoBehaviour
{
	
	/* Conditions */
	private int DanaSprite;
	private int KimmySprite;
	private int BlytheSprite;
	private int LindaSprite;
	private int JaneySprite;
	private int encounter;
	private int encounterTrue;
	private int speaking;
	private Boolean needChoices;
	
	/* Sprites */
	public Sprite[] DanaSprites = new Sprite[4];
	public Sprite[] KimmySprites = new Sprite[3];
	public Sprite[] BlytheSprites = new Sprite[3];
	public Sprite[] LindaSprites = new Sprite[3];
	public Sprite[] JaneySprites = new Sprite[3];
	
	/* Audio */
	public AudioClip[] Soundtrack = new AudioClip[9];
	public AudioSource deep; // background music, which changes depending on the scene
	public AudioSource beep; // beep for moving the game forward
	public AudioSource zeep; // beep for clicking important buttons
	
	/* Inky Fields */
	[SerializeField]
	private TextAsset inkAsset;
	private Story _inkStory;
	
	/* Canvas */
	[SerializeField]
	private Canvas canvas;
	[SerializeField]
	private float elementPadding;

	/* UI Prefabs */
	[SerializeField]
	private TextMeshProUGUI text;
	[SerializeField]
	private UnityEngine.UI.Text nameText;
	[SerializeField]
	private UnityEngine.UI.Button button;
	
	public SpriteRenderer Dana_sprite;
	public SpriteRenderer Kimmy_sprite;
	public SpriteRenderer Janey_sprite;
	public SpriteRenderer Blythe_sprite;
	public SpriteRenderer Linda_sprite;
	
	/* Fade In */
	public Image blackscreen;
	private float timer = 2.0f;
	
	/* Initializes the entire game */
	void Awake () {
		_inkStory = new Story (inkAsset.text);
		RemoveChildren();
		StartCoroutine(FadeImageToZeroAlpha(3f, blackscreen)); 
		GetText(0);
	}
	
	/* Core of the game's code */
	void Update ()
	{
			// This creates a small buffer timer so that the game doesn't just zip from text to text
			while (timer >= 0) { 
				timer -= Time.deltaTime;
				return;
			}
		
			// Moves things along if any key is pressed
			if (!Input.anyKeyDown) return;

			// Variable for formatting
			float offset = 0;
			
			// If the story can continue and a key has been pressed, clears the board, creates new text, and resets timer.
			if (_inkStory.canContinue) {
				RemoveChildren ();
				GetText(offset);
			}
			
			// Calls the CheckVariables method
			CheckVariables();
			EncounterDesign();
			
			// If there are choices and the the needChoices variable is set, then this will create the choices
			if(_inkStory.currentChoices.Count > 0 && needChoices) {
				for (int ii = 0; ii < _inkStory.currentChoices.Count; ++ii) {
					UnityEngine.UI.Button choice = Instantiate (button);
					choice.transform.SetParent (canvas.transform, false);
					choice.transform.Translate (new Vector2 (0, offset));

					TextMeshProUGUI choiceText = choice.GetComponentInChildren<TextMeshProUGUI> ();
					choiceText.text = _inkStory.currentChoices [ii].text;
					StartCoroutine(FadeImageToFullAlpha(2f, choice.image));
					StartCoroutine(FadeTextToFullAlpha(2f, choice.GetComponentInChildren<TextMeshProUGUI>()));
					UnityEngine.UI.HorizontalLayoutGroup layoutGroup = choice.GetComponent <UnityEngine.UI.HorizontalLayoutGroup> ();

					int choiceId = ii;
					choice.onClick.AddListener(delegate{ChoiceSelected(choiceId);});

					offset -= (choiceText.fontSize + layoutGroup.padding.top + layoutGroup.padding.bottom + elementPadding);
					
				}
				timer = 1.0f;
				needChoices = false;
			}
	}
	
	/* UI Clearer */
	void RemoveChildren () {
		int childCount = canvas.transform.childCount;

		
		for (int i = childCount - 1; i >= 0; --i)
		{
			GameObject.Destroy(canvas.transform.GetChild (i).gameObject);
		}
		 needChoices = true;
	}

	public void ChoiceSelected (int id)
	{
		Debug.Log("Choice selected");
		zeep.Play();
		_inkStory.ChooseChoiceIndex (id);
		RemoveChildren();
		GetText(0);
	}
	
	void GetText (float f) {
		beep.Play();
		TextMeshProUGUI storyText = Instantiate (text);
		storyText.text = _inkStory.Continue ();
		storyText.transform.SetParent (canvas.transform, false);
		storyText.transform.Translate (new Vector2 (0, f));
		f -= (storyText.fontSize + elementPadding);
		StartCoroutine(FadeTextToFullAlpha(2f, storyText));
		CheckVariables();
	}

	// This code will be called as the story is progressing in order to assign variables their proper values so that the right sprites are being utilized
	void CheckVariables()
	{
		DanaSprite = (int) _inkStory.variablesState["dana"];
		KimmySprite = (int) _inkStory.variablesState["kimmy"];
		BlytheSprite = (int) _inkStory.variablesState["blythe"];
		LindaSprite = (int) _inkStory.variablesState["linda"];
		JaneySprite = (int) _inkStory.variablesState["janey"];
		encounter = (int) _inkStory.variablesState["encounter"];
		encounterTrue = (int) _inkStory.variablesState["encounterchange"];
		speaking = (int) _inkStory.variablesState["speak"];
		ApplyVariables();
		EncounterDesign();
	}

	// This code will apply changes to the world depending on what the varibles are
	void ApplyVariables()
	{
		Dana_sprite.sprite = DanaSprites[DanaSprite];
		Kimmy_sprite.sprite = KimmySprites[KimmySprite];
		Janey_sprite.sprite = JaneySprites[JaneySprite];
		Blythe_sprite.sprite = BlytheSprites[BlytheSprite];
		Linda_sprite.sprite = LindaSprites[LindaSprite];
		Speaking();
	}

	// This code is going to apply conditions to the text and the sprites depending on which character is currently speaking
	void Speaking()
	{
		float offset = 0;
		
		if (speaking == 0)
		{
			UnityEngine.UI.Text nameTextText = Instantiate (nameText);
			nameTextText.text = "Dana";
			nameTextText.transform.SetParent (canvas.transform, false);
			nameTextText.transform.Translate (new Vector2 (0, offset));
			nameTextText.color = Color.blue;
			GameObject.Find("Dana").GetComponent<Animation>().Play();
			StartCoroutine(FadeTextVToFullAlpha(2f, nameTextText));
		}
		else if (speaking == 1)
		{
			UnityEngine.UI.Text nameTextText = Instantiate (nameText);
			nameTextText.text = "Kimmy";
			nameTextText.transform.SetParent (canvas.transform, false);
			nameTextText.transform.Translate (new Vector2 (0, offset));
			nameTextText.color = Color.magenta;
			GameObject.Find("Kimmy").GetComponent<Animation>().Play();
			StartCoroutine(FadeTextVToFullAlpha(2f, nameTextText));
		}
		else if (speaking == 2)
		{
			UnityEngine.UI.Text nameTextText = Instantiate (nameText);
			nameTextText.text = "Blythe";
			nameTextText.transform.SetParent (canvas.transform, false);
			nameTextText.transform.Translate (new Vector2 (0, offset));
			GameObject.Find("Blythe").GetComponent<Animation>().Play();
			StartCoroutine(FadeTextVToFullAlpha(2f, nameTextText));
			nameTextText.color = Color.red;
		}
		else if (speaking == 3)
		{
			UnityEngine.UI.Text nameTextText = Instantiate (nameText);
			nameTextText.text = "Janey";
			nameTextText.transform.SetParent (canvas.transform, false);
			nameTextText.transform.Translate (new Vector2 (0, offset));
			GameObject.Find("Janey").GetComponent<Animation>().Play();
			StartCoroutine(FadeTextVToFullAlpha(2f, nameTextText));
			nameTextText.color = Color.green;
		}
		else if (speaking == 4)
		{
			UnityEngine.UI.Text nameTextText = Instantiate (nameText);
			nameTextText.text = "Linda";
			nameTextText.transform.SetParent (canvas.transform, false);
			nameTextText.transform.Translate (new Vector2 (0, offset));
			GameObject.Find("Linda").GetComponent<Animation>().Play();
			StartCoroutine(FadeTextVToFullAlpha(2f, nameTextText));
			nameTextText.color = Color.grey;
		}
		else if (speaking == 5)
		{
			UnityEngine.UI.Text nameTextText = Instantiate (nameText);
			nameTextText.text = "The Playground";
			nameTextText.transform.SetParent (canvas.transform, false);
			nameTextText.transform.Translate (new Vector2 (0, offset));
			StartCoroutine(FadeTextVToFullAlpha(2f, nameTextText));
			nameTextText.color = Color.black;
		}
	}
	
	// This code is going to change conditions of the game (music) to suit the current scene
	void EncounterDesign()
	{
		if (encounterTrue==0)
		{
			deep.clip = Soundtrack[encounter];
			deep.Play();
		}
	}
	
	/* Methods for fadeouts */ 
	private IEnumerator FadeTextToFullAlpha(float t, TextMeshProUGUI i)
	{
		i.color = new Color(i.color.r, i.color.g, i.color.b, 0);
		while (i.color.a < 1.0f && i != null)
		{
			i.color = new Color(i.color.r, i.color.g, i.color.b, i.color.a + (Time.deltaTime / t));
			yield return null;
		}
	}
	private IEnumerator FadeImageToFullAlpha(float t, Image i)
	{

			i.color = new Color(i.color.r, i.color.g, i.color.b, 0);
			while (i.color.a < 1.0f && i != null)
			{
				i.color = new Color(i.color.r, i.color.g, i.color.b, i.color.a + (Time.deltaTime / t));
				yield return null;
			}

	}
	private IEnumerator FadeTextVToFullAlpha(float t, Text i)
	{

			i.color = new Color(i.color.r, i.color.g, i.color.b, 0);
			while (i.color.a < 1.0f && i != null)
			{
				i.color = new Color(i.color.r, i.color.g, i.color.b, i.color.a + (Time.deltaTime / t));
				yield return null;
			}
		
	}
	private IEnumerator FadeImageToZeroAlpha(float t, Image i)
	{
		i.color = new Color(i.color.r, i.color.g, i.color.b, 1);
		while (i.color.a > 0.0f && i != null)
		{
			i.color = new Color(i.color.r, i.color.g, i.color.b, i.color.a - (Time.deltaTime / t));
			yield return null;
		}
	}
	public IEnumerator FadeTextToZeroAlpha(float t, TextMeshProUGUI i)
	{
		i.color = new Color(i.color.r, i.color.g, i.color.b, 1);
		while (i.color.a > 0.0f && i != null)
		{
			i.color = new Color(i.color.r, i.color.g, i.color.b, i.color.a - (Time.deltaTime / t));
			yield return null;
		}
	}
}