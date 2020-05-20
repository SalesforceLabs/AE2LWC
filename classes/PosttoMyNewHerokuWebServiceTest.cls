/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */

@istest
public class PosttoMyNewHerokuWebServiceTest {
    static testMethod void  testPostRestService(){
        // Set mock callout class
        Test.setMock(HttpCalloutMock.class, new PosttoMyNewHerokuWebServiceTestMockImpl());

        // Call method to test.
        // This causes a fake response to be sent
        // from the class that implements HttpCalloutMock.
        String res = PosttoMyNewHerokuWebService.postAccounttoHerokuWS('CRM');
        //String contentType = res.getHeader('Content-Type');

        //System.assert(contentType == 'application/json');
        //String actualValue = res.getBody();
        String expectedValue = '{"example":"test"}';
        System.assertEquals(res, expectedValue);
        //System.assertEquals(200, res.getStatusCode());
    }
}