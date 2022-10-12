function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an desviation note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Spike Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'SpikeNOTE_assets'); --Change texture
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
		end
	end
	--debugPrint('Script started!')
	function goodNoteHit(id, i, noteType, isSustainNote)
		if noteType == 'Spike Note' then
			setProperty('health', -500);
		characterPlayAnim('boyfriend', 'hurt', true);

	end
end
end

function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Spike Note' then
		characterPlayAnim('boyfriend', 'dodge', true);
	end
end