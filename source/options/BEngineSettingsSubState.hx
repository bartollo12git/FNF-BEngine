package options;

class BEngineSettingsSubState extends BaseOptionsMenu
{
	public function new()
	{
		title = Language.getPhrase('bengine_menu', 'BEngine Settings');
		rpcTitle = 'BEngine Settings Menu'; //for Discord Rich Presence

		var option:Option = new Option('Developer Mode', //Name
			'If checked, allows you to open developer menus.', //Description
			'devMode', //Save data variable name
			BOOL); //Variable type
		addOption(option);

		super();
	}

	function onChangeHitsoundVolume()
		FlxG.sound.play(Paths.sound('hitsound'), ClientPrefs.data.hitsoundVolume);

	function onChangeAutoPause()
		FlxG.autoPause = ClientPrefs.data.autoPause;
}
