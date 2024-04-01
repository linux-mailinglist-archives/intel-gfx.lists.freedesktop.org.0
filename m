Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6064893859
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Apr 2024 08:26:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 716F210EF16;
	Mon,  1 Apr 2024 06:26:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NWMweGPJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1745D10EF15
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Apr 2024 06:26:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711952797; x=1743488797;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LwtOPVeCwW9J1fUrF//jji44D1LOCnKdZl1aqxnRg7U=;
 b=NWMweGPJJqgNGWTxG8alF3qdOh3aliZIvWlTOCC6k6NcBvY66nBOVzbx
 +qDZB940IO/9LyxwJdf9HrOv5bbHEYUj1KjwwCWXmj1CXznE0qe+3LsNb
 N3o71dU2HCU/kWDFhXVx67x+7HY8aR/g1MMuOLj7QSlnPCpyARO2dX4zs
 f0vZzgRGy3US4WlD+iCu6TKPmNq5YikgrYyM/sVK1lFLe5+uzGFXbhuIP
 4MBm7Zb1uQY1zIxjiCRCHCDl3VchwtkWbK5WRw9zdM/ro98TT7jKsH03v
 CnXysUrKGzix//fiMkIO7h8V150wEInkjuqg1uLcwBk/FyrFZrioYTDxt A==;
X-CSE-ConnectionGUID: swYq1wjLRZuO2EWOC5lPjQ==
X-CSE-MsgGUID: 07JXwvM8RSu33WppmG3OhQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11030"; a="17691406"
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; d="scan'208";a="17691406"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2024 23:26:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; d="scan'208";a="48805891"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Mar 2024 23:26:36 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 31 Mar 2024 23:26:35 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 31 Mar 2024 23:26:35 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 31 Mar 2024 23:26:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mRmMHqGDRFpNRzOqMtgqreCMNfW7qGaXnF6v9/WtLOA/UKNRvVmafCwahFRwcrjZmSm5ZR49LhyXj5GHg4TuO4hHrSZrEsbMEsyrFMX5+XEP+gQaS9EiJ3UiUErVIqiIlmocobdfednpOpOG0Ei1N9wKahbEDdCJc/zcB65pGmTktAQP8ixh/PQb8Ph0dDdcIXOTjMhyYRYmWIfDpZjVo3UHSSkoSsNCAJ8l9iW/kFWvVokgpA1fpKI6PNxj4DUE2fLHYeWQ8cEH6MN5OsI0JXzE4cMEsCIXzb8uad9VdmjYzkpoUmIJfbCbpo3O9SkayEMuj45BYThte8jUlkKhDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LwtOPVeCwW9J1fUrF//jji44D1LOCnKdZl1aqxnRg7U=;
 b=MRvFTgrb70zEDx2qHwevptldaLEXqYo9HpDxw3nkIkrPKWmQ9O9sucsSaZWkvkP0mo7f/M4R2e0ZqhaIMEiAPatxdnj5qisKLYTlsWo0A7Q0jbcsq1K1iffF0BpxdWBARqi/hJOdHdMdoO0/eRd4SFpnGIIOtgMw6eRW1UQlXGRtbnLEQW8221RbY6Mke3BuJ1vYxBHjsiyLejg4+KQfBJqqHC3+yGuWMjNo4hMmUNozmhz9qR5hn3iExvhC6V1HS4UsfcbPKpjn4GtNvfl5FZqgFJXvOoHQqET1dZIPMnXwkQpoRQ4r3ZWPaSJdEcUaHSL8a+mEXMkQr4C5BgBOpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by PH0PR11MB4888.namprd11.prod.outlook.com (2603:10b6:510:32::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.21; Mon, 1 Apr
 2024 06:26:33 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a%5]) with mapi id 15.20.7452.019; Mon, 1 Apr 2024
 06:26:33 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: Manasi Navare <navaremanasi@chromium.org>
Subject: RE: [PATCH 21/22] drm/i915: Allow bigjoiner for MST
Thread-Topic: [PATCH 21/22] drm/i915: Allow bigjoiner for MST
Thread-Index: AQHagXZtusOsh6gs4k2V9o4nAua82bFS4rFQ
Date: Mon, 1 Apr 2024 06:26:33 +0000
Message-ID: <IA0PR11MB7307C459DC0D0CDBDF950BECBA3F2@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
 <20240329011254.24160-22-ville.syrjala@linux.intel.com>
In-Reply-To: <20240329011254.24160-22-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|PH0PR11MB4888:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nhKYn89WVsW9JvolEF120lNs+hLSkR08T0FZWF2dF+rCA+SGDtfFMfmjEME1AOnygv0Eelgal67vqI1s/aLGx2WqhMpka9rBxG7/ByyNagrUBV79+5olexb8U51YzugiJVhFLUfBMeshcUsWCeLvH0DOX8cvCaUJ1rxNm2gUqu+4GDytKBuxymA76lcwAd99iSbxNyEpHPLVdYUFExALZhrsYTw5smq4fP+XT3iIftMwGOFqBrCxG9izx24ljvTDIMCFC0ZUDQpvpMzQ01YbeQxJn39x4tm8e5AmgQBqdV73oH5xV+C3ThLktXWvh4DaLoIKkEwPHfi5u0ii7cwp6wdAfGcpUrONYwGI5+o72NBDITd49VXAna8VhnMLGE4wZSSP/0iNBrZ/0KrbJEe7KHfq9Ep+wkMlnIGpfvTzVOjkIDnrcxUOyfSqOEvwrpz8PCJrkQ9Zw2Kqt9+s+mQOrvgal8W2NWlt+OutahIW9n6LTNwJqAvHYGjUoSJuyL6jMCGsG0Fgf/oxAPHzW7dVJqCCrXM5ygroXgeNz63ofFQQkehsGj26wwSB1ST+k7b8P4J9aa3Ifc73MJL39nC3xWzZ1ovp0Y1Iky+cQ9DEVFewmQXR5PA/bMnQsE0KApD0eehu+f9L7d1xFmiSD8rA5mIAaAOjU7gcNwmidEy0ZXk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N3lJRmI3RzlQRnVPSHlpaFlkc3U1cmdJMXdFN0RhNGdBZmVxMDUyV1VsY29P?=
 =?utf-8?B?Tktjc0FsN1pLcTl0TUdRcE0xL05PUC9KZGVuaG9PZTJMdG5YSHVnbDY2RVd6?=
 =?utf-8?B?aW9NZTZvRmVXd1RCYVBSRzlFYk5ZaUJSdWZzREwyZUhZUnU5VVlvOS9aQ21U?=
 =?utf-8?B?VXk3U1BkSjNpT3BSR1lEMkhoZ1AvakdZbnpMenpZaGlzR2FjOHJ0WVl1eWNE?=
 =?utf-8?B?TWVmSnZiS3ZTOStTZGVUcWVxcnZJMkloMVM2QVpIRGdXRkJxVFJ1Uzd6U2w2?=
 =?utf-8?B?d2VFdkxrczZNeWhBWnJhYTJVSXJNZ3NJNXFxMUI1RkFjVldDUzg2WHZhaU03?=
 =?utf-8?B?eHh1Z01WZkZmTGowZUhRZ29xYmZYL0h5ZTdSVzh4ZHJ3bEJsUVU0dVdsS05s?=
 =?utf-8?B?bWZrU0RFQUNseHBKV0NrMUZZS3JDcmIwbm5DRHVtSUN2WmZ5ZGUxSVJVVmpO?=
 =?utf-8?B?TzlnclNpS2V1TytoMTR1OE0yVW1YRXp3L2lhbVJWU3pPbFdsV295WlpPZG5D?=
 =?utf-8?B?bHcrblMzZUlXa3hiT200WjU2RHMxK1NieXJ0Z0kyL043c0NKSXBsdVpUQ1B3?=
 =?utf-8?B?Q2NqTjczRHVGMndzbGFYeTB6ZTR3NnkvT1dacUoveWdsMG5jUzBaVy9hN2FG?=
 =?utf-8?B?cEpGWnA3SkhRZzdxK0Foa2RuUm5pZWtwcjlUZHg5Tnp5ckJocERlVy82dWM4?=
 =?utf-8?B?RlNkWVpGRDhkZ0F3bmgvNWxuSHp3ODFPQ0VkcXJOeUJ1a3hwaWZrWXp3MG9C?=
 =?utf-8?B?a2gwWEphMXNMUzE5NlVlWG9ONzRuaWp5WDhIam1ueXlrOUovTnA1Rlo4UVky?=
 =?utf-8?B?L0FGVE5OcW9RZHZyUmR1M2Q2bEVERUlvNXhRMnhFSTVybFBiY1VZY0JVcHl2?=
 =?utf-8?B?akFRaUhKaTFTemZZL0dSM0tZaU1POUJIUldremRiODNMYjZZQUFqWHpwWURS?=
 =?utf-8?B?K3NYa0hlZTJXVHZMb2ZWWCtjeVpycjBIRS9obmdZYk9PN1daUE1zTDlIUms1?=
 =?utf-8?B?TUxZWk5sSWhTRVFOaUQzSEJ5M09rdThyY2VYU05kcVZuSWdZZXFtbGZqT0NU?=
 =?utf-8?B?SWpCcm1td1k0clZyYmNsM3B4cHpSdVFkaVByKzdTaUxJMmg3djU0SnAzUjdS?=
 =?utf-8?B?cWdzRGNJT24xQXIyU1NIWllrdVliYjRTbEpQWGhyanR2eS9QRmhJc24ranZx?=
 =?utf-8?B?VWt4ckpqdlFGMnBES09jcnAwMjRLQy9DRDRJK3ZVNm5xZXBVNGtyWXhwNGZZ?=
 =?utf-8?B?U2I5bmxuK2xmUlAvUmV1Q2Z3MG1iV3p1TENsY3NvNWFPNFAxbjVNZ1B2WTBa?=
 =?utf-8?B?RXA0VU9BUVVJM0VMU2hHWXlnazVMS1JLdGxDZWU5cEhQNmxPOWdOQ2IrRDVm?=
 =?utf-8?B?QXUrT28yaEVnRnljWklacVBPRGpBakdiMjlPYTdrRHNmY1llajFjMFZzNmlx?=
 =?utf-8?B?c0hhNU95cFBtakdjYXAzQzF4b3pqMnJvdlg2c2RxU3U4L0JFbmFERWc2TWZW?=
 =?utf-8?B?bHJHQjNTR29kbmNuMlhvOW9HN3Z0TTJycGdqeURiaE92ZXB3R2JlY1lBZXda?=
 =?utf-8?B?Qm9ONXJLSW5KcWdUbnIrNWJaVHlqWmgwcjFrZ3RuTjVCZHEzcTBMYmNlaTQx?=
 =?utf-8?B?K2NRZzNLRE9CMW95WlNTd3lnWGJvZmpOQ2NmTHpTSWtseXVFcVA0aVBiUWUr?=
 =?utf-8?B?SHlWelJoTUJsQnQ0bmlPRWtMQjJQWHBicTdES3VNR0xGbGhKK0dqYUlyNDJ2?=
 =?utf-8?B?ZUx5anpJZGNiQTcrRGdrdE1Nbjgxa3BWZWZWNzJlcnRxa0MvTTI4aUg5MnlX?=
 =?utf-8?B?b3BiRk9WU1YzY3lINElQWW1JajNxSjhVbVBYNmI0UjI5ZVA4L1hvUjdPYk4z?=
 =?utf-8?B?VVJsRyszSzlWNmhESEN2K0tXTFJLQ2NuV1RTNUg0R3ZEa3FwaGJ6QVl0eXZ6?=
 =?utf-8?B?YjVFbUNUU2pNbFZMekJoeS9JYm1MUkhsVWpEUDhaK21GcTRLemN1TXRFc2da?=
 =?utf-8?B?UkpjTzRRbGdEZ0ZsaUdDbXJYWnB0NXFlNWxQOURaYVB3K2pGeHZSWWxnWjRE?=
 =?utf-8?B?dTd6bElmYkpjcFordnZEc3VVeXlaeXBwZW1ZWjBmd2Mwd00vWE5pYmpQM2RZ?=
 =?utf-8?B?a0xvM29Zd0ZSSzdDY081M1NIUVUxS1lGSUNUajdVMUZPSW1sTmdkQ2J5Vmdy?=
 =?utf-8?Q?8ciRC4KQ2n9DOcQcAIPBs7EI7fnwUgBtu+GJxtp0uoCJ?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ae4f03f-fe43-4868-40da-08dc5214ace0
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2024 06:26:33.2835 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: z/a7R0UshrhHuVEUw8X4Qareno38ACPVnOl5wMuRUTzuthe+BG5++q8YRIBGymbJTiBJotSl9x1ARc40HWzfyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4888
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

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEludGVsLWdmeCA8aW50ZWwt
Z2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgVmlsbGUNCj4g
U3lyamFsYQ0KPiBTZW50OiBGcmlkYXksIE1hcmNoIDI5LCAyMDI0IDY6NDMgQU0NCj4gVG86IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IE1hbmFzaSBOYXZhcmUgPG5hdmFy
ZW1hbmFzaUBjaHJvbWl1bS5vcmc+OyBWaWxsZSBTeXJqw6Rsw6QNCj4gPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggMjEvMjJdIGRybS9pOTE1OiBBbGxv
dyBiaWdqb2luZXIgZm9yIE1TVA0KPiANCj4gRnJvbTogVmlkeWEgU3Jpbml2YXMgPHZpZHlhLnNy
aW5pdmFzQGludGVsLmNvbT4NCj4gDQo+IFdlIG5lZWQgYmlnam9pbmVyIHN1cHBvcnQgd2l0aCBN
U1QgZnVuY3Rpb25hbGl0eSBmb3IgTVNUIG1vbml0b3IgcmVzb2x1dGlvbnMNCj4gPiA1SyB0byB3
b3JrLg0KPiBBZGRpbmcgc3VwcG9ydCBmb3IgdGhlIHNhbWUuDQo+IA0KPiB2MjogQWRkcmVzc2Vk
IHJldmlldyBjb21tZW50cyBmcm9tIEphbmkuDQo+IFJldmVydCByZWplY3Rpb24gb2YgTVNUIGJp
Z2pvaW5lciBtb2RlcyBhbmQgYWRkIGZ1bmN0aW9uYWxpdHkNCj4gDQo+IHYzOiBGaXhlZCBwaXBl
X21pc21hdGNoIFdBUk4gZm9yIG1zdF9tYXN0ZXJfdHJhbnNjb2Rlcg0KPiBDcmVkaXRzLXRvOiBN
YW5hc2kgTmF2YXJlIDxuYXZhcmVtYW5hc2lAY2hyb21pdW0ub3JnPg0KPiANCj4gdjQ6IFV0aWxp
emUgaW50ZWxfY3J0Y19qb2luZWRfcGlwZV9tYXNrKCkgYWxzbyBmb3IgaGFuZGxpbmcNCj4gICAg
IGJpZ2pvaW5lciBzbGF2ZSBwaXBlcyBmb3IgTVNUIGNhc2UoU3RhbikNCj4gW3Y1OiB2c3lyamFs
YTogY2h1bmtlZCB0aGUgbW9kZXNldCBzcXVlbmNlIHN0dWZmIG91dCwNCj4gICAgICAgICAgICAg
ICAgcmVtb3ZlZCBib2d1cyBtc3QgbWFzdGVyIHRyYW5zY29kZXIgaGFjaywNCj4gCSAgICAgICBr
ZWVwIG1ncl9sb2NrIG5lYXIgdGhlIGZ1bGxfcGJuIGNoZWNrXQ0KPiANCj4gU2lnbmVkLW9mZi1i
eTogVmlkeWEgU3Jpbml2YXMgPHZpZHlhLnNyaW5pdmFzQGludGVsLmNvbT4NCj4gUmV2aWV3ZWQt
Ynk6IE1hbmFzaSBOYXZhcmUgPG5hdmFyZW1hbmFzaUBjaHJvbWl1bS5vcmc+DQo+IENvLWRldmVs
b3BlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4N
Cj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4NCj4gLS0tDQpSZXZpZXdlZC1ieTogQXJ1biBSIE11cnRoeSA8YXJ1bi5yLm11cnRo
eUBpbnRlbC5jb20+DQoNClRoYW5rcyBhbmQgUmVnYXJkcywNCkFydW4gUiBNdXJ0aHkNCi0tLS0t
LS0tLS0tLS0tLS0tLS0NCg0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cF9tc3QuYyB8IDI1ICsrKysrKysrKysrKy0tLS0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDE0
IGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMNCj4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jDQo+IGluZGV4IDJkNjAxZDIxNDkxNS4uYzE1
MzBjMDFmNTQxIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwX21zdC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHBfbXN0LmMNCj4gQEAgLTUyNSw2ICs1MjUsNyBAQCBzdGF0aWMgaW50IGludGVsX2RwX21zdF9j
b21wdXRlX2NvbmZpZyhzdHJ1Y3QNCj4gaW50ZWxfZW5jb2RlciAqZW5jb2RlciwgIHsNCj4gIAlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGVuY29kZXItPmJhc2Uu
ZGV2KTsNCj4gIAlzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSA9IHRvX2ludGVsX2F0
b21pY19zdGF0ZShjb25uX3N0YXRlLQ0KPiA+c3RhdGUpOw0KPiArCXN0cnVjdCBpbnRlbF9jcnRj
ICpjcnRjID0gdG9faW50ZWxfY3J0YyhwaXBlX2NvbmZpZy0+dWFwaS5jcnRjKTsNCj4gIAlzdHJ1
Y3QgaW50ZWxfZHBfbXN0X2VuY29kZXIgKmludGVsX21zdCA9IGVuY190b19tc3QoZW5jb2Rlcik7
DQo+ICAJc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9ICZpbnRlbF9tc3QtPnByaW1hcnktPmRw
Ow0KPiAgCXN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvciA9DQo+IEBAIC01NDIsNiAr
NTQzLDExIEBAIHN0YXRpYyBpbnQgaW50ZWxfZHBfbXN0X2NvbXB1dGVfY29uZmlnKHN0cnVjdA0K
PiBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiAgCWlmIChhZGp1c3RlZF9tb2RlLT5mbGFncyAm
IERSTV9NT0RFX0ZMQUdfREJMU0NBTikNCj4gIAkJcmV0dXJuIC1FSU5WQUw7DQo+IA0KPiArCWlm
IChpbnRlbF9kcF9uZWVkX2JpZ2pvaW5lcihpbnRlbF9kcCwgY29ubmVjdG9yLA0KPiArCQkJCSAg
ICBhZGp1c3RlZF9tb2RlLT5jcnRjX2hkaXNwbGF5LA0KPiArCQkJCSAgICBhZGp1c3RlZF9tb2Rl
LT5jcnRjX2Nsb2NrKSkNCj4gKwkJcGlwZV9jb25maWctPmJpZ2pvaW5lcl9waXBlcyA9IEdFTk1B
U0soY3J0Yy0+cGlwZSArIDEsIGNydGMtDQo+ID5waXBlKTsNCj4gKw0KPiAgCXBpcGVfY29uZmln
LT5zaW5rX2Zvcm1hdCA9IElOVEVMX09VVFBVVF9GT1JNQVRfUkdCOw0KPiAgCXBpcGVfY29uZmln
LT5vdXRwdXRfZm9ybWF0ID0gSU5URUxfT1VUUFVUX0ZPUk1BVF9SR0I7DQo+ICAJcGlwZV9jb25m
aWctPmhhc19wY2hfZW5jb2RlciA9IGZhbHNlOw0KPiBAQCAtMTM0MSwxMCArMTM0Nyw2IEBAIGlu
dGVsX2RwX21zdF9tb2RlX3ZhbGlkX2N0eChzdHJ1Y3QNCj4gZHJtX2Nvbm5lY3RvciAqY29ubmVj
dG9yLA0KPiAgCQkJCQkgICAgICAgbWF4X2xpbmtfY2xvY2ssIG1heF9sYW5lcyk7DQo+ICAJbW9k
ZV9yYXRlID0gaW50ZWxfZHBfbGlua19yZXF1aXJlZChtb2RlLT5jbG9jaywgbWluX2JwcCk7DQo+
IA0KPiAtCXJldCA9IGRybV9tb2Rlc2V0X2xvY2soJm1nci0+YmFzZS5sb2NrLCBjdHgpOw0KPiAt
CWlmIChyZXQpDQo+IC0JCXJldHVybiByZXQ7DQo+IC0NCj4gIAkvKg0KPiAgCSAqIFRPRE86DQo+
ICAJICogLSBBbHNvIGNoZWNrIGlmIGNvbXByZXNzaW9uIHdvdWxkIGFsbG93IGZvciB0aGUgbW9k
ZSBAQCAtMTM1NywxNw0KPiArMTM1OSwxOCBAQCBpbnRlbF9kcF9tc3RfbW9kZV92YWxpZF9jdHgo
c3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwNCj4gIAkgKiAgIGNvcnJlc3BvbmRpbmcg
bGluayBjYXBhYmlsaXRpZXMgb2YgdGhlIHNpbmspIGluIGNhc2UgdGhlDQo+ICAJICogICBzdHJl
YW0gaXMgdW5jb21wcmVzc2VkIGZvciBpdCBieSB0aGUgbGFzdCBicmFuY2ggZGV2aWNlLg0KPiAg
CSAqLw0KPiAtCWlmIChtb2RlX3JhdGUgPiBtYXhfcmF0ZSB8fCBtb2RlLT5jbG9jayA+IG1heF9k
b3RjbGsgfHwNCj4gLQkgICAgZHJtX2RwX2NhbGNfcGJuX21vZGUobW9kZS0+Y2xvY2ssIG1pbl9i
cHAgPDwgNCkgPiBwb3J0LQ0KPiA+ZnVsbF9wYm4pIHsNCj4gLQkJKnN0YXR1cyA9IE1PREVfQ0xP
Q0tfSElHSDsNCj4gLQkJcmV0dXJuIDA7DQo+IC0JfQ0KPiAgCWlmIChpbnRlbF9kcF9uZWVkX2Jp
Z2pvaW5lcihpbnRlbF9kcCwgaW50ZWxfY29ubmVjdG9yLA0KPiAgCQkJCSAgICBtb2RlLT5oZGlz
cGxheSwgdGFyZ2V0X2Nsb2NrKSkgew0KPiAgCQliaWdqb2luZXIgPSB0cnVlOw0KPiAgCQltYXhf
ZG90Y2xrICo9IDI7DQo+ICsJfQ0KPiANCj4gLQkJLyogVE9ETzogYWRkIHN1cHBvcnQgZm9yIGJp
Z2pvaW5lciAqLw0KPiArCXJldCA9IGRybV9tb2Rlc2V0X2xvY2soJm1nci0+YmFzZS5sb2NrLCBj
dHgpOw0KPiArCWlmIChyZXQpDQo+ICsJCXJldHVybiByZXQ7DQo+ICsNCj4gKwlpZiAobW9kZV9y
YXRlID4gbWF4X3JhdGUgfHwgbW9kZS0+Y2xvY2sgPiBtYXhfZG90Y2xrIHx8DQo+ICsJICAgIGRy
bV9kcF9jYWxjX3Bibl9tb2RlKG1vZGUtPmNsb2NrLCBtaW5fYnBwIDw8IDQpID4gcG9ydC0NCj4g
PmZ1bGxfcGJuKQ0KPiArew0KPiAgCQkqc3RhdHVzID0gTU9ERV9DTE9DS19ISUdIOw0KPiAgCQly
ZXR1cm4gMDsNCj4gIAl9DQo+IEBAIC0xNDEwLDcgKzE0MTMsNyBAQCBpbnRlbF9kcF9tc3RfbW9k
ZV92YWxpZF9jdHgoc3RydWN0IGRybV9jb25uZWN0b3INCj4gKmNvbm5lY3RvciwNCj4gIAkJcmV0
dXJuIDA7DQo+ICAJfQ0KPiANCj4gLQkqc3RhdHVzID0gaW50ZWxfbW9kZV92YWxpZF9tYXhfcGxh
bmVfc2l6ZShkZXZfcHJpdiwgbW9kZSwgZmFsc2UpOw0KPiArCSpzdGF0dXMgPSBpbnRlbF9tb2Rl
X3ZhbGlkX21heF9wbGFuZV9zaXplKGRldl9wcml2LCBtb2RlLCBiaWdqb2luZXIpOw0KPiAgCXJl
dHVybiAwOw0KPiAgfQ0KPiANCj4gLS0NCj4gMi40My4yDQoNCg==
