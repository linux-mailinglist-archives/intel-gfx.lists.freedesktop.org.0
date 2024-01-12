Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E5DA82BF6F
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jan 2024 12:44:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF99010EAC9;
	Fri, 12 Jan 2024 11:44:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C4D710EAC9
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jan 2024 11:44:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705059887; x=1736595887;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=muRQ24mHELbvPRSkinYchzObHwOE/vZ8Inm6HUfEKCM=;
 b=m4Z4slzi6A7R5KLcZE+8uLPefK/SNvIceFE6jSrZ6gua66RvoKfiTueO
 b/xyPIz+tHjXbF8GkW2H6MTzeLrNa8rpIKK9gLXCei4MsoQ77jD4gJRal
 PCr3/mPjHWXec2poXrYH9BVyJHR7UZwUkUy9+d3Hjl9Zw2N/vAGAJfu6D
 FjjUEXl1UeEl5tYxnXWD8UgEYTPvoD9p9BuvfAiWMKJ450W7/6deLnRvX
 EdtTS2+BvpGcEtInWlaUbZv1rE1sP7YfWzmMGTwRZzyEMn9bwzTDcwQWU
 JQPPifo2ovdxMCVwyrDudTzirabPwdOt0IJHzJXaoIPuTrWq9vitEluxr w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="6237895"
X-IronPort-AV: E=Sophos;i="6.04,189,1695711600"; 
   d="scan'208";a="6237895"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2024 03:44:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,189,1695711600"; d="scan'208";a="17374930"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Jan 2024 03:44:46 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 12 Jan 2024 03:44:44 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 12 Jan 2024 03:44:44 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 12 Jan 2024 03:44:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BU3f744Q+T6RPkUA4jQvUHgjOrVhmhnPxZc8IKDNS/9jS/8cn1V1kIarlh+sb+k696ErqXBw6mUjEvqgi0AxRMdPA7F2p3pd2NdiCPnRGPfuhNOZ+p0Rss4K/7ekuJ0Eyl5gY7aMGGfukMmsEqVbBZlEs9mDohwh32kKvQbrKJLCfCgxo4dkcC1Twf5j2fyXV02ndmegrSBkkDPW/m+ounlMSRkHsNfL4MW8x0coOaBYNI7XAnONG9ayPDjQGVP+lp+4CupVz4MD6lTFWCfMX5tk6aanec/jvrHUXfcH8cHcbJPjmFi1478OEY8Y5HkkzDnslnc2qV3qX5YFILXWOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=muRQ24mHELbvPRSkinYchzObHwOE/vZ8Inm6HUfEKCM=;
 b=DHzAa0qyWJ0/1odKLt9zQe8QVIoZZqABlBSqKKCfse3y5I0MtBeRVd3PWX8QIqk7aHouWG/gTXPO5DPiPZOLD8zOS4LwIe5ZhiCvXURN1ramvUP4VFUL7BgO4H427bmmXOZ4RJfcc77BlV8iJIXXiVe6EvX0qzDqerEM3tfHHV1U0WBnsTco+LLhkUF3bWiOlSU9L3w5OAUMIIh0lmBbqKB+biZxwGbm3ZKhahDITXB8c0bFzet21YcbkjM7rQ2RmeqPWS/n2vdWR/rC19hHzkfxVdeZb39cRuqA3UD/rfhw7cmQ4D9dOZN5nJFU/vx5OzryJy0SM2M7fHxpFFg1cQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DM4PR11MB8225.namprd11.prod.outlook.com (2603:10b6:8:188::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7159.25; Fri, 12 Jan 2024 11:44:37 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737%7]) with mapi id 15.20.7159.020; Fri, 12 Jan 2024
 11:44:37 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 08/13] drm/i915/psr: Add sink_panel_replay_su_support
 to intel_psr
Thread-Topic: [PATCH v2 08/13] drm/i915/psr: Add sink_panel_replay_su_support
 to intel_psr
Thread-Index: AQHaQ8bhnhCT7zV9G0e98qCL10ITOLDWCu2AgAAG9AA=
Date: Fri, 12 Jan 2024 11:44:37 +0000
Message-ID: <9816f38323dd4b3edee4bbb74376456249e131d0.camel@intel.com>
References: <20240110131304.2470006-1-jouni.hogander@intel.com>
 <20240110131304.2470006-9-jouni.hogander@intel.com>
 <PH7PR11MB59814AE93724580A658473A8F96F2@PH7PR11MB5981.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB59814AE93724580A658473A8F96F2@PH7PR11MB5981.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DM4PR11MB8225:EE_
