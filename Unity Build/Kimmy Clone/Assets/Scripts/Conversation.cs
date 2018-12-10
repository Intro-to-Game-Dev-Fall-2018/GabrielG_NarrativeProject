using UnityEngine;
using System.Collections;
using Ink.Runtime;
using TMPro;

// We need to figure out the following
// (A) how to read the dialogue line by line, and have the variables and sprites update line by line


public class Conversation : MonoBehaviour
{
	
	// All the variables for keeping track of sprites and who is speaking
	private int DanaSprite;
	private int KimmySprite;
	private int BlytheSprite;
	private int LindaSprite;
	private int JaneySprite;
	private int encounter;
	private int encounterTrue;
	private int speaking;
	
	// All the arrays where the actual sprites will be stored
	public Sprite[] DanaSprites = new Sprite[4];
	public Sprite[] KimmySprites = new Sprite[3];
	public Sprite[] BlytheSprites = new Sprite[3];
	public Sprite[] LindaSprites = new Sprite[3];
	public Sprite[] JaneySprites = new Sprite[3];
	public AudioClip[] Soundtrack = new AudioClip[9];
	public AudioSource deep;
	
	[SerializeField]
	private AudioSource beep;
	
	[SerializeField]
	private TextAsset inkAsset;
	private Story _inkStory;
	private bool storyNeeded;

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
	[SerializeField]
	private SpriteRenderer Dana_sprite;
	[SerializeField]
	private SpriteRenderer Kimmy_sprite;
	[SerializeField]
	private SpriteRenderer Janey_sprite;
	[SerializeField]
	private SpriteRenderer Blythe_sprite;
	[SerializeField]
	private SpriteRenderer Linda_sprite;

	void Awake () {
		_inkStory = new Story (inkAsset.text);
		storyNeeded = true;
	}

	// Update is called once per frame
	void Update () {
		
		if (storyNeeded == true) {
			RemoveChildren ();

			float offset = 0;
			while (_inkStory.canContinue) {
				TextMeshProUGUI storyText = Instantiate (text);
				storyText.text = _inkStory.Continue ();
				storyText.transform.SetParent (canvas.transform, false);
				storyText.transform.Translate (new Vector2 (0, offset));
				offset -= (storyText.fontSize + elementPadding);
			}
			
			CheckVariables();
			EncounterDesign();
			if(_inkStory.currentChoices.Count > 0) {
				for (int ii = 0; ii < _inkStory.currentChoices.Count; ++ii) {
					UnityEngine.UI.Button choice = Instantiate (button) as UnityEngine.UI.Button;
					choice.transform.SetParent (canvas.transform, false);
					choice.transform.Translate (new Vector2 (0, offset));

					UnityEngine.UI.Text choiceText = choice.GetComponentInChildren<UnityEngine.UI.Text> ();
					choiceText.text = _inkStory.currentChoices [ii].text;

					UnityEngine.UI.HorizontalLayoutGroup layoutGroup = choice.GetComponent <UnityEngine.UI.HorizontalLayoutGroup> ();

					int choiceId = ii;
					choice.onClick.AddListener(delegate{ChoiceSelected(choiceId);});

					offset -= (choiceText.fontSize + layoutGroup.padding.top + layoutGroup.padding.bottom + elementPadding);
				}
			}
			

			storyNeeded = false;
		}
	}

	void RemoveChildren () {
		int childCount = canvas.transform.childCount;
		for (int i = childCount - 1; i >= 0; --i) {
			GameObject.Destroy (canvas.transform.GetChild (i).gameObject);
		}
	}

	public void ChoiceSelected (int id) {
		beep.Play();
		_inkStory.ChooseChoiceIndex (id);
		storyNeeded = true;
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
		}
		else if (speaking == 1)
		{
			UnityEngine.UI.Text nameTextText = Instantiate (nameText);
			nameTextText.text = "Kimmy";
			nameTextText.transform.SetParent (canvas.transform, false);
			nameTextText.transform.Translate (new Vector2 (0, offset));
		}
		else if (speaking == 2)
		{
			UnityEngine.UI.Text nameTextText = Instantiate (nameText);
			nameTextText.text = "Blythe";
			nameTextText.transform.SetParent (canvas.transform, false);
			nameTextText.transform.Translate (new Vector2 (0, offset));
		}
		else if (speaking == 3)
		{
			UnityEngine.UI.Text nameTextText = Instantiate (nameText);
			nameTextText.text = "Janey";
			nameTextText.transform.SetParent (canvas.transform, false);
			nameTextText.transform.Translate (new Vector2 (0, offset));
		}
		else if (speaking == 4)
		{
			UnityEngine.UI.Text nameTextText = Instantiate (nameText);
			nameTextText.text = "Linda";
			nameTextText.transform.SetParent (canvas.transform, false);
			nameTextText.transform.Translate (new Vector2 (0, offset));
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
	
}