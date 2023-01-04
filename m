Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A807065D1A9
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jan 2023 12:42:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBE4910E1C8;
	Wed,  4 Jan 2023 11:41:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0128810E1C8
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Jan 2023 11:41:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672832517; x=1704368517;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ZkS4n1zGy8fw8FsDUFp7cLn5JpiAORd9T7ANdZmlkQ8=;
 b=P4qnHl3OxWZYKiuXzS70aZPclLzlaieCcShq4GvoIgZWfr2ZXrenjOen
 01v170QN2aqtS3XNoWIL3+XaTkLvrCnmza4DLvDvEjrjl3wSfzZBsmsMT
 iaHUvHjoAcQqI8rnN7tZzBFWOzo3uLxdev/vqbsMuI7pGgVFUCxGnVmGM
 sokOPhHk41L6x/Qfzj/mTVo/cYI4ZG5zB6ICF1u1I10uuiHLUyyvYjDNQ
 JGHnmRs8LMH2gxgRyLcUO+1l2+4Ewfxw+LhjCN4Qmgsl/SelK3vTE64aM
 8J67EixXrcQCzbF4e08g4a2lWRjjt3FjCludYU+U718egs6Go/5v077yV Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="386348737"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="386348737"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2023 03:41:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="762646344"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="762646344"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 04 Jan 2023 03:41:56 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 4 Jan 2023 03:41:55 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 4 Jan 2023 03:41:55 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 4 Jan 2023 03:41:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JVOE3r8BCF8pvPQoupBzCMTdogevxmqZcEf676n6PZcciiedpwMVlJZwqAQQDPQYozl5zcPsONomXPRIZOEp0yJf+rrfZvltTl4I1oRCUJv6ScFNctUKOHt6BvpkRiLNyWoKQLp83i4ztT7Tbv+ss0AUfIzJZx7HtZkt/Vba6aMzghV7JZAuJwN88vwzW8jKOZVqYNoK9vdZVDdU3bG31VaGGm63+8Lz9SzrjdzOI5x2hxAAFhy+TSVbqimUpnbs3R/fsYe3oONM7ipcZD4JngTnK5WlydVWRVBUDQG4zONuvBbsptGKxh/FGidmoQYET3lFpkGNqKw0CLll2dyu5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZkS4n1zGy8fw8FsDUFp7cLn5JpiAORd9T7ANdZmlkQ8=;
 b=MB5hz+miButTyc5TnbEKdrrW9FnIw3pUuqhz8WjG/3lwBdcSSJM+TyQGlrO/yK7hPgfWzF0D6K3nVbxr2j3nGof8FpuLUg6YBGgdbg1AxMSf3NzhwpuYpurdmBcaBg4IchxEihFFj08xj8teHZNKUpMWfP2eo7QycyccYXPRsyHFRwTgzG/+TeQDmSuFxfveOD/B7beWPVoz+JiXvzjMcks3lrKaiSWjpGLbj8ShfZKuNdhavC7B99XnaTHad3Hc+G+19bqPztk49cjb60AAQlIq7JvHw7NdgKVlKFuLPrrsXq3fFBupx2a3Z3Yj/hX5Y/WwoP/LlWoV1l7JMPR76g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SA2PR11MB5003.namprd11.prod.outlook.com (2603:10b6:806:11e::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Wed, 4 Jan
 2023 11:41:46 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::f0a1:f049:98db:6cb2]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::f0a1:f049:98db:6cb2%3]) with mapi id 15.20.5944.019; Wed, 4 Jan 2023
 11:41:46 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 06/13] drm/i915/dsb: Extract intel_dsb_emit()
Thread-Index: AQHZEObQroY0XptiFkuGK9ml4AlfAK6OQQxw
Date: Wed, 4 Jan 2023 11:41:46 +0000
Message-ID: <PH7PR11MB5981E5BD45A014086EACDBA2F9F59@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20221216003810.13338-1-ville.syrjala@linux.intel.com>
 <20221216003810.13338-7-ville.syrjala@linux.intel.com>
In-Reply-To: <20221216003810.13338-7-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SA2PR11MB5003:EE_
x-ms-office365-filtering-correlation-id: fce8cece-c48b-4bf1-a8ae-08daee48a8e2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GQC8nTV7ZObLm6ZAydO+x3rZQtFOCxr7XFFe6AxAhY+L1/31UjS2IJkC06AOLuwIj2GrZav+MCmlp+SQKjp5/6ztdN0BU4FEue/9bNvtMjJ98rW7Q39PTmx758J8zTG8XJFkQepjiZwA+EriOng/z6exk94tFjsRzi/z+J/GYQ61DAie7PrnylGfKHdWqMDc/2IraFkPa0/mkv9dv+NJFyyiE5ptqQztAFdiZIfxcIjeLbUZnu6bfUlv0ddm2qnRaLz08Bmh+HrLB7bK9RaZ69IVKcViOx6MbB9L3B3qwuMtzhV4NG3GGO3eqXrEbBF3A0pmq76p6moikeCalFWDqjIcIkdpjawzmGiJTuYSOjMZJUuPCH0m5tdviJCqk6T1qX6ejDp//25IK01UT2OWA/m8G4YDiQIGKoTN2tiHOy20nzDOtql0sjaT+FMF+Cs+w4R4b8VTvaS+nibzMjKPyNFc4tEdHw4LiN715QHG6TsPIUm93/aeX2wq6MXXIAETmXijy2lGA4zkw5/51Y9KZ9Wtl9egmhdT0ffhJuMb0ejQOXMQZctrnXp4xxHfzF7xSMaVBINsFp0qTDIzlO2s5MrIMCN0p0cKm3OxJ7eJezp3WmPO4JM8f9Gt6tkmjol5KDuMu9uGF4icoxQE8apETcdNlYQ+SeK88oxBu1aJ9DEpVPU9hAAdPZodS75g8OIgPQQPReb+Qz8MCtxSYrOfqw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(376002)(136003)(39860400002)(366004)(396003)(451199015)(76116006)(41300700001)(64756008)(66556008)(66476007)(8676002)(66946007)(66446008)(5660300002)(2906002)(110136005)(52536014)(8936002)(71200400001)(7696005)(6506007)(55236004)(53546011)(26005)(186003)(9686003)(478600001)(86362001)(55016003)(83380400001)(122000001)(38100700002)(82960400001)(38070700005)(316002)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WWJjSTNDVzhTRk5lcmN0YmRNZ1c0ZjVOTk9BU2NiTGczRm1xaklVVldBeDFV?=
 =?utf-8?B?KytpeTMrN0xtNXRmMDdxdjdUekIyNFZqVFMvczlhU2l0MWhKYVBMR2YxUFZM?=
 =?utf-8?B?YUI5NkQvbFpLb2V4YVA3TE9ONmdxQ1lLRlZaMEQ2dHRubTZRNTE4VTI4SEN4?=
 =?utf-8?B?djFia09MUzF5MEpUY1l6N1F5R0FtOWxFNEVqOFpXVzFQSGhrNDNNWnFxdmdO?=
 =?utf-8?B?N1VvbGx2Sm9RcmJRa0w1YUYxN0xKQXhRTHd4NzFPVTE1b3ZKRzVjcnowQS90?=
 =?utf-8?B?eGEvVHdRc211LzNLNE5waFN1MVBkWDNZcGpCSzU1MWNiaGhSdFFxZ09sMVZa?=
 =?utf-8?B?WWRWeWFVeUNPdytGeXEzZnU2ZWIzTk1nQ2dMMCt2OFZ2Z29RN2RFbUdEKytF?=
 =?utf-8?B?WWJ6VGlDTHZVRU8rdnF4VnMvNjV2UERYS0xZSFRmLzhmSEV6enpaTVF4dVJN?=
 =?utf-8?B?c012ZzVoKzNQclU1NkZvaXpUMDFaNFoxVE5MaHQycnlPVWU0NmE1WDVFdS8y?=
 =?utf-8?B?d05xdHFTNndMb3NIaktKcTQ2bnIzekU0R05TazJoQUgxdGpNY0M5RGh0WnBz?=
 =?utf-8?B?c0E3TDRPbG1VR1F3aklyZXJoNDM3eGVzZi9KeExISmRZbmpBNHkrM2NKK0J5?=
 =?utf-8?B?d2p2a011V28vSzF5VGNtOGlHQ1FKUlNZY2p0dG5VV0I4Tkl4dXFpOXVUWDBJ?=
 =?utf-8?B?UGtLRGlya3ZXVERZTko2OWZOVDR3WThhcElNVmtnY21GVGRMRFY0SDNiSVVZ?=
 =?utf-8?B?c0xaZzBSOW9pN0Nsais0eVRNS0czMitkaFFSR3E2SGlJZjB0VTRFQXI4clRO?=
 =?utf-8?B?TVZtK0R2WTZvRGUveGxjU25XS0dadksyVGo0cTR0ZXMxVGRJVUxDcHRwTnhC?=
 =?utf-8?B?bzhHWS9RRnI3NGFWcXR0alJ3N25UNEVoNjdHRlZ1Y1FBYjgwZDY3UFFaZG5j?=
 =?utf-8?B?L1NMRnZDSy9CbS9nZUpDRXFMR3l6N0VFNi9PLzRybnpjSWl6UTU4L2tHRzQw?=
 =?utf-8?B?ejJSTDY3S0ZJdm16cTJISEV4MFFYb21DNWNnWkh6N2t6UnYzWkJKNEJrY1pQ?=
 =?utf-8?B?aHFQSmNRZVozNkNHaDdnN3ROUmpmbFlqalZSOFpEZ2hRNkVTVERrbUdoYWIz?=
 =?utf-8?B?ZFFNMzU1d3pLNmJpdmxreWFTRXZkaW40ekU5WFAxL1UrRms2TkRVVFJKbGk1?=
 =?utf-8?B?UnhxaG5EMGlNTkZ6cXRobVRhSzdEaTFnV25VdmROM3RZdzBiR1ljWUU1Lzhh?=
 =?utf-8?B?OHhldlpKZ2loaW91VCtDRnRXbDBsd0kwbFRHb1hMRkdQOGRYYXlLUUZCMkZu?=
 =?utf-8?B?NmV6SFZ0K1Q5NjVGV0JhelVycXg5eE9TWSs0cVBxRDdPQ2dPeEpuYllJUFJ1?=
 =?utf-8?B?RndhRER2V1FuMXNjVGFlY254dk5sRU1BZ1RRNTNVTWNwUHpLWjJCZkVBVjFL?=
 =?utf-8?B?bGkxRTZ5bi8rU0tSWUFNRFR0NGJCdnNya3A1S29IVmRxQnpVb2k2NktrMWEz?=
 =?utf-8?B?YzZoMWRMZzBSUTFzTEE0eFcrT1R5WjMzOXFYTTY1YVFucDFYZStndUx1M1lt?=
 =?utf-8?B?WU9tR1U5SUNoZkJIeGQ1WHRsT2dyeGc3OGJ2TkdRVmRVNjdnV3J1WC9VZytF?=
 =?utf-8?B?cVhIZ1BjMHE3MkxjNUQyd3lZT3QrWDNpWUxRTkFFaUFaaEZ2NnBPWTczZzRC?=
 =?utf-8?B?d2tUbkRqZjhUbUFiTjFTd3hSRkZXWWIwU0hhTTlrOW5VOEVvbThaMGxVNEJu?=
 =?utf-8?B?WDJjdlhDSWVCSmU5d0FHa3lXMk0zWnp2UDBRVjB1UDlOYnVUaGJKeFJMSkhE?=
 =?utf-8?B?bG1za0VZOXUwNmRyNWxWSVVFNXI2MWVCeEhIU3Bja2V1Q1BnMmsrRVZJUEJU?=
 =?utf-8?B?OG5VTzUxc29YU2dFRmcxUzZjUkFYSkt6ZVREeEl0NlBickIrZnpKbTN0bnVW?=
 =?utf-8?B?b3lEMDE4cHVpMXh2Zzc0cmN0aU1Pci9JU2pEalZacjNjdlF5UGtUbHRqOUNV?=
 =?utf-8?B?UE5KKzdlUEN1bjdObDQ0ZDhVY1pJN205bkJhRDFVYjc1TDN4Nyt3QkxNMWdH?=
 =?utf-8?B?bHVKWEFHU0xZVEdpS1dLNXBBZ0NydHJpWTF3elBuekROQm9KQXVZT1FhZGE2?=
 =?utf-8?Q?U4oZzcrExMjrFjz0efcD7LLfu?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fce8cece-c48b-4bf1-a8ae-08daee48a8e2
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jan 2023 11:41:46.4360 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 64ue1GAhNRl3e8Bt5j2SZ+cNYMBceiQ43Avbvpuv7QelfCfXH+zmtu6ZO9uH4s+2jnH81roRgi3f3GbC9fFdoA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5003
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 06/13] drm/i915/dsb: Extract intel_dsb_emit()
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
XSBbUEFUQ0ggMDYvMTNdIGRybS9pOTE1L2RzYjogRXh0cmFjdCBpbnRlbF9kc2JfZW1pdCgpDQo+
IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
Pg0KDQpMR1RNLg0KUmV2aWV3ZWQtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50
ZWwuY29tPg0KDQo+IA0KPiBFeHRyYWN0IGEgc21hbGwgaGVscGVyIHRvIGVtaXQgYSBEU0IgaW50
c3RydWN0aW9uLiBTaG91bGQgYmVjb21lIHVzZWZ1bA0KPiBpZi93aGVuIHdlIG5lZWQgdG8gc3Rh
cnQgZW1pdHRpbmcgb3RoZXIgaW5zdHJ1Y3Rpb25zIGJlc2lkZXMgcmVnaXN0ZXIgd3JpdGVzLg0K
PiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RzYi5jIHwgMzAgKysrKysrKysrKysrKysrKy0tLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwg
MjAgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gaW5kZXggNmZjN2QwODdhN2NhLi5mYjIwZDll
ZTg0YTQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHNiLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0K
PiBAQCAtODYsNiArODYsMjIgQEAgc3RhdGljIGJvb2wgaXNfZHNiX2J1c3koc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUsDQo+IGVudW0gcGlwZSBwaXBlLA0KPiAgCXJldHVybiBpbnRlbF9k
ZV9yZWFkKGk5MTUsIERTQl9DVFJMKHBpcGUsIGlkKSkgJiBEU0JfU1RBVFVTX0JVU1k7DQo+IH0N
Cj4gDQo+ICtzdGF0aWMgdm9pZCBpbnRlbF9kc2JfZW1pdChzdHJ1Y3QgaW50ZWxfZHNiICpkc2Is
IHUzMiBsZHcsIHUzMiB1ZHcpIHsNCj4gKwl1MzIgKmJ1ZiA9IGRzYi0+Y21kX2J1ZjsNCj4gKw0K
PiArCWlmICghYXNzZXJ0X2RzYl9oYXNfcm9vbShkc2IpKQ0KPiArCQlyZXR1cm47DQo+ICsNCj4g
KwkvKiBFdmVyeSBpbnN0cnVjdGlvbiBzaG91bGQgYmUgOCBieXRlIGFsaWduZWQuICovDQo+ICsJ
ZHNiLT5mcmVlX3BvcyA9IEFMSUdOKGRzYi0+ZnJlZV9wb3MsIDIpOw0KPiArDQo+ICsJZHNiLT5p
bnNfc3RhcnRfb2Zmc2V0ID0gZHNiLT5mcmVlX3BvczsNCj4gKw0KPiArCWJ1Zltkc2ItPmZyZWVf
cG9zKytdID0gbGR3Ow0KPiArCWJ1Zltkc2ItPmZyZWVfcG9zKytdID0gdWR3Ow0KPiArfQ0KPiAr
DQo+ICAvKioNCj4gICAqIGludGVsX2RzYl9pbmRleGVkX3JlZ193cml0ZSgpIC1Xcml0ZSB0byB0
aGUgRFNCIGNvbnRleHQgZm9yIGF1dG8NCj4gICAqIGluY3JlbWVudCByZWdpc3Rlci4NCj4gQEAg
LTE2OSwxOSArMTg1LDEzIEBAIHZvaWQgaW50ZWxfZHNiX2luZGV4ZWRfcmVnX3dyaXRlKHN0cnVj
dCBpbnRlbF9kc2INCj4gKmRzYiwgIHZvaWQgaW50ZWxfZHNiX3JlZ193cml0ZShzdHJ1Y3QgaW50
ZWxfZHNiICpkc2IsDQo+ICAJCQkgaTkxNV9yZWdfdCByZWcsIHUzMiB2YWwpDQo+ICB7DQo+IC0J
dTMyICpidWYgPSBkc2ItPmNtZF9idWY7DQo+IC0NCj4gIAlpZiAoIWFzc2VydF9kc2JfaGFzX3Jv
b20oZHNiKSkNCj4gIAkJcmV0dXJuOw0KPiANCj4gLQkvKiBFdmVyeSBpbnN0cnVjdGlvbiBzaG91
bGQgYmUgOCBieXRlIGFsaWduZWQuICovDQo+IC0JZHNiLT5mcmVlX3BvcyA9IEFMSUdOKGRzYi0+
ZnJlZV9wb3MsIDIpOw0KPiAtDQo+IC0JZHNiLT5pbnNfc3RhcnRfb2Zmc2V0ID0gZHNiLT5mcmVl
X3BvczsNCj4gLQlidWZbZHNiLT5mcmVlX3BvcysrXSA9IHZhbDsNCj4gLQlidWZbZHNiLT5mcmVl
X3BvcysrXSA9IChEU0JfT1BDT0RFX01NSU9fV1JJVEUgIDw8DQo+IERTQl9PUENPREVfU0hJRlQp
IHwNCj4gLQkJCSAgICAgICAoRFNCX0JZVEVfRU4gPDwgRFNCX0JZVEVfRU5fU0hJRlQpIHwNCj4g
LQkJCSAgICAgICBpOTE1X21taW9fcmVnX29mZnNldChyZWcpOw0KPiArCWludGVsX2RzYl9lbWl0
KGRzYiwgdmFsLA0KPiArCQkgICAgICAgKERTQl9PUENPREVfTU1JT19XUklURSA8PCBEU0JfT1BD
T0RFX1NISUZUKSB8DQo+ICsJCSAgICAgICAoRFNCX0JZVEVfRU4gPDwgRFNCX0JZVEVfRU5fU0hJ
RlQpIHwNCj4gKwkJICAgICAgIGk5MTVfbW1pb19yZWdfb2Zmc2V0KHJlZykpOw0KPiAgfQ0KPiAN
Cj4gIC8qKg0KPiAtLQ0KPiAyLjM3LjQNCg0K
