using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Fadein : MonoBehaviour {
	
	public Image blackscreen;
	// Use this for initialization
	void Start () {
		StartCoroutine(FadeImageToZeroAlpha(3f, blackscreen)); 
	}
	
	// Update is called once per frame
	void Update () {
		
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
}
