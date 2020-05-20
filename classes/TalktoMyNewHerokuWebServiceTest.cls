// Copyright (c) 2020, salesforce.com, inc.
// All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause
// For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause

@isTest
private class TalktoMyNewHerokuWebServiceTest {
    
    @isTest static void TestTalktoMyNewHerokuWebService() {
   
        Test.setMock(HttpCalloutMock.class, new TalktoMyNewHerokuWebServiceMockImpl());
        string res  = TalktoMyNewHerokuWebService.getJobsFromHerokuWS('CRM', '/categories');
        String expectedValue = '{"example":"test"}';
    }
}