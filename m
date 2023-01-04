Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF2B165CE76
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jan 2023 09:40:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8342410E067;
	Wed,  4 Jan 2023 08:40:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D21D910E067
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Jan 2023 08:40:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672821606; x=1704357606;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=qiWiStBTJhI3gl+BsUNyrX6DHXHe5nySqwvotOnV+Mo=;
 b=gTTMm0B883xNiLi9fVCkXCk34rKbrwQFOwh3Sh6za1o985zQzuMfume7
 nTzRIEYMJ97sJ15/dvhE5LOtM4Lj98ENskroiCi10epE+0M+lsapoaA2l
 24SK36cyi5vG+ZDz4MA1GEgJRrbcZA5PbNgvZk79pCaup0NQIhSn2UYST
 dmQ80/dpkgl3nou1yFqJmNpKp65KLnJpJLwXW+Fqkm026uyRnwpG09w0a
 XEWE63WSjjmpc+/uRWrt7602siT0dSN7+aMVy6TpBF47AmlE/wnye8cpI
 xfzLx2OcJpTaLZ5PynK+xP5DKsqQ9JMwsiCxUcW4iCt4W5keiq0mUEuDH w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="319589035"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="319589035"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2023 00:40:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="829115425"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="829115425"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP; 04 Jan 2023 00:40:05 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 4 Jan 2023 00:40:05 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 4 Jan 2023 00:40:05 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 4 Jan 2023 00:40:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XtcrQcdD0hzcUmUziOux2Cnv2Jt4QXztIUXV4cOjRQvaa4kGT12WTbVZBdQeMiaPV0oKvMxZJZWgMl8IMsqaG9XPLGU6I8J5Z1N+6nLcpkNc1QPUYQkBBcSHgcUcsUBwh88u1YQ0r5JDlKNJAV/t1kQ3i+s+7NRuR35dlEfeW7qBY9l9pVruIC2JbaAEHiLzFAuR4kdhYPhpyuV9LbOQ6MhKLwVbhM2U9yFPvvfkRNr9ae3ssL5474f3MdApGrtMgA/MlQ7DQ5SHdpObMkYNj/4IgRC/xMeEf4iTPL2qeiMjAH1BpBluUjVThhuOk9d4rWxcbCa/KtiJW/c7cf5Kxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qiWiStBTJhI3gl+BsUNyrX6DHXHe5nySqwvotOnV+Mo=;
 b=Opim4oVJVf+C7ebM/25uYU1djE4gvFlCZNKfafVpBQyVor2dlrJar3Sw0X+DgasaX7ShJ+i6VIczysAB4Cy2IPjuVa0VQJdIRxlUAoPjj4XlpAPI1lEgD9C6AushhlsczD9rwKAkjH6A9hmlYk0araKMYFexZp/beEoTRPzGA4qVvu8ydz60/GeJanqxmVMKYr4ZgS/JzkwKugvVe9AgHbwG7aUGxyxFF2voDqRElE9EvLu+eS/qC5XN5LacTgW3dnhhXUdsqiJoc100d/3IfsohbYLZOv9LucZAnLq3IZ9VunFRIyxB/rdwaX/6T17mRtEVu2DvMQ4s75q8cNTGEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SJ2PR11MB7647.namprd11.prod.outlook.com (2603:10b6:a03:4c3::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Wed, 4 Jan
 2023 08:40:03 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::f0a1:f049:98db:6cb2]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::f0a1:f049:98db:6cb2%3]) with mapi id 15.20.5944.019; Wed, 4 Jan 2023
 08:40:03 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 02/13] drm/i915/dsb: Inline DSB_CTRL writes
 into intel_dsb_commit()
Thread-Index: AQHZEObPcSzxDU3ZBEiNo/MhD/g+C66OBAXQ
Date: Wed, 4 Jan 2023 08:40:03 +0000
Message-ID: <PH7PR11MB59813B63A184E585BA9DE043F9F59@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20221216003810.13338-1-ville.syrjala@linux.intel.com>
 <20221216003810.13338-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20221216003810.13338-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SJ2PR11MB7647:EE_
x-ms-office365-filtering-correlation-id: eb14387e-1a60-4cf8-98da-08daee2f461b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aH4aobawfMrQKcEKnRJTsHcx8ouZz7uSsBqQOWpcRixEnovBY9StDO9anADGbMkRReJalDbkMIk8FXOjwEVQupdPbfTi+xvHAcO6WWhpGhZvqy0JygTkxo6xZJr7CtTxeMvxf08hgsxdu01q0iDWHQfjCt6vzZMhdb6/OqEPjD/Zrm5K75OGUTmVupxjYa51BD9lXMDv4PXMJZyPtMjCyALPdNFDqx8XwBZfDLuY5pdJZBXW3UQMwxypCDDsRy+BOxGnedTqpNw89WMUJ0Kh57WJ98I97VVhqzEoikMaX80qRLwSYeSRNxGeudrNda7VYA1ZVQxk90vWvc6G10YyV/+2V0ZDq+BXTXmasqFJ9nkgk0B01c2H72sjFOPKrBPucZVKl3lld1aHLAZvHG9CROLdoArlXlpIo3Vv+zGKrYXHbRrQvHawtKouyxqITVDccUIx8eKu2yPwALHbHN5FGxYpZJggco9rf7kP71TDtLmcE3MHOEVHFq4h036Wy4CeAgdm/f7mXjr/mb97c+jDtEURrFA3OX4sfboX+5VGCJe/z5lgV3NA0jZHpnDNDfdtRZXbq6Hs36OqXK76fn664VMx3q0uDphPjtRzYZvkkh6xESJtoViRjQwWHHgb9b1EvU5KQY2WrklhI6gmKIWeA2fjRgdSlWLrIX2pFzSDUzbxU8uPEwQKwD3cF6Q4U0H+VNg7kvM5ReHf+8270cuiqQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(39860400002)(136003)(346002)(366004)(376002)(451199015)(41300700001)(8936002)(66946007)(8676002)(5660300002)(110136005)(316002)(52536014)(2906002)(66556008)(71200400001)(7696005)(55236004)(53546011)(6506007)(66446008)(478600001)(76116006)(64756008)(66476007)(86362001)(55016003)(26005)(186003)(9686003)(83380400001)(38100700002)(122000001)(38070700005)(82960400001)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?am52Ri9vZkkwZ1VtRUQ3WEJWaWtaRnJzUVFnUkdUZ1c3cWJCZkx3S1JUeGsy?=
 =?utf-8?B?K0pGdGliNEdxVDlpMGQ5MTI2ejdMV2h4U0ZqaVJBRCtPS3FYNkd4L1NIUHdl?=
 =?utf-8?B?VHhzc0loRUp6dzNZMjl3NGtrbUlBSnVYaElsMFhkek8xMWE2REtkMGdGQWgx?=
 =?utf-8?B?bWdqcDJmOHRrZHlIRnNvMFNvTFJaM2piaW5VU1gxYk9VVzZGRThMb1RFVW5V?=
 =?utf-8?B?VWxVVm44b0J1WnRJUm9MaVVMSGZHNENuaWdCY0ZMTEVYNGpKMW5ja2tvOUFS?=
 =?utf-8?B?ckRibnk0MlEwaENYYWlNYWhnbmdGRmxTUi9Gd3RISUVjTWZ5dG1KNkRCdjFO?=
 =?utf-8?B?TkNnaTNMQWl2ZWFObXdyTWprR093RXVpdk0xYmQ4TWU1RXJpRHI3QVA0cHpi?=
 =?utf-8?B?TWdNSTY1aTdQMnVsSjhKSWpERy9lVHJEMldHaXNTbG1tYW5PaURsSWc3Vkla?=
 =?utf-8?B?ZHkraWprQTZ2QVJTbXkvcDZPYXZRSldNRWNRT2dwZWE5T1hxK1crL1lIaXRV?=
 =?utf-8?B?dVpKSmI2NUNEdE56L2R1VmtqQ04xa2xINE5ueVNaOFg5UU4vWnEvd3ZMRGJl?=
 =?utf-8?B?cCtHQlFZRzkrZUljUzA3YjZoa2UwSmFLd2kyNGIwMHRxR2lIcXlaS3BiNVJr?=
 =?utf-8?B?ZkRIUnBhbDQraEc4d2plb3A5YTZ2cUZJU0lCQzdMNGYvcE1wSTlkNzJzYkRV?=
 =?utf-8?B?OWpFcTVJZENaTEFjQndMTFJSY281T3gyZmpSeHpjVElpRWc5YlZmNnNCTWNi?=
 =?utf-8?B?aWJ4OG15SUJFMm5hZTJTWWxuNG10OHBERVhrY3RKVnplWmZSUWhvWVdESU1h?=
 =?utf-8?B?dkJtRmFENm1XTVE2ZWhKeXlENm0vOXZueXpJeUJRKzM1R3psZUJWUjdZQlNT?=
 =?utf-8?B?VW96Yzh5Y2pyQXFnT0N1eGpIL2Y2cFZta0g3STZ3U3RGcm9reWFMc3dsWUxk?=
 =?utf-8?B?eGUvcVAwRTVxNmdGZThMZEdpVzN4STFZdjRoZlZlZE01RzQyQjY4U2JtRzBI?=
 =?utf-8?B?dTJFRjBrZ01qNGM2RFpSZzJQK080c0N5U2VKcnFweWdtaWJwNnZRdTR1Ti9l?=
 =?utf-8?B?L3ZFQWdsWURNS0hKOVNvZVlrUGd1TFBka3ZKRk1UR1ZZL2lSZ2YvUnN5Y1Bm?=
 =?utf-8?B?blpoTm90djNKOC9QRGJDbkxtVk5GbHFoQkplVWpzWHl1bGJaZXBWeS9Uc3Iy?=
 =?utf-8?B?TC9zQXJtMFVTNDUvYnBhbUpUbVVwZU5DczcyOFU0MGJWZmdUUGpMK2FtNzZp?=
 =?utf-8?B?QnU0VUFZY2UwMWYzeXRYdXBlRHNxaXpFN0ViYysySlVLektpL2JTVzBodTM1?=
 =?utf-8?B?L3FnL2N5VlFaYnhZaEFsQkkweGZ0WlNVU2MzY0Q1SXhGZ05pd1dLeEtUeWdB?=
 =?utf-8?B?L3RJanVjazMzSjh3cHhoZ0tLc0tBdE1oMnEwdUpPaGtUcEZrVnhiclhLYXJL?=
 =?utf-8?B?MytYYWNIeUFRVmRXVXRrck1NWmZnZnFMRmhSc21iWnpyTmIzN1JmaUNTaFAr?=
 =?utf-8?B?ZzRrcGJON2ZFVnBmU1ducHZaalZydStWTFp6WWl1Y0NBLzk2ZlFqK28yU3BN?=
 =?utf-8?B?TE9yaVd3RHc5WHdpbGZIM3VFa0sxZis5b1IySm9UVHRPZmtjUjFLa1pGVnd2?=
 =?utf-8?B?MFB6cUVPTXA5OVBsOXBPcWtyZUNraDloOFM3cDZ6MmthWFBEeld1MnZmKytJ?=
 =?utf-8?B?MVk0bUx2cWwvUHZyYXBBcHd2bjZkTWlRT08yY2tMWGxURXpVYm4wRTgwc1ZO?=
 =?utf-8?B?ZjdUaUlONjEydGx2UFpnSm1keHIyNE9rUFNrQ3NBNnRINFRTUU1ldVBJanRS?=
 =?utf-8?B?M0s4M2hScmJLTGNlc0RYdkNyUmNWcFBRZTRmeVM2d0xxditaMlVnVHJkQjh3?=
 =?utf-8?B?dFJWTGovWm9hTFpBeXJsblVLQVJiQjhFOC8zNlFxc0g0aENuS05raFNGTEJi?=
 =?utf-8?B?R1RiMUFSV3kyeHpWaWd4d3VnRzVnb1FDcFBhVkVJN2FacE04N3h6K2o1cmZk?=
 =?utf-8?B?U0pwUnFCVGNNTGh1NS82QThLOEJqZVZrczhJV2pndmErNWRRUm0wcTg0MDRH?=
 =?utf-8?B?eGJaUkthV0hVamxSTTRieG9Ra3k3ZUxDNUV2eklZTUd6NTYwamFtWVgwbmlM?=
 =?utf-8?Q?mzLkYod/ZOPKv08BVHZQWySb+?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eb14387e-1a60-4cf8-98da-08daee2f461b
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jan 2023 08:40:03.3120 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9zLM186U0hfuT3gvyCNpWo3b1OAxZWRB5Wfdy6mnC5m94u5fJOlLdPRk2anONtdixgiLdfLLuw5cgKv45co7JA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7647
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 02/13] drm/i915/dsb: Inline DSB_CTRL writes
 into intel_dsb_commit()
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
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IEZyaWRheSwgRGVjZW1iZXIgMTYsIDIwMjIgNjowOCBBTQ0KPiBU
bzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4
XSBbUEFUQ0ggMDIvMTNdIGRybS9pOTE1L2RzYjogSW5saW5lIERTQl9DVFJMIHdyaXRlcyBpbnRv
DQo+IGludGVsX2RzYl9jb21taXQoKQ0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IE5vIHBvaW50IGluIGhhdmluZyB0aGVz
ZSB3cmFwcGVycyBmb3IgYSBzaW1wbGUgRFNCX0NUUkwgd3JpdGUuDQo+IElubGluZSB0aGVtIGlu
dG8gaW50ZWxfZHNiX2NvbW1pdCgpLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCg0KQXMgcGVyIGJzcGVjIGJlZm9y
ZSB0b3VjaGluZyBjdHJsLCBoZWFkIGFuZCB0YWlsIHJlZ2lzdGVyIHdlIHNob3VsZCBjaGVjayBm
b3IgZHNiIGlkbGVuZXNzLg0KQnV0IG9uZSBjaGVjayBpcyBzdWZmaWNpZW50IGFuZCBEU0Igd2ls
bCBiZSBhY3RpdmUgYWZ0ZXIgcHJvZ3JhbW1pbmcgdGFpbCByZWdpc3Rlci4NClRoZSBjdXJyZW50
IGNoYW5nZXMgTEdUTS4NCg0KUmV2aWV3ZWQtYnk6IEFuaW1lc2ggTWFubmEgPEFuaW1lc2gubWFu
bmFAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHNiLmMgfCA2MiArKysrKystLS0tLS0tLS0tLS0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2Vk
LCAxNCBpbnNlcnRpb25zKCspLCA0OCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiBpbmRleCBlYmViYWY4MDJkZWUuLjkwYTIy
YWYzMGFhYiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kc2IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5j
DQo+IEBAIC03NiwzNCArNzYsNiBAQCBzdGF0aWMgYm9vbCBpc19kc2JfYnVzeShzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSwNCj4gZW51bSBwaXBlIHBpcGUsDQo+ICAJcmV0dXJuIGludGVs
X2RlX3JlYWQoaTkxNSwgRFNCX0NUUkwocGlwZSwgaWQpKSAmIERTQl9TVEFUVVNfQlVTWTsNCj4g
fQ0KPiANCj4gLXN0YXRpYyBib29sIGludGVsX2RzYl9lbmFibGVfZW5naW5lKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1LA0KPiAtCQkJCSAgICBlbnVtIHBpcGUgcGlwZSwgZW51bSBkc2Jf
aWQgaWQpDQo+IC17DQo+IC0JaWYgKGlzX2RzYl9idXN5KGk5MTUsIHBpcGUsIGlkKSkgew0KPiAt
CQlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLCAiRFNCIGVuZ2luZSBpcyBidXN5LlxuIik7DQo+IC0J
CXJldHVybiBmYWxzZTsNCj4gLQl9DQo+IC0NCj4gLQlpbnRlbF9kZV93cml0ZShpOTE1LCBEU0Jf
Q1RSTChwaXBlLCBpZCksIERTQl9FTkFCTEUpOw0KPiAtCWludGVsX2RlX3Bvc3RpbmdfcmVhZChp
OTE1LCBEU0JfQ1RSTChwaXBlLCBpZCkpOw0KPiAtDQo+IC0JcmV0dXJuIHRydWU7DQo+IC19DQo+
IC0NCj4gLXN0YXRpYyBib29sIGludGVsX2RzYl9kaXNhYmxlX2VuZ2luZShzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSwNCj4gLQkJCQkgICAgIGVudW0gcGlwZSBwaXBlLCBlbnVtIGRzYl9p
ZCBpZCkNCj4gLXsNCj4gLQlpZiAoaXNfZHNiX2J1c3koaTkxNSwgcGlwZSwgaWQpKSB7DQo+IC0J
CWRybV9kYmdfa21zKCZpOTE1LT5kcm0sICJEU0IgZW5naW5lIGlzIGJ1c3kuXG4iKTsNCj4gLQkJ
cmV0dXJuIGZhbHNlOw0KPiAtCX0NCj4gLQ0KPiAtCWludGVsX2RlX3dyaXRlKGk5MTUsIERTQl9D
VFJMKHBpcGUsIGlkKSwgMCk7DQo+IC0JaW50ZWxfZGVfcG9zdGluZ19yZWFkKGk5MTUsIERTQl9D
VFJMKHBpcGUsIGlkKSk7DQo+IC0NCj4gLQlyZXR1cm4gdHJ1ZTsNCj4gLX0NCj4gLQ0KPiAgLyoq
DQo+ICAgKiBpbnRlbF9kc2JfaW5kZXhlZF9yZWdfd3JpdGUoKSAtV3JpdGUgdG8gdGhlIERTQiBj
b250ZXh0IGZvciBhdXRvDQo+ICAgKiBpbmNyZW1lbnQgcmVnaXN0ZXIuDQo+IEBAIC0yMjMsNDIg
KzE5NSwzNiBAQCB2b2lkIGludGVsX2RzYl9jb21taXQoc3RydWN0IGludGVsX2RzYiAqZHNiKQ0K
PiAgCWlmICghKGRzYiAmJiBkc2ItPmZyZWVfcG9zKSkNCj4gIAkJcmV0dXJuOw0KPiANCj4gLQlp
ZiAoIWludGVsX2RzYl9lbmFibGVfZW5naW5lKGRldl9wcml2LCBwaXBlLCBkc2ItPmlkKSkNCj4g
LQkJZ290byByZXNldDsNCj4gLQ0KPiAtCWlmIChpc19kc2JfYnVzeShkZXZfcHJpdiwgcGlwZSwg
ZHNiLT5pZCkpIHsNCj4gLQkJZHJtX2VycigmZGV2X3ByaXYtPmRybSwNCj4gLQkJCSJIRUFEX1BU
UiB3cml0ZSBmYWlsZWQgLSBkc2IgZW5naW5lIGlzIGJ1c3kuXG4iKTsNCj4gLQkJZ290byByZXNl
dDsNCj4gLQl9DQo+IC0JaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIERTQl9IRUFEKHBpcGUsIGRz
Yi0+aWQpLA0KPiAtCQkgICAgICAgaTkxNV9nZ3R0X29mZnNldChkc2ItPnZtYSkpOw0KPiAtDQo+
ICAJdGFpbCA9IEFMSUdOKGRzYi0+ZnJlZV9wb3MgKiA0LCBDQUNIRUxJTkVfQllURVMpOw0KPiAg
CWlmICh0YWlsID4gZHNiLT5mcmVlX3BvcyAqIDQpDQo+ICAJCW1lbXNldCgmZHNiLT5jbWRfYnVm
W2RzYi0+ZnJlZV9wb3NdLCAwLA0KPiAgCQkgICAgICAgKHRhaWwgLSBkc2ItPmZyZWVfcG9zICog
NCkpOw0KPiANCj4gIAlpZiAoaXNfZHNiX2J1c3koZGV2X3ByaXYsIHBpcGUsIGRzYi0+aWQpKSB7
DQo+IC0JCWRybV9lcnIoJmRldl9wcml2LT5kcm0sDQo+IC0JCQkiVEFJTF9QVFIgd3JpdGUgZmFp
bGVkIC0gZHNiIGVuZ2luZSBpcyBidXN5LlxuIik7DQo+ICsJCWRybV9lcnIoJmRldl9wcml2LT5k
cm0sICJEU0IgZW5naW5lIGlzIGJ1c3kuXG4iKTsNCj4gIAkJZ290byByZXNldDsNCj4gIAl9DQo+
IC0JZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sDQo+IC0JCSAgICAiRFNCIGV4ZWN1dGlvbiBz
dGFydGVkIC0gaGVhZCAweCV4LCB0YWlsIDB4JXhcbiIsDQo+IC0JCSAgICBpOTE1X2dndHRfb2Zm
c2V0KGRzYi0+dm1hKSwgdGFpbCk7DQo+ICsNCj4gKwlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwg
RFNCX0NUUkwocGlwZSwgZHNiLT5pZCksDQo+ICsJCSAgICAgICBEU0JfRU5BQkxFKTsNCj4gKwlp
bnRlbF9kZV93cml0ZShkZXZfcHJpdiwgRFNCX0hFQUQocGlwZSwgZHNiLT5pZCksDQo+ICsJCSAg
ICAgICBpOTE1X2dndHRfb2Zmc2V0KGRzYi0+dm1hKSk7DQo+ICAJaW50ZWxfZGVfd3JpdGUoZGV2
X3ByaXYsIERTQl9UQUlMKHBpcGUsIGRzYi0+aWQpLA0KPiAgCQkgICAgICAgaTkxNV9nZ3R0X29m
ZnNldChkc2ItPnZtYSkgKyB0YWlsKTsNCj4gLQlpZiAod2FpdF9mb3IoIWlzX2RzYl9idXN5KGRl
dl9wcml2LCBwaXBlLCBkc2ItPmlkKSwgMSkpIHsNCj4gKw0KPiArCWRybV9kYmdfa21zKCZkZXZf
cHJpdi0+ZHJtLA0KPiArCQkgICAgIkRTQiBleGVjdXRpb24gc3RhcnRlZCAtIGhlYWQgMHgleCwg
dGFpbCAweCV4XG4iLA0KPiArCQkgICAgaTkxNV9nZ3R0X29mZnNldChkc2ItPnZtYSksDQo+ICsJ
CSAgICBpOTE1X2dndHRfb2Zmc2V0KGRzYi0+dm1hKSArIHRhaWwpOw0KPiArDQo+ICsJaWYgKHdh
aXRfZm9yKCFpc19kc2JfYnVzeShkZXZfcHJpdiwgcGlwZSwgZHNiLT5pZCksIDEpKQ0KPiAgCQlk
cm1fZXJyKCZkZXZfcHJpdi0+ZHJtLA0KPiAgCQkJIlRpbWVkIG91dCB3YWl0aW5nIGZvciBEU0Ig
d29ya2xvYWQNCj4gY29tcGxldGlvbi5cbiIpOw0KPiAtCQlnb3RvIHJlc2V0Ow0KPiAtCX0NCj4g
DQo+ICByZXNldDoNCj4gIAlkc2ItPmZyZWVfcG9zID0gMDsNCj4gIAlkc2ItPmluc19zdGFydF9v
ZmZzZXQgPSAwOw0KPiAtCWludGVsX2RzYl9kaXNhYmxlX2VuZ2luZShkZXZfcHJpdiwgcGlwZSwg
ZHNiLT5pZCk7DQo+ICsJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIERTQl9DVFJMKHBpcGUsIGRz
Yi0+aWQpLCAwKTsNCj4gIH0NCj4gDQo+ICAvKioNCj4gLS0NCj4gMi4zNy40DQoNCg==
