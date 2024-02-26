Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4202986727C
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Feb 2024 12:01:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AE0010F06E;
	Mon, 26 Feb 2024 11:01:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f0XNQQMY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C172510F06E
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Feb 2024 11:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708945314; x=1740481314;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=g2b0Ge0zgiUu6QsAXSWBtiu1Ie1ntK63fPBrAWB7C3I=;
 b=f0XNQQMY9UXw7+2pOfAbzM9a2tKYXlzZ4TlcsOn/rCleTPL/dGeUAkfG
 PqUwJadkgOdtcPbvjRXiJaYHjhHRidAUd2SRjjNAWNe0k8S/Zry0ppmqI
 tczvFx8URitk1YGd2xou1s9IVTGX9WNKIs98+hDwWRZjemFomLn1eEiE3
 3y3PhRFvtDn+ybyOiN+6+qaCx1/GykoUMwSvpvDA+Dn3inJCwbfo//7vF
 U4otHOJLxE81w418UqkZ9UngaXP1l+F39kthHYaUSkAspmpY4tkOjQhLY
 aGZkK5yXOeYQdYMS9eyvQtvRbpVWwMa2myLXNJQ2fkkkWVecGlA0qsZ+/ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10995"; a="3142177"
X-IronPort-AV: E=Sophos;i="6.06,185,1705392000"; 
   d="scan'208";a="3142177"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 03:01:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,185,1705392000"; d="scan'208";a="11226979"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Feb 2024 03:01:48 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 26 Feb 2024 03:01:46 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 26 Feb 2024 03:01:46 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 26 Feb 2024 03:01:46 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 26 Feb 2024 03:01:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UyDAX2AZKNd4GVzWGeece3Y09hgJVt6bNxnRjZ2eTbk0+sIpV8oAJuYz4oTGf440toDuL8nr6+mhkq3AYWYBR47jYdjGnf+Nq+4BmAwG0JP9ssdjctRwC3HrDaTggGW4BfOqh/Rqy3YxN8xC6qwVP5pXcg/pRmuvIs3y7ohbMYVje7h1jBBsWjEyKfDd+yIeOGMPUBnezPsg2MdRoKppwiu4+YZ5YTqVzlvUpDSfTqU/0kYFDm4qLIXxNVbe6hfyxG84qtS22bqqqUOExPD+s4W6tMMVIhI9awQY7DeGklcXxxNTQwOxkJRbEAPv9tqZAmroTdX57wvUwr+JTIEdjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g2b0Ge0zgiUu6QsAXSWBtiu1Ie1ntK63fPBrAWB7C3I=;
 b=Dz7eeO9LFVT26XOfzO5e1gY1dkNZEAC3pauE1MoUBiTwzhAh1K0V4r/hNSD9F2MEP75K92NyqiS6wkvDKQHyOgYhcUVG0SAv8M75RlEFfZjh670d1Lg4RT+s7c6ctxm09EAZ5QkWkJriIVRQ3yemqElTlee1NoP1d7rA0pnjyTtm8PqH01ZNZiqX1fe3TH3+wluVrDydn1ix8vCnLrAnOtifdKgs0gxtHP09j3DcVfoDMV45pf18cYEnPhQ5R0+V338xajikhxxyNmHD0R5OEdtF21iajrDurmOxCSiO5njFZjwS5fUnMZspqQG1hFlulPyZEb6q5K1b+URrZi15xA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by DS0PR11MB8136.namprd11.prod.outlook.com (2603:10b6:8:159::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.19; Mon, 26 Feb
 2024 11:01:43 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::8970:61a2:f00d:b23f]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::8970:61a2:f00d:b23f%4]) with mapi id 15.20.7339.024; Mon, 26 Feb 2024
 11:01:43 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH v2 2/6] drm/i915/psr: Calculate aux less wake time
Thread-Topic: [PATCH v2 2/6] drm/i915/psr: Calculate aux less wake time
Thread-Index: AQHaY/X/xBm1kRWPHUeQSipIcAYVFrEcffbg
Date: Mon, 26 Feb 2024 11:01:43 +0000
Message-ID: <PH7PR11MB598148D3DD953475DA2336A6F95A2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240220121045.2156004-1-jouni.hogander@intel.com>
 <20240220121045.2156004-3-jouni.hogander@intel.com>
