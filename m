Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD37B860BA9
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Feb 2024 08:59:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D7B910EB16;
	Fri, 23 Feb 2024 07:59:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dtHt/aBt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A422A10EB14;
 Fri, 23 Feb 2024 07:59:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708675182; x=1740211182;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ceM3oNeRgFBHe8n/0uNuP4nSFZuqTq0uQwp96h8Na6k=;
 b=dtHt/aBtZoucBkanM/j2cmpdYw51iGCFeBH8rmUwX5KUenvcF+tx5FLw
 p9ospz/CJkrOhRYozGDrar6v5WFFLEO2oOH4s+4q0bFqnOWvVVhto0w85
 piFaoy++TR5IveHdFz7wRWBfRYknsW96MTOzM2XeT9G3NgiswJQdkWW0r
 5TYdRLQcf66sfRAbq20CYJ9Kjckm2iRSGw5d4bdYtM4SIreBPAJjO/9u2
 s7pGZj9mmUaH3I7AY19KbQCjgUGJiLlsIH0iRjgI0OQonxt4P5GUjSqQx
 2IOypvysmEWTs0CQ4XHSr7AzNEYfaHSwAkYe88ITMrPzqYiWMWADDLKqp Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="13540806"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; d="scan'208";a="13540806"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 23:59:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="5807822"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Feb 2024 23:59:42 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 22 Feb 2024 23:59:40 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 22 Feb 2024 23:59:40 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 22 Feb 2024 23:59:40 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 22 Feb 2024 23:59:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=APlsIfwZB40sglswgYgpIIvuQ2Yf6OlV5idtviTCnIYMtvCwP+8UXcBx992TCNiHsy810LQQMw31f6XmHQ2+ImEkzhFSHHy2OMf/Wd5Ge3/IvMUBHLR19nood/mHzRHfPPpZXfmA9uSx7lVeoZQU/M7Yjwe4vqsVIcmCSeXxuBT2sEwEK5aKfMqaHYZ8TvE+QZ9grOcAcdp74tUdFrnHUXm8lsu+YkEDQxvs3eKt6gcLPGuXsPjqJ2kPyUklgrpak6ljD2Z3rLkDU/1jXBXiVakXg7TB909K3FqaN6mpbrjDXh1Cfldfm5OgsOvhCnrrKv14P5LOC5tmbNDAsfrBxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ceM3oNeRgFBHe8n/0uNuP4nSFZuqTq0uQwp96h8Na6k=;
 b=FprFF9hjsr+nchmaWLNYIeAWLWHrNywcN3jDHEcW1W4nauh4nGOvQsP8zI0yI3bwNs8NpLrSK+KdrbKMrhm0GqYazker3YB8xvq8eJqkkM/zzXT4bWNA9nyKBb3htn0q/wwWedU69B+WJ7gb7csGonnoA1p2TLIN3l61kBMRlp1z1MT8z2bWhDcx3pnE4IlcuYZFZKJ0i5pE/Qxz9Yb46TXdJW4QfLZKasvxDem0CJYSkKFwmDB4f6zODAI/A75wLobpBEriulrT6hQ1tFB9e5itJKjYh/PW989zrVl7lmYFFj+hcLMqmEfYEfvlmJ99ubiEPYauFQJNkLwd6tyzRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 MW6PR11MB8311.namprd11.prod.outlook.com (2603:10b6:303:241::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7316.22; Fri, 23 Feb
 2024 07:59:32 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::590:38d5:5c7c:3e4d]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::590:38d5:5c7c:3e4d%7]) with mapi id 15.20.7316.018; Fri, 23 Feb 2024
 07:59:32 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "dri-devel@lists.freedesktop.org"
 <dri-devel@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH v2 04/21] drm/i915/dp: Add support to notify MST
 connectors to retry modesets
Thread-Topic: [PATCH v2 04/21] drm/i915/dp: Add support to notify MST
 connectors to retry modesets
