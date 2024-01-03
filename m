Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3646E82314C
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jan 2024 17:30:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11DF010E1BE;
	Wed,  3 Jan 2024 16:30:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBC1710E1BE
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jan 2024 16:30:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704299438; x=1735835438;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=XrRikmd+hK/Vphd267CjnTDcPVkr3HgwzibaC81dWyo=;
 b=OVtB1RhxW05F+Jsh2LNnCm4YgqC2plsm7Jf8Bopz3nTwNCDDgNXPXZA0
 uSq5GxpaCdiiijzb+s/Y7QX0vvFWX/rgixcDjkzaisk8KYLRKhkUB420x
 XwzSGR0kjQlKylVUVTfyQTlKhsVTKTRbJ4paQxbatR9fdvNChTgKrowVq
 QSbsUzB3siqagS/sillzLBzVcmtwopFhoXuiP1dou9EmkPo2plUClLObI
 GYGqCp4ur9zrndUShopPLhjolK7A1Pj4v8lVuW10vGoqgdFS1K5UvFvtq
 yAYKs9GFsEYhLJihjwdkaxf7vMWBz9fYmWFEHR+o79vzEv4aRkimsQmZp w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="377185674"
X-IronPort-AV: E=Sophos;i="6.04,328,1695711600"; d="scan'208";a="377185674"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 08:30:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="898938514"
X-IronPort-AV: E=Sophos;i="6.04,328,1695711600"; d="scan'208";a="898938514"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jan 2024 08:30:38 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Jan 2024 08:30:37 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Jan 2024 08:30:36 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 3 Jan 2024 08:30:36 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 3 Jan 2024 08:30:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vb67ZhmNjyD70o14ymM5hfzSuz9DfL6XNQhcaL54XWGPjIDGnaf94dkYQ8MGlTD1vDf4zOL4DylnIkBJ5DMtu0ZEmNGS0VnUQqvljVmh8qF2w52mG3JunDNneH3gwbcs6T+0jkSz5TkGQO2btSBHjL50xdYJudQAEJt6K2bGSZ7sYeGCUkz4pjWMHGS72NdShNBbHpNOBedMhnWoOtp+JEXQV1HV/5M4+V6ceXmmwa0Oi5YtTqOAqDOgDdJ+Al//DmPi144qM38AblXmfmdHA5dNJ7Liw9eeoMoWfNeOhqYpR8W8Z7LgXBxYGYQn7ZT4UdmyhRIxA6oFSwTM79vcnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XrRikmd+hK/Vphd267CjnTDcPVkr3HgwzibaC81dWyo=;
 b=T+GWTPdZhF9f6DbTN/sjRQqyRWAlik3y3ARshyygM72sT9tKQ9Z2JsDwjcdvFDRxlkmG5KwYNcljRCVw7335ATgeXBq5Y6ehI86E538R42XXvugLARzPqMe5gVWBpyeMdV4XSfEiy6zeYHhrM8TMWH0lKX4QrN/NCZ3jgPp09C3xWI+1nD81+hDd0q2NRP0R00EArJOmxk7Bx7uLF+pPv4hrtsDCyjtOTTedWF6eX6bjjncnNz30Si+d+9G9S3cQaVXjwTgc+sNDdIER+Uy7zU5FpKMALs9d7KzFSrUoEVzCZgy5s8E5TlptBp1hapGvJsv8/OK+juqOEnUdsJj5LQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB8179.namprd11.prod.outlook.com (2603:10b6:8:18e::22)
 by LV3PR11MB8483.namprd11.prod.outlook.com (2603:10b6:408:1b0::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7135.25; Wed, 3 Jan
 2024 16:30:23 +0000
Received: from DM4PR11MB8179.namprd11.prod.outlook.com
 ([fe80::8076:c5fe:e0fc:cfaf]) by DM4PR11MB8179.namprd11.prod.outlook.com
 ([fe80::8076:c5fe:e0fc:cfaf%7]) with mapi id 15.20.7135.023; Wed, 3 Jan 2024
 16:30:23 +0000
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: Re: [PATCH] drm/i915: Disable DSB in Xe KMD
Thread-Topic: [PATCH] drm/i915: Disable DSB in Xe KMD
Thread-Index: AQHaPlk7tO9/tcFqBUmIjOrOkZiQubDIOO0AgAAOpwA=
Date: Wed, 3 Jan 2024 16:30:23 +0000
Message-ID: <0f4cc2de08124df0bdb40afe171609be3849f3ec.camel@intel.com>
References: <20240103152618.93488-1-jose.souza@intel.com>
 <87y1d6zaun.fsf@intel.com>
In-Reply-To: <87y1d6zaun.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB8179:EE_|LV3PR11MB8483:EE_
x-ms-office365-filtering-correlation-id: f6d7bbef-7f85-4ffa-e9db-08dc0c7948bf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Om/FBubE38uZMbgpRQlv2VezKNAsKUs364hhf/f+F6lFHasNf4gjUPAZVceev3s3wdjgAVTxLmWijvCsVHhgI+z4C76DUls7j8OKxGktrwbU3sS+yREdFIt1J4l1mo1E6pmZJhHRb3TPM47dHTcE2flSQMlQ5vQV0ByABiGaWLN9nXD0CZVBpOKhU+l/jQ4PhHd7nh66TAC76TatqqrvRoRJMDTYzebuXEEbm2FqqMLgXdVUvbp2d0HZ8NpI+gl0CnqMlYZG3ScF0gnhBt3FCiGcRRBAlyJdjj0UzGj+VqCHIRLkxe/volNfGgxLoA80FF1Tb6uHojYD1oCedhybmZnZqwlPBzvLAkFTWsVgRJMyUyXsT9h5MNIxfg4gmp67oHsnV+Pw50BQjTbRQFHe6nYhsuG5vMuNrpP9su1WUH9YmZqjunoRrbhwyV178ZFPmy292GFKMHKE3YvcM7XSgMLdc8Wgy2ER3YkiOMLfyS73J1NY4g8mV5FOl4vceIMkSzs8MoyQWGugzR4muDJRC8qhUbVXt4tOQ89TvMJHigYmoEIDi1dXoPrtu153Z4bA2GExhxtSbYoIgKwNuGHkpCp8QLkHzZjJcP+V6bAWKx0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB8179.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(366004)(39860400002)(396003)(376002)(230922051799003)(186009)(451199024)(64100799003)(1800799012)(478600001)(966005)(6512007)(71200400001)(38100700002)(5660300002)(2906002)(122000001)(6486002)(41300700001)(2616005)(26005)(38070700009)(6506007)(86362001)(110136005)(66476007)(64756008)(4326008)(316002)(66446008)(82960400001)(36756003)(66946007)(66556008)(76116006)(91956017)(8676002)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SlhLeU84NlU2eWVZUWFOK2Z1MUsxTmI1MGRQSmdQTHpqSkZQRkk0NHRLVzlP?=
 =?utf-8?B?bGRhLzgrR1cvd2JTb0gvVEFFVEdtV1prNTcrMnhGS2JzODdWYTVpTGJSVDVX?=
 =?utf-8?B?RHJQS3lUdXFKeDZya0hTMzdZZysrNlhydjlETUdmcUlOVFY4UVI5clNWY2FW?=
 =?utf-8?B?Nkt4eUpXTmQ0ekRyNkNveEZTUnppNGZPdCtqUURIUXY3cUQrMGNGYmFSajhD?=
 =?utf-8?B?U0RyMWJXVzF2MHZtSUd0SEFGdXN1dTlKQk5nNTZGTjVTK0JvUXk4TU1aUy9u?=
 =?utf-8?B?azVJdnpDdkdOSUxkNUQvODQ1eHNUcFdxT1FVMGVpZSt6Q0ZYS2lza2FndGhV?=
 =?utf-8?B?dm5KQzRZNll4NVgveVRFeDVJSm5zSGhXVER1eEpRb1RCdzVUWnZ2REpKc2dD?=
 =?utf-8?B?WXpMNFBVT0pnZ3F1VkRTL3I2KzZZQkY4aktNMlJhSG8zQjdaaGJLUkhMNTFY?=
 =?utf-8?B?M3pFdkVmL0tTNHBsbWthV3AyZFNKQmFpTHdlRmtrZW1HM3NLRkJRdW5MMThB?=
 =?utf-8?B?TnBBWkFZUFNFNlI1ZGZqYmgySkFkVVRiRU43ZkdPR1VYZmRqcTg0U2hVQzFT?=
 =?utf-8?B?ZU5sWmlHRXNuMHRTSUFDSnJFaGxJTEJvVWd5ajJ3bjR0R1JpS2FVc1kzRk1o?=
 =?utf-8?B?b0s3a21ERzdnSWZsVHlvTVVoZDZVN1YrSnpKbUg2TWduMVRvb1NoeTJZbGpp?=
 =?utf-8?B?Q1FoNTluWWprVkZwTGo2R25jaTFNRGJlejZpeE5sNk5ydHRaMmZlOHpHTDJ2?=
 =?utf-8?B?MWxuK2EzN3lLeWl5S2ZTRWUyeGtOVnJ5VzRKcUo5TUVmSG1UclRtRDdnVEcy?=
 =?utf-8?B?b1FqcmxEVTVBNHpMaUNDOHRjbVlnVEJrYVA4dFJvd3E1dlQzWC80MlVqZlFF?=
 =?utf-8?B?cStsV2pTYjNiQU1DTW5HQ0NyeEdGdFltWUh0dk5xWjRtdzVnYm5yUko3eEsw?=
 =?utf-8?B?VEFsZ1lPU3lkQjltajdrc2FyU3ZNT1ljK05VZzZueHhURnJPS1B2eUtpdW5O?=
 =?utf-8?B?Y0N2UzYwTlI2NnZOYkd2VXFyNDBoVUg2Y1hMa1FJaFRZR0krbloyNFdKdkdt?=
 =?utf-8?B?Q2NIZDBLWUdpWElhWXNISVlBaFIyellxNTFPZW1jNXowMzZjUUdHTmdjanJH?=
 =?utf-8?B?RXV6VGY4Z2FKSTErcjNzY0QvWjBBMnN6TDJwQ1BWV3ZmbUlsOEo5YXRzQWxh?=
 =?utf-8?B?ZThZMVpFUlpTUVRxSzk4VXU1NkxmUE9Jc3g5OHNqVVlNNG5iMlhtelRucGxv?=
 =?utf-8?B?dmpDdXJzMWFoaUU5TGFlMGVzMEtydGZaS2ovK01hQi9hUWdqbmxNNjNZc1JM?=
 =?utf-8?B?OTk3RDk4OVg5NVhHQyt1c3J4bjhjeUl5cHpoTmZwVENmN095bW5DNmsrNE1I?=
 =?utf-8?B?M25FOWQrVzJTNkdwanI0RFVUeVJCT0RHdkpXYW1NSDdHWVR2TWpQVlB6VHU3?=
 =?utf-8?B?cm1UZ2ZEK0lZWEV5cmdqM05CdEtDa25oZkM4OTRSQnJQNEF1S2xXWTVORXhv?=
 =?utf-8?B?eWVFRllDbVJzYkVkLytwS1hOTTlubjBJaHNkVzB5OFBCcHdMWGk3L25jeTFG?=
 =?utf-8?B?VW1sMGhqM3FXSW5kN0tUSU5ESzhvNlZMSGNLZHdKbVpiUzkzTC9KS2wxOGZ1?=
 =?utf-8?B?YjZuMWFWTWo4UFBKajFSQmU3VVBrc25ab21uNWw5S1RhdWc5TE5RUkNWWmxX?=
 =?utf-8?B?a2JXdkhwQUtCdlhrR0RjUXIyKy9wUnBJM2pZaHpFUit0TWZLWGNCZC8zQ3hq?=
 =?utf-8?B?YStBOEVYdFJRTVpickZtb1RkbmVBV0RqVWJuMUs2Y1hHbW1HaUkwU3p2clpk?=
 =?utf-8?B?TnNlNGFkbVpYekpMVE1vSUJtbEl5U2cvdS92b0hETTFRUXRYRVpjai9yaEJx?=
 =?utf-8?B?MTEzMXZrY2Q4djB1dHphSTZSY1Q1WkxWR2UwNmlVR1NKdzJDNVFyVzNmbmpa?=
 =?utf-8?B?aU40ZERScUdxc00rRVl2alpHRmd6ZmZRbCt6WmlabGNLY1BlNVNCWDl2SDl3?=
 =?utf-8?B?aVhYYUFYY0ZuQTRkSXlVWS9DM2pmbXl4bVhTQ3BZSEdrM3V3U0VwUktCNWRI?=
 =?utf-8?B?RHA0MElGY053SEQwZmVrei9rbGIyb0Y0RFprbW5OZDRIWmJkc3E2aGgwY1pa?=
 =?utf-8?B?K2YxajFQc2MvTTNEcjdTWWZtb3R5TDVGUEE0R2Z1cjgwaTFqeEF0ajAxUXhH?=
 =?utf-8?B?dXc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <28F0004180D69C49A1A703A47B606EB7@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB8179.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f6d7bbef-7f85-4ffa-e9db-08dc0c7948bf
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jan 2024 16:30:23.0741 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: L3Sh0AH3uBhbS/Tj7T8yzK9oefYAUP5NQqnhynyPSDaPa4LYpb7Zwy4xQtrGXg8bHxkig5uhUq+x3+zah71bmQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8483
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
Cc: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDI0LTAxLTAzIGF0IDE3OjM3ICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gV2VkLCAwMyBKYW4gMjAyNCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+IHdyb3RlOg0KPiA+IE9mdGVuIGdldHRpbmcgREJTIG92ZXJmbG93cyB3aGVuIHN0
YXJ0aW5nIFhvcmcgb3IgV2F5bGFuZCBjb21wb3NpdG9yDQo+ID4gd2hlbiBydW5uaW5nIFhlIEtN
RC4NCj4gPiBJc3N1ZSB3YXMgcmVwb3J0ZWQgYnV0IG5vdGhpbmcgd2FzIGRvbmUsIHNvIGRpc2Fi
bGluZyBEU0IgYXMgd2hvbGUNCj4gPiB1bnRpbCBwcm9wZXJseSBmaXhlZC4NCj4gDQo+IFBsZWFz
ZSBqdXN0IGluY29ycG9yYXRlIHRoaXMgaW50byB0aGUgSEFTX0RTQigpIGNoZWNrLCBhbmQgZG9u
J3QgbGl0dGVyDQo+IHRoZSBzb3VyY2Ugd2l0aCBpZmRlZnMuDQoNCkxpa2UgdGhpcyBpcyBlbm91
Z2g/DQoNCisvKiBUT0RPOiBEU0IgaXMgYnJva2VuIGluIFhlIEtNRCwgc28gZGlzYWJsaW5nIGl0
IHVudGlsIGZpeGVkICovDQorI2lmZGVmIEk5MTUNCiAjZGVmaW5lIEhBU19EU0IoaTkxNSkgICAg
ICAgICAgICAgICAgICAoRElTUExBWV9JTkZPKGk5MTUpLT5oYXNfZHNiKQ0KKyNlbHNlDQorI2Rl
ZmluZSBIQVNfRFNCKGk5MTUpICAgICAgICAgICAgICAgICAgKGZhbHNlKQ0KKyNlbmRpZg0KDQoN
Cj4gDQo+IFRoYW5rcywNCj4gSmFuaS4NCj4gDQo+ID4gDQo+ID4gTGluazogaHR0cHM6Ly9naXRs
YWIuZnJlZWRlc2t0b3Aub3JnL2RybS94ZS9rZXJuZWwvLS9pc3N1ZXMvOTg5DQo+ID4gTGluazog
aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS94ZS9rZXJuZWwvLS9pc3N1ZXMvMTAz
MQ0KPiA+IExpbms6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0veGUva2VybmVs
Ly0vaXNzdWVzLzEwNzINCj4gPiBDYzogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRl
bC5jb20+DQo+ID4gQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4NCj4g
PiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVs
LmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
c2IuYyB8IDUgKysrKysNCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQ0KPiA+
IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rz
Yi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiA+IGluZGV4
IDQ4MmMyOGI1YzJkZTUuLmJjMTFjNDQ3YWZlMDMgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gPiBAQCAtMzIxLDYgKzMyMSw3IEBAIHZvaWQg
aW50ZWxfZHNiX2ZpbmlzaChzdHJ1Y3QgaW50ZWxfZHNiICpkc2IpDQo+ID4gIAlpbnRlbF9kc2Jf
YnVmZmVyX2ZsdXNoX21hcCgmZHNiLT5kc2JfYnVmKTsNCj4gPiAgfQ0KPiA+ICANCj4gPiArI2lm
ZGVmIEk5MTUNCj4gPiAgc3RhdGljIGludCBpbnRlbF9kc2JfZGV3YWtlX3NjYW5saW5lKGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiA+ICB7DQo+ID4gIAlzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoY3J0Y19zdGF0ZS0+dWFwaS5jcnRj
LT5kZXYpOw0KPiA+IEBAIC0zMzksNiArMzQwLDcgQEAgc3RhdGljIGludCBpbnRlbF9kc2JfZGV3
YWtlX3NjYW5saW5lKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0K
PiA+ICANCj4gPiAgCXJldHVybiBtYXgoMCwgdmJsYW5rX3N0YXJ0IC0gaW50ZWxfdXNlY3NfdG9f
c2NhbmxpbmVzKGFkanVzdGVkX21vZGUsIGxhdGVuY3kpKTsNCj4gPiAgfQ0KPiA+ICsjZW5kaWYN
Cj4gPiAgDQo+ID4gIHN0YXRpYyB2b2lkIF9pbnRlbF9kc2JfY29tbWl0KHN0cnVjdCBpbnRlbF9k
c2IgKmRzYiwgdTMyIGN0cmwsDQo+ID4gIAkJCSAgICAgIGludCBkZXdha2Vfc2NhbmxpbmUpDQo+
ID4gQEAgLTQ0NCw2ICs0NDYsOCBAQCB2b2lkIGludGVsX2RzYl93YWl0KHN0cnVjdCBpbnRlbF9k
c2IgKmRzYikNCj4gPiAgc3RydWN0IGludGVsX2RzYiAqaW50ZWxfZHNiX3ByZXBhcmUoY29uc3Qg
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+ID4gIAkJCQkgICAgdW5zaWdu
ZWQgaW50IG1heF9jbWRzKQ0KPiA+ICB7DQo+ID4gKwkvKiBUT0RPOiBEU0IgaXMgYnJva2VuIGlu
IFhlIEtNRCwgc28gZGlzYWJsaW5nIGl0IHVudGlsIGZpeGVkICovDQo+ID4gKyNpZmRlZiBJOTE1
DQo+ID4gIAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0
ZS0+dWFwaS5jcnRjKTsNCj4gPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9f
aTkxNShjcnRjLT5iYXNlLmRldik7DQo+ID4gIAlpbnRlbF93YWtlcmVmX3Qgd2FrZXJlZjsNCj4g
PiBAQCAtNDg0LDYgKzQ4OCw3IEBAIHN0cnVjdCBpbnRlbF9kc2IgKmludGVsX2RzYl9wcmVwYXJl
KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiA+ICAJCSAgICAg
ICJbQ1JUQzolZDolc10gRFNCICVkIHF1ZXVlIHNldHVwIGZhaWxlZCwgd2lsbCBmYWxsYmFjayB0
byBNTUlPIGZvciBkaXNwbGF5IEhXIHByb2dyYW1taW5nXG4iLA0KPiA+ICAJCSAgICAgIGNydGMt
PmJhc2UuYmFzZS5pZCwgY3J0Yy0+YmFzZS5uYW1lLCBEU0IxKTsNCj4gPiAgDQo+ID4gKyNlbmRp
Zg0KPiA+ICAJcmV0dXJuIE5VTEw7DQo+ID4gIH0NCj4gDQoNCg==