In-Reply-To: <20240220121045.2156004-3-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|DS0PR11MB8136:EE_
x-ms-office365-filtering-correlation-id: 22a7e64c-6213-4675-be5a-08dc36ba5151
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9uQJzgeoo92uDaJzVpR7YqozLs+LC6joD45XnJHc3dHaVw/taHRrHlkptOSTMwAQZ1ct039vCHj3ls5O5b4TO6DmJL16JCN1Ff8BuuRTRPEFEuVRK2oJKblcS6rNitjYgnvHYTBlTyjMsBJZYNafhinwOm+A6jvUsbE/iN1BI2ZPbDO41Vty4jX79DkkDJ4ZuzIRr0QiTKeQwn2ACCsMq+o0F+TUqx//cqqqELLSX+1HqoziGepCfxosyRvbmM5+W9GoPPQEdbruaIcckHmaSmxYAoW5r26BsZrk6vG59R0wJ3kV2kYcTKnIr52rHsdMLLFXaHcvQi5ohXcD9RTN0Xj0unfqGoKHOcCZqCwFHr+fNrTqMcYKY12OfhC/27SBOm3ARwfvTD8BRkg9sNHxlZD3uuwS01xhnhaNWb1OXegRfXnefLrweW6tuZVVu5Tz9NU4VJQhs0RnXaipAGNYX207DntlmlIF7D3TpUF1rkfnPqnOcC4VbqNMgU2UQW3Q6w23YXayRHcLvRUO78T2VvSM0ODLd518Voyr6YhlNXTcqWeZdtx6BGwiK8YmaR3Zj4c+KGGj85HLV+Ul8iYnd82pZHNPgw8w/e6PPmRnplUQ7rjXN4jkekx7uiJJUHxczby6YHSrLyo6eLw9sre5KYLP4nUKqHjrq2652mLKUgdGByUvkQnn0Kulb7iYVR/8qbTV6amlKEtOMsK++ts3sg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Z1pXU0taN3MzLzhJRVRIVXZ5TTFiMjExbElQU2h1OHN2dGxXZ3dhTUxjWjZZ?=
 =?utf-8?B?aGhKbUdDRzBYZzdnck55b2FQbFpTWEUrc2tjV1hYTE16MC9hS2gvaWVMYitk?=
 =?utf-8?B?eWJOb1cvQk9mc01ZcUIwOURmaWl4MFY0YmV4RHN5U2dZS2hEbjRzcjhrMVlk?=
 =?utf-8?B?UW9va0FPNVUzcW03cE9iOGtHSTAxdGlXbE5kNE1Kbm5wSnZPU1FUNWFub2VL?=
 =?utf-8?B?OFlFcEJYeXkzenpGTFpJd1pWckxueUV5VzJpb040UXh1NmZabUxJL1hIVUdR?=
 =?utf-8?B?WmlLUytCWmFGYUJ0a2hDMVorZDVUUXorRDBYQnRpOVl6c1pMMWxhMHBDNURl?=
 =?utf-8?B?Z3NvcGs2Yjd3Q0s4R04vbUVrSG03azRVYU8yWlE5TVd6eW54QWJ1L2RUZUNz?=
 =?utf-8?B?ZWVzN3lOSzdwcmx1d21oMEZHYzMzcDgreWhoWC9abjBPNjQ1dlNqRmxsbnRY?=
 =?utf-8?B?T0VqRjZiZm0rdkszRm5sN081MXRGMlJVd2FsNyt6R2Zyei9QZCs4d1JqcVFo?=
 =?utf-8?B?aGdUd0ZjdzhkM3p5TGNTZGx0Lys3aE5RSkdEUk5ZdklRbEYzcHluVTd2TW1X?=
 =?utf-8?B?M3VHcEFJeU1BTWxFRFd0enhnaXFnK3Y0Q3VPN1FId1BHZUFyeEVhNExwOEdE?=
 =?utf-8?B?V2dSbTQ4N2ZiUFZVYVNoaTdYalk4ckZoZWJKM3A2YU5yYU5aWklKQlVaM2lS?=
 =?utf-8?B?UklKMGEwNjMybGFqY2dyaS96eThDT0diQTQ0ZGd6V1JReXlzZllJUld1UUJL?=
 =?utf-8?B?WXltU3JLY2lLS1plUW9mRzhBTmZHQTJGdnBRRklWMWMzdEdqbDlIZTVmK3B3?=
 =?utf-8?B?MG82bzJDWnJWRXVMMXZNY1dFOUZOYjJFWkR6aUR6WkRnSkFDcmo2NmtFRGh2?=
 =?utf-8?B?U2VjTy9aVnkwMUFDdkVFR1YrTXRyd25pcTVYN2xpbFJYeGFPd1VyOUlDazhB?=
 =?utf-8?B?d21xQzFWMVVaeVZ3b2t2NDRNem1YQS9IOVBqSjJBNXJvSlVkZ01TVldDa1Vy?=
 =?utf-8?B?cEE3K3FweHp5OEQwc01acU5sYkdzcHo2Q3NtWVhrY09kcllTREN6YzVVOWlF?=
 =?utf-8?B?UW5OcFdtbXRlRURTMDZSMmovcUtTQmNQMlF5R0syZ2YwaEZ4SldFcTlBc0tx?=
 =?utf-8?B?MnpCY1ZEdU52b3RmNTgrc2dCQ0pvNHNqeTh2L2ZPVk91dE8rbnM0cmFuSkJr?=
 =?utf-8?B?bERtNGxRYWhzWDFNeXZaeWU5ejM4dDFZcmtKMkNDVk0rSkV1eUlSQlZNR2Zm?=
 =?utf-8?B?ZEJUdjFYSGQxM21EamwvTHZiaTNRM242NWJYWEt2WE1ORXBCWVhJZ0VDVmlr?=
 =?utf-8?B?UUU1amVzSGc0WWt5Z3RnZHhOWnFJdlJXdFBROFVaZXB4RHlCOUd2VnJjZm94?=
 =?utf-8?B?T3BZVThjSnVyRHdscmZOb25CSTN4Mk40T3B4V29wSGoyazFCdjdWbHd3aXRh?=
 =?utf-8?B?QjlMdkphcW5Gc0d4cy8xenAzMG45Z2R4ZUdpa2FuN2w0SUFac0FhUjlsRDVY?=
 =?utf-8?B?Z3hOWUhydUp3MlJ1NTcyS3hWU3BRYUhOa3ZyTDZQVExiZkhGMTR1SnBmcEww?=
 =?utf-8?B?c3RFU2xURjBYbW5GTjkrUlh1dWFuZXJiTlNSZGRNMkNnNTllcUtVSXZqTmRq?=
 =?utf-8?B?ZEUyOVc4Sjk4Qkpjc29udHhBdmYxNE1FV3B4V1lTVHFGVVpabEEwa3pkOTR0?=
 =?utf-8?B?UnpvOGpWZkFnc1FnaTV3aXpjVlQ3STR6UGVNeHFFa2ZrL0NOeEVBOW5icUh0?=
 =?utf-8?B?dXQ5SDhXSk45OHcwc2kyTEUvdVg5L2t0UVNsSFNVVVFWSXdta0lpbGI5WHlS?=
 =?utf-8?B?TUcwdGNoZU96cnRCQWpBMXRqM0dCN2VkaVVjQ01lT0FuZXF0YVRLdG0rcVVK?=
 =?utf-8?B?YitPaUdpaDVreitMWVJPSkdvbXhUWllpZS91T0JiRDlUbnNvTm9CelozK0JC?=
 =?utf-8?B?czNuYVhlM0t1Q3ZsN1NDV3lXTUJ3WGtTeGZmczExVmo3bXpoejVSM3RXQjE4?=
 =?utf-8?B?ZHFpYnJxVlMrMDJOdG1kaVNxY0g2Z1BsQ29rSEdnN203VFBqTytPczFRWnd4?=
 =?utf-8?B?N1Q4UWh1WXBBdU93Y0tOeDZZbjdsbDkxb2U0NEV4VlJkWnBMVXBEUVowc251?=
 =?utf-8?Q?XEIaJ1Z6AfyJXLh4zRAn7jyxc?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 22a7e64c-6213-4675-be5a-08dc36ba5151
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Feb 2024 11:01:43.5765 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: e5FWGSeP3oML3AeEhKuVW5NjOuumBzRB04EmSZ7Q9Ct9OlZMijSSq54+L6NYwPa7Kubpw30Gu+r3uhgQqfaOvw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8136
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKb3VuaQ0K
PiBIw7ZnYW5kZXINCj4gU2VudDogVHVlc2RheSwgRmVicnVhcnkgMjAsIDIwMjQgNTo0MSBQTQ0K
PiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogSG9nYW5kZXIsIEpv
dW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCB2MiAyLzZd
IGRybS9pOTE1L3BzcjogQ2FsY3VsYXRlIGF1eCBsZXNzIHdha2UgdGltZQ0KPiANCj4gQ2FsY3Vs
YXRlIGF1eCBsZXNzIHdha2UgdGltZSBhbmQgc3RvcmUgaXQgaW50byBhbHBtX3BhcmFtcyBzdHJ1
Y3QNCj4gDQo+IEJzcGVjOiA3MTQ3Nw0KPiANCj4gdjI6DQo+ICAgLSB1c2UgdmFyaWFibGVzIGlu
c3RlYWQgb2YgdmFsdWVzIGRpcmVjdGx5DQo+ICAgLSBmaXggbWF4IHZhbHVlDQo+ICAgLSBtb3Zl
IGNvbnZlcnRpbmcgcG9ydCBjbG9jayB0byBNaHogaW50bw0KPiBfbG5sX2NvbXB1dGVfYXV4X2xl
c3Nfd2FrZV90aW1lDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5p
LmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gLS0tDQo+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X3R5cGVzLmggICAgfCAgMSArDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jICAgICAgfCA2MCArKysrKysrKysrKysrKysrKysrDQo+ICAyIGZpbGVz
IGNoYW5nZWQsIDYxIGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+IGluZGV4IDBkNDAxMjA5
N2RiMS4uYTUzMWMxZTVhZjIwIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBAQCAtMTcyMSw2ICsxNzIxLDcgQEAg
c3RydWN0IGludGVsX3BzciB7DQo+IA0KPiAgCQkvKiBMTkwgYW5kIGJleW9uZCAqLw0KPiAgCQl1
OCBjaGVja19lbnRyeV9saW5lczsNCj4gKwkJdTggYXV4X2xlc3Nfd2FrZV9saW5lczsNCj4gIAl9
IGFscG1fcGFyYW1ldGVyczsNCj4gDQo+ICAJa3RpbWVfdCBsYXN0X2VudHJ5X2F0dGVtcHQ7DQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCA3MmNh
ZGFkMDlkYjUuLjgzZjNjYWIzMTg3OCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jDQo+IEBAIC0xMTI2LDYgKzExMjYsNjMgQEAgc3RhdGljIGJvb2wNCj4g
X2NvbXB1dGVfcHNyMl9zZHBfcHJpb3Jfc2NhbmxpbmVfaW5kaWNhdGlvbihzdHJ1Y3QgaW50ZWxf
ZHAgKmludGVsX2QNCj4gIAlyZXR1cm4gdHJ1ZTsNCj4gIH0NCj4gDQo+ICsvKg0KPiArICogQVVY
LUxlc3MgV2FrZSBUaW1lID0gQ0VJTElORyggKChQSFkgUDIgdG8gUDApICsgdExGUFNfUGVyaW9k
LCBNYXgrDQo+ICsgKiB0U2lsZW5jZSwgTWF4KyB0UEhZIEVzdGFibGlzaG1lbnQgKyB0Q0RTKSAv
IHRsaW5lKQ0KPiArICogRm9yIHRoZSAiUEhZIFAyIHRvIFAwIiBsYXRlbmN5IHNlZSB0aGUgUEhZ
IFBvd2VyIENvbnRyb2wgcGFnZQ0KPiArICogKFBIWSBQMiB0byBQMCkgOg0KPiAraHR0cHM6Ly9n
ZnhzcGVjcy5pbnRlbC5jb20vUHJlZGF0b3IvSG9tZS9JbmRleC82ODk2NQ0KPiArICogOiAxMiB1
cw0KPiArICogVGhlIHRMRlBTX1BlcmlvZCwgTWF4IHRlcm0gaXMgODAwbnMNCj4gKyAqIFRoZSB0
U2lsZW5jZSwgTWF4IHRlcm0gaXMgMTgwbnMNCj4gKyAqIFRoZSB0UEhZIEVzdGFibGlzaG1lbnQg
KGEuay5hLiB0MSkgdGVybSBpcyA1MHVzDQo+ICsgKiBUaGUgdENEUyB0ZXJtIGlzIDEgb3IgMiB0
aW1lcyB0Mg0KPiArICogdDIgPSBOdW1iZXIgTUxfUEhZX0xPQ0sgKiB0TUxfUEhZX0xPQ0sNCj4g
KyAqIE51bWJlciBNTF9QSFlfTE9DSyA9ICggNyArIENFSUxJTkcoIDYuNXVzIC8gdE1MX1BIWV9M
T0NLICkgKyAxKQ0KPiArICogUm91bmRpbmcgdXAgdGhlIDYuNXVzIHBhZGRpbmcgdG8gdGhlIG5l
eHQgTUxfUEhZX0xPQ0sgYm91bmRhcnkgYW5kDQo+ICsgKiBhZGRpbmcgdGhlICIrIDEiIHRlcm0g
ZW5zdXJlcyBhbGwgTUxfUEhZX0xPQ0sgc2VxdWVuY2VzIHRoYXQgc3RhcnQNCj4gKyAqIHdpdGhp
biB0aGUgQ0RTIHBlcmlvZCBjb21wbGV0ZSB3aXRoaW4gdGhlIENEUyBwZXJpb2QgcmVnYXJkbGVz
cyBvZg0KPiArICogZW50cnkgaW50byB0aGUgcGVyaW9kDQo+ICsgKiB0TUxfUEhZX0xPQ0sgPSBU
UFM0IExlbmd0aCAqICggMTAgLyAoTGluayBSYXRlIGluIE1IeikgKQ0KPiArICogVFBTNCBMZW5n
dGggPSAyNTIgU3ltYm9scw0KPiArICovDQo+ICtzdGF0aWMgaW50IF9sbmxfY29tcHV0ZV9hdXhf
bGVzc193YWtlX3RpbWUoaW50IHBvcnRfY2xvY2spIHsNCj4gKwlpbnQgdHBoeTJfcDJfdG9fcDAg
PSAxMiAqIDEwMDA7DQo+ICsJaW50IHRsZnBzX3BlcmlvZF9tYXggPSA4MDA7DQo+ICsJaW50IHRz
aWxlbmNlX21heCA9IDE4MDsNCj4gKwlpbnQgdDEgPSA1MCAqIDEwMDA7DQo+ICsJaW50IHRwczQg
PSAyNTI7DQo+ICsJaW50IHRtbF9waHlfbG9jayA9IDEwMDAgKiAxMDAwICogdHBzNCAqIDEwIC8g
cG9ydF9jbG9jazsNCj4gKwlpbnQgbnVtX21sX3BoeV9sb2NrID0gNyArIERJVl9ST1VORF9VUCg2
NTAwLCB0bWxfcGh5X2xvY2spICsgMTsNCj4gKwlpbnQgdDIgPSBudW1fbWxfcGh5X2xvY2sgKiB0
bWxfcGh5X2xvY2s7DQo+ICsJaW50IHRjZHMgPSAxICogdDI7DQo+ICsNCj4gKwlyZXR1cm4gRElW
X1JPVU5EX1VQKHRwaHkyX3AyX3RvX3AwICsgdGxmcHNfcGVyaW9kX21heCArDQo+IHRzaWxlbmNl
X21heCArDQo+ICsJCQkgICAgdDEgKyB0Y2RzLCAxMDAwKTsNCj4gK30NCj4gKw0KPiArc3RhdGlj
IGludCBfbG5sX2NvbXB1dGVfYXV4X2xlc3NfYWxwbV9wYXJhbXMoc3RydWN0IGludGVsX2RwICpp
bnRlbF9kcCwNCj4gKwkJCQkJICAgICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0
ZSkNCj4gew0KPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZHBfdG9faTkxNShp
bnRlbF9kcCk7DQo+ICsJaW50IGF1eF9sZXNzX3dha2VfdGltZSwgYXV4X2xlc3Nfd2FrZV9saW5l
czsNCj4gKw0KPiArCWF1eF9sZXNzX3dha2VfdGltZSA9DQo+ICsJCV9sbmxfY29tcHV0ZV9hdXhf
bGVzc193YWtlX3RpbWUoY3J0Y19zdGF0ZS0+cG9ydF9jbG9jayk7DQo+ICsJYXV4X2xlc3Nfd2Fr
ZV9saW5lcyA9IGludGVsX3VzZWNzX3RvX3NjYW5saW5lcygmY3J0Y19zdGF0ZS0NCj4gPmh3LmFk
anVzdGVkX21vZGUsDQo+ICsJCQkJCQkgICAgICAgYXV4X2xlc3Nfd2FrZV90aW1lKTsNCj4gKw0K
PiArCWlmIChhdXhfbGVzc193YWtlX2xpbmVzID4gNjMpDQo+ICsJCXJldHVybiBmYWxzZTsNCj4g
Kw0KPiArCWlmIChpOTE1LT5kaXNwbGF5LnBhcmFtcy5wc3Jfc2FmZXN0X3BhcmFtcykNCj4gKwkJ
YXV4X2xlc3Nfd2FrZV9saW5lcyA9IDYzOw0KDQpPdmVyYWxsIGNoYW5nZXMgbG9va3MgZ29vZCB0
byBtZSwganVzdCBhIG5pdHBpY2sgLSBnb29kIHRvIGhhdmUgc29tZSBtYWNybyBpbnN0ZWFkIG9m
IG1hZ2ljIG51bWJlciA2My4NCg0KUmVnYXJkcywNCkFuaW1lc2gNCj4gKw0KPiArCWludGVsX2Rw
LT5wc3IuYWxwbV9wYXJhbWV0ZXJzLmF1eF9sZXNzX3dha2VfbGluZXMgPQ0KPiArYXV4X2xlc3Nf
d2FrZV9saW5lczsNCj4gKw0KPiArCXJldHVybiB0cnVlOw0KPiArfQ0KPiArDQo+ICBzdGF0aWMg
Ym9vbCBfbG5sX2NvbXB1dGVfYWxwbV9wYXJhbXMoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwN
Cj4gIAkJCQkgICAgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKSAgeyBAQCAt
DQo+IDExNDIsNiArMTE5OSw5IEBAIHN0YXRpYyBib29sIF9sbmxfY29tcHV0ZV9hbHBtX3BhcmFt
cyhzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwLA0KPiAgCWlmIChjaGVja19lbnRyeV9saW5l
cyA+IDE1KQ0KPiAgCQlyZXR1cm4gZmFsc2U7DQo+IA0KPiArCWlmICghX2xubF9jb21wdXRlX2F1
eF9sZXNzX2FscG1fcGFyYW1zKGludGVsX2RwLCBjcnRjX3N0YXRlKSkNCj4gKwkJcmV0dXJuIGZh
bHNlOw0KPiArDQo+ICAJaWYgKGk5MTUtPmRpc3BsYXkucGFyYW1zLnBzcl9zYWZlc3RfcGFyYW1z
KQ0KPiAgCQljaGVja19lbnRyeV9saW5lcyA9IDE1Ow0KPiANCj4gLS0NCj4gMi4zNC4xDQoNCg==