Thread-Index: AQHaZEJtUrgyrPAPTEGkGDlPZEudxLEXk8mg
Date: Fri, 23 Feb 2024 07:59:32 +0000
Message-ID: <DM4PR11MB6360BF2C08ADD405804B5FF5F4552@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240220211841.448846-1-imre.deak@intel.com>
 <20240220211841.448846-5-imre.deak@intel.com>
In-Reply-To: <20240220211841.448846-5-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|MW6PR11MB8311:EE_
x-ms-office365-filtering-correlation-id: 518dfeef-75d2-4401-be92-08dc34455e6b
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0IjRugPJxwcwVp30WT0mQs8s9Rn7VE1l1kXQbMo/UpC7i5ZOXTq5jjkvwX4T205JP/lHPBRFBvlD5TSh+kxFu/IbK3TnL10FYNAnwPQ2aMGWuUl1iNLP5M0np6GGX81dKYcJu1eU8ZHtdjaUQHw1BVe8mlV0RMM7qnIPKWPnPQtj30vjKR/PE/7xGja02MqbhdemiPPCoOF9Cr1tZ7t8mTu4wUIxPDHzXcot/szVRAjQU9pGmyFUlPLiY/0DQlO69rtJ1HYK3tD34BYDRlvTeB0y7EMolVdLbuLiNP171yewaHuGOlJZu0B1gzfITsZSbqg+335Aj89vrl4adfojfuDi+hgqDDCzDBEKoDSfgu0xVQm1rfYDxxZuxQFjt7uGF074MLwSYEeMqxrpK9Elf5f95sHlWkkESpcz7l/b7q1//oS/FU0zU39EkHveQEzx+nPrNk2cO8GDyXYN+IYkDp5/E8ZFw+9c7jG55sDZ//EgF4Ra9Dvk4tzuYZ34PRnEYZRGvLtonhRBNlEEDsNpv1Y5fs+TN7/1McyIW84X8jWgrKQ0FB1xugZpqklu8L1SN2vZaCa2rs1WvwEadkfhM8fhFnACx34YW+rKMIhOCw2YtD70+CNMBdzKzLHq16wT
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MWlTeTM5T0ltUDlDMWFvd0U4VTRkeW1sTjlQSDFpZ1JteDhOZFM0cFVCeVJT?=
 =?utf-8?B?UVVrV2JlVEo2NGR3cHZtcWNReE4vTEMxRGR0VkNGU2k1R1dqK0dNam5vK0E2?=
 =?utf-8?B?QVdja3NaVFpJQVhQK2psZE9TM3JiYkx1NUNhbmhVMWJBSjV1bDMvQVZmbTVk?=
 =?utf-8?B?enp3T0dNc3k1SlRQV0NjYUFIYjJiTTdDQmx3RE1PU0ZrK3FXWHJTQWNjNkc0?=
 =?utf-8?B?d1M3eEZ5OU1QazA4UEJZUGR6UTlJRUhLUjN3NnJRdXptYXkxRlpmM093ZkxZ?=
 =?utf-8?B?VkI1My83dVk1QmZWWVJaaERNUEhOVFJoVSttcDkvRjI4VjdzTlVvYjFybmxK?=
 =?utf-8?B?Vlg5WlpTenlFeU1tL3JaeE05dXFOTVROSm92SVBSSzhTVkJDQzdmbEtqdE9a?=
 =?utf-8?B?SnVRYTZFOTBQeDFNZWhkR3FJdVVWaG10SWVzZlpYbGdsenoyelpHNStoS1F4?=
 =?utf-8?B?UFFpOE9rKzZCcTk0bHE0ZXIxRGh2blozWjhtWVJ1SmJoOGcrcDBzUlNVMWxt?=
 =?utf-8?B?UzBlNmVoV0R0Z2dDaUk3dnVKMUlPTmkyQnlZZXFIZy9scFFJdHUrZldtcFRi?=
 =?utf-8?B?U1dpR2V5bm5oajgyUk5VbE1BQ3hSOUlmdmpZNDV3QzA2TDVsbUppSmkwN29G?=
 =?utf-8?B?YzlOaWRHa0JFZjNHR2JuWTRDcW9JamZJSXg3WkZReDZzRUtIYjVydVQrWjA1?=
 =?utf-8?B?NjFvL1FGMThVb2VwWmcvZ1BmdUlmUklndTVRUUc2ajM0UFg3UUNUMWNHZXQv?=
 =?utf-8?B?Nlh3YzBKUzlONGJZclZSU1YzL3l5QjNsN2ZYNVRZQzdYdmtKOWszWVlTTU9a?=
 =?utf-8?B?Ym41NDhQcThSSWFpUHdic3FaNHVZNVpFU3Y1THFiYy9CZmozT25yM1ZUN2hZ?=
 =?utf-8?B?RkM5eFB0cU5tN2VXWVk2OHpyZ3ByT0lTY2xEaGRWT2ViUm1NM3Y2YXdoWVht?=
 =?utf-8?B?Y1pqa1hXbWpLM0gvaEFnK2s2a05HaTlwVnpUODFjNVNXait5VWxEMldLeEph?=
 =?utf-8?B?d2E0amJveE5Rc1lqakpHMy9nT0s3ZHovNlFmTkF0YWJlcHQxZ2ZNbitEclBK?=
 =?utf-8?B?d1Z1alFWNW14TDlqZ2k2NGZNenlYZlZ5OE5YT2x4RWdGOGd5YzN2bTNZck1p?=
 =?utf-8?B?bi9NYnJBNW55ZllmTkJjOEJhQWtobGNsN3dxZ1FYZzJiYWR3TCtFV2UyUWp1?=
 =?utf-8?B?Rkp6NFVVWUhZQlpLWHVnVm94Q0IrOGhJb2I3UGp1cmhoZ0VUOS9ZaE9qcHZO?=
 =?utf-8?B?YmdXd3Z2OERwOHQxQ1pRN0lzbFhuSFpmMzlwVWNzYS9teGZmaGZ4ci9GQ0xm?=
 =?utf-8?B?Q2VOcjloeEVWUjE4bUZlQmYyVzdmNkh3dzlYclUvNFR5R0pxaDl1Q2s1T0p1?=
 =?utf-8?B?a21OTVRmSmNXeWdad2VSdXdZdUE5dWFWZ0VTWVlkcDljQklCeU51OWhWcXMy?=
 =?utf-8?B?MFMxSmFFSmJ3enZFcUpDQnFRV2E1cGtWcm1TTmVDQXJQZ0VZZlUyWFg4QmlQ?=
 =?utf-8?B?RUw3L3VGTlBFWllSTnkrUjhmWjNYM2lvR2lVU2V5R2FQbE9LWkhaUy9jZUgx?=
 =?utf-8?B?VnpCSFV2ZU5zbXJBTFY3a2RBbVY2TEEwTEtKaEVNdVhWQldmckROSmxSSG9w?=
 =?utf-8?B?alZjQUZ1Z0xMVis3MmVKNDB3aFRDS3JkeXBUREhkODZZL1hPTmxUMmFvYkxP?=
 =?utf-8?B?RHpiTGw5VVJoazZlZEQ0OXBycjc3N0xaSEUyaGZKR0t6L2pUMEd4ZU9hY292?=
 =?utf-8?B?WG1tOHc0eXEzV2tjMjcxVWhUenBvdDRlM00rUTNVYXFxOXhIb0tNSTZjNUJa?=
 =?utf-8?B?UGRSUG9zeXZtNy9YQUg1RnE2bEFEWHJuelUxK3U5UlNWb2FwMlBEOFgwUGJG?=
 =?utf-8?B?eDIxVEoyam4vS0hiNWRKTjBVZ3I0Tm9NcGxORlFrOUp3T0lTQVFMTkk4dE1p?=
 =?utf-8?B?TTFzNzlmekFKOUNKKzcwNUJjb2R2SnB0NXF3SmFnakJsM1Zmdm5kVjUrOWZM?=
 =?utf-8?B?Z3FwaXR1Mnc2NVhYeTA5Vm5hcHUxN0ZscFRrOEtjRjFBWEZuUWtOaURDQ3Ry?=
 =?utf-8?B?aFhieFRGQWpCUzQ1SUJMbkJJV2M1MUlobU9qUUhpZFo5TFhrbm1wL3ptZWZV?=
 =?utf-8?Q?pG7Hdymt7J5JeusLKcu+df73b?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 518dfeef-75d2-4401-be92-08dc34455e6b
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Feb 2024 07:59:32.1137 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uMws/KLEmTZcR0qpRkUMous7jcuto6rh+rAzbDoPKrGwe08LLRdd40FNPzWAAnO8x952UnAwWCiWE+1+Q2C6/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8311
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
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBJbXJlDQo+
IERlYWsNCj4gU2VudDogV2VkbmVzZGF5LCBGZWJydWFyeSAyMSwgMjAyNCAyOjQ4IEFNDQo+IFRv
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBkcmktZGV2ZWxAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnDQo+IENjOiBIb2dhbmRlciwgSm91bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNv
bT4NCj4gU3ViamVjdDogW1BBVENIIHYyIDA0LzIxXSBkcm0vaTkxNS9kcDogQWRkIHN1cHBvcnQg
dG8gbm90aWZ5IE1TVCBjb25uZWN0b3JzIHRvDQo+IHJldHJ5IG1vZGVzZXRzDQo+IA0KPiBPbiBz
aGFyZWQgKFRodW5kZXJib2x0KSBsaW5rcyB3aXRoIERQIHR1bm5lbHMsIHRoZSBtb2Rlc2V0IG1h
eSBuZWVkIHRvIGJlDQo+IHJldHJpZWQgb24gYWxsIGNvbm5lY3RvcnMgb24gdGhlIGxpbmsgZHVl
IHRvIGEgbGluayBCVyBsaW1pdGF0aW9uIGFyaXNpbmcgb25seSBhZnRlcg0KPiB0aGUgYXRvbWlj
IGNoZWNrIHBoYXNlLiBUbyBzdXBwb3J0IHRoaXMgYWRkIGEgaGVscGVyIGZ1bmN0aW9uIHF1ZXVp
bmcgYSB3b3JrIHRvDQo+IHJldHJ5IHRoZSBtb2Rlc2V0IG9uIGEgZ2l2ZW4gcG9ydCdzIGNvbm5l
Y3RvciBhbmQgYXQgdGhlIHNhbWUgdGltZSBhbnkgTVNUDQo+IGNvbm5lY3RvciB3aXRoIHN0cmVh
bXMgdGhyb3VnaCB0aGUgc2FtZSBwb3J0LiBBIGZvbGxvdy11cCBjaGFuZ2UgZW5hYmxpbmcgdGhl
DQo+IERQIHR1bm5lbCBCYW5kd2lkdGggQWxsb2NhdGlvbiBNb2RlIHdpbGwgdGFrZSB0aGlzIGlu
dG8gdXNlLg0KPiANCj4gdjI6DQo+IC0gU2VuZCB0aGUgdWV2ZW50IG9ubHkgdG8gZW5hYmxlZCBN
U1QgY29ubmVjdG9ycy4gKEpvdW5pKQ0KDQpMb29rcyBHb29kIHRvIG1lLg0KUmV2aWV3ZWQtYnk6
IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQoNCj4gQ2M6IEpvdW5pIEjDtmdh
bmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERl
YWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgIHwgIDUgKystDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMgICAgICAgfCA0NSArKysrKysrKysrKysrKysrKystDQo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmggICAgICAgfCAgNiArKysNCj4g
IC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYyB8ICAzICstDQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jICAgfCAgMiArDQo+
ICA1IGZpbGVzIGNoYW5nZWQsIDU1IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQo+IA0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBp
bmRleCA0ODVjMzhkNzFmMTA2Li4yZWUyNmQxOWMyMDBiIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBAQCAtODA4NSw4ICs4MDg1LDkg
QEAgdm9pZCBpbnRlbF9ocGRfcG9sbF9maW5pKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlDQo+ICpp
OTE1KQ0KPiAgCS8qIEtpbGwgYWxsIHRoZSB3b3JrIHRoYXQgbWF5IGhhdmUgYmVlbiBxdWV1ZWQg
YnkgaHBkLiAqLw0KPiAgCWRybV9jb25uZWN0b3JfbGlzdF9pdGVyX2JlZ2luKCZpOTE1LT5kcm0s
ICZjb25uX2l0ZXIpOw0KPiAgCWZvcl9lYWNoX2ludGVsX2Nvbm5lY3Rvcl9pdGVyKGNvbm5lY3Rv
ciwgJmNvbm5faXRlcikgew0KPiAtCQlpZiAoY29ubmVjdG9yLT5tb2Rlc2V0X3JldHJ5X3dvcmsu
ZnVuYykNCj4gLQkJCWNhbmNlbF93b3JrX3N5bmMoJmNvbm5lY3Rvci0+bW9kZXNldF9yZXRyeV93
b3JrKTsNCj4gKwkJaWYgKGNvbm5lY3Rvci0+bW9kZXNldF9yZXRyeV93b3JrLmZ1bmMgJiYNCj4g
KwkJICAgIGNhbmNlbF93b3JrX3N5bmMoJmNvbm5lY3Rvci0+bW9kZXNldF9yZXRyeV93b3JrKSkN
Cj4gKwkJCWRybV9jb25uZWN0b3JfcHV0KCZjb25uZWN0b3ItPmJhc2UpOw0KPiAgCQlpZiAoY29u
bmVjdG9yLT5oZGNwLnNoaW0pIHsNCj4gIAkJCWNhbmNlbF9kZWxheWVkX3dvcmtfc3luYygmY29u
bmVjdG9yLQ0KPiA+aGRjcC5jaGVja193b3JrKTsNCj4gIAkJCWNhbmNlbF93b3JrX3N5bmMoJmNv
bm5lY3Rvci0+aGRjcC5wcm9wX3dvcmspOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcC5jDQo+IGluZGV4IDIxNzE5NjE5NmU1MGEuLjg4NjA2ZTMzNmE5MjAgMTAwNjQ0
DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gQEAgLTI4NDIsNiAr
Mjg0Miw0MCBAQCBpbnRlbF9kcF9hdWRpb19jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5j
b2Rlcg0KPiAqZW5jb2RlciwNCj4gIAkJCQkJaW50ZWxfZHBfaXNfdWhicihwaXBlX2NvbmZpZyk7
DQo+ICB9DQo+IA0KPiArdm9pZCBpbnRlbF9kcF9xdWV1ZV9tb2Rlc2V0X3JldHJ5X3dvcmsoc3Ry
dWN0IGludGVsX2Nvbm5lY3Rvcg0KPiArKmNvbm5lY3Rvcikgew0KPiArCXN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1ID0gdG9faTkxNShjb25uZWN0b3ItPmJhc2UuZGV2KTsNCj4gKw0KPiAr
CWRybV9jb25uZWN0b3JfZ2V0KCZjb25uZWN0b3ItPmJhc2UpOw0KPiArCWlmICghcXVldWVfd29y
ayhpOTE1LT51bm9yZGVyZWRfd3EsICZjb25uZWN0b3ItDQo+ID5tb2Rlc2V0X3JldHJ5X3dvcmsp
KQ0KPiArCQlkcm1fY29ubmVjdG9yX3B1dCgmY29ubmVjdG9yLT5iYXNlKTsNCj4gK30NCj4gKw0K
PiArdm9pZA0KPiAraW50ZWxfZHBfcXVldWVfbW9kZXNldF9yZXRyeV9mb3JfbGluayhzdHJ1Y3Qg
aW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gKwkJCQkgICAgICBzdHJ1Y3QgaW50ZWxfZW5j
b2RlciAqZW5jb2RlciwNCj4gKwkJCQkgICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSkgew0KPiArCXN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvcjsN
Cj4gKwlzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9jb25uZWN0b3Jfc3RhdGUgKmNvbm5fc3RhdGU7DQo+
ICsJc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9IGVuY190b19pbnRlbF9kcChlbmNvZGVyKTsN
Cj4gKwlpbnQgaTsNCj4gKw0KPiArCWlmICghaW50ZWxfY3J0Y19oYXNfdHlwZShjcnRjX3N0YXRl
LCBJTlRFTF9PVVRQVVRfRFBfTVNUKSkgew0KPiArCQlpbnRlbF9kcF9xdWV1ZV9tb2Rlc2V0X3Jl
dHJ5X3dvcmsoaW50ZWxfZHAtDQo+ID5hdHRhY2hlZF9jb25uZWN0b3IpOw0KPiArDQo+ICsJCXJl
dHVybjsNCj4gKwl9DQo+ICsNCj4gKwlmb3JfZWFjaF9uZXdfaW50ZWxfY29ubmVjdG9yX2luX3N0
YXRlKHN0YXRlLCBjb25uZWN0b3IsIGNvbm5fc3RhdGUsIGkpIHsNCj4gKwkJaWYgKCFjb25uX3N0
YXRlLT5iYXNlLmNydGMpDQo+ICsJCQljb250aW51ZTsNCj4gKw0KPiArCQlpZiAoY29ubmVjdG9y
LT5tc3RfcG9ydCA9PSBpbnRlbF9kcCkNCj4gKwkJCWludGVsX2RwX3F1ZXVlX21vZGVzZXRfcmV0
cnlfd29yayhjb25uZWN0b3IpOw0KPiArCX0NCj4gK30NCj4gKw0KPiAgaW50DQo+ICBpbnRlbF9k
cF9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gIAkJCXN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZywgQEAgLTY0NDEsNg0KPiArNjQ3NSwx
NCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kcF9tb2Rlc2V0X3JldHJ5X3dvcmtfZm4oc3RydWN0IHdv
cmtfc3RydWN0DQo+ICp3b3JrKQ0KPiAgCW11dGV4X3VubG9jaygmY29ubmVjdG9yLT5kZXYtPm1v
ZGVfY29uZmlnLm11dGV4KTsNCj4gIAkvKiBTZW5kIEhvdHBsdWcgdWV2ZW50IHNvIHVzZXJzcGFj
ZSBjYW4gcmVwcm9iZSAqLw0KPiAgCWRybV9rbXNfaGVscGVyX2Nvbm5lY3Rvcl9ob3RwbHVnX2V2
ZW50KGNvbm5lY3Rvcik7DQo+ICsNCj4gKwlkcm1fY29ubmVjdG9yX3B1dChjb25uZWN0b3IpOw0K
PiArfQ0KPiArDQo+ICt2b2lkIGludGVsX2RwX2luaXRfbW9kZXNldF9yZXRyeV93b3JrKHN0cnVj
dCBpbnRlbF9jb25uZWN0b3INCj4gKypjb25uZWN0b3IpIHsNCj4gKwlJTklUX1dPUksoJmNvbm5l
Y3Rvci0+bW9kZXNldF9yZXRyeV93b3JrLA0KPiArCQkgIGludGVsX2RwX21vZGVzZXRfcmV0cnlf
d29ya19mbik7DQo+ICB9DQo+IA0KPiAgYm9vbA0KPiBAQCAtNjQ1Nyw4ICs2NDk5LDcgQEAgaW50
ZWxfZHBfaW5pdF9jb25uZWN0b3Ioc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydA0KPiAqZGlnX3Bv
cnQsDQo+ICAJaW50IHR5cGU7DQo+IA0KPiAgCS8qIEluaXRpYWxpemUgdGhlIHdvcmsgZm9yIG1v
ZGVzZXQgaW4gY2FzZSBvZiBsaW5rIHRyYWluIGZhaWx1cmUgKi8NCj4gLQlJTklUX1dPUksoJmlu
dGVsX2Nvbm5lY3Rvci0+bW9kZXNldF9yZXRyeV93b3JrLA0KPiAtCQkgIGludGVsX2RwX21vZGVz
ZXRfcmV0cnlfd29ya19mbik7DQo+ICsJaW50ZWxfZHBfaW5pdF9tb2Rlc2V0X3JldHJ5X3dvcmso
aW50ZWxfY29ubmVjdG9yKTsNCj4gDQo+ICAJaWYgKGRybV9XQVJOKGRldiwgZGlnX3BvcnQtPm1h
eF9sYW5lcyA8IDEsDQo+ICAJCSAgICAgIk5vdCBlbm91Z2ggbGFuZXMgKCVkKSBmb3IgRFAgb24g
W0VOQ09ERVI6JWQ6JXNdXG4iLCBkaWZmIC0NCj4gLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuaA0KPiBpbmRleCA1MzBjYzk3YmM0MmY0Li5lMjg3NWUwM2FmYmEwIDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmgNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5oDQo+IEBAIC00Myw2ICs0MywxMiBA
QCB2b2lkIGludGVsX2RwX2FkanVzdF9jb21wbGlhbmNlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZHAN
Cj4gKmludGVsX2RwLCAgYm9vbCBpbnRlbF9kcF9saW1pdGVkX2NvbG9yX3JhbmdlKGNvbnN0IHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRlLA0KPiAgCQkJCSAgY29uc3Qgc3Ry
dWN0IGRybV9jb25uZWN0b3Jfc3RhdGUNCj4gKmNvbm5fc3RhdGUpOyAgaW50IGludGVsX2RwX21p
bl9icHAoZW51bSBpbnRlbF9vdXRwdXRfZm9ybWF0IG91dHB1dF9mb3JtYXQpOw0KPiArdm9pZCBp
bnRlbF9kcF9pbml0X21vZGVzZXRfcmV0cnlfd29yayhzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yDQo+
ICsqY29ubmVjdG9yKTsgdm9pZCBpbnRlbF9kcF9xdWV1ZV9tb2Rlc2V0X3JldHJ5X3dvcmsoc3Ry
dWN0DQo+ICtpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3Rvcik7IHZvaWQNCj4gK2ludGVsX2RwX3F1
ZXVlX21vZGVzZXRfcmV0cnlfZm9yX2xpbmsoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3Rh
dGUsDQo+ICsJCQkJICAgICAgc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ICsJCQkJ
ICAgICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOw0KPiAgYm9v
bCBpbnRlbF9kcF9pbml0X2Nvbm5lY3RvcihzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdf
cG9ydCwNCj4gIAkJCSAgICAgc3RydWN0IGludGVsX2Nvbm5lY3RvciAqaW50ZWxfY29ubmVjdG9y
KTsgIHZvaWQNCj4gaW50ZWxfZHBfc2V0X2xpbmtfcGFyYW1zKHN0cnVjdCBpbnRlbF9kcCAqaW50
ZWxfZHAsIGRpZmYgLS1naXQNCj4gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwX2xpbmtfdHJhaW5pbmcuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHBfbGlua190cmFpbmluZy5jDQo+IGluZGV4IDFhYmZhZmJiZmE3NTcuLjdiMTQwY2JmOGRk
MzEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBf
bGlua190cmFpbmluZy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHBfbGlua190cmFpbmluZy5jDQo+IEBAIC0xMDc1LDcgKzEwNzUsNiBAQCBzdGF0aWMgdm9p
ZA0KPiBpbnRlbF9kcF9zY2hlZHVsZV9mYWxsYmFja19saW5rX3RyYWluaW5nKHN0cnVjdCBpbnRl
bF9kcCAqaW50ZWxfZHAsDQo+ICAJCQkJCQkgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlDQo+ICpjcnRjX3N0YXRlKSAgew0KPiAgCXN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmludGVs
X2Nvbm5lY3RvciA9IGludGVsX2RwLT5hdHRhY2hlZF9jb25uZWN0b3I7DQo+IC0Jc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBkcF90b19pOTE1KGludGVsX2RwKTsNCj4gDQo+ICAJaWYg
KCFpbnRlbF9kaWdpdGFsX3BvcnRfY29ubmVjdGVkKCZkcF90b19kaWdfcG9ydChpbnRlbF9kcCkt
PmJhc2UpKSB7DQo+ICAJCWx0X2RiZyhpbnRlbF9kcCwgRFBfUEhZX0RQUlgsICJMaW5rIFRyYWlu
aW5nIGZhaWxlZCBvbg0KPiBkaXNjb25uZWN0ZWQgc2luay5cbiIpOyBAQCAtMTA5Myw3ICsxMDky
LDcgQEAgc3RhdGljIHZvaWQNCj4gaW50ZWxfZHBfc2NoZWR1bGVfZmFsbGJhY2tfbGlua190cmFp
bmluZyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiAgCX0NCj4gDQo+ICAJLyogU2NoZWR1
bGUgYSBIb3RwbHVnIFVldmVudCB0byB1c2Vyc3BhY2UgdG8gc3RhcnQgbW9kZXNldCAqLw0KPiAt
CXF1ZXVlX3dvcmsoaTkxNS0+dW5vcmRlcmVkX3dxLCAmaW50ZWxfY29ubmVjdG9yLQ0KPiA+bW9k
ZXNldF9yZXRyeV93b3JrKTsNCj4gKwlpbnRlbF9kcF9xdWV1ZV9tb2Rlc2V0X3JldHJ5X3dvcmso
aW50ZWxfY29ubmVjdG9yKTsNCj4gIH0NCj4gDQo+ICAvKiBQZXJmb3JtIHRoZSBsaW5rIHRyYWlu
aW5nIG9uIGFsbCBMVFRQUnMgYW5kIHRoZSBEUFJYIG9uIGEgbGluay4gKi8gZGlmZiAtLWdpdA0K
PiBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMNCj4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jDQo+IGluZGV4IDUzMDdkZGQ0
ZWRjZjUuLmM2ODViNjRiYjc4MTAgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcF9tc3QuYw0KPiBAQCAtMTU0Niw2ICsxNTQ2LDggQEAgc3RhdGljIHN0cnVj
dCBkcm1fY29ubmVjdG9yDQo+ICppbnRlbF9kcF9hZGRfbXN0X2Nvbm5lY3RvcihzdHJ1Y3QgZHJt
X2RwX21zdF90b3BvbG8NCj4gIAlpbnRlbF9jb25uZWN0b3ItPnBvcnQgPSBwb3J0Ow0KPiAgCWRy
bV9kcF9tc3RfZ2V0X3BvcnRfbWFsbG9jKHBvcnQpOw0KPiANCj4gKwlpbnRlbF9kcF9pbml0X21v
ZGVzZXRfcmV0cnlfd29yayhpbnRlbF9jb25uZWN0b3IpOw0KPiArDQo+ICAJaW50ZWxfY29ubmVj
dG9yLT5kcC5kc2NfZGVjb21wcmVzc2lvbl9hdXggPQ0KPiBkcm1fZHBfbXN0X2RzY19hdXhfZm9y
X3BvcnQocG9ydCk7DQo+ICAJaW50ZWxfZHBfbXN0X3JlYWRfZGVjb21wcmVzc2lvbl9wb3J0X2Rz
Y19jYXBzKGludGVsX2RwLA0KPiBpbnRlbF9jb25uZWN0b3IpOw0KPiAgCWludGVsX2Nvbm5lY3Rv
ci0+ZHAuZHNjX2hibGFua19leHBhbnNpb25fcXVpcmsgPQ0KPiAtLQ0KPiAyLjM5LjINCg0K
