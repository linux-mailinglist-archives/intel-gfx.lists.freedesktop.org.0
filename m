Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F5A69E4C21
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2024 03:07:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B54210ED17;
	Thu,  5 Dec 2024 02:07:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cggnOUFa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41FF810E5B9;
 Thu,  5 Dec 2024 02:07:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733364451; x=1764900451;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MUE8DMVeopzlDr/KqLKbss7/v4ZZxVQy+MK/UiPG2YM=;
 b=cggnOUFab1sd1bU1Z9i0rikzmqUl4416bsH6/bMq6ahuuhysYfElo+Ou
 Try384z0Aq4M77r6WJK3/SwrDqyklJPNYdSaKLtevzrLBegFF8MUHyVRu
 ZXbr+ldJChJM0tan8MDJ1/PI3WNti/xsRgWKCgorIno2AcZci5g2rZXlL
 +MQ62jA2ILh08zEuV4ulaVinysado0LFRWAexGMsqnXT42Qg3BGdBh3rN
 lP6Iwd24sIMPDRFQjlizW9/hOEzeyyq91pUrtG+bl4ZuBnr6TNZhd+f8E
 kX+0XbrUkbQiVqnlr61fX9OF7U+9GH677qWFUSQEP2SOFlrzMf/XoobBU w==;
X-CSE-ConnectionGUID: +1buUfsIRsGYm9a/UIP2pQ==
X-CSE-MsgGUID: hA+OmkUHTaWw2PV/yAVcRg==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="33802233"
X-IronPort-AV: E=Sophos;i="6.12,209,1728975600"; d="scan'208";a="33802233"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 18:07:31 -0800
X-CSE-ConnectionGUID: LKC753ITTU2bBQ2mi9evxg==
X-CSE-MsgGUID: R21N4H5TTDGJWdvtD0ja0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,209,1728975600"; d="scan'208";a="94381744"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Dec 2024 18:07:30 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Dec 2024 18:07:29 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Dec 2024 18:07:29 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Dec 2024 18:07:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xK66yEjyOMzkR//jTg2Ifzj8xA4zWDR+OlYkuWHSsBTtbrue3GGpP+MoTAz+J5H85cuDMu/+s+ftDW4/zCN2tea6wvYSG7wQgSKqsysvIpk+6wnPm81YLVnYYA9n95F0bT8qB+Z1zVNjZxQqm5D8bHcbfjHRvUqJ37Bgm/V/Xo3R32QH6n00VwxPjm/DPZu9u4ky9vvn9HkXAJFgproew+VO8CIvalZbgHj4p7AQm6KyKsucItHigD+Q6bC9qWg6ljlUelLoJ2wjP7fP6AkHtcq7lNVMuqhlZtWoHyxHi9Urh2zvSWk2vEWhQDAbZr1pbMw1x7IYOAbznRphw1kL8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zHQM3FeHC8zcLYSBrHiUCVlouNapjri6NRhRfUPPfYE=;
 b=npHLtnkc+wxpHtcnysCRJz0hiD8Zqaql5rqGusaDJ+XRu1xSfS+BgZPQi7cahvwBssxG4C6NMBw7ImnhrCmv68R3GY2kjUiRuCyfmny68XAAioj8gzagInNZ8DO/MakrCF6lKliiisQ0dKT8rZfP1B7/apWQ/hmj2mGdhFuCksn1fewJy83DbCKImWOg20vtglLmPazxLtO1PbGPzs9zjhtGzb6Ks0H/t6HmYg46KUobnmIgNWX6dMeho7v7AetoWRt6Mz85MaJKj7fldMuJOyzXT6obwk2DCzW0Y6svWEcuGl1rX5fq+LtlKmuZWCHxPiWBY1OaQh3xlHs7pVcptQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.11; Thu, 5 Dec
 2024 02:07:26 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%5]) with mapi id 15.20.8207.017; Thu, 5 Dec 2024
 02:07:26 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
Subject: RE: [PATCH 2/6] drm/i915/wm: Refactor dpkgc value prepration
Thread-Topic: [PATCH 2/6] drm/i915/wm: Refactor dpkgc value prepration
Thread-Index: AQHbRWAQzYaJKeMKgU6K63k07gV747LW6E7Q
Date: Thu, 5 Dec 2024 02:07:26 +0000
Message-ID: <IA1PR11MB6348BEBC6CE726BBBA66A600B2302@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20241203084706.2126189-1-suraj.kandpal@intel.com>
 <20241203084706.2126189-2-suraj.kandpal@intel.com>
In-Reply-To: <20241203084706.2126189-2-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|CO1PR11MB4867:EE_
x-ms-office365-filtering-correlation-id: d198596a-794d-4210-cf16-08dd14d190aa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?WU4XH/G0hPebLM3o5MCdVR57cU00+q/TAqNeUqGr6D9jTRg9c32nhnHhcmt4?=
 =?us-ascii?Q?MUE9HvCFIbYuF2XggYzaHnzQHH1D7vpfQ9eUQWv3EjXc3WPF4lfYye5b9bJi?=
 =?us-ascii?Q?zHnd5GIGNLFoazNKa53vYUOhCvHR0CAenUmOi6fh+8a77AVU/6a/HU38cHsC?=
 =?us-ascii?Q?GqONZeECycfkIE/2/6I7S8Ys+kpYAVLEAAJ4v2k3WSS+8CRDIQxgdhs/ahS/?=
 =?us-ascii?Q?H4HfEq/IyAR8InFGulYgfItod9z6p0TJmDyyDD+/sgXeazPWLTq0nt7OF/St?=
 =?us-ascii?Q?Rs6QALfCcIHI3Tfg0YIltthNOxaWk723BVWHBJDiqggxvu6qdZ6ZCXBNBUzX?=
 =?us-ascii?Q?Oe5IKY1GD2E/eqE1V98jGP4of85wFRq4nkQHbK84V0N3a7rD/PiyeK1o5FyC?=
 =?us-ascii?Q?y8LsCP4SObZeXIsleaiTnEuY9fCYxl4YETWs1CRan3sSjZLhcMTDqaq9fzOq?=
 =?us-ascii?Q?7rXsMGBRDG9xp1tXRkIWjk0FhwyOC0QuJ8pgZQ2UuWNFbglSuPNOpGEW+n8u?=
 =?us-ascii?Q?KMFIdLrXeck8Xldnp0kPrBoy4jh9Wi/XIfmg8Nh9tJwwkqOCf9O01oFhqTd+?=
 =?us-ascii?Q?63ZS1UuNcq9Rfh4oikFe2uC5UsUHQ5aOnuyDypFT6wH1+nyEgPm3WFQoYVUi?=
 =?us-ascii?Q?b6A//Nz5LDePuWS2RKnh+3TvxldvQxWZbsPyGYMBL402npsFvObdQtVG6gYp?=
 =?us-ascii?Q?s2IYu2O4plsMYaed3YS7kbO5oH+1uGZVP+3iWkKwrVx47MeLwfY9d8ugh7pP?=
 =?us-ascii?Q?kfoJHlNzDAjarEJfDDPjWO0IwBXTsZYqdp8mEgrBmXpJDCNINGlOqTLx81Pc?=
 =?us-ascii?Q?IY4U6qjQxY22qLD2X+5SFwGG1QcQl4tJivicLyeEDjfcXEbMr7m+gUZyOjKe?=
 =?us-ascii?Q?smPDpZtR48xF9qxqdFgXH3I7gBGH17yj4wSKTGpbZ01kSo9L4hOKIMm6MJoF?=
 =?us-ascii?Q?CkOafEwkTzfQdaRng/0WpguC147YVhictYKSnEk3uCLCc64k5J1HojTeGHmR?=
 =?us-ascii?Q?jOSNoKs/dNngn1tA3V2uGzkKrUv5IUMLo0ae/Un6K1UfJcCHRp6092CUlLkX?=
 =?us-ascii?Q?LUZ/XyZj5QBWUPuEJYLC/jG9fsuYjmKztCT7G8gAawJcK24xZHLnAsSm94c5?=
 =?us-ascii?Q?Wkpyd9cvBLLRnZC7S/MKCKF8XgzYTqS+ZJByP0jxuNyp3j2JTTZeJ+bxkTFK?=
 =?us-ascii?Q?hVB8kOFN7mOkTAvYFOgkHBk7tBMJqHCVFzIdz0qVHlqB1sjsiT77BqaMcckA?=
 =?us-ascii?Q?FdMqXxCyspHrgsUCBwG0IItDZ0Gnp1zDRGZnh2YarO2uRLz1PkjiCdHb/0RN?=
 =?us-ascii?Q?yOFMN3h8D0eGtLT6eW5IBhDWDd8HzhgNCmdsYJiYqSiRWGBWSHYsfSo3hccJ?=
 =?us-ascii?Q?rhhA+RA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Py1tUAI0xgPlFKj70GGJ7c6S9tw0O0Z1yOe+OLeaZjngsj54eBII1G8lz9SD?=
 =?us-ascii?Q?6aRDA/46ejCkunB4ZoPpfMfu70hnkzWlDANVCA5OSvAVTjTN7E+6vShov1tV?=
 =?us-ascii?Q?bHH2EW4zr1Lt4+V1Em4UOCqgygXN1k05X7YPyPJPFtSDBv35/TMtFMNJT4+x?=
 =?us-ascii?Q?8/0VkuiYbFcUaPWr5kEskj+NFoyzqc1GWyW/Cjw4V8QnrvUbvVZK71QAulE6?=
 =?us-ascii?Q?ipL1cCl4TPhjCb3R2f4MLIzrdC5+4xtB6CeGpbxjso4IxaX1UsRoVm/YlOlB?=
 =?us-ascii?Q?hMuFGYrIGj8VNT5v9TKNmhDuZHLg3EHWZR/Bs22vooXRlmZ1kkseVP03dbKJ?=
 =?us-ascii?Q?E+xxpdQo/d7UtA8rTIXiTG6DwHKcFaIOkAIhIPZI5y7VjhVf5tZlkq2BjR+p?=
 =?us-ascii?Q?BeCxVhTOgRv8Gtq28R3/9rNePv2bVVcLb10zUIhlAWRQLLI5i2Y/ZqKf07LO?=
 =?us-ascii?Q?ST1KSBcZ/EOaDm9+cBdC1oc3WdQhXY6cdeiiDGCJvX89KInRBRig3lQVQinN?=
 =?us-ascii?Q?JJn7tBHc8yLIqT7b/u0FYblgWk+KzbUHEOMeHHL5ZJHCJ0PMeXERbO0Wqmfj?=
 =?us-ascii?Q?2e15q/Rj9FusPpFWNIleSLKeFTjJrBg9MSx21SpItLIB5eE0enqmCigOaHu4?=
 =?us-ascii?Q?4q6Vim+TV7mljhqh0P2XUmaWRRsun18qJzyi/mre9VeB0jihnB8m20RsyE/u?=
 =?us-ascii?Q?BolIilsZtcE5P1WeWrNIknXlIkYjPDTv8SFbHbDF/IUZc7OGb9NQpvQKg/+G?=
 =?us-ascii?Q?/8pq4z2FzJoumVQ5jUXLOoeYjpg9J5fzklXYx1XQfr7jX2VSMygyRe1GUxXb?=
 =?us-ascii?Q?L++0wcFjhFF0IuuO9JVbHcZlc+d+zDOXVBocp8nLV0NqyZQE6mtl+gwOWVc5?=
 =?us-ascii?Q?FWesEW5Mdi1+Xqc0CuB6JHooSNEOC0kzXX9iY0IjiOaJLJHGRTm++spmPD2h?=
 =?us-ascii?Q?LeZcO/z5STjJiLENqAlc4e3D5IsQoqOEQ9ZRZvEaGmMUsq6MmsqFui/kh1+e?=
 =?us-ascii?Q?zvkIwJ/TseYNRzAfoRbmVGhU/pTYyyr4qAODjK7JUOkDBbi7H/+wv83EVDNc?=
 =?us-ascii?Q?E6rPuxYfr+IMxT/GuuALpP2iLzu9FHlCPYLHCgiT90nx9eWnlX4oC8/lhtYh?=
 =?us-ascii?Q?fZKFrG1VjSbAGyN7m7BgU0pbjEh1tyuom7tHuxIECY9B25Nf6BWvtcnPIlWF?=
 =?us-ascii?Q?YmdfdOpBf3JgmdIcq1sCycwm7RVibK2UFZhRT5MvlT9vhqL6vmq5tpYPvwTh?=
 =?us-ascii?Q?0kFnKAzEM8CF1xyqguanFTBbYTQi32TzVxHt+xWRxdgLY+749/lEUMKkBBF6?=
 =?us-ascii?Q?kKW4hYP7UPsD9Cu5t4poDm8n4fXaaCDawTOUha5ysUd5K4B6GUGXvf31pEDE?=
 =?us-ascii?Q?xQShTKAJwd9Ky2Swc4xkL0eas8Urn1HLgw/1yXxE3oWLqpceE2sHbcDIQlMi?=
 =?us-ascii?Q?/2zjY8apyM8iWbaadp2U7ikcGFUSWONudYuurZpA4iaJwNtAjDZsBQPl17ib?=
 =?us-ascii?Q?k5BIKM/AVRz740uh+KfbnU1BYJOE8HVD0HBcBTIMIODJuiiuGbbNt8JZ0wV+?=
 =?us-ascii?Q?ryP7x9LZfDdflbohuTHYp71z5iKPAmI4blEen8sFkmeDKAycjDqpLWLeS/ze?=
 =?us-ascii?Q?SE5ykeiQcwv0Legrckfaex0=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d198596a-794d-4210-cf16-08dd14d190aa
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2024 02:07:26.4037 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AXaCEHsvOUzcsC+a6Mogwfo90GEqouPQ8vb6R09KpkUWqZivVz4EAvEdaeqWaSPMPovbWOS33g00+lb1RWUa2eSL1T4QW55hqytRCpXjm5mM6jvrAYsNdw5DOCCsCOQN
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4867
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



> -----Original Message-----
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: 03 December 2024 14:17
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>;
> Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH 2/6] drm/i915/wm: Refactor dpkgc value prepration
>=20
> Refactor the value getting prepped to be written into the PKG_C_LATENCY
> register by ORing the REG_FIELD_PREP values instead of having val getting
> operated on twice.
> We dont need the clear and val variables to be initialized.
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> b/drivers/gpu/drm/i915/display/skl_watermark.c
> index c40e0173a5bd..df961cb8d51f 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2858,7 +2858,7 @@ static void
>  skl_program_dpkgc_latency(struct drm_i915_private *i915, bool
> enable_dpkgc)  {
>  	u32 max_latency =3D LNL_PKG_C_LATENCY_MASK;
> -	u32 clear =3D 0, val =3D 0;

The other way of previous implementation also seems to be ok only.
But, With reference to changes suggested by Vinod in previous revisions: ht=
tps://patchwork.freedesktop.org/patch/624490/?series=3D141334&rev=3D1

Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

> +	u32 clear, val;
>  	u32 added_wake_time =3D 0;
>=20
>  	if (DISPLAY_VER(i915) < 20)
> @@ -2872,9 +2872,9 @@ skl_program_dpkgc_latency(struct
> drm_i915_private *i915, bool enable_dpkgc)
>  			i915->display.sagv.block_time_us;
>  	}
>=20
> -	clear |=3D LNL_ADDED_WAKE_TIME_MASK |
> LNL_PKG_C_LATENCY_MASK;
> -	val |=3D REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, max_latency);
> -	val |=3D REG_FIELD_PREP(LNL_ADDED_WAKE_TIME_MASK,
> added_wake_time);
> +	clear =3D LNL_ADDED_WAKE_TIME_MASK |
> LNL_PKG_C_LATENCY_MASK;
> +	val =3D REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, max_latency) |
> +		REG_FIELD_PREP(LNL_ADDED_WAKE_TIME_MASK,
> added_wake_time);
>=20
>  	intel_uncore_rmw(&i915->uncore, LNL_PKG_C_LATENCY, clear, val);
> }
> --
> 2.34.1

