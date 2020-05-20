// Copyright (c) 2020, salesforce.com, inc.
// All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause
// For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause

public class TalktoMyNewHerokuWebServiceMockImpl implements HttpCalloutMock{

    Public  HTTPResponse respond(HTTPRequest req){
        System.assertEquals('callout:LWC_Python_Heroku_Web_Service/getJobs/CRM/categories', req.getEndpoint());
       HttpResponse res = new HttpResponse();
       res.setHeader('Content-Type', 'application/json');
       res.setBody('{"example":"test"}');
       res.setStatusCode(200);
       return res;
   }
   
}