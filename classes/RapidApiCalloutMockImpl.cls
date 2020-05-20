// Copyright (c) 2020, salesforce.com, inc.
// All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause
// For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause

global class RapidApiCalloutMockImpl implements HttpCalloutMock {
    global  HTTPResponse respond(HTTPRequest req){
//		System.assertEquals('callout:Yahoo_Finance/stock/v2/get-summary?symbol=CRM', req.getEndpoint());
        HttpResponse res = new HttpResponse();
        res.setHeader('Content-Type', 'application/json');
        res.setBody('{"example":"test"}');
        res.setStatusCode(200);
        return res;
    }

}