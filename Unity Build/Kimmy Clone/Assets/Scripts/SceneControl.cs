using System.Collections;
using System.Collections.Generic;
using System.Timers;
using UnityEngine.SceneManagement;
using UnityEngine;

public class SceneControl : MonoBehaviour
{


	public AudioSource music;
	
	// Use this for initialization
	void Start () {
		
	}
	
	// This code is for managing the play between scenes
	void Update () {
		Scene m_scene = SceneManager.GetActiveScene();
        
		// Checks for the WinCondition to be fufilled in the PlayerController Script
		if (m_scene.name == "Main Menu")
		{

			//if (Input.GetKeyDown(KeyCode.Space) && p.WinState)
			if (Input.anyKeyDown)
			{
				SceneManager.LoadScene(1);
			}
			
			if (Input.GetKeyDown(KeyCode.Escape))
			{
				Application.Quit();
			}
		}
		else
		{
			if (Input.GetKeyDown(KeyCode.Escape))
			{
				SceneManager.LoadScene(0);
			}
		}
	}
}
