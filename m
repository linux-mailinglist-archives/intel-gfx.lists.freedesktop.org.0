Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7AAB6CBC50
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Mar 2023 12:15:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 404E610E46D;
	Tue, 28 Mar 2023 10:15:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBD6810E46A
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Mar 2023 10:15:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679998542; x=1711534542;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=OQEijRZy0mvk/h/d4P6mv89RvOB9vzBkRLiKTMCnMsw=;
 b=fF1qaeffCnxD4qehEq4pBvQu0WDTiQQOzU72kQlHbD200SvLcxBefAT8
 o5dY5AscPQVtXpm6AXfWxfxqi2Yw0qVgvsFjWcI+GQWK87a40RhW+GdlS
 EpVPUrvvQkqI6URfUroaHaiETdWCtgU3c4f6stZRQCio/VFQ3R1a71FBO
 sG24ZuM997S1tHSyMz6zBbB5EaJerQ1AsBGWQDetuC61cslCf44hfY7/1
 huBeIriDpprbtDc2d9jEdKLXNLhDS3DEa6DjmG+8mLrFfDLKtTCGyij0v
 nr22FL5yEXIVsgRfLfPJ0TDVItZxsGvmTR/qA/fz0t2U7GE2ZlyO4iCaQ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="403139271"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="403139271"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 03:15:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="716442593"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="716442593"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 28 Mar 2023 03:15:42 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 28 Mar 2023 03:15:41 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 28 Mar 2023 03:15:41 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 28 Mar 2023 03:15:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G+P1Y7WNOj3YCCXvd+BfYtTfGLyYQOsn4kjHIBstWiiDQ/rdRoo2uB/QB9B+lLRyjxNMsbfaTbNEsSJ4gYTueOl7e/2XmEqeNeVWGs8jTF1ZG7Xmszz5wU3xphgJJKake1I/9daPCEcgZp8RUscMve17qnlvG7+YP7F3ykWpDdcuRKJHm1mU9v59nvZ9TIlvk2d0gIzfX90wvnQ+AFbjvq/Rt/EoSIyBt481sYlgeDG6aCk0vvjOyIV+0GsepjcuJg8xn5jdkg/nrZIa/Bf89aS80BH3NOwmpnOANbro9W4jm6vC0VeqH7DwIDU/1oIamx5R3vh9F9Po28OT6QORAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OQEijRZy0mvk/h/d4P6mv89RvOB9vzBkRLiKTMCnMsw=;
 b=S4BvxCrl1D+bdo+Yj1p7Je3lEGANr82W6XKPiyKk/mI8tKq+rT15aGUTv4bRvU0QiQSr1/L+xFIgDs5YP2gqrQRfnGHrjpcShYMnlqdw9yHNTemk2M1kUEr3wnMOFH0MzuxXgFTH7UqNob7PurRPK9sGUfbhdLjMMyiNw3UC+8c+BdVArl8h1TlVU7nIJemGgz/EqYIkvCeVB+MUjQSRS8Io2RFGWFsOLwEOzdZym7K5jZynr2oR74Gs7oeOfisYw5wH3fXL99ENu3uilecbd6KXEMDb3FUFoF1rCaOpi+hA5F9EfsGjErf9D0WkeMZFu/NDdNU8HnWqecN3omt9Tw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by PH8PR11MB6779.namprd11.prod.outlook.com (2603:10b6:510:1ca::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6222.30; Tue, 28 Mar
 2023 10:15:40 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b%6]) with mapi id 15.20.6178.041; Tue, 28 Mar 2023
 10:15:39 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 27/29] drm/i915: Disable DPLLs before
 disconnecting the TC PHY
Thread-Index: AQHZXZLdH0cVzsyfIk2aNZUdNUOhAq8QAUHQ
Date: Tue, 28 Mar 2023 10:15:39 +0000
Message-ID: <MW4PR11MB70542884FF65354B280CFBBBEF889@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
 <20230323142035.1432621-28-imre.deak@intel.com>
In-Reply-To: <20230323142035.1432621-28-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|PH8PR11MB6779:EE_
x-ms-office365-filtering-correlation-id: 7272af8d-93a9-4a6f-b4ae-08db2f75617e
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: f6IjiS2iFMYx5mc3ICse6JG8cSZqwrcNespQaRmI312R9OLm6tBk37Z5So6CWN1OwTBdcMAQOJNnkJMIKXqT/ClvpWlj/3j3wIs29lMtuEMGCjb2P7yO2W7DBK816DEV/bXOpAaIp3s+5VRIFMUhHYNrAmnryzWcyD5gETZAiTnx7KI2ib0irqIn+hhWNgxkMa+rbrSM97JRCjotWsBGFpE2Xy758G3xnE3eFFobJfVraWBGhFFof3ptRF/bOvy5YYzkxqG5TfXUpJyZkeigTf7UDk+2TuWitlFRXmPr2LBcpulG0NUKyPFbdHRC2dT4vFSQY/ZQezQCneOA8wDLNFa0DLkzKNDyXPClm/PVd+NuRX1WEiM2J3PrB7elDS1vOIaIteIg50WmXlqHqGlZkJLn/27bCGRRQ/HEytvVj325zupIKouiJAO0BQkN9e7yaqWrQaWvatB94doBCkUwRktbv5PVNEOYjX/iZIaiKWEmM4ODrU0KE6SQerSc/DnCVJXXbjwwNXpY+Ti1QldEWBcbgFNP/5JPv+d+4eDKQLpMGt0lOb9joKdpgarIF4eDvlmYEG27sgoF0EwmXuExehwYupf5Ufc8ps3Krww7rl0Xti4QNq9+o795WnrqjV8p
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(376002)(366004)(136003)(346002)(39860400002)(451199021)(316002)(110136005)(478600001)(52536014)(8936002)(122000001)(82960400001)(38070700005)(86362001)(5660300002)(66446008)(76116006)(2906002)(64756008)(38100700002)(66476007)(33656002)(8676002)(66946007)(66556008)(41300700001)(6506007)(186003)(55016003)(26005)(9686003)(53546011)(83380400001)(71200400001)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TU96VmRCYXFjSW9wb244dU5LdllyRWhJbjlZYXo1Q3E2elluNUVNSG56dnp6?=
 =?utf-8?B?SVpKV3Qrczh6VmlMSVROOFRQdTZCUXRXalgyU0dHMXJXY1VqMEVBVGU4VXZK?=
 =?utf-8?B?VWhkckw2NkdPZ0Z4eW1xK2RZTlBNTUlKMEc2TmlOM3NBOWtESS9rT3pNWW1Z?=
 =?utf-8?B?bkkvTnhPd0JuTnRvSzdqM2FVRm5sRVU5bE9pT1gzSFQ4Uy9qMEFVYkVrZUhq?=
 =?utf-8?B?dlFnQjBYaVJJVUJJUFBUaFpiRTZnYnBkaDFxTEhvT0dhODFTK0Fib1M5d21l?=
 =?utf-8?B?cDREWWhtdlM0TVIvNlA5ckZuTnJsV3IvSmt0T0tDeDJSZk5IWWlTM3JEWk8y?=
 =?utf-8?B?ZUZhT0ZydzFOTngrR2xUTkNiU0hwRVVsaTlXbVhmNEJCcmNGdHF2QTYyNzgv?=
 =?utf-8?B?ME5DVmw0dmx1YStOcmlLYTlyM2dKMkU1UmR1Sm81cFVuSFNBV2pMQVJzTndZ?=
 =?utf-8?B?WjQrRXlva0dOdHg1dzBkMy9yVEYzQVA3WjI0bUZ4bzdERG43QWhxV2FYelJ4?=
 =?utf-8?B?dU85TTEwMExjYkFhdFRqcnl1TExoT2dxVHNneVRsb0UwVmJ3eTlRVXdtTmd2?=
 =?utf-8?B?UkVqZEcwVmh1MUsrUGd3R3lxTWllQkMwSTZRT09BcXVuY1VxNjZ6bTZTZHpL?=
 =?utf-8?B?TUN4MHdBYUtmNzVKUkVadExwQUM3RTlzRHAydHgvZWNSZGFnSmZSVElyOXFH?=
 =?utf-8?B?Sk5XMzdQR3p0OWpJS25xY0t3d0M3Y2tBditvM01aNUVsOC8rdmpoSk9mSnRF?=
 =?utf-8?B?dGhlYXlpWVR3bnpIMFg4cForRjhtQXdMUTVPN1dxOGZVMkVYeXVTVU1hcUY5?=
 =?utf-8?B?TmZtMlBYL0toc1JsL1dWTVBnOFpXV0lTZTQzeVNuWTgxeVhhVXdnWitMRWxw?=
 =?utf-8?B?VnNIWTZvcUdQd1JYNy9HeVR3aW9YQlB6ZmFEcnhNekFpZlNuWmNNQnE3RkUw?=
 =?utf-8?B?Z1BxL3VxVTZEdEF1dm43MnRzMS9Ma1NqZXhaSG1ZbU9JTVNQbmZLUEFQVzdX?=
 =?utf-8?B?RHI1M3BORzhvc1ZMN2RNWnBKeTFneXlWenRHajZPVDRjejhBcWJnbGVGYlpj?=
 =?utf-8?B?UG0rc2g1SlE0YzMvTzgwbDRHbTVvdDFEUmJUbm5IOGRPbVdmd1diSGFWZ0Fy?=
 =?utf-8?B?YjZ0c1VYNVZkakFrbXJqaWcyYWpHVm9kVk9nZ25BZk01QXZBRk9lMFBtM1hY?=
 =?utf-8?B?V24rUmt4N3MwMGNsWTZMZm5RZDc4dXpuRW1WVUw4QUhCNGc5OHY2c0JoOHRs?=
 =?utf-8?B?anpLOWlEMFROZ1QycVRDWm9oRlVQSjdtN3BERnZqOUpneEdzUUpkaGJJYW1h?=
 =?utf-8?B?TkEzMnBUWXRLMmthNTl4R1RLRW1WSmVvWWdhclN3RWIwKzlKNXVPSDY0eDJW?=
 =?utf-8?B?VWRBZ1NvRlRkUzdBR3g0YU1jejlYdTduNnNjTjZYK3VIYkx0U0MrZExHUHg5?=
 =?utf-8?B?cWt4VGJ6MTNya3NOK1Z5eHgrRUhrU0V2WGs0SkFiUWpCNU5lRVpMVi9XcWta?=
 =?utf-8?B?LzFQOVJma3JzQUpLcXptRlJFZmx2NW9XM3p1SWxCTlJ4YXRaVGEvRFZBaXJY?=
 =?utf-8?B?WTJ4VDJaQVpiV25YQUl1TWdvVWxkalpQZ3Y2Yi90VmlJVm42bVNaYVE4Y3I2?=
 =?utf-8?B?QlFLcHpTN1dTTFFLb0ltZ0xxeHZXN2FIOWhraDN1MWF4SldxRXQvR3lFVlJC?=
 =?utf-8?B?SEVpWElZMmxRUXV4NUwrVVQ5UHFPOFMrMmVRYy9URkxuckFwdkg0dlAzZ3N3?=
 =?utf-8?B?MklKRTRiVFltTVF5VzVYOVEveXo3Ti9uTXowaUEreE11aDZCcitEOGFlcnJp?=
 =?utf-8?B?TDBFOVpZaGVsTGtJOVJmbHdqUlJiS1JYTkNvdVMxeFlqRll0eGhxcmNzdU5P?=
 =?utf-8?B?Smg1VG4xcUU1d1JnOG1RZFBUbU52VFRxMlpxYlJPSVRGdytWbVpXcmx3QmlJ?=
 =?utf-8?B?Qm1SYnF0MTVsaHZ2VWs5OUFOUWw5ZFNoYStDZDcvU1NLNXp1RFJNM1kvYUpy?=
 =?utf-8?B?a0ZwYldkYnZnV2Y2WGx4YlFYTUlBMyt2S2V2RU1ScVB3aDNnRzByWWY5K05Y?=
 =?utf-8?B?TWEvcFh3VkkxeXNLNFpPWHBPdTNJOUZnaXhqMllYY2VBdkMwTXNhRXJTMFNI?=
 =?utf-8?Q?Eoc0SvNUeCjAKxnZENPH9/Z92?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7272af8d-93a9-4a6f-b4ae-08db2f75617e
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2023 10:15:39.5961 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: juCXNIwyPzYJCIt4ckQj15Q8OLw4+eFB9GeJRbOKy3e+oeto7zvqSBPzETqNq1mz7w2WaM3iQAxD/74OlIspSQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6779
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 27/29] drm/i915: Disable DPLLs before
 disconnecting the TC PHY
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEltcmUNCj4gRGVh
aw0KPiBTZW50OiBUaHVyc2RheSwgTWFyY2ggMjMsIDIwMjMgNDoyMSBQTQ0KPiBUbzogaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0gg
MjcvMjldIGRybS9pOTE1OiBEaXNhYmxlIERQTExzIGJlZm9yZSBkaXNjb25uZWN0aW5nDQo+IHRo
ZSBUQyBQSFkNCj4gDQo+IEJzcGVjIHJlcXVpcmVzIGRpc2FibGluZyB0aGUgRFBMTHMgb24gVEMg
cG9ydHMgYmVmb3JlIGRpc2Nvbm5lY3RpbmcgdGhlIHBvcnQncw0KPiBQSFkuIEFkZCBhIHBvc3Rf
cGxsX2Rpc2FibGUgZW5jb2RlciBob29rIGFuZCBtb3ZlIHRoZSBjYWxsIHRvIGRpc2Nvbm5lY3Qg
dGhlDQo+IHBvcnQncyBQSFkgZnJvbSB0aGUgcG9zdF9kaXNhYmxlIGhvb2sgdG8gdGhlIG5ldyBo
b29rLg0KPiANCg0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5j
b20+DQoNCj4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0K
PiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgICAgIHwg
MTUgKysrKysrKysrKysrLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYyB8ICAyICsrDQo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHBfbXN0LmMgIHwgMTUgKysrKysrKysrKysrKysrDQo+ICAzIGZpbGVzIGNoYW5nZWQsIDI5IGlu
c2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gaW5kZXggZGFjM2VjOGZiYmMxMS4uNjJiZDQxOTZkYzQ2
NCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGku
Yw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+IEBA
IC0yNzIwLDkgKzI3MjAsNiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kZGlfcG9zdF9kaXNhYmxlKHN0
cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCQkJCSAgIGNvbnN0IHN0cnVj
dCBkcm1fY29ubmVjdG9yX3N0YXRlDQo+ICpvbGRfY29ubl9zdGF0ZSkgIHsNCj4gIAlzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGVuY29kZXItPmJhc2UuZGV2KTsN
Cj4gLQlzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCA9IGVuY190b19kaWdfcG9y
dChlbmNvZGVyKTsNCj4gLQllbnVtIHBoeSBwaHkgPSBpbnRlbF9wb3J0X3RvX3BoeShkZXZfcHJp
diwgZW5jb2Rlci0+cG9ydCk7DQo+IC0JYm9vbCBpc190Y19wb3J0ID0gaW50ZWxfcGh5X2lzX3Rj
KGRldl9wcml2LCBwaHkpOw0KPiAgCXN0cnVjdCBpbnRlbF9jcnRjICpzbGF2ZV9jcnRjOw0KPiAN
Cj4gIAlpZiAoIWludGVsX2NydGNfaGFzX3R5cGUob2xkX2NydGNfc3RhdGUsIElOVEVMX09VVFBV
VF9EUF9NU1QpKSB7DQo+IEBAIC0yNzcyLDYgKzI3NjksMTcgQEAgc3RhdGljIHZvaWQgaW50ZWxf
ZGRpX3Bvc3RfZGlzYWJsZShzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4g
IAllbHNlDQo+ICAJCWludGVsX2RkaV9wb3N0X2Rpc2FibGVfZHAoc3RhdGUsIGVuY29kZXIsIG9s
ZF9jcnRjX3N0YXRlLA0KPiAgCQkJCQkgIG9sZF9jb25uX3N0YXRlKTsNCj4gK30NCj4gKw0KPiAr
c3RhdGljIHZvaWQgaW50ZWxfZGRpX3Bvc3RfcGxsX2Rpc2FibGUoc3RydWN0IGludGVsX2F0b21p
Y19zdGF0ZSAqc3RhdGUsDQo+ICsJCQkJICAgICAgIHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNv
ZGVyLA0KPiArCQkJCSAgICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqb2xk
X2NydGNfc3RhdGUsDQo+ICsJCQkJICAgICAgIGNvbnN0IHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0
YXRlDQo+ICpvbGRfY29ubl9zdGF0ZSkgew0KPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRldik7DQo+ICsJc3RydWN0IGludGVsX2RpZ2l0
YWxfcG9ydCAqZGlnX3BvcnQgPSBlbmNfdG9fZGlnX3BvcnQoZW5jb2Rlcik7DQo+ICsJZW51bSBw
aHkgcGh5ID0gaW50ZWxfcG9ydF90b19waHkoaTkxNSwgZW5jb2Rlci0+cG9ydCk7DQo+ICsJYm9v
bCBpc190Y19wb3J0ID0gaW50ZWxfcGh5X2lzX3RjKGk5MTUsIHBoeSk7DQo+IA0KPiAgCW1haW5f
bGlua19hdXhfcG93ZXJfZG9tYWluX3B1dChkaWdfcG9ydCwgb2xkX2NydGNfc3RhdGUpOw0KPiAN
Cj4gQEAgLTQzOTgsNiArNDQwNiw3IEBAIHZvaWQgaW50ZWxfZGRpX2luaXQoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiBlbnVtIHBvcnQgcG9ydCkNCj4gIAllbmNvZGVyLT5w
cmVfcGxsX2VuYWJsZSA9IGludGVsX2RkaV9wcmVfcGxsX2VuYWJsZTsNCj4gIAllbmNvZGVyLT5w
cmVfZW5hYmxlID0gaW50ZWxfZGRpX3ByZV9lbmFibGU7DQo+ICAJZW5jb2Rlci0+ZGlzYWJsZSA9
IGludGVsX2Rpc2FibGVfZGRpOw0KPiArCWVuY29kZXItPnBvc3RfcGxsX2Rpc2FibGUgPSBpbnRl
bF9kZGlfcG9zdF9wbGxfZGlzYWJsZTsNCj4gIAllbmNvZGVyLT5wb3N0X2Rpc2FibGUgPSBpbnRl
bF9kZGlfcG9zdF9kaXNhYmxlOw0KPiAgCWVuY29kZXItPnVwZGF0ZV9waXBlID0gaW50ZWxfZGRp
X3VwZGF0ZV9waXBlOw0KPiAgCWVuY29kZXItPmdldF9od19zdGF0ZSA9IGludGVsX2RkaV9nZXRf
aHdfc3RhdGU7IGRpZmYgLS1naXQNCj4gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jDQo+IGluZGV4IGNhMDI0ZjI4OGFiNjUuLjBlMTcxZjY2ZDY5ODMgMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IEBAIC0xOTI3
LDYgKzE5MjcsOCBAQCBzdGF0aWMgdm9pZCBoc3dfY3J0Y19kaXNhYmxlKHN0cnVjdA0KPiBpbnRl
bF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiANCj4gIAlpbnRlbF9kaXNhYmxlX3NoYXJlZF9kcGxs
KG9sZF9jcnRjX3N0YXRlKTsNCj4gDQo+ICsJaW50ZWxfZW5jb2RlcnNfcG9zdF9wbGxfZGlzYWJs
ZShzdGF0ZSwgY3J0Yyk7DQo+ICsNCj4gIAlpbnRlbF9kbWNfZGlzYWJsZV9waXBlKGk5MTUsIGNy
dGMtPnBpcGUpOyAgfQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHBfbXN0LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwX21zdC5jDQo+IGluZGV4IGE4NjBjYmM1ZGJlYTguLjIzMzAyZGM3Mzg0NTAgMTAwNjQ0
DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYw0KPiBAQCAt
NjIzLDYgKzYyMywyMCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9tc3RfcG9zdF9kaXNhYmxlX2RwKHN0
cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCQkgICAgaW50ZWxfZHAtPmFj
dGl2ZV9tc3RfbGlua3MpOw0KPiAgfQ0KPiANCj4gK3N0YXRpYyB2b2lkIGludGVsX21zdF9wb3N0
X3BsbF9kaXNhYmxlX2RwKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiArCQkJ
CQkgIHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiArCQkJCQkgIGNvbnN0IHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpvbGRfY3J0Y19zdGF0ZSwNCj4gKwkJCQkJICBjb25zdCBz
dHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZQ0KPiAqb2xkX2Nvbm5fc3RhdGUpIHsNCj4gKwlzdHJ1
Y3QgaW50ZWxfZHBfbXN0X2VuY29kZXIgKmludGVsX21zdCA9IGVuY190b19tc3QoZW5jb2Rlcik7
DQo+ICsJc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQgPSBpbnRlbF9tc3QtPnBy
aW1hcnk7DQo+ICsJc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9ICZkaWdfcG9ydC0+ZHA7DQo+
ICsNCj4gKwlpZiAoaW50ZWxfZHAtPmFjdGl2ZV9tc3RfbGlua3MgPT0gMCAmJg0KPiArCSAgICBk
aWdfcG9ydC0+YmFzZS5wb3N0X3BsbF9kaXNhYmxlKQ0KPiArCQlkaWdfcG9ydC0+YmFzZS5wb3N0
X3BsbF9kaXNhYmxlKHN0YXRlLCBlbmNvZGVyLCBvbGRfY3J0Y19zdGF0ZSwNCj4gK29sZF9jb25u
X3N0YXRlKTsgfQ0KPiArDQo+ICBzdGF0aWMgdm9pZCBpbnRlbF9tc3RfcHJlX3BsbF9lbmFibGVf
ZHAoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJCQkJCXN0cnVjdCBpbnRl
bF9lbmNvZGVyICplbmNvZGVyLA0KPiAgCQkJCQljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZQ0KPiAqcGlwZV9jb25maWcsIEBAIC0xMTQ2LDYgKzExNjAsNyBAQA0KPiBpbnRlbF9kcF9jcmVh
dGVfZmFrZV9tc3RfZW5jb2RlcihzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCwg
ZW51bQ0KPiBwaXBlDQo+ICAJaW50ZWxfZW5jb2Rlci0+Y29tcHV0ZV9jb25maWdfbGF0ZSA9DQo+
IGludGVsX2RwX21zdF9jb21wdXRlX2NvbmZpZ19sYXRlOw0KPiAgCWludGVsX2VuY29kZXItPmRp
c2FibGUgPSBpbnRlbF9tc3RfZGlzYWJsZV9kcDsNCj4gIAlpbnRlbF9lbmNvZGVyLT5wb3N0X2Rp
c2FibGUgPSBpbnRlbF9tc3RfcG9zdF9kaXNhYmxlX2RwOw0KPiArCWludGVsX2VuY29kZXItPnBv
c3RfcGxsX2Rpc2FibGUgPSBpbnRlbF9tc3RfcG9zdF9wbGxfZGlzYWJsZV9kcDsNCj4gIAlpbnRl
bF9lbmNvZGVyLT51cGRhdGVfcGlwZSA9IGludGVsX2RkaV91cGRhdGVfcGlwZTsNCj4gIAlpbnRl
bF9lbmNvZGVyLT5wcmVfcGxsX2VuYWJsZSA9IGludGVsX21zdF9wcmVfcGxsX2VuYWJsZV9kcDsN
Cj4gIAlpbnRlbF9lbmNvZGVyLT5wcmVfZW5hYmxlID0gaW50ZWxfbXN0X3ByZV9lbmFibGVfZHA7
DQo+IC0tDQo+IDIuMzcuMQ0KDQo=