x-ms-office365-filtering-correlation-id: 23e81bff-a2dd-4f2b-f572-08dc1363dac1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fKwP9TwH9bMZJpRZGvhLQj5tNS1ZmMEqwGslEWZx4sPidOqKBiJjyrbxARptggE0kTIh+Qc/IjwMiYZ1TbEXPxhG/v3OX3lTNuWcYwLvYqnhJhVx4IqhX5oayooE7qg4zENGj6hsyZwxuOPjyyLM7mimkZ7Cpk5dsI4yvIj7f6SZHcTRqNKFJchwOt1/5epRdhsh6d2s4znDt4VOBBCjWsEemJ1j1gmUhE5PUwym3jC0tIzqWTYzgn2YSaw3V9SWeR1SL428EUdLIsZXE8UXrn9NG/HYfr7Z/CommpQjfrHlOcDOfHK5G6AjqwCl5mdk4pRfRJ8rrsTgLGXDR4o1+1S3VG23VxZ81UkUFDkN5hM49VQb1slAjUHLOVrPshI3mczS2d6/XaIPrj8Q4rzItZ8633mJtoHW7coXYApDLurv0o62TeLv0dOxHwyDrqwMOc4qoy4YTG4RhiId1wVGJgRE4TMJf821Sb7YluH7J5ugvGrIcr/Ac76Ch/JAB8RJwdNGRfxVMAMEip7kzKx97zv5z5qjzFiPbWlb35LnupX+pV37JPvZs6MKhaF2wxXFhJHBjBRUhCL5akRGGkbj8q3oPcOvoQ7voy3aVIhvQZAFhV/F1BGqbim59rjcjJ5Y
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(366004)(376002)(39860400002)(396003)(230922051799003)(1800799012)(186009)(451199024)(64100799003)(5660300002)(38070700009)(2906002)(41300700001)(6486002)(38100700002)(122000001)(83380400001)(71200400001)(26005)(66574015)(6512007)(53546011)(82960400001)(6506007)(86362001)(478600001)(8936002)(2616005)(8676002)(64756008)(66446008)(66556008)(66476007)(66946007)(36756003)(110136005)(91956017)(76116006)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VGJqU3Bia0hlU3BaRmExcVlsYzFNbWY1MnlYUVRVV0pzeXp0ZG1kMVBMdXFp?=
 =?utf-8?B?aVppZzNyaW5wUjNyamttYzhyYm9TdkhHWldiYnRvSDhlaldvbk5uZi9UY01U?=
 =?utf-8?B?MFZkSTV1dmh4YVFWbStnb2tpelFHQlpHalkwNXJWajZTTEtuS0VrSCtQcHo4?=
 =?utf-8?B?OW9ES2lOWnFDV2k5dWdKSWxNalk1VGRFcE00MjhFTkp3MXg3UmU2ZUhxVWtm?=
 =?utf-8?B?a3hVYTNCWFJocFNsbEdJdGJjeSt5Wi93UGM0ZVY2NlZ3TXYwM3Z6N0poaSs5?=
 =?utf-8?B?cVo2Mk5pYXMyVzd0eGxidTZDOHZqQTVuZmJMTGo1QXRIVXlHMEYwaGZESUFv?=
 =?utf-8?B?VjlZdVM2YklkVVNIektqUHVJZklLeFZXUk5FVkZPRVhYUG41cVE0bmtpaTZp?=
 =?utf-8?B?bUkzblRubENySXorTFZpbkRsU21td05pWEl0MlBPMlI1WU5nRW9xRlpWVXpR?=
 =?utf-8?B?R3VFZXpZN2hQWFdUOTg1MXZ6M09ucXI3MFlOY2t5UkV0ZlVIeFUyNkp1blIx?=
 =?utf-8?B?d0N6cDdCQjZmQWcvemJLaFlJSS84NGkvY1prQk52NG9OTnBod1VLSFQwWTV2?=
 =?utf-8?B?MVNFelhlcStEODRIQ3VJbVdpQnJ5RTNyVTNCMUxuTHdwQkd3RDRHay9mZzcx?=
 =?utf-8?B?VnJPcHNWMnlja2NlZU1QREhYVGdJb1dWSkYwNVplQXRncVN3SDB6ZVZWY1FN?=
 =?utf-8?B?T1JMbVRDWDZkT1U2Tm5NRHRqcnpjU29HNWZxWVNJcTJrbDFmSkcwRlg4aUxm?=
 =?utf-8?B?TXh1U3FxNThFVTJvSTVxYnR2ekdBd2NFYnR1b1hja1NnOXNPd3V2SU02VEVi?=
 =?utf-8?B?a0RLUEhxeHhNREVkcXN4Q2Q0UHQ0NlNQb1Y0czk3Rk4vUEplaVRJbUZPQUty?=
 =?utf-8?B?T29xbVIrNTUzSXNqSnVBZy85U3FFNkFZVHNXT0ZKcUxQZnRsWXhsL1QwVSs4?=
 =?utf-8?B?dVBQbm5NT1hDWURMWkREcUR3SXE1cDdWeHlPcG1CdWlkS2x6ZUpMVTVOYmxm?=
 =?utf-8?B?TGkrMjJNUGNxcTV2NHEvYmNsRkhPbTFPYS9CZEUxdWJmNmFFRVRxb2VSMUE1?=
 =?utf-8?B?RW5QeHQxcDFnc1h2NVVyTTVTazcrTngxMVhsYytnM3dNUU02b2VqYmJmWldi?=
 =?utf-8?B?OGQxcmRRZlN0Zyt6eE94NE5PeEZ2OUt6TzZiWndXZXV6ZXdRZ2wzamUxU3lS?=
 =?utf-8?B?bEVQeDVMaCsvVXZrSVJrRW53WmoyVG5CTlQrUHl6NHFxWEx0VFV6Y1VNSzB5?=
 =?utf-8?B?N2NualFYRzBkTCtTUDdSSjN3RXlDQXNjOUtTMkJXOTYvRVB5L284R1JLSkVN?=
 =?utf-8?B?ZDVvUkZPQnEyQjdxN25VMzd2VldLVTJmWVhsTzQ5QVQ5M3hEVjR6R0dKKy9r?=
 =?utf-8?B?bEtQWFVwV25SWmVlSUZnSXdVS0FydGgxWS9VZWJPOHJtUytXYmFBeU1KZlMz?=
 =?utf-8?B?aUtMUmtLQVZLbEVWdVViQ2lsbnkzdWRiQXNkd1JZRFJFMkZIdk5JNlM2RFB0?=
 =?utf-8?B?UmNYSjRhbXY3UFlDampGYUZDTDNxT1k5Z2VjV2JJTU1GME1TMEc2SlNleXQ4?=
 =?utf-8?B?OEY0aEhrY2NoSkQ0K2NNc1R6MFFIQ2JIUUZubXBBdkxEWXhCemtmcFpLK2FI?=
 =?utf-8?B?emdTckNUWldpMStIWk5qNUZYQnUzUTRTc0d4cnU5Uld5cTE0MnJrUXJyQlVk?=
 =?utf-8?B?WEE2ZUdXL2ZOV2VpWmttZmxVQlZNMk5nNldLMmZoTU11d1ZDekRBYktNRUxu?=
 =?utf-8?B?Y2k1T0VhUTNHSm5jRHRDZmFpMVhmMXJadFJ2UktDUHF4MmNacGY1ZGd3YzJW?=
 =?utf-8?B?ZVRybDRrdVZXejFUMGJ1ZkUxYXZEZHVVWGhTaXBLZEhlb3lhWHh1UGN5ZDVk?=
 =?utf-8?B?K0FwOWluaEp4WEl3eXp4UHhCRnBOK0toUWFXUUZQS2IzL2c2RytRNHJMVFYz?=
 =?utf-8?B?alZyT29Gd2d3UmppRzVITmQzQi8ydmxRLzhMWTZ1YnBBYW0rckgzZVBMWnVS?=
 =?utf-8?B?TjlycXZZU3dYZUwvd1RIMmtvMkRzcEs3UzJibEpvWGVOdS9ZVG1UckY3TlI5?=
 =?utf-8?B?clpZbmVWWjBZU3hZaTBsRmFyMHh0QTdyN1lXMlVmcUhRbUR6SE55azBESW45?=
 =?utf-8?B?cVdOR3BDTS9nUXNaTnVaWDNMVDhJR2lYT0l6V01nZnhFV09iR2FiTDc3eVdz?=
 =?utf-8?B?aHc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <200B78478CE3D14981874D56B30DB77E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 23e81bff-a2dd-4f2b-f572-08dc1363dac1
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jan 2024 11:44:37.2358 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1P93nJUQ4kuJ9zkHP0JJVYwtT13+UqhwQUZHoyUIi0tw57OK2fBEldQsKL12F9k3V1DbwYnmoOipAyrmU9q1pdrAejw86oliyzcK2LjHjQM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8225
X-OriginatorOrg: intel.com
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

T24gRnJpLCAyMDI0LTAxLTEyIGF0IDExOjE5ICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToN
Cj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogSW50ZWwt
Z2Z4IDxpbnRlbC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZg0K
PiA+IE9mIEpvdW5pDQo+ID4gSMO2Z2FuZGVyDQo+ID4gU2VudDogV2VkbmVzZGF5LCBKYW51YXJ5
IDEwLCAyMDI0IDY6NDMgUE0NCj4gPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zw0KPiA+IFN1YmplY3Q6IFtQQVRDSCB2MiAwOC8xM10gZHJtL2k5MTUvcHNyOiBBZGQNCj4gPiBz
aW5rX3BhbmVsX3JlcGxheV9zdV9zdXBwb3J0DQo+ID4gdG8gaW50ZWxfcHNyDQo+ID4gDQo+ID4g
QWRkIG5ldyBib29sZWFuIHRvIHN0b3JlIHBhbmVsIHJlcGxheSBzZWxlY3RpdmUgdXBkYXRlIHN1
cHBvcnQgb2YNCj4gPiBzaW5rLg0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdh
bmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IMKgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggfCAxICsNCj4gPiDCoDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gPiBpbmRl
eCA4MzE1ZWMzMDdkNWYuLjMxNTE3NDFmNDlmNSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ID4gQEAgLTE3
MjEsNiArMTcyMSw3IEBAIHN0cnVjdCBpbnRlbF9wc3Igew0KPiA+IMKgwqDCoMKgwqDCoMKgwqB1
MTYgc3VfeV9ncmFudWxhcml0eTsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgYm9vbCBzb3VyY2VfcGFu
ZWxfcmVwbGF5X3N1cHBvcnQ7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoGJvb2wgc2lua19wYW5lbF9y
ZXBsYXlfc3VwcG9ydDsNCj4gPiArwqDCoMKgwqDCoMKgwqBib29sIHNpbmtfcGFuZWxfcmVwbGF5
X3N1X3N1cHBvcnQ7DQo+IA0KPiBUaGlzIHBhdGNoIGNhbiBiZSBzcXVhc2hlZCB3aXRoIHRoZSBw
YXRjaCB3aGljaCBpcyB1c2luZyB0aGUNCj4gdmFyaWFibGUuDQo+IEVhcmx5IHBhdGNoZXMgcHNy
MiBnZXQgbW9kaWZpZWQgdG8gc2VsX3VwZGF0ZSAuLiBjYW4gd2UgaGF2ZSBzaW1pbGFyDQo+IGFw
cHJvYWNoPyBUaGVuIHdlIGRvIG5vdCBuZWVkIGV4dHJhIHZhcmlhYmxlLg0KDQpJIGRvbid0IGtu
b3cgaWYgdGhlcmUgd2lsbCBiZSBlRFAxLjUgcGFuZWxzIHN1cHBvcnRpbmcgYm90aCBQU1IyIGFu
ZA0KcGFuZWwgcmVwbGF5IC0+IGFkZGVkIHNlcGFyYXRlIGJvb2xlYW4gZm9yIHRoaXMuIFBsZWFz
ZSBub3RlIGFsc28gbXkNClRPRE8gY29tbWVudCBpbiAiZHJtL2k5MTUvcHNyOiBNb2RpZnkgaW50
ZWxfZHBfZ2V0X3N1X2dyYW51bGFyaXR5IHRvDQpzdXBwb3J0IHBhbmVsIHJlcGxheSINCg0KQlIs
DQoNCkpvdW5pIEjDtmdhbmRlcg0KDQo+IA0KPiBSZWdhcmRzLA0KPiBBbmltZXNoDQo+ID4gwqDC
oMKgwqDCoMKgwqDCoGJvb2wgcGFuZWxfcmVwbGF5X2VuYWJsZWQ7DQo+ID4gwqDCoMKgwqDCoMKg
wqDCoHUzMiBkYzNjb19leGl0bGluZTsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgdTMyIGRjM2NvX2V4
aXRfZGVsYXk7DQo+ID4gLS0NCj4gPiAyLjM0LjENCj4gDQoNCg==
