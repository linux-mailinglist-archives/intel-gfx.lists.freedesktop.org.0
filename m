Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D267888FB77
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 10:29:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FB761123A0;
	Thu, 28 Mar 2024 09:29:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fJYUvZet";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33E171123A0
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Mar 2024 09:29:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711618184; x=1743154184;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=tnZwq758eslLk+mEX3eKZ3yApDlyAy48saypvrnGLFk=;
 b=fJYUvZetrT+WQmikq282SkOg2yfMtX5Sh+Vrvd6LRAjtjgUr3Y3zYUVZ
 g/6Zg3YAFRh9nHExsKMJCBhwyQrjc65aiQtev/XJLAEvOdBew6QD4P+ek
 9vWl0iafqk+OS4N2BkuMjZIlUgsF+Jj1lgI3QtptITweEkxUnCn/IMjba
 TvpSPtbJ3alSFp/ybxfo4g1tndO+DJNHe0EKKpzbAfKFsUXd3z5/7X/oH
 jxpowDUa9n4EviXVLaAhe4iNEIZB0qa+9HmZ8YpWSF0lKDQx2id7aRNmy
 A747bKDHn6XGwc3r9HBZCuB++4Q/1yOZq3X0T3MGysioNkUFYRdrcuDS4 g==;
X-CSE-ConnectionGUID: 91lEBcE3SMKec0lSZtKTNg==
X-CSE-MsgGUID: dmpS9UNiSx63VP0nHSKKcw==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="17311275"
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="17311275"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 02:29:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="47570012"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Mar 2024 02:29:36 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 02:29:35 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 02:29:34 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 28 Mar 2024 02:29:34 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 28 Mar 2024 02:29:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ih2aQOjPuyAjESYuIrjWqCgKwjUXJtVd1UT0kDO3cZPWTAfn7yb6sVf8gplbszMcwRiSHGJCxdcVK81zssdlyQ162iVAUbuGpDIdbzHTyBBgmxbO1tXdkJAXFJWyYmKfc7x2TEVTToL2aX6UuLvU9ixkreriG67+SJLJ7OOQQgIyWHw1DY+fNMQ+trIlzCCD4WyepcG9WcEmmignVgPrPy/lQIzx0VTgTDDk66e7/1PVx3bFzQTj6KA+hjYJYxRWvbRkKLggBt2jcuJv+zK0r0WGa+zSYVtgCxLdWNK6SHhFIR0+ZarUhAW4FDeqtw3Gp1bqUEFrjSg0rY2n4xSJrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tnZwq758eslLk+mEX3eKZ3yApDlyAy48saypvrnGLFk=;
 b=U1IPy8Sqy3c7CeFOrnLYw/pZM7ZbEirm8HHfr33FWMxp7Q4syp31YNblCdkt4UT6LKIQwUG12wbuPYXMfbQc/fSH7gW8PaWXvpQ6tCSEgOKqbMnhl2SGKAyVmY90qq3L+2lpQOgikgBqQHlQURESs2M66OUI0Tvkhzj+2GBprjr8bbSMSnLbQLkDo7eC0Ju8BhKyagjIPIbBdi4qsP14NOaYALYvYYwptQLsPPiWY9HuQ0+zFjwDTf6Twz5vudV3XLW5lDRSKjRZAi7cDu5DTomHBnEjK3TrOyMTlLc+HR1fRI5OwM9ToMx/JyN5ccVUvrNQx3dKAJAzMFr+Dtd2/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by CO1PR11MB4787.namprd11.prod.outlook.com (2603:10b6:303:95::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.31; Thu, 28 Mar
 2024 09:29:33 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::38ba:ed89:d2ef:cd62]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::38ba:ed89:d2ef:cd62%4]) with mapi id 15.20.7409.031; Thu, 28 Mar 2024
 09:29:33 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 4/5] drm/i915/display: Add definition for
 MCURSOR_MODE_64_2B
Thread-Topic: [PATCH 4/5] drm/i915/display: Add definition for
 MCURSOR_MODE_64_2B
Thread-Index: AQHaefm10r0FlQ7LTEWoPzfewpBl/LFM8NNA
Date: Thu, 28 Mar 2024 09:29:33 +0000
Message-ID: <MW4PR11MB705486BFD46B0FEB1013E4ACEF3B2@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20240319123327.1661097-1-jouni.hogander@intel.com>
 <20240319123327.1661097-5-jouni.hogander@intel.com>
In-Reply-To: <20240319123327.1661097-5-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|CO1PR11MB4787:EE_
x-ms-office365-filtering-correlation-id: a285b70d-5ded-4087-2bb4-08dc4f0993b1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Q4ySDfd5dS4Ya7nDUhpgxp2UPBDJGyMB+S5WXSDDtN/wBAHvytWrIoQhaYYILzwJDcSrptMBf9wUsjzRxTlQLsrC4V0FYqzIpWWrBLk5GHZH/mB/Bq8qwTqVnyZh6fnYIqmCXcN4GKjEQeyb0tdjolh9v9YnCE7XMZ8HDubPrgUnfqrX0ADltkPIPHeHN0MGDa8odwSo7ottbJVPEb6pPjiUn/abKExw1nKpZ2EPHCfxbSGTw1jDgXMvq61Cu/qoxTOvRhtjYxxQ168msIkKlaDRn5mM/fZwRAs0g9H91/5COF79IDxj2lLz8tS+4JGqIItSJII483HY73yr942HaF9+n2G0jfm9WsDe2Q+HQctk3zP3X6g0kIDoHWNCguf4LeN6bg+TKUEpNg/qv1/bAh0gdAu7Nb1yLxXnd/AmZ75gGcjzkTT8ygk613WsDzOSByrddNbLCdOFBh8G9bHFlZB8VbWvPwePbO+DlFqxYyj/E84juo9Ygy7XNd9pR3VcZ0nYMlqSTaWtGSjc7eECgqyWaYJO4GnatXrbzyvRSUP+7asqt9wSk1lpXANMue56gZ+e9bK2h4yIE4FSKbL18Fw54yOOQBuifDmIo5dLkc8Yz8lKmCmx56LvKuQ9jZUAgKg/IvShteRheCGVKArz/4e+yf9q6G7BqMZeEoJBIdfNXS3kwL8sn99ePFqN80QbOWLyr4Kyl+tVsgaB/a++VQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WnduT2ZsMm5jRGJLUHU0cUJmZmRmcW5ZeEJDdHBTU1VvYVR3a2JoVlB2b3NN?=
 =?utf-8?B?NXZkUVJkTzBEVWltWnVXZE1kRk4yazhwWUY0N2k5RXFzUklsU0dQQjNMbjZz?=
 =?utf-8?B?TVhKNjJDbW8rOGdURjRySEJYRFFlVC83OHovVG9kM1RlSHh2TExLQ3VEcHpP?=
 =?utf-8?B?TUFvZjdrUVNzYXQ4Z1JxZmx6NS9lOENIZE9vUkdUZmhnNVBCQUcxODhodzl6?=
 =?utf-8?B?dXo4c2E2akttdDlYbVhDSjZrdXhCWjB3VW5ORWs3SEJtL0RsSWdQL1V5Y2pq?=
 =?utf-8?B?UU5QaGFVTFBYK3A1cWhpNG80eWFqYlluNndHMG0rY3UyQVNJajdKaE5EMktt?=
 =?utf-8?B?WHNkaDBUTmlXak82ZWEzcTV0d0NycjZCUHBHRHlPaW91QzlLRVZ1QXFLZDIv?=
 =?utf-8?B?c2FzL2NFZFJ4YUlLN0RIU1BNMDdwWE0yemtiQS85azVvd0JWMUtzTnlneG1w?=
 =?utf-8?B?NGNhRGpMZ20zYWgveWhaZ1czV2U3Wm1JU3h5RUVNWXdKUU5VTmdLVVRDWHZi?=
 =?utf-8?B?Q3hqYm8vQnYvdURDeUxJUFpxb0xNeGpYSTN4TnZkUDVocnlnbzU5WjhUTXZ6?=
 =?utf-8?B?TGlqTG52MHFiWUV0ZkdoR0Y5UWZESml4R1ByWkdxVzdqNmdBMFhkL1JTYnBQ?=
 =?utf-8?B?MWlDb1pab01CanZybWVMd3R3b2d6d2NmSmZnQTllNXU3dURwYXhheExjNjhY?=
 =?utf-8?B?TkZHUENrT1Z5WmVFSjV6YmM5UmtZVEIvcVZaMDBybGN2cEw3UnViQTN2RFBT?=
 =?utf-8?B?T1RwMlBoN3dNb1ZkS0trRVBNWUlRcW9kVE15U3ZVVEowUzhhR3FJNFhIMkxu?=
 =?utf-8?B?dzA1SC82b2pZVTJYemdqTmt1ZkNRVjNBTXRMQ2JIMHFCcTFTOXF6RXFRNzdl?=
 =?utf-8?B?cHVib3JaVG8vTTNRdWYzWnpvdG5paWs1TFdlM2NHUFEvdVVWanUwWU16Wm54?=
 =?utf-8?B?N2ZicnpEYkppNFQrTmYzUGtDb2dWcldqdzEwNGxEcEFTRk1lYVZhaUVwZ2ly?=
 =?utf-8?B?L1RmbnBMNDRPaVJmcDdvZ1ludkwxbXYrbjAyckdCcWxiV2dZVTF2b3lwN1FC?=
 =?utf-8?B?NmdNeEU1V1o2cWIrWVZhdnN1Z1hIdjkyQlRWV0RTV3FJNjFYVnlFL25tYlFC?=
 =?utf-8?B?UjBmd1YxMnBFd3FUWnZiRTNOcUoyejFIZWMvdUMwTEdrVGpqQ2dDSkV6d3Rv?=
 =?utf-8?B?ckk4MU9VcmZNa1d4S1hPNTBwV1JydTFGWWNDMzViL0t4N1BjYW5rUXZqcGIw?=
 =?utf-8?B?MS9NWURoelhqbFdWbTc5d0J0M1BSMkU0SXl4VU9YL1ltMkMxODlYclZmNmdE?=
 =?utf-8?B?VnVDUzRkSUpDQ0tRbGZ1cDVRZHNleHp3ZWpCK3c2VXBGbFcwd1N0V2FFRnor?=
 =?utf-8?B?YnU2bnFnZTM3N3ExQ0lGeWZCakpvR1RDMFp2MFhyRVV0YThNeTUrOVlCR04w?=
 =?utf-8?B?RFpqbk9rRlVGbGpxTG9FRU81Z09ZSWNaK2NkdUh5M1JYRks2RVFteHAvVVpn?=
 =?utf-8?B?V0NMUzNDNFFtbUNBWkkwRUJweWRBRlhRWlhROGprRGNqOWIzSjJWT2NudEFs?=
 =?utf-8?B?c01XOFczWDAxZ3djYmtIeHZLWlFxVmlvVlMyci9RL0xXWEExNmZNT01YelF5?=
 =?utf-8?B?Y0l0T29WK3Y0TWtZZ3p4YW1kUVdNUVJxcVhnR0tWWm9Cb3lxNjY0ckN3QmZp?=
 =?utf-8?B?RGhhd2NNSWNtdnF1OG1DbDVBM2VsSEl0YmtOWFpOdm85eVVldmljSGYyZ0M1?=
 =?utf-8?B?cTBodDJqMVNjVVd0RDh0Y1U5V3JmM2g5dmFmK1hLbVdRQ0s1N2wvMWtQbURx?=
 =?utf-8?B?K01qY1pxOW9oOXJpWG5CZzVITkQ2SWFhMGIwcVhiRDlNcE8xanZDSHhwQmJh?=
 =?utf-8?B?eHBxS3ByYmE1dlh4dlRIQW5rZTAzY09RaGN1S2J4dU1SZDNDOTd5RW9rakk5?=
 =?utf-8?B?dldZZmZCYnRGVUdpV3U3a25uaWlabGtGRkpWYktEUTNZaXl4ZzZ3ZnJ2NEh5?=
 =?utf-8?B?VEhhNWU0d01hdGRVdUE5ZUt2Y1VyaG15NzB2bGs3SWFJbG5LNURDQ0Nna1BZ?=
 =?utf-8?B?ZGlUVm84U2xpN0xCaU1ld3lZMXFhVFVTRi9EcUVnMm1LTXhrVUFObWd4Ni9K?=
 =?utf-8?Q?mDd/WMqiyHljUgj/HSyB5R/oQ?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a285b70d-5ded-4087-2bb4-08dc4f0993b1
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2024 09:29:33.0868 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1YzeL3gKtbXdKlW08dtONN5AEj+H8atP+qbWsW8uYA7In4Z8H+UKI2zdbRZvmB9FUXAwIoCxH3mVNHZD3qGWRw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4787
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBIb2dhbmRlciwgSm91bmkgPGpv
dW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU2VudDogVHVlc2RheSwgTWFyY2ggMTksIDIwMjQg
MjozMyBQTQ0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogS2Fo
b2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+OyBIb2dhbmRlciwgSm91bmkgPGpvdW5p
LmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIDQvNV0gZHJtL2k5MTUvZGlz
cGxheTogQWRkIGRlZmluaXRpb24gZm9yIE1DVVJTT1JfTU9ERV82NF8yQg0KPiANCj4gTUNVUlNP
Ul9NT0RFXzY0XzJCIGlzIHVzZWQgaW4gV2FfMTYwMjE0NDA4NzMuIEFkZCBkZWZpbmUgZm9yIGl0
Lg0KPiANCj4gQnNwZWM6IDY5ODM3DQo+IA0KDQpSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1p
a2Eua2Fob2xhQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIg
PGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlZy5oIHwgMSArDQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykNCj4g
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBpbmRleCBkNjE5M2M4NThhNzQuLjliYWU4MTVhYzZj
NCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+IEBAIC0zMDUzLDYgKzMwNTMsNyBA
QA0KPiAgI2RlZmluZSAgIE1DVVJTT1JfTU9ERV9ESVNBQkxFCQkweDAwDQo+ICAjZGVmaW5lICAg
TUNVUlNPUl9NT0RFXzEyOF8zMkJfQVgJMHgwMg0KPiAgI2RlZmluZSAgIE1DVVJTT1JfTU9ERV8y
NTZfMzJCX0FYCTB4MDMNCj4gKyNkZWZpbmUgICBNQ1VSU09SX01PREVfNjRfMkIJCTB4MDQNCj4g
ICNkZWZpbmUgICBNQ1VSU09SX01PREVfNjRfMzJCX0FYCTB4MDcNCj4gICNkZWZpbmUgICBNQ1VS
U09SX01PREVfMTI4X0FSR0JfQVgJKDB4MjAgfCBNQ1VSU09SX01PREVfMTI4XzMyQl9BWCkNCj4g
ICNkZWZpbmUgICBNQ1VSU09SX01PREVfMjU2X0FSR0JfQVgJKDB4MjAgfCBNQ1VSU09SX01PREVf
MjU2XzMyQl9BWCkNCj4gLS0NCj4gMi4zNC4xDQoNCg==
