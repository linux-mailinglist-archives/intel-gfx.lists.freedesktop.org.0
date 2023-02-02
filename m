Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E160688535
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Feb 2023 18:17:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB9C310E57A;
	Thu,  2 Feb 2023 17:17:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1423810E57A
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Feb 2023 17:17:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675358244; x=1706894244;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=4/AB1GGarxlj2IBPeYSavGn1QDKhSajetqIx7ttXMoM=;
 b=Ocr4Da9XkYWIxciwWgbltn8MIa1YQnpkzP9NgNUEC/4u8K35n9JEcghQ
 KGOy28E34mLDSgwXYQN+hz5oIianWOKVL5RTomwQyQseWEjjXhDH/2blu
 drSojRMEIyHuxo/MHoe475K0oBa7CMbY5OHDZEHEa88YF9Gmc76v6PL8K
 x+IO02ZfB85yuM6SwUckFax7b+NUmw9GA6Oy4sMO6UHy+KVhzpaH2/89Y
 yIaLrdje5+43/lonftuO5OeMqgqCL7xpWnoEA+e2SJNxexZmnVJuBxdIw
 S1Qx7BFoa52Rrd4a8SVLuCKH7EpXvkS1Ag/nGxZPrbL3d5VHOqjJAbcXK g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="329792151"
X-IronPort-AV: E=Sophos;i="5.97,268,1669104000"; d="scan'208";a="329792151"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 09:17:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="728935762"
X-IronPort-AV: E=Sophos;i="5.97,268,1669104000"; d="scan'208";a="728935762"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 02 Feb 2023 09:17:21 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 2 Feb 2023 09:17:21 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 2 Feb 2023 09:17:21 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 2 Feb 2023 09:17:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jUXv92qLnriVbg+ufY6g4bbxiJHg9y8RyLI09XmGt5umsS7sJ6H9UpbDJPtMNio/Rty7va2hZLLeAE7PeBL4FF1eAoUWLcsFEWVxIxcehtus6ZINVKHzRIqRGj7davwhQB0XPAT0FU6aHM0veN0bnewziUIKcxI2NhtiFpAD1CY8nsPFP/tHi+Yo4Q5pz3e27osYhFv3W8xWtIsivt2FJxg8uGdMPw6jxttH3U2GD2jhXs7JWw1Km6HaD/g2KIC5L5OX6CdT/G3IxaScnLBNJMUR1icz87xRTJlTjJaUOuhWd0aVkqfm5ncfva85q7EWbbnKr6dVxYosPvr4okGLCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4/AB1GGarxlj2IBPeYSavGn1QDKhSajetqIx7ttXMoM=;
 b=TL97TOTSMtaa2JTuyv67hrJZA5oE2ZGdQ1DV5c1fyLzZ3i7cAOb1Vo6Xx8OHX0KNn6pVrGXnSkOGLRB749CyZ2TdQRvqZHCOirVxU25iMhMRthR6wYGPEjc/yWUxbT8Tg57bXO8c/g7zOwoYsgAliDHfCKhIkfwocyC30P+o7RuGLxO9+Q0xNdmIHjbyohsuWu6WF0hp4mVX3I+j2e+0h76cURR4s3MhtM3GMqS44Souo+wY/KBmTtsA167NVe8BNzVhKX/FKP9Fbf7agcQF68P3pve/g69UemzFRhIDSePbaMJoWuSL8bf/EZ+EnV9vrp74BTF9bPUDOVmKg5FT1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by IA1PR11MB7296.namprd11.prod.outlook.com (2603:10b6:208:427::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.38; Thu, 2 Feb
 2023 17:17:18 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::e470:7eba:a68a:78be]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::e470:7eba:a68a:78be%9]) with mapi id 15.20.6064.027; Thu, 2 Feb 2023
 17:17:18 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 06/13] drm/i915/dsb: Allow vblank
 synchronized DSB execution
Thread-Index: AQHZK1pbWHdXeUQ45E2EoQH69zRrN667/Wvg
Date: Thu, 2 Feb 2023 17:17:18 +0000
Message-ID: <PH7PR11MB598108245847801EEF870AE0F9D69@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20230118163040.29808-1-ville.syrjala@linux.intel.com>
 <20230118163040.29808-7-ville.syrjala@linux.intel.com>
In-Reply-To: <20230118163040.29808-7-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|IA1PR11MB7296:EE_
x-ms-office365-filtering-correlation-id: 123a1102-f7ff-418c-e944-08db05415652
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MkF+ojB75wUrd2D6rvcbZrM7YjkRVeHplzS/xPTrjVrvc3gPIEBs+pSCndL+iB8oSFfYKsZllw6XlBrsN/rpBCO/PKQN7Cvxg5xDV2sjJzYn/zlNhFfyG1Y/nOhezQs3nTzozjHVLt/wm+po3Ju3KFBIUYtyCuqR2X80PJHWLSsdl4OSZ8yv6Zxq6Hfy/kC/EtMdil9TlcJIQcPYF1z/ouYChcoIUl9xQrtY4i5PncIxnUsJb+B9SzZVPcqk/j9z8plhs0NOwwKEQ5lMkGBVNG3qcRuJzhvApLldLhJyJ6gtg9EduiaYwIG1ReueXjH9s/DWHo8/h8RYOZFEehbI7eK83dHuqAXYxFXldl1KDnhEqOpPXXqwK0whShXVBJ+1fwkqZU9ola+BsGKI0kLLD9sWDR6tvj/Re0A4Fsk7pBy/+OddLnhrwT2PBXLGF8SgAUMwRT5x4MoqkCjSzxsqQTPyTtL5aFWy3ww9tlI50L6QmtLHOITuQCN5QGmResfcuSUDBzg1WwZRtTd43laO2LNDEpZiXEplWLrufum3uVNZOCUe/pdiG8pVJWicS5p3/JzqSc8us7R+8q2oPep8rB7BmxtLM3+QZXnK1LKY5ucTcLOyFGDzPdvyHw6Gyk0vD8RIXH2Kj5Q2KQC0mrvHgDSAS0lPMsqzYGGN3WtW24wDtWKwgtROe/DWJNb06KVa05Fc5NuB6XkNBXTlEZ6P0A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(346002)(39860400002)(136003)(376002)(366004)(451199018)(33656002)(86362001)(316002)(82960400001)(83380400001)(41300700001)(66946007)(66556008)(52536014)(110136005)(26005)(478600001)(38100700002)(6506007)(53546011)(71200400001)(55236004)(7696005)(9686003)(122000001)(8936002)(186003)(55016003)(76116006)(66446008)(8676002)(64756008)(38070700005)(5660300002)(2906002)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NUhMNUt2aG92ZVJFdGhFK2lJTkExT0dnRDZjbXRYNDgrTzJGUlBQdnNaMVVv?=
 =?utf-8?B?NE5TT01OQ3ExbW1MNXZNMkp4NFF4dmJBaFhMY2NwSTRJZ3VoakJpOFRoeHV6?=
 =?utf-8?B?TzVFdy9xUmwyNi9GdmtvZ1NqSksrRkQ3Z1d6ZHlYUTBFTExydllrWFFVKzNj?=
 =?utf-8?B?aEFmYVRjSmRsRWQwMThpK2ZrdWNueDVDMm1hK0pmVmttSGo4TEVlOUJmR2hQ?=
 =?utf-8?B?dkttSUZHYURibW4rOGgzL3RUSUt2dnUwdW9QU3paQVBKREoyZEV4dUVJRjJZ?=
 =?utf-8?B?MStPdkJDT1lJbEt1QzBQZ1pkcTNicmZlT242V0JoMU1YdEozZ2JhUTJ0VFlZ?=
 =?utf-8?B?NmZ2S1M4ZmpMOWVLK0hPMFhuenUyNjJMV2s5a0RveGJlSTN6dkNud1dNai9X?=
 =?utf-8?B?dEZvYTl0blM1SXd0T0p0MFFIOVZyazhidXZMU2dwSVRXY1NwYmZvSnYrV3pE?=
 =?utf-8?B?b21VcVh6MGxXS0x0ZURwL09Ncm82cGhZVmtyeVBCWFdlOGVOc3Q0SUVUWWkx?=
 =?utf-8?B?bHN0KzN3NlF0eDBJM0Y2NkdsODFLckFrbHZ0NlV3SEUwNlJQVi9ST0tHMjhi?=
 =?utf-8?B?Sm5OaE03Rzl5Y3hMTW5qWm5tU2lpY2JuRzVjT1VCNC8wcGg5SFZBSHpMNnVq?=
 =?utf-8?B?SFpOTkxjQnJVZUFGK0RoZllYT1Ryd0p6VW5XRmt6R2VhNm5sMDZKV2RpRytO?=
 =?utf-8?B?ZjFZV2ZQL1VoNVFFSE5jMkNBZTBSbk9uRHJZZzBEK2pwaU1abDJRUlkra1Bz?=
 =?utf-8?B?alY0STdtZE5JYUtsSGxEcHFvTnNPRHZndk8yNUVMZFhZU1VWd252c2lnUTBG?=
 =?utf-8?B?UG5vSzV5RjZvVTducDJJNDh0QXFzYmNINURrN2FEL0QrZDl2aGt4TVYyYnhF?=
 =?utf-8?B?Tnkya1B4bWZNUk9VcFJFR3NCaGIzT0xnSjZaSVk2S2tURHgwY1VPd1NUamdz?=
 =?utf-8?B?TWx2VWdGV053S1Q0V3BkUk50b0ZlVyt6c20xMkpBNnp5dnJZSVZrZ0lBbjlw?=
 =?utf-8?B?V0lNZVArcWJzK0EzOFpNTUVMUkpGbHdLZlE0UlczZjl6dEFsQW91Ri9JV202?=
 =?utf-8?B?OVRqOHpJVjh0NTBsbHorSVRWSU9DRDQyK1VHUU5kd2R6eW53aElmb0UyeW1r?=
 =?utf-8?B?UGh1Q3UveHJodlA2TEdpb2pEZFlzNFc5RkJ2YVRWM1dMelJ6cFJFVy9iTy9N?=
 =?utf-8?B?am9oM1dNTHgvRkJIT1d6aEZPZkd5TTVraGFVdWpGRy9wVEgxSm41SStTOUtr?=
 =?utf-8?B?YmR6TGdyOVpOajhNbEV1SEFyY3pIbGN5VGZYTzErM2llZDM3WW5WVjVrM0Rr?=
 =?utf-8?B?L0doNVJhbFA0aFcwaSt6cGFZYTd5czFkUVk0MSs1ZFQ0V203KzZKeTE3ek9n?=
 =?utf-8?B?T2RLMEZWUjcxOW1pNGtWWFowYlVyeGZaTitDUy9LQUMraWwyWkYvd0FDTkt2?=
 =?utf-8?B?alNtRTlWQVhOV3FmbE1nc1BMaUlHM1pTTmg0R1Z5V1BQbnBLbnBwd2NzUzlK?=
 =?utf-8?B?T1kxcC8wZlpDUEUyUnNIeGdjYXRpZUhFTytzK0RYNW04Wkt6cDI2b1pIMFVy?=
 =?utf-8?B?bzZkMDluZ3hhYUp1Q3lkOUpHM28xdDJibjZFemZscHVvanVhdmd1N2FDc1Nk?=
 =?utf-8?B?YVpwTEtuUnBvcW5OQ0ZXTTJnOHhpdnh3Q2d5UlI4TVYrZG9TbnRKeUtIZDRx?=
 =?utf-8?B?aXRQamlkTVZwejU4aXZpWnhKQ1Nya29sSmwzL2ZjdjZ5MVY4NHJHcEN6RnRQ?=
 =?utf-8?B?aEIzNUNYMXluWUR4NFFCaHpvdXdoU2RlajFnVEtQelFvUk5jZVMyZDArTXl0?=
 =?utf-8?B?Y0tOOFYxa2NldW5SUzhpaitZcXZQb0tsaFRzOGNLcGY1UisyWGNaU2xaYmtw?=
 =?utf-8?B?YjBaZ1hrSHJpQS9QYkNkNmFuWVRkSFIxUGx3S2RZYlFTSXdQNDQ1MmxrWXlq?=
 =?utf-8?B?ZWVxQnByUDdZVkRMNjBRUXlKZ04yc3ErNXJ1UlpoU3oxUUZtMi9yUis5OXJm?=
 =?utf-8?B?ZHdwL09lOTIxc2dKWWVyZm1tS1lZRVZqKzB5eUhmaGtFczJYdFM3ODQ5ai9I?=
 =?utf-8?B?TkdlUVhhRFh5ejJnSGRXbG5zR3Fjak9LQ2ZZazZlL3pmMkRYYThQZjdPd2pJ?=
 =?utf-8?Q?Y/x1tBa3AV6jEI8tIO6o+PoEb?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 123a1102-f7ff-418c-e944-08db05415652
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2023 17:17:18.1875 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +8eMygk249/iPbGNElyBz6iL2nf9tdsohiYMZD6Af//giXEBCsM9lP0xGEsLDqgeBAW5AUMP2Xc/64i2lmRm5g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7296
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 06/13] drm/i915/dsb: Allow vblank
 synchronized DSB execution
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
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgSmFudWFyeSAxOCwgMjAyMyAxMDowMSBQTQ0K
PiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwt
Z2Z4XSBbUEFUQ0ggMDYvMTNdIGRybS9pOTE1L2RzYjogQWxsb3cgdmJsYW5rIHN5bmNocm9uaXpl
ZA0KPiBEU0IgZXhlY3V0aW9uDQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gQWxsb3cgdGhlIGNhbGxlciB0byBhc2sgZm9y
IHRoZSBEU0IgY29tbWFuZHMgdG8gZXhlY3V0ZSBkdXJpbmcgdmJsYW5rLg0KPiANCj4gU2lnbmVk
LW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4N
Cg0KTEdUTS4NClJldmlld2VkLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVs
LmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29s
b3IuYyB8IDIgKy0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMg
ICB8IDQgKysrLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuaCAg
IHwgMyArKy0NCj4gIDMgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9u
cygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfY29sb3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3Iu
Yw0KPiBpbmRleCA2ZDZkMzAwZmEyZGYuLjE2MmQ2NzExODJlMyAxMDA2NDQNCj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYw0KPiBAQCAtMTI1OCw3ICsxMjU4LDcg
QEAgc3RhdGljIHZvaWQgaWNsX2xvYWRfbHV0cyhjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19z
dGF0ZSAqY3J0Y19zdGF0ZSkNCj4gDQo+ICAJaWYgKGNydGNfc3RhdGUtPmRzYikgew0KPiAgCQlp
bnRlbF9kc2JfZmluaXNoKGNydGNfc3RhdGUtPmRzYik7DQo+IC0JCWludGVsX2RzYl9jb21taXQo
Y3J0Y19zdGF0ZS0+ZHNiKTsNCj4gKwkJaW50ZWxfZHNiX2NvbW1pdChjcnRjX3N0YXRlLT5kc2Is
IGZhbHNlKTsNCj4gIAkJaW50ZWxfZHNiX3dhaXQoY3J0Y19zdGF0ZS0+ZHNiKTsNCj4gIAl9DQo+
ICB9DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rz
Yi5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiBpbmRl
eCBmNDU0MzI5YjY5MDEuLjQzNjc5MDkwZWNlYiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+IEBAIC0yMzcsMTAgKzIzNywxMSBAQCB2b2lkIGludGVs
X2RzYl9maW5pc2goc3RydWN0IGludGVsX2RzYiAqZHNiKQ0KPiAgLyoqDQo+ICAgKiBpbnRlbF9k
c2JfY29tbWl0KCkgLSBUcmlnZ2VyIHdvcmtsb2FkIGV4ZWN1dGlvbiBvZiBEU0IuDQo+ICAgKiBA
ZHNiOiBEU0IgY29udGV4dA0KPiArICogQHdhaXRfZm9yX3ZibGFuazogd2FpdCBmb3IgdmJsYW5r
IGJlZm9yZSBleGVjdXRpbmcNCj4gICAqDQo+ICAgKiBUaGlzIGZ1bmN0aW9uIGlzIHVzZWQgdG8g
ZG8gYWN0dWFsIHdyaXRlIHRvIGhhcmR3YXJlIHVzaW5nIERTQi4NCj4gICAqLw0KPiAtdm9pZCBp
bnRlbF9kc2JfY29tbWl0KHN0cnVjdCBpbnRlbF9kc2IgKmRzYikNCj4gK3ZvaWQgaW50ZWxfZHNi
X2NvbW1pdChzdHJ1Y3QgaW50ZWxfZHNiICpkc2IsIGJvb2wgd2FpdF9mb3JfdmJsYW5rKQ0KPiAg
ew0KPiAgCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gZHNiLT5jcnRjOw0KPiAgCXN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOyBAQCAt
DQo+IDI1OCw2ICsyNTksNyBAQCB2b2lkIGludGVsX2RzYl9jb21taXQoc3RydWN0IGludGVsX2Rz
YiAqZHNiKQ0KPiAgCX0NCj4gDQo+ICAJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIERTQl9DVFJM
KHBpcGUsIGRzYi0+aWQpLA0KPiArCQkgICAgICAgKHdhaXRfZm9yX3ZibGFuayA/IERTQl9XQUlU
X0ZPUl9WQkxBTksgOiAwKSB8DQo+ICAJCSAgICAgICBEU0JfRU5BQkxFKTsNCj4gIAlpbnRlbF9k
ZV93cml0ZShkZXZfcHJpdiwgRFNCX0hFQUQocGlwZSwgZHNiLT5pZCksDQo+ICAJCSAgICAgICBp
OTE1X2dndHRfb2Zmc2V0KGRzYi0+dm1hKSk7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kc2IuaA0KPiBpbmRleCA2YjIyNDk5ZThhNWQuLmI4MTQ4YjQ3MDIyZCAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuaA0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5oDQo+IEBAIC0xOSw3
ICsxOSw4IEBAIHZvaWQgaW50ZWxfZHNiX2ZpbmlzaChzdHJ1Y3QgaW50ZWxfZHNiICpkc2IpOyAg
dm9pZA0KPiBpbnRlbF9kc2JfY2xlYW51cChzdHJ1Y3QgaW50ZWxfZHNiICpkc2IpOyAgdm9pZCBp
bnRlbF9kc2JfcmVnX3dyaXRlKHN0cnVjdA0KPiBpbnRlbF9kc2IgKmRzYiwNCj4gIAkJCSBpOTE1
X3JlZ190IHJlZywgdTMyIHZhbCk7DQo+IC12b2lkIGludGVsX2RzYl9jb21taXQoc3RydWN0IGlu
dGVsX2RzYiAqZHNiKTsNCj4gK3ZvaWQgaW50ZWxfZHNiX2NvbW1pdChzdHJ1Y3QgaW50ZWxfZHNi
ICpkc2IsDQo+ICsJCSAgICAgIGJvb2wgd2FpdF9mb3JfdmJsYW5rKTsNCj4gIHZvaWQgaW50ZWxf
ZHNiX3dhaXQoc3RydWN0IGludGVsX2RzYiAqZHNiKTsNCj4gDQo+ICAjZW5kaWYNCj4gLS0NCj4g
Mi4zOC4yDQoNCg==
