Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89FAB786DDF
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 13:31:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E983C10E52A;
	Thu, 24 Aug 2023 11:31:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC60F10E52A;
 Thu, 24 Aug 2023 11:31:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692876715; x=1724412715;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=IQo405mN31zfPzKUs1T48W2vE7vZf7xDtnxoEAvst5Y=;
 b=WaQunepfX2NAKP1O/fAq1xVBgpzNVnUQoTfe6RcgEECTpO9xFZqidCaf
 7Z3Kk4676nf8yy49YM5q2VL0dvSy7TVKUqTqp334MK93LjvyUpxhCQSjx
 xCTU+0qPH2+/8lesvgaevfLQCgMq+dwDqmiceOMQzCQyeFQFEo1DB9rja
 AyaZ9EpZ+g73SfCEoB6d0581LthO+uQ5QANtH9Y5VdF15BekI8rYJU+8g
 8UTWY5Z33kPXc9frOuLr5SFWYrgrPysk3ESeGQfJYtdyedRIfyFYs0lEy
 N5aqkaQEDs5dQ/ur2WtHWsCCnfkUjmZBhD8QfOuPSJBSUzDUpqvQCdNC/ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="354743043"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="354743043"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 04:31:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="713939245"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="713939245"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga006.jf.intel.com with ESMTP; 24 Aug 2023 04:31:48 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 04:31:47 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 04:31:47 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 04:31:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N0XQU5ZKKCLc6i03H7ADTsth78/9HhEmY0CNjSLIJapRr5nYDiMWkBWZiDqfI4o+uMOru7JY5OEeutoX+3dATCHAQ9GMW1tTbgepWE044KNyzHz1SIqOSbTYg7QIFoIufjCXyjssJ24Wx/XvqiayULAYzr4X0Gq1zOvGTfxAaF7/GdZgvlOYrD4iYLrkesYRWIV8jhJ0GqKx4C63nTPCvNQ82pmo4VkryOjmldSjvCxXgiLffHpc9EoZ70DVdf50lidCR46qZ6eAoyDzdt/sS7W7UrC0HhlXGgn+z9nzjPuw+Vxs/Pb4zLP1aGKRTTbSwjS9h7eZpKNzeqckEG1lgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IQo405mN31zfPzKUs1T48W2vE7vZf7xDtnxoEAvst5Y=;
 b=nb6OHBX7p5MEDxviSsKyTtJuh9hlsx/mgOGGTbEryJRBMu+lOfuH/11qp2Iozwzy23u+T184pZOCKilzDXuqTK6TYSRP4ipRP7SY7W4ktYgK/Qih1eqyENHBKbZwVPYsSimgWf9H4z+dlwn2J9xpLUxPI4dE9ubCaQGvh3y4N2nG6pn8eCTcZ1NxS/yj9nSPHgxIo5nNoGpTFkJ3LIUmtssugmhMZquZxu4G+ReiSOEPhcieJ9DL7DHLoTP5pFsWflSt82gtfQfcUUBdjIOtAUVG+vDGMesrCU0dR7OFf8INs3fWxrY5Di9zRYUh+iLzFobDj4Wp5SXdJbfGWVQk5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7382.namprd11.prod.outlook.com (2603:10b6:8:131::13)
 by SJ0PR11MB5678.namprd11.prod.outlook.com (2603:10b6:a03:3b8::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Thu, 24 Aug
 2023 11:31:46 +0000
Received: from DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::9d00:cf05:efc7:246d]) by DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::9d00:cf05:efc7:246d%5]) with mapi id 15.20.6699.027; Thu, 24 Aug 2023
 11:31:45 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [Intel-xe] [PATCH 27/42] drm/i915/xe2lpd: Read pin
 assignment from IOM
Thread-Index: AQHZ1eSUOKwZZ7Zf4E6uUUEAM3DZs6/4VPyAgAD8WQA=
Date: Thu, 24 Aug 2023 11:31:45 +0000
Message-ID: <360724976ac1d6b8060a666fa51827fcbe2d500e.camel@intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-28-lucas.demarchi@intel.com>
 <20230823202833.GI1529860@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20230823202833.GI1529860@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.4-2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7382:EE_|SJ0PR11MB5678:EE_
x-ms-office365-filtering-correlation-id: 017bf7b1-37c1-48bb-5d25-08dba495b288
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 87nIxEVd+6CsSXEJCJOUs1/fkupqK6dNO8+v821hfISCxgq8FwXzJBhjhSOlMZG4usoyqOdj+0SwnuRbyU7Y2fRQm0QKXr+FSkCGh1sXmmEwLoNikb04Vt2S/kmrFPPiEpHWHIGNfgDfOpx/6SQ92e2P37M3jDfxLtx54b6PaCsUhNSxPWW9Bg0MeG1oNClKn/1dOQbvQARMD2i2XoYqhPkFwVlWZdA/iDfww03hjha8TP6am0vSOU2yC8YtXQzKRY///u1FM0WeTXezyj2Vj1eYUbZPWSt1TtYWhgKYoaUWb5dDwVkW93FSOfCv/kyQzm9Gqk5OxeFCFtrnAU5c3cwbi/Tpoefv0rM8prqPihIRzcFFFJjPxgN3QK6nEC13QW7nvFQ0FbByewcpoU0GDY3CcMCAX5l23H/sH7MxnFhHHEselXPHMmE3im41RzHnl8Yx8/SlFjQ4ce07Yuzta6O3/aJQqRLSz6QVs2MkLQtBqJtBd/fr58oAuT7Ycu8Nhr+B73eRabMk0QXyd9GFBthfScTXU4erVroEG6Xk4HNairyML+htBAfLUbPJ6lQRYjYwvFWmXSbmURhS6Lbt5u0YGINife4AhQ//dISvB8G1wXUx9vhmMuyJSNilcHcA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7382.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(366004)(346002)(136003)(39860400002)(396003)(1800799009)(186009)(451199024)(71200400001)(4326008)(8936002)(8676002)(6636002)(316002)(478600001)(66946007)(66556008)(110136005)(64756008)(66476007)(91956017)(66446008)(76116006)(54906003)(41300700001)(6486002)(6506007)(6512007)(122000001)(38100700002)(82960400001)(38070700005)(450100002)(36756003)(26005)(2906002)(86362001)(2616005)(5660300002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q3hqemFacDNnTm90VllvYzBFb3R5SVhENDZ3RWc0SnA2d2UvUGNzR21kNkdm?=
 =?utf-8?B?Q2hiR2FXMXVNQS8vZkp4QWZYYmZlNldYRkdJRVVjSnZPeTBxREcyV1ZhbUUr?=
 =?utf-8?B?VGkrY2FGR1VJcXBqSWxJdnh2VlNhWFB0VTRJSGxiVDQ1Vmd1Q2xGcTNOVzdx?=
 =?utf-8?B?QXZadllqQStWYlRnWmlIK1liVExqa3ptN2JvSDJMeU8vTHB3bFJCTmlFd1lz?=
 =?utf-8?B?bzBsMW91MVY5cHo5TDNFSUtvZUhLQVFiajRuSE10dTgxOUhaQ0Qza2xDUnRN?=
 =?utf-8?B?ZGJXdDhsYStrZGd4bGdYZXo5SnJpQ3EzTmg3bnZFdjhwS3hLWm9PQ1RKbWdF?=
 =?utf-8?B?MzArbEsyNWo4SzdpNTB1V1V1NXlmR1greDVtVCtLRjdiTWZCTmNzaDdYejJR?=
 =?utf-8?B?OWFnRWhKZWMwVmJOekFXYmF5dHlLb0lSaWttdlpTSHl2NUE1VjhoS0RSVkVs?=
 =?utf-8?B?aUltc0dMRGNlSjJ4cDRJVVdhK2JFcjV5eVg1ekg0SWJIdGJvdlBUb0I4V3lx?=
 =?utf-8?B?ZS8zRGtwY2VaV3p3WTFYL1FyM0ZPNVppNjI3MHhxUWNMZ0RKbEVGWjhoTGtS?=
 =?utf-8?B?Tk1HOFRoQnM2M1NBcjUrYllrc29tQm56NXNlR2hJVjF6ZWoyTWg4bVZkQTQr?=
 =?utf-8?B?em5iSHdES1F3NVkvbDFKS1p2a1FXMzEyV0RwbHp2MHMrRmJmZzRES2dTSUZZ?=
 =?utf-8?B?dGpmU1ZkVFAzY293VmFFVTlTeFJRQk8xVVdoaS93OWF0MWRmOXQ5ejZETTNW?=
 =?utf-8?B?MVpFSWpzYjJsczloZ2ZKWEdQR2lKUXZIVXkzbnFKS2Y5SURYYXk3RExITkY5?=
 =?utf-8?B?NzlpbUZvY09YWXJKaHRQbGdFTkVXbEkxcStYUnU3ZzEyeHdwQ3BSQUxUT1BJ?=
 =?utf-8?B?dklPc0lMQjFuUW9vWHkyOFlLelFnWkwySWI3SDlHL1VkdE9xWFhUT2ZGcExJ?=
 =?utf-8?B?Wm1Wb3BRVERTZlJtZGIvSTFyaWUxdWp0RW55UC9ISmhOcXdLcTRlRGVILytU?=
 =?utf-8?B?UjUzeTlneWN6MFdvNERpVVBwNDRVcW1mMEQvdld4WGo1Uk5ZSTZINDloblAz?=
 =?utf-8?B?U3ZvT1dac2RBL0FiYUZ6UGJhZXl5UTljblhxZnN1VHRmaWc3MEdpMUJNUWs3?=
 =?utf-8?B?YkVNS0lTSGJGd1d3VEVrbmljaVBwOUo1Y3Y0MzkrTFBoNnl1LytIdyt2LytK?=
 =?utf-8?B?ZUxrbVBJV2hNRlZPSUlpUzlqQll6dktsQmhOZGJlWDBrWDVKSE5pRGpBVmtx?=
 =?utf-8?B?QS8xVnd5MFVETkthN0ZaVWY3dmd3THpOUmRvKzRwOVhsemVYbmhsbEV2blI4?=
 =?utf-8?B?YjhRdHFBbEJ0YWY3ZE9ReG1qWHo5TUV4VXFEUFAvaEljaUJBdTZCenFWRVNZ?=
 =?utf-8?B?c3hPcWxPKzdtNnA2TmgxVjhxVWRUU1F0WXMvVWRkTE0zdHVwTDJIRTBHazlr?=
 =?utf-8?B?NXkwVnlyTnFBbFg4cGRXMjRlWVVOd2ZHaWRnSW5kM1J6MGhzNU9ScDVScm1M?=
 =?utf-8?B?aTNxV0ovdEJKWkZwN2E5dzd4NVBBcjRWT2NmMm50eVIzWUpLM3FpTHp1MUw3?=
 =?utf-8?B?cFFoa1ltaGxQM1B0WCtDODI2bEtVQzRCR0VLWHhKSUErQ2l6eC8wMHhsVGVw?=
 =?utf-8?B?cVVweFIxTU44L1BoSUh2cDJDa3RyRk5jREl1bE9OUkYvTjlPVHZ0TEo1Wllz?=
 =?utf-8?B?OFJSOFRLSE50RE9zNVNQRXZGMGlnNnZHTVFJbkErK0lWS0c5ZEJXUktqZTZU?=
 =?utf-8?B?V3Y4L3hDSk1zNVU1V2JhVlZaUjJkaTVRN1dmTXUwcjRsQzFWakQ1Y0xuSmdh?=
 =?utf-8?B?OTVOSm9WMmx4aWd5dW5DS1NUOVJCc09mMzRJekVtMGYzVTJTYlRXT1BTdStr?=
 =?utf-8?B?WC9iNm1SYjB1OXVZK1hHVTlRVDlLVHlkb2Z4WGM5RWFBQ3hMQVVHUnNwOWw2?=
 =?utf-8?B?aSt2RDY3NkErMUJDQnJ0VEZ5VjMyL250VExjUXJneHY5cGtZZXMxNDJoZzN6?=
 =?utf-8?B?SjVJWldVVytjeG55MUl5YnBvckVNalNlMWQvYmhGYTJsZWhtTzY1dkVVUkFt?=
 =?utf-8?B?SUNtNENhanIxNFdvNmkyRjhNWG8yWnEvampqZkprQTNvbWNnUkxlcDEwcUEz?=
 =?utf-8?B?ZmdTY29VUElzZU5TZXBLcTI2bU5TMUJ4Rno1UG5XU3VhY0VOYXFGbVM0ZnBq?=
 =?utf-8?B?cnc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <01CEEF83BC4AFB4D9920406581F6BBF9@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7382.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 017bf7b1-37c1-48bb-5d25-08dba495b288
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2023 11:31:45.5182 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7J+3OYMrfnNXr58/A4nbEvQbWwS+8nJb4xMZE54uugyy1LolyqrjXH53/FdZahkNr5pzbYQ/LJNroubNPuJSmhvrOkii5eE5zgQeiG7vbEg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5678
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 27/42] drm/i915/xe2lpd: Read pin
 assignment from IOM
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIzLTA4LTIzIGF0IDEzOjI4IC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBP
biBXZWQsIEF1ZyAyMywgMjAyMyBhdCAxMDowNzoyNUFNIC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkg
d3JvdGU6DQo+ID4gRnJvbTogTHVjYSBDb2VsaG8gPGx1Y2lhbm8uY29lbGhvQGludGVsLmNvbT4N
Cj4gPiANCj4gPiBTdGFydGluZyBmcm9tIGRpc3BsYXkgdmVyc2lvbiAyMCwgd2UgbmVlZCB0byBy
ZWFkIHRoZSBwaW4gYXNzaWdubWVudA0KPiA+IGZyb20gdGhlIElPTSBUQ1NTX0RESV9TVEFUVVMg
cmVnaXN0ZXIgaW5zdGVhZCBvZiByZWFkaW5nIGl0IGZyb20gdGhlDQo+ID4gRklBLg0KPiA+IA0K
PiA+IFdlIHVzZSB0aGUgcGluIGFzc2lnbm1lbnQgdG8gZGVjaWRlIHRoZSBtYXhpbXVtIGxhbmUg
Y291bnQuICBTbywgdG8NCj4gPiBzdXBwb3J0IHRoaXMgY2hhbmdlLCBhZGQgYSBuZXcgbG5sX3Rj
X3BvcnRfZ2V0X21heF9sYW5lX2NvdW50KCkgZnVuY3Rpb24NCj4gPiB0aGF0IHJlYWRzIGZyb20g
dGhlIFRDU1NfRERJX1NUQVRVUyByZWdpc3RlciBhbmQgZGVjaWRlcyB0aGUgbWF4aW11bQ0KPiA+
IGxhbmUgY291bnQgYmFzZWQgb24gdGhhdC4NCj4gPiANCj4gPiBCU3BlYzogNjk1OTQNCj4gPiBD
YzogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5
OiBMdWNhIENvZWxobyA8bHVjaWFuby5jb2VsaG9AaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYt
Ynk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPg0KPiA+IC0tLQ0K
PiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMgfCAyOCArKysrKysr
KysrKysrKysrKysrKysrKysrDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgg
ICAgICAgICB8ICAxICsNCj4gPiAgMiBmaWxlcyBjaGFuZ2VkLCAyOSBpbnNlcnRpb25zKCspDQo+
ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
dGMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiA+IGluZGV4
IDNjOTRiYmNiNTQ5Ny4uMzdiMGY4NTI5YjRmIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiA+IEBAIC0yOTAsNiArMjkwLDMxIEBAIHUzMiBpbnRl
bF90Y19wb3J0X2dldF9waW5fYXNzaWdubWVudF9tYXNrKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3Bv
cnQgKmRpZ19wb3J0KQ0KPiA+ICAJICAgICAgIERQX1BJTl9BU1NJR05NRU5UX1NISUZUKHRjLT5w
aHlfZmlhX2lkeCk7DQo+ID4gIH0NCj4gPiAgDQo+ID4gK3N0YXRpYyBpbnQgbG5sX3RjX3BvcnRf
Z2V0X21heF9sYW5lX2NvdW50KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KQ0K
PiA+ICt7DQo+ID4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoZGln
X3BvcnQtPmJhc2UuYmFzZS5kZXYpOw0KPiA+ICsJZW51bSB0Y19wb3J0IHRjX3BvcnQgPSBpbnRl
bF9wb3J0X3RvX3RjKGk5MTUsIGRpZ19wb3J0LT5iYXNlLnBvcnQpOw0KPiA+ICsJaW50ZWxfd2Fr
ZXJlZl90IHdha2VyZWY7DQo+ID4gKwl1MzIgdmFsLCBwaW5fYXNzaWdubWVudDsNCj4gPiArDQo+
ID4gKwl3aXRoX2ludGVsX2Rpc3BsYXlfcG93ZXIoaTkxNSwgUE9XRVJfRE9NQUlOX0RJU1BMQVlf
Q09SRSwgd2FrZXJlZikNCj4gDQo+IERvIHdlIG5lZWQgdGhpcz8gIEkgZG9uJ3QgdGhpbmsgUE9X
RVJfRE9NQUlOX0RJU1BMQVlfQ09SRSBoYXMgYmVlbiB0aWVkDQo+IHRvIGFueSBwb3dlciB3ZWxs
cyBzaW5jZSBWTFYvQ0hWLg0KPiANCj4gSG1tLCBpdCBsb29rcyBsaWtlIHdlIGFjdHVhbGx5IGdy
YWIgaXQgKGFuZCBldmVuIGFzc2VydCBpdCkgaW4gYSBidW5jaCBvZg0KPiBwbGFjZXMgb24gbW9k
ZXJuIHBsYXRmb3JtcyB0aGF0IGRvbid0IG1ha2Ugc2Vuc2UgdG8gbWUgc2luY2UgaXQgaXNuJ3QN
Cj4gdGllZCB0byBhbnl0aGluZy4NCj4gDQo+IEkgZ3Vlc3MgbGVhdmluZyB0aGlzIGhlcmUgZG9l
c24ndCBodXJ0IGFueXRoaW5nLCBhbHRob3VnaCB3ZSBtaWdodCB3YW50DQo+IHRvIGdvIGJhY2sg
YW5kIHRha2UgYW5vdGhlciBsb29rIGF0IHRoaXMgaW4gdGhlIGZ1dHVyZS4NCj4gDQo+IFJldmll
d2VkLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPg0KDQpUaGFua3Ms
IE1hdHQhIFlvdSBoYXZlIGEgZ29vZCBwb2ludCwgYnV0IGFzIHlvdSBzYWlkLCBtYXliZSB0aGlz
IHNob3VsZA0KYmUgcmV2aXNpdGVkIGluIGFsbCBvY2N1cnJlbmNlcyBhbmQgY2hhbmdlZCBpbiBv
bmUgZ28uICBJIGp1c3Qga2VwdCBpdA0KY29uc2lzdGVudCB3aXRoIG90aGVyIHVzYWdlLg0KDQot
LQ0KQ2hlZXJzLA0KTHVjYS4NCg==
