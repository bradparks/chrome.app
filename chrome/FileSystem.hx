package chrome;

typedef AcceptOption = {
	?mimeTypes : Array<String>,
	?extensions : Array<String>,
	?description : String
}

typedef ChooseEntryOptions = {
	?acceptsAllTypes : Bool,
	?accepts : Array<AcceptOption>,
	?suggestedName : string,
	?type : string,
}

@:native("chrome.fileSystem")
extern class FileSystem {
	static function getDisplayPath( fileentry : FileEntry, cb : String->Void ) : Void;
	static function getWritableEntry( fileentry : FileEntry, cb : FileEntry->Void ) : Void;
	static function isWritableEntry( fileentry : FileEntry, cb : Bool->Void ) : Void;
	static function chooseEntry( options : ChooseEntryOptions, cb : FileEntry->Void ) : Void;
}