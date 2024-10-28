sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/candidatecreation/test/integration/FirstJourney',
		'ns/candidatecreation/test/integration/pages/CandidatesMain'
    ],
    function(JourneyRunner, opaJourney, CandidatesMain) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/candidatecreation') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCandidatesMain: CandidatesMain
                }
            },
            opaJourney.run
        );
    }
);