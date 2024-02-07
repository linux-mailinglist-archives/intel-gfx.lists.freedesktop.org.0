Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 815E184CE25
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Feb 2024 16:35:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDB77113029;
	Wed,  7 Feb 2024 15:35:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H47U35SU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1020D113029
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Feb 2024 15:35:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707320157; x=1738856157;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=zlSiaZnOhA2Ye83eKcF1VEwIz4MvcNvvi4w8pAQdYoA=;
 b=H47U35SUToo1qbeGB5HMYNT6OS5vL08f5vZroXUKnlvJ5J6eP2Xx5uPH
 AqSdA+7crt2ak8Q56lfpMLU8cRg/FEBYTIJpRwWjR1aWFYrm0SJkjET8/
 LU8YGNl6YJxMTZBE29/bv6S+aAioJ9fhoIhgJTgijGWLhdJDDQZyjcHDx
 Isubvhze1QN+mJS/d4JMBlGKVfh0x46qcdJbPUYLCOPLvVJqs7ib8e1Wy
 3XZDAqz6NlSbwR+imzITWFyISuZEWZ1SHRaslITgGLV+LMyqUbZTJyV/f
 WhWZ/PYmvkhTVWfnds2cGppxS360UK1eFIkfIxpybmNgEKW1zE7zlDao+ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10977"; a="1157292"
X-IronPort-AV: E=Sophos;i="6.05,251,1701158400"; 
   d="scan'208";a="1157292"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2024 07:35:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,251,1701158400"; 
   d="scan'208";a="1357849"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Feb 2024 07:35:56 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 7 Feb 2024 07:35:56 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 7 Feb 2024 07:35:56 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 7 Feb 2024 07:35:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fxCZtGyhEpQoxeJzssnidUsozyJCWUypxQ5Vsa6r7tEUSVONrcS9YS5c7S325g01UaLeLSYtfFr+XIENVyTJ2MAyY7hpQA8pOPGUTZSghoouOiyYPSog4FzS0/P+/t8f49kvP82ajbzJHJWnQbBsP/4kxMP42/O1QGnrhjT53Nb3FqqFMwYBl4DdgLdSP92YAoM1hWRHipTykUr2pNr37Fk9MYBZFZnZPtoBdZ2pLd3p6Eq7DAhjJeiWZ+HMZSBQuTnI8vv/9gdFgpY2EBhUaWC68jQDse8mD1Q0HmKUSYQ6zm/zpYW6oaxS/q/pAy9ecS0Bar5PT+6Ou84PapE9Kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zlSiaZnOhA2Ye83eKcF1VEwIz4MvcNvvi4w8pAQdYoA=;
 b=nA3GxNx0VqGhe/U2otvj/aC7OdtQi2oUMlgFyR95CNJu4dmsqgsAitcefGav63fmmkubWJ+SOf7EgebCziBO2kelXZnVvVS7DL/reBTu0uAJ5NYhvU3pzVpCPkE2qK8sfzu4R31lefFqvWYYUbJtB48U8VghOsskBUjYvZ3TbSTHX5quNBrloeqZofJWFnQHuaDFRYifsHXqMy2awe4TK7M2WWpJbToVg3GSkjlQxcqhJWXlnIQEksnVOOnAdK4MXVCzmXCpTynumoL3k5H5rOd6dLTF/Oyr4y6mRzsQyyJi64CKfKPeWCDjXbvyh16BbewwyfiaxDilSNrIGTPsIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CY8PR11MB6985.namprd11.prod.outlook.com (2603:10b6:930:57::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7249.30; Wed, 7 Feb 2024 15:35:53 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737%7]) with mapi id 15.20.7249.037; Wed, 7 Feb 2024
 15:35:53 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 1/2] drm/i915: Prevent HW access during init from SDVO TV
 get_modes hook
Thread-Topic: [PATCH 1/2] drm/i915: Prevent HW access during init from SDVO TV
 get_modes hook
Thread-Index: AQHaWRKwjV0b7aKvkEOcrObXXnc/m7D+4GWAgAAFNgCAAAiogIAAFkCA
Date: Wed, 7 Feb 2024 15:35:53 +0000
Message-ID: <c5bbed8efc4e436867582fd1f5a365b124b119cf.camel@intel.com>
References: <20240206153910.1758057-1-imre.deak@intel.com>
 <20240206153910.1758057-2-imre.deak@intel.com>
 <47fac05618fb85725f9c0cfa694fb601c82b2a7f.camel@intel.com>
 <236599ca2b3982045a2515d4eaef16a2f23cefd5.camel@intel.com>
 <ZcOQrSdCVpZIL8xR@ideak-desk.fi.intel.com>
In-Reply-To: <ZcOQrSdCVpZIL8xR@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CY8PR11MB6985:EE_
x-ms-office365-filtering-correlation-id: 0e453f6f-164d-48a7-6671-08dc27f2784b
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XgYrNJkIApJFerTYXAxfEcCorob2lgjtwX9Vqmr99J2jdGA05JGivdC+UvzSGjTnx5ZTNa07dx/X7QkAEBXB0wXSH2ryLtVerherqgVPx2S4pz14im769ptSRGGr8YnGs3XTK44Ia5VeoKRWErBjgcF6/kU+Nb4S3KG17JUzTC1MoAHmoumqUwFFyp7nW9MbU7kDc9rl4u2FLK6A4dj3egQVrNp6DQC2lckBBMf8xaVyrdv/t4le/FMGNk69/LvGwGdyfwJUvBQA7egyMOm8dYCCIirN0f86cnDb81fh4LCA8HUWOdwnMaaAZr2pwai7L9/QuPp00Jql/2alj8RNRvEGI5deWEUYB2WrXYoBNGrK3FB1LPjifc42QZwCD2jEj3+94T7iWOBk1Qk1FIlz/HdeQBSfcMHvvSKgr/a1e18yff/8nAFvkFKivYW2mIs0dRyXGOUtU224TTNvhI94A+WKzvPECZXkW+0Uu8+HG9ks+qafJID4amNFLq8aRdTWNkF2eQHQmD57Gr9yBqCaF+mWrdYCqG9MsnuoPTx3T8cwPUli7lOYHwPjqm8b0V6V6aVSespXZHMvltVamE9Xn9dnbK7kMQxA6ajpt/sMZiQ2DKnKsKzPJBs+ut6vMsYn
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(396003)(366004)(136003)(346002)(230922051799003)(451199024)(1800799012)(64100799003)(186009)(6506007)(6512007)(71200400001)(6486002)(66446008)(316002)(66556008)(37006003)(66476007)(6636002)(64756008)(478600001)(66946007)(86362001)(8936002)(83380400001)(8676002)(6862004)(82960400001)(76116006)(2616005)(26005)(4326008)(38070700009)(5660300002)(36756003)(38100700002)(122000001)(2906002)(41300700001)(66574015);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UENhSXBJWTZrdU1MeVJ0blZ4Ujk5ZWFxTG9saUpVNzNZUVRSdGtGamFyMjdR?=
 =?utf-8?B?ano2WnRuVUVYWC9wRC8wVE9QdEdJNzhuUG9vN3VOZDFxa0s4NWx6WitwaVI2?=
 =?utf-8?B?R2Nsc1oydDEvRGcxZHNzbnFySmJkYTY3T3lLWFZrM2ZSU2NMY2FRMlFaZldv?=
 =?utf-8?B?UGkxQ2dsZDUzTitHSG5NZEZVdzI4V3YwRFRZYkNVSXh1dHhpQTFBcUltWGV1?=
 =?utf-8?B?R2NxNXlEWE1DK0s1ZUNSbzlKU0lMWFBGSHREdi84SVJNY2xDT3dwcHptaHRs?=
 =?utf-8?B?c3Y5a0pQWVRKZHZsS2FzZWVxTWZmSnJvVkdEamRPdUxiZlBOMmpIQlY3bmwr?=
 =?utf-8?B?cWk1OEVYdjdPS0hoWStWT2VoUnNyQlZPRWt6Qzk5QmRFRFV3bEM4ZkRTV2pG?=
 =?utf-8?B?eUlRNEdtSFBCZG9IdTE0MUFLWUo0dDl0dTlIM2NZMzY0c2t0M3hWZVAxczVn?=
 =?utf-8?B?RGxxTzNQNnFURWdLMm4zcXJ0MVVTZlpZMXlnT0RCMHBkdGRLSUl1UUd0bmVo?=
 =?utf-8?B?cG8reGgzSEozclR4OGh0SGd6NlE0cFhWTXpFMnYraktBcUZkNTErRllrWTl6?=
 =?utf-8?B?bkpSMnNNaUo4UlFia1RBaW1rMzdnT2FZMDdWUXBab0tLWldpVnlaYmtQbHpt?=
 =?utf-8?B?ZXZzeFZBODJKWnp2U3J1STNmRExXTDA2MWlnV0JyTDA5ZW1vT0ZrMVh3OGg2?=
 =?utf-8?B?Y2tQZEQ0L2VvdzRzdXF5VjNtNjFobkxWOWxjNkJ0ektuQXNHMXhsMHA1M3c3?=
 =?utf-8?B?amxIT2o1Y0c2cWZmU0todFZkcktkWU9RVlQwblFiRUk5ZVNreXd0b0s0Qlp5?=
 =?utf-8?B?YnZtMlVYVWJ5SGNBSnQ2MndpUlRPYkxjbzZ1Qi94d1hULzhUbU1vVFloTGFu?=
 =?utf-8?B?Ni9WSDU3aTdUb0wrZU8yRjlFY21Ca2ZFdHQrWEEzNHhpY2daNXg3RWJnejVn?=
 =?utf-8?B?bHZJK0xmcEs2c1pnOXZ5NW9ES0Z5WXBmN1pDb0g5Ny8xL2FmWlhYZFBBZlRV?=
 =?utf-8?B?TVZHTnQ1NmlYcnRVRnMwOTY1VzNiQjVuSFlJK0hReDZ2MFlQaVJvS3l5UVZ5?=
 =?utf-8?B?RDZDQU93WXpZcTNIL1MxaitaR2ZKbVhVczE4VEdaL1NaQ21xVDFBcm1TUnhI?=
 =?utf-8?B?YnRsMGVkK1huVFRHZXM4MHZVaWpqMWVLSHFtMGZwNFUyY0ZDSEp0cGZsRFFx?=
 =?utf-8?B?OVdKV0VSQkYwQWRnc1JoWlJwb3FpVmtnb2JCa29OZkFFcjhybzI4ZzNxUHIx?=
 =?utf-8?B?d3N3c0V5S1J5d3FycVpiWkt5QXVHUyszNmErWkpBWDU2V09NS2xHUzhmWUZY?=
 =?utf-8?B?T3kyL1A1bS82a0xUcGFEYzlPOHYrYitXN1pmRlFaOHRoc1Q3NmFCN2JKeitZ?=
 =?utf-8?B?NTJDR1A3aVE0RkZQaW4yZmVXNUtHQVVUcTFwRFJmN0p4eDJlT3ptMHY4REh1?=
 =?utf-8?B?WlBsbGpKa0dXMStrNGFSaFl4ekxyVExwenE0YU8rZlZ0b2VhcGlQYzBuWmFp?=
 =?utf-8?B?eWl4UnUwSW94RjZPVEhTK2xnWURqbC8vdFZUQnZRWm91YlRNQklramFKUWov?=
 =?utf-8?B?cXNYU2Y4TG9Jd2lkc256TXh1SGVObmJlRFpuNXZUamZpL2RRdFNvK2VuSVA3?=
 =?utf-8?B?U0hvWDRiajlLSTZpNTQ3MkZLQmZnQ29tMDhkVng5eFpOOFNzcVNkWXlJZFhV?=
 =?utf-8?B?S0pVcWVLSllqczJXR1VXbkNQUlk5VVVwNW50Wmp2QXZEdDNaRjdnL2lNUWhu?=
 =?utf-8?B?Q3psczlwdGJoeHZhZFVGQjZzSUxQU1NSZjBHKzlrUElsbW44a1k0TjhMc1Zq?=
 =?utf-8?B?OTBqcEJzd2ZkdUJjTm9ScXE2c1RFcmFVcDNYTWZvYnJTL3FUTHFPaDEvdm9Y?=
 =?utf-8?B?bWZTL2l1UUZOazc0WFhXWUt3YnlKRldPUk4rS1hGTU5PWTZMNnlPeFdCcG9W?=
 =?utf-8?B?YUV5bHAydDVjV0ZoU0dkWVozL3ZQeE80VGIzbWZ5aHdHRmovNGo5QU9SQ1Nz?=
 =?utf-8?B?Sytld2FSejEvNlR6bmoxS2xLSjJKY2pLL2EzbHZSdkJ1YjVScWNEWW9SaWp1?=
 =?utf-8?B?YnNpWkpvSWE4SnFVQU1oSU5ybzBqUjBmc0NyYmFZc2pjY1dFRHFHcFpDeUVT?=
 =?utf-8?B?UUVlL0IySkZlNjlyR0JQT3BibjZ6MSt5bkU0WStKU2N6WXRvWDdFNFFFWEhR?=
 =?utf-8?B?ZVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <9F7E5134A716A14DB832D20CB822F2CA@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e453f6f-164d-48a7-6671-08dc27f2784b
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Feb 2024 15:35:53.3033 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /7PEgjWhOWcdOOYzG52nPVOTTNnD/3jEaOppiAOjC+bnUfDIFFMvJkr0fYHkY4OQYF8YCb5t/EHCtSvJXWDl8Cs1mzlKh1ZOmxmoycaRths=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6985
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

T24gV2VkLCAyMDI0LTAyLTA3IGF0IDE2OjE2ICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IE9u
IFdlZCwgRmViIDA3LCAyMDI0IGF0IDAzOjQ1OjE1UE0gKzAyMDAsIEhvZ2FuZGVyLCBKb3VuaSB3
cm90ZToNCj4gPiBPbiBXZWQsIDIwMjQtMDItMDcgYXQgMTU6MjYgKzAyMDAsIEhvZ2FuZGVyLCBK
b3VuaSB3cm90ZToNCj4gPiA+IE9uIFR1ZSwgMjAyNC0wMi0wNiBhdCAxNzozOSArMDIwMCwgSW1y
ZSBEZWFrIHdyb3RlOg0KPiA+ID4gPiBQcmV2ZW50IGFjY2Vzc2luZyB0aGUgSFcgZnJvbSB0aGUg
U0RWTy9UViBnZXRfbW9kZXMgY29ubmVjdG9yDQo+ID4gPiA+IGhvb2suDQo+ID4gPiA+IFJldHVy
bmluZyAwIGZyb20gdGhlIGhvb2sgd2lsbCBtYWtlIHRoZSBjYWxsZXIgLQ0KPiA+ID4gPiBkcm1f
aGVscGVyX3Byb2JlX3NpbmdsZV9jb25uZWN0b3JfbW9kZXMoKSAtIGtlZXAgdGhlIHByZXZpb3Vz
bHkNCj4gPiA+ID4gZGV0ZWN0ZWQNCj4gPiA+ID4gbW9kZSBsaXN0IG9mIHRoZSBjb25uZWN0b3Iu
DQo+ID4gPiANCj4gPiA+IEkgZG9uJ3Qgc2VlIHdoZXJlIHRoaXMgaXMgZG9uZT8gTm90IHN1cmUg
aWYgbG9va2luZyBhdCB3cm9uZw0KPiA+ID4gcGxhY2UsDQo+ID4gPiBidXQNCj4gPiA+IEkgc2Vl
IGl0IHRyaWVzIHVzaW5nIHNvbWUgb3ZlcnJpZGUgZWRpZCBhbmQgaW4gY2FzZSB0aGF0IGZhaWxz
IGFzDQo+ID4gPiB3ZWxsDQo+ID4gPiB1c2VzIGRybV9hZGRfbW9kZXNfbm9lZGlkPw0KPiA+ID4g
DQo+ID4gPiA+IA0KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0Bp
bnRlbC5jb20+DQo+ID4gPiA+IC0tLQ0KPiA+ID4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfc2R2by5jIHwgNCArKysrDQo+ID4gPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDQg
aW5zZXJ0aW9ucygrKQ0KPiA+ID4gPiANCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc2R2by5jDQo+ID4gPiA+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9zZHZvLmMNCj4gPiA+ID4gaW5kZXggMjU3MWVmNWExYjIxMS4u
Y2NlYTBlZmJkMTM2ZiAxMDA2NDQNCj4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9zZHZvLmMNCj4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9zZHZvLmMNCj4gPiA+ID4gQEAgLTIyODcsNiArMjI4Nyw3IEBAIHN0YXRp
YyBjb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZQ0KPiA+ID4gPiBzZHZvX3R2X21vZGVzW10g
PSB7DQo+ID4gPiA+IMKgc3RhdGljIGludCBpbnRlbF9zZHZvX2dldF90dl9tb2RlcyhzdHJ1Y3Qg
ZHJtX2Nvbm5lY3Rvcg0KPiA+ID4gPiAqY29ubmVjdG9yKQ0KPiA+ID4gDQo+ID4gPiBJIHNlZSBp
bnRlbF9zZHZvX2dldF90dl9tb2RlcyBpcyBjYWxsZWQgZnJvbQ0KPiA+ID4gaW50ZWxfc2R2b19n
ZXRfbW9kZXMuDQo+ID4gPiBXaHkgdGhlcmUgaXMgbm8gbmVlZCB0byBkbyB0aGUgc2FtZSBpbiBp
bnRlbF9zZHZvX2dldF9sdmRzX21vZGVzDQo+ID4gPiBhbmQNCj4gPiA+IGludGVsX3Nkdm9fZ2V0
X2RkY19tb2RlcyBhcyB3ZWxsPw0KPiA+IA0KPiA+IEl0IHNlZW1zIHlvdSBhcmUgdGFraW5nIGNh
cmUgb2YgaW50ZWxfc3Zkb19nZXRfZGRjX21vZGVzIGluIG5leHQNCj4gPiBwYXRjaC4NCj4gPiBJ
bnRlbF9zdmRvX2dldF9sdmRzX21vZGVzIGRvZXNuJ3QgdG91Y2ggdGhlIGh3IC0+IG5vdGhpbmcg
dG8gZG8NCj4gPiB0aGVyZS4NCj4gDQo+IFllcywgYWxsIHRoZSBjb25uZWN0b3JzIHRoYXQgcmVh
ZCBvdXQgYW4gRURJRCAtIHZzLiB0aGUgVFYgY29ubmVjdG9yDQo+IHdoaWNoIGRvZXNuJ3QgLSBp
cyBoYW5kbGVkIGJ5IHRoZSBuZXh0IHBhdGNoLiBBbmQgeWVzLCB0aGUgY29ubmVjdG9ycw0KPiB3
aGljaCBkb24ndCBhY2Nlc3MgdGhlIEhXIGluIHRoZSBnZXRfbW9kZXMgaG9vayBkb2Vzbid0IG5l
ZWQgdGhpcw0KPiBjaGVjay4NCj4gQnR3LCBJIHRoaW5rIGFsbCB0aGUgY29ubmVjdG9ycyBzaG91
bGQgd29yayAtIGV2ZW50dWFsbHkgLSBpbiB0aGlzDQo+IHdheToNCj4gYWNjZXNzIHRoZSBIVyBv
bmx5IGluIHRoZSBlbmNvZGVyIGRldGVjdCBob29rIGFuZCBmcm9tIHRoZSBnZXRfbW9kZXMNCj4g
aG9vayBvbmx5IHJldHVybiB0aGUgZGV0ZWN0ZWQgbW9kZSBsaXN0IHcvbyBhY2Nlc3NpbmcgdGhl
IEhXLiBEUC1TU1QNCj4gYW5kDQo+IEhETUkgZG8gYWxyZWFkeSB0aGUgY29ycmVjdCB0aGluZyB3
cnQuIHRoaXMuDQo+IA0KDQpUaGFuayB5b3UgZm9yIHRoZSBjbGFyaWZpY2F0aW9uLg0KDQpSZXZp
ZXdlZC1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQoNCj4g
PiANCj4gPiA+IA0KPiA+ID4gQlIsDQo+ID4gPiANCj4gPiA+IEpvdW5pIEjDtmdhbmRlcg0KPiA+
ID4gDQo+ID4gPiA+IMKgew0KPiA+ID4gPiDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgaW50ZWxfc2R2
byAqaW50ZWxfc2R2byA9DQo+ID4gPiA+IGludGVsX2F0dGFjaGVkX3Nkdm8odG9faW50ZWxfY29u
bmVjdG9yKGNvbm5lY3RvcikpOw0KPiA+ID4gPiArwqDCoMKgwqDCoMKgIHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1ID0gdG9faTkxNShpbnRlbF9zZHZvLQ0KPiA+ID4gPiA+IGJhc2UuYmFz
ZS5kZXYpOw0KPiA+ID4gPiDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgaW50ZWxfc2R2b19jb25uZWN0
b3IgKmludGVsX3Nkdm9fY29ubmVjdG9yID0NCj4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHRvX2ludGVsX3Nkdm9fY29ubmVjdG9yKGNvbm5lY3Rvcik7DQo+ID4gPiA+IMKg
wqDCoMKgwqDCoMKgIGNvbnN0IHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlICpjb25uX3N0YXRl
ID0NCj4gPiA+ID4gY29ubmVjdG9yLQ0KPiA+ID4gPiA+IHN0YXRlOw0KPiA+ID4gPiBAQCAtMjI5
OCw2ICsyMjk5LDkgQEAgc3RhdGljIGludCBpbnRlbF9zZHZvX2dldF90dl9tb2RlcyhzdHJ1Y3QN
Cj4gPiA+ID4gZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yKQ0KPiA+ID4gPiDCoMKgwqDCoMKgwqDC
oCBEUk1fREVCVUdfS01TKCJbQ09OTkVDVE9SOiVkOiVzXVxuIiwNCj4gPiA+ID4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbm5lY3Rvci0+YmFzZS5pZCwgY29u
bmVjdG9yLT5uYW1lKTsNCj4gPiA+ID4gDQo+ID4gPiA+ICvCoMKgwqDCoMKgwqAgaWYgKCFpbnRl
bF9kaXNwbGF5X2RyaXZlcl9jaGVja19hY2Nlc3MoaTkxNSkpDQo+ID4gPiA+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAwOw0KPiA+ID4gPiArDQo+ID4gPiA+IMKgwqDCoMKg
wqDCoMKgIC8qDQo+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqAgKiBSZWFkIHRoZSBsaXN0IG9mIHN1
cHBvcnRlZCBpbnB1dCByZXNvbHV0aW9ucyBmb3IgdGhlDQo+ID4gPiA+IHNlbGVjdGVkIFRWDQo+
ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqAgKiBmb3JtYXQuDQo+ID4gPiANCj4gPiANCg0K
