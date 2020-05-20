// Copyright (c) 2020, salesforce.com, inc.
// All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause
// For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause

@isTest
private class RapidApiCalloutTest {
    
    @isTest static void TestRapidApi() {
   
        Test.setMock(HttpCalloutMock.class, new RapidApiCalloutMockImpl());
        string res  = RapidApiCallout.ApiRequest('CRM');
        String expectedValue = '{"example":"test"}';
    }
}