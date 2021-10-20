Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F4B4355CF
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Oct 2021 00:18:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B047D6E3E5;
	Wed, 20 Oct 2021 22:18:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ACFD6E3E5
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Oct 2021 22:18:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10143"; a="252386020"
X-IronPort-AV: E=Sophos;i="5.87,167,1631602800"; d="scan'208";a="252386020"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2021 15:18:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,167,1631602800"; d="scan'208";a="533092132"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga008.fm.intel.com with ESMTP; 20 Oct 2021 15:18:24 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 20 Oct 2021 15:18:23 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 20 Oct 2021 15:18:23 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 20 Oct 2021 15:18:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M5yblFst+g0CvCTcEnM9Pk5dh5eb+GjEpg1iYHltkehGUvFtRBGMf6eH4kCkqfh7zBfj30YcS0PfdKfiaBM46dZ+SH/b8fU1ZDfZyv9d9xRVZpClGM80V34YHZqKafRiVf+lSZwvlCki5q0zBpDUEP0zYZSG2eLbewT4dsvuNJXMdE+/sXRmpcFJe4p4QojuTKAX5F0PJ1UzW4/ZpNdq05fE5KO8P4I6Itu1Bus5XrZCzYiAydp4haDwyyoQtMErtAEW0K1PnuCRiDNMswq0UQUkzxYOSdB6Aq9PM99TiJ9NymIs4hWhfFoV+wxy5Zw18CaaVoF9sVGTDSK3unqkrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LhwfqJ5VJF2EyMig569eM3R4Jw3YS1PwBLlJfexKAYI=;
 b=fSVC6Ar2U4zUpB6UGvMZxiwp9ZS4UxwsBuWtPWaBbgy8cUc89sVfvNdaEZWdehfCrrs4pX0oty909XA2TE4Azj4fQ0yg5F4Ch0R6fMnmJGdKduczlKFssRiCopfAsCmSkZHSVr1mhw+vXwqIcOQYjHh9g7D+DDeuMj1f5Z83D1KjYRWeATVGv2d3XECOqEL857uc/atPH0jv5gYJBTU2vEqaLleLKMDvBWZiKGK1PZAdVG2oCc8EfPZiJUqHO4wmbXev/TrRL21WTT/Eodf5hzB3yLsyLdenvJM1egdBABePyMuJPKF6FT/M1Y/9ZBdjuVQzmR0XgmfTUc5xnU4Ahw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LhwfqJ5VJF2EyMig569eM3R4Jw3YS1PwBLlJfexKAYI=;
 b=AiWsIsRmaTBly7BYUzG72xrzbVrzt3XYakk3lOLiEDocAdUtlYlrmm86QfWRAGyOIfTn+2ARLolFe252KsbF1TwVaIEtkinDW4iRjG9IItb9nsflEZpB/cUAmMj5hVD/Xf+gC4WJos+ZjYW8khx9TAdoIk4qPaD6gp0iGPv9vwU=
Received: from MW3PR11MB4620.namprd11.prod.outlook.com (2603:10b6:303:54::14)
 by MWHPR11MB1744.namprd11.prod.outlook.com (2603:10b6:300:10e::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.16; Wed, 20 Oct
 2021 22:18:19 +0000
Received: from MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::7d39:e768:f48d:5d20]) by MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::7d39:e768:f48d:5d20%9]) with mapi id 15.20.4608.018; Wed, 20 Oct 2021
 22:18:19 +0000
From: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>, "Navare, Manasi D"
 <manasi.d.navare@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dp: Add missing TPS4 programming
 bits
Thread-Index: AQHXfPmH1cyJMiQJSU+8YBpoDLNKjavaxZGAgAAChICAAj7KAA==
Date: Wed, 20 Oct 2021 22:18:19 +0000
Message-ID: <5baef710b9ef65b0f62b75538fa57b2bb797f03e.camel@intel.com>
References: <20210719235927.283173-1-khaled.almahallawy@intel.com>
 <87bl3lqljk.fsf@intel.com> <YW6zi+fooHa+IG4r@intel.com>
In-Reply-To: <YW6zi+fooHa+IG4r@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8c4bc5b8-1bf1-4b52-7ee3-08d9941785ae
x-ms-traffictypediagnostic: MWHPR11MB1744:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <MWHPR11MB1744AB42D4AA626F997F071589BE9@MWHPR11MB1744.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Tm+s1HrXQVMkCgCPc2KszoFOz0J7vzUgjUTlmF4WqKmHV6s7vfC7iYfLLTtZAmtRObbGyQqsZ5cLqlSrRC3JOFcHkIas1LK2oe24bCYwarzue6DJrf3cJGArK4UsVEdGC75y8rH3K6NBD4ecc2gQxWBJVuIhDdT4MnnhCDkQpWF3CCAy3/jGNoLTvllcVADmtPzJ8mS8xKi1utKgg5xBf3GaC7kwfvbwvDxcWhg35Kto/8spgr0GkPw9QsE0414V5w4R7BU2dJvdIiXYq9sf6khBH4Ya/4JWhKQoN+257cMpSvnf5f5W1fim3apIFVXpIxvXRf4HG/i+s2YXJbq9GltsE49MXP0CtUYPGk9ucv2qvBRvrQBEeCWR1ieRFBO9H3a3E/jbEs1veZfiClRMjTHJf6Jcp3ko8LHyTOfqI66+SdZdEaZiwh7GIw7/GTbOrfPqyXWq9+uUn2AV0q25w7v2D5RJ09tCHeNxXbE6lFmhv100hMZuMVdkiiKe0jMmdK2LUvVqUJeC7xE0UigZKTlqYQfHvEzlOT06mIzDlugPXhoif3MmF2600Fo8vbDIIjaVpy2e4nxztJG2F/U2r0EkSytjCbHU0Wb0EhvmtMGBOVRSx8fGl81OtMSU+Vcmr8BTUEJdi6UEZ12BRfLMzXXQSuVS+68ZanH/6jtlwKPljSG8ZLaey/k+MAvdLcQMwrsso1jmr26X1tzR04GNsw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4620.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(2906002)(66574015)(8676002)(83380400001)(5660300002)(186003)(82960400001)(8936002)(4001150100001)(36756003)(122000001)(66446008)(66556008)(64756008)(6512007)(6506007)(66946007)(508600001)(71200400001)(86362001)(4326008)(76116006)(6486002)(316002)(2616005)(66476007)(26005)(54906003)(110136005)(38070700005)(38100700002)(966005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?K09YNGduT21adnBNUEs4WmRaUXJ6OTZXd2RYSkZXa3RadEpoSDc5ZnYxZmg4?=
 =?utf-8?B?VlNRVjlZUStKcTVNVzJPQ0RldEFxaEZDS2ZKeDlZWmRCbHpUUWxUTENZcWNu?=
 =?utf-8?B?WU4rR0dnUmo5aUJVWXQ1RXh1b2NTbjFmelZNZzRLQWNFUURWaEVxdWJhNUJT?=
 =?utf-8?B?WXJva2x5eEZKQmVZS2ZaOFBEekZMdlR1MU1EYnU4Mll1VlB5YXdsNDlhR3J2?=
 =?utf-8?B?OGQ5c09FQWE2a25jRzlCREVjcjFZWWNQdmlScGJMcW1BSGZEQmhUOXBrdGRo?=
 =?utf-8?B?TlJzaFY5MTc1cS94cFVXa1hGV3Z5eWRPN3VlSmZubjRkYUdybkltMUFDQ3c5?=
 =?utf-8?B?dTJUOTZMZlUvdUJucHF4YmhTQ0pCZXU4TWs5N0U1Q294a1hIZG5kTWtLOTVo?=
 =?utf-8?B?MXErclNSV3RKNlIrQ0tVblR0TjQxUEpkc2ZvMk80S0Q2RlJMNkdkVkxVRkw0?=
 =?utf-8?B?c0lLelM5YnF5ZjJ4bkpBVmlUTWRNZTdwa2plTG9lY200QTV3Z2NJeUZuTWJa?=
 =?utf-8?B?NUg2a0JoMTd6anZnS1RneUtnb2J1QmFsc1RWc2JxVUpidXR2RzdFVGxicHhJ?=
 =?utf-8?B?WEFlbndPOUM5c2ZKYWxuSW5NTTQrTmp4NVVQbXNUZ3QxbnFPK2tQWVBkaDdu?=
 =?utf-8?B?d2huTHBMZlh1c1JmQnFQaHZrcUZVWkRvOGg5Ris1OHdEcVhpK3VnVXJpSjRT?=
 =?utf-8?B?aFdKRXJGZE9XN0VaRmRRc3ZtV2ttSXlhL2s3QXk2WmVMOWpnZUlJSEpXa01K?=
 =?utf-8?B?Q0F2citEeVU3OU1UYjVQUHBSODlrQmE4WGJlMHZCQkFjbVduUm1jVHdLcmtV?=
 =?utf-8?B?Y0JaVkY3YndwclJ5T2FnWERBREU3WkZnRVAwUUM0azJxcG9lUGI3cGpjQk9H?=
 =?utf-8?B?eWxVc1M1T3NQZXRNeEFHUk1ESzlUOWdKckVYVkQ1a2RGZVkyM0t3U0xxdEZ6?=
 =?utf-8?B?WlJsemNQb3Q3ak1ZT2toZXJ4WkhZWnNRNjBvQ3crT3hCZnRVSVVEZXNQeHBs?=
 =?utf-8?B?T2ZJQnFuTllPQUlmb3JONk9JSHFXNjFxZHl0VUV1bW0xVmJOdWtubXhnZmJC?=
 =?utf-8?B?eXlJRUpjZSs0QmNDRjFLaXhuUVBpNWxRWFNPNkRqSHRoVDlPTEJ1OTBSVEcx?=
 =?utf-8?B?MnVxVGowd3lGbnpvYmhnVlNPRXBLRkgySGF6eDBVbVlsb3FQbWlMSHFKc21W?=
 =?utf-8?B?SnJicmxuUmtBMkl2KzZ6MWFMenVLdXhsSHQzaTZ5ZXBtRkJ6WEI0SmptTUxr?=
 =?utf-8?B?T3NxNjZFb1F1UHFIb2lRNnk0b0VSdGVNeU9HN1N4WThkVEc5MUhDN1BFQUQv?=
 =?utf-8?B?SVplbDRvZEVDcVRIRVI0VHVUdU02ZGhsSHA3b01VRThRQXYwMWp3QUxQTzlU?=
 =?utf-8?B?N3VaWmRENys3V0tZNmFFRlRGNXRhNGNQZ2NkOEhicDYxMnlZS2E2eUdUekVE?=
 =?utf-8?B?MmhNYVI2OFQrK0NOUDJxbVd2NmxGbWtwRWF6dTJvUjREZ2FpNDVpeXN0V1cr?=
 =?utf-8?B?dEFLYzVGMHIxeXpkNUFLNUZXaDd5bDNJcHBIaFBtNDRUSlViZmNXQWFSc0sw?=
 =?utf-8?B?cERPQTdmaThjRjBsTEllcmlkWlBLL0tLdVlnTWdQOWFQTFhWTHgyR2pzdWg4?=
 =?utf-8?B?VE1vZ3FDZUd5bFZwZ2ZPN050bGZ0bm92bVRDVFBVc2NGUmdaSUJOaXZ6dmto?=
 =?utf-8?B?NHFYYkQxeU1QOWxwUm9MMTM4VnZqKytkSUdsdXl3ZmRrQldjcEdYU1Y2aDF3?=
 =?utf-8?B?eGFFTCsxdjZWaXhnd0tSTW1vTGtqRUhqdHdFWUtEVE4wdVBPV3BZTmoyMnE5?=
 =?utf-8?B?dmZGaGdhVEVRZGgrMmhDdz09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <179584F9A7A38F40958E1DA5E0820313@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4620.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c4bc5b8-1bf1-4b52-7ee3-08d9941785ae
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Oct 2021 22:18:19.6942 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: khaled.almahallawy@intel.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1744
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: Add missing TPS4 programming
 bits
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIxLTEwLTE5IGF0IDE1OjAxICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFR1ZSwgT2N0IDE5LCAyMDIxIGF0IDAyOjUyOjE1UE0gKzAzMDAsIEphbmkgTmlrdWxh
IHdyb3RlOg0KPiA+IE9uIE1vbiwgMTkgSnVsIDIwMjEsIEtoYWxlZCBBbG1haGFsbGF3eSA8DQo+
ID4ga2hhbGVkLmFsbWFoYWxsYXd5QGludGVsLmNvbT4gd3JvdGU6DQo+ID4gPiBCaXRzIDIwOjE5
IGFyZSB1c2VkIHRvIHNldCBDUDI1MjAgUGF0dGVybnMgMS8yLzMgKHJlZmVyIHRvDQo+ID4gPiBT
cGVjczo1MDQ4NCkuDQo+ID4gPiBUUFM0IGlzIENQMjUyMCBQYXR0ZXJuIDMgKHJlZmVyIHRvIERQ
Mi4wIHNwYWNlcyBUYWJsZSAzLTExLCBEUENEDQo+ID4gPiAwMDI0OGgNCj4gPiA+IExJTktfUVVB
TF9QQVRURVJOX1NFTEVDVCwgYW5kIERQIFBIWSAxLjQgQ1RTIC0gQXBwZW5kaXggQSAtDQo+ID4g
PiBDb21wbGlhbmNlDQo+ID4gPiBFWUUgUGF0dGVybihDUDI1MjA7IE5vcm1hdGl2ZSkpDQo+ID4g
PiANCj4gPiA+IEZvciBUUFM0LCBzZXR0aW5nIGJpdHMgMjA6MTkgdG8gdmFsdWUgIT0gMDBiLCBs
ZWFkcyB0byBhIG5vbi1UUFM0IA0KPiA+ID4gcGF0dGVybi4NCj4gPiA+IFRoaXMgaXMgY29uZmly
bWVkIHVzaW5nIERQIFNjb3BlIHJ1bm5pbmcgRFAxLjQgUEhZIENUUy4NCj4gPiA+IA0KPiA+ID4g
VG8gYXZvaWQgYW55IGFjY2lkZW50YWwgd3Jvbmcgc2V0dGluZyBvZiBiaXRzIDIwOjE5LCBzZXQg
aXQNCj4gPiA+IGNvcnJlY3RseSBmb3INCj4gPiA+IFRQUzQgTFQgcGF0dGVybiBzZWxlY3Rpb24u
IFRoaXMgcHJvZ3JhbW1pbmcgc2VxdWVuY2UgaXMgdGhlIHNhbWUNCj4gPiA+IHVzZWQgYnkgRVYu
DQo+ID4gDQo+ID4gRG8gd2UgbmVlZCB0aGlzPw0KPiANCj4gSSB0aGluayB3aGF0IHdlIG5lZWQg
aXMgc29tZSBwbGFjZSB0byBpbml0aWFsaXplIERQX1RQX0NUTCBmdWxseS4NCj4gUmlnaHQgbm93
IGl0IHNlZW1zIHRvIGJlIGp1c3QgYWxsIFJNVy4NCg0KVGhlICBpbnRlbnRpb24gZm9yIHRoaXMg
cGF0Y2ggaXMgdG8gY2FsbCDigJxpbnRlbF9kcC0+c2V0X2xpbmtfdHJhaW7igJ0NCmluc2lkZSDi
gJxpbnRlbF9kcF9waHlfcGF0dGVybl91cGRhdGXigJ0gd2hlbiBhZGRpbmcgQ1AyNTIwX1BBVDMv
VFBTNA0KaW5zdGVhZCBvZiBmb2xsb3dpbmcgdGhpcyBhcHByb2FjaDogDQpodHRwczovL3BhdGNo
d29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvMzc4NTIyLyANCiANClVuZm9ydHVuYXRlbHksIHRo
ZSBvbmx5IHdheSB0byBzZXQgVFBTNCBpcyB0aHJvdWdoIERQX1RQX0NUTCB1bmxpa2UgdGhlDQpy
ZXN0IG9mIFBIWSB0ZXN0IHBhdHRlcm5zIGluIERQX0NPTVBfQ1RMKHNwZWNzOjUwNDgyKSANCiAN
CkNvdWxkIHlvdSBwbGVhc2Ugc3VnZ2VzdCB3aGF0IGlzIHRoZSByZWNvbW1lbmRlZCB3YXkgdG8g
YWRkIHRoZSBzdXBwb3J0DQpvZiBUUFM0IFBIWSBwYXR0ZXJuIHRvIGNvbXBsaWFuY2UgY29kZT8N
Cg0KVGhhbmsgeW91DQpLaGFsZWQNCj4gDQo+ID4gQlIsDQo+ID4gSmFuaS4NCj4gPiANCj4gPiA+
IENjOiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPg0KPiA+ID4gQ2M6
IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+ID4gPiBD
QzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+ID4gPiBD
YzogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiA+ID4gU2lnbmVkLW9mZi1ieTog
S2hhbGVkIEFsbWFoYWxsYXd5IDxraGFsZWQuYWxtYWhhbGxhd3lAaW50ZWwuY29tPg0KPiA+ID4g
LS0tDQo+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8IDIg
KysNCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgIHwgNCAr
KysrDQo+ID4gPiAgMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykNCj4gPiA+IA0KPiA+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMN
Cj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiA+ID4g
aW5kZXggMjZhM2FhNzNmY2M0Li41NGI0YjI4ZmRjNzQgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+ID4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+ID4gPiBAQCAtMzQxMiw2ICszNDEy
LDggQEAgc3RhdGljIHZvaWQgaW50ZWxfZGRpX3NldF9saW5rX3RyYWluKHN0cnVjdA0KPiA+ID4g
aW50ZWxfZHAgKmludGVsX2RwLA0KPiA+ID4gIAkJYnJlYWs7DQo+ID4gPiAgCWNhc2UgRFBfVFJB
SU5JTkdfUEFUVEVSTl80Og0KPiA+ID4gIAkJdGVtcCB8PSBEUF9UUF9DVExfTElOS19UUkFJTl9Q
QVQ0Ow0KPiA+ID4gKwkJdGVtcCAmPSB+RFBfVFBfQ1RMX1RSQUlOX1BBVDRfU0VMX01BU0s7DQo+
ID4gPiArCQl0ZW1wIHw9IERQX1RQX0NUTF9UUkFJTl9QQVQ0X1NFTF9UUDRhOw0KPiA+ID4gIAkJ
YnJlYWs7DQo+ID4gPiAgCX0NCj4gPiA+ICANCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmgNCj4gPiA+IGluZGV4IDk0M2ZlNDg1YzY2Mi4uYTY1OTk4ZGY5OTk0IDEwMDY0NA0KPiA+
ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiA+ID4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiA+ID4gQEAgLTEwMTc2LDYgKzEwMTc2LDEw
IEBAIGVudW0gc2tsX3Bvd2VyX2dhdGUgew0KPiA+ID4gICNkZWZpbmUgIERQX1RQX0NUTF9NT0RF
X1NTVAkJCSgwIDw8IDI3KQ0KPiA+ID4gICNkZWZpbmUgIERQX1RQX0NUTF9NT0RFX01TVAkJCSgx
IDw8IDI3KQ0KPiA+ID4gICNkZWZpbmUgIERQX1RQX0NUTF9GT1JDRV9BQ1QJCQkoMSA8PCAyNSkN
Cj4gPiA+ICsjZGVmaW5lICBEUF9UUF9DVExfVFJBSU5fUEFUNF9TRUxfTUFTSwkJKDMgPDwgMTkp
DQo+ID4gPiArI2RlZmluZSAgRFBfVFBfQ1RMX1RSQUlOX1BBVDRfU0VMX1RQNGEJCSgwIDw8IDE5
KQ0KPiA+ID4gKyNkZWZpbmUgIERQX1RQX0NUTF9UUkFJTl9QQVQ0X1NFTF9UUDRiCQkoMSA8PCAx
OSkNCj4gPiA+ICsjZGVmaW5lICBEUF9UUF9DVExfVFJBSU5fUEFUNF9TRUxfVFA0YwkJKDIgPDwg
MTkpDQo+ID4gPiAgI2RlZmluZSAgRFBfVFBfQ1RMX0VOSEFOQ0VEX0ZSQU1FX0VOQUJMRQkoMSA8
PCAxOCkNCj4gPiA+ICAjZGVmaW5lICBEUF9UUF9DVExfRkRJX0FVVE9UUkFJTgkJKDEgPDwgMTUp
DQo+ID4gPiAgI2RlZmluZSAgRFBfVFBfQ1RMX0xJTktfVFJBSU5fTUFTSwkJKDcgPDwgOCkNCj4g
PiANCj4gPiAtLSANCj4gPiBKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3Mg
Q2VudGVyDQo=
