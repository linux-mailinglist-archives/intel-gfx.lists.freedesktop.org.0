Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45FDCD07FB5
	for <lists+intel-gfx@lfdr.de>; Fri, 09 Jan 2026 09:52:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C46B910E84B;
	Fri,  9 Jan 2026 08:52:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ViAPgdEw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5676810E83A;
 Fri,  9 Jan 2026 08:52:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767948758; x=1799484758;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ys9N2SIp+yr4wqa8IMvWiV9I4yrsiN9jogsuaTGsAjg=;
 b=ViAPgdEwHQj41kEmH/pZQ1uCzMDxKnTsPxp32jl83rcziHZiTZYp5B5R
 yvwpiRf/0rawpM/AGDEBgFR8ha9KfmdpRtV6E/pv25ZEUPeRbcBzSV6il
 XOfeL5tjVLp9TmDhMjeo5v+kLbOb9P1pFn2qNOB9uaDKI+2XhZj3/VMau
 h+5ddNPBZRGkVYSZIHQ5tpRi1ivA2bFRMjKe9ZA8R8h1tA3gF39/hWrPY
 rScObqlN+vsLqswpQz/vSPFOY56hd2GTaCCm+nF0zoefU2zGC935fNUdh
 KHaNeDSqeZ18dnrI6nijhYOwf8Z4HNDBa4yA3YSOJrp70AYy9BlU1fY9z g==;
X-CSE-ConnectionGUID: 3CQY5VnuS6+3lltPiHBgPQ==
X-CSE-MsgGUID: TRyc475rQImcugRdNu3f8g==
X-IronPort-AV: E=McAfee;i="6800,10657,11665"; a="79968031"
X-IronPort-AV: E=Sophos;i="6.21,212,1763452800"; d="scan'208";a="79968031"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2026 00:52:38 -0800
X-CSE-ConnectionGUID: 6q0+ql6KSmOnOC1maHPYhQ==
X-CSE-MsgGUID: Pe7G6OmTQwqXsTx5y4e8rA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,212,1763452800"; d="scan'208";a="207568351"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2026 00:52:38 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 9 Jan 2026 00:52:37 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 9 Jan 2026 00:52:37 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.70) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 9 Jan 2026 00:52:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kpEsAnogpuFv8DH4bqkA62T4UYVPTQkYjFNpnG2L3+rf99j9Etn6WXk/RkcDNac0aJuQ3i9lyow3McyFSRS+jHT4EQwePwq3IunY0faoviUZ1TxhyVhORuXLmEt6RRVelxMY36zEMkFvPqbnP4PRlK9CYwoGSbUU3vDa+AlYzcgQL7YkmbTfPjTJpl/PRzb5O94mq6g4jEz57X3EgLSGnN4Dsh4pl9t7f/uCqC5Tu6/wm5wGZNUv72lmtHeMXXP9mZx/WRJGqxj8bBJ6xHAgcFALyRHaJ+GeBCHaP2yMYikBTyEJQDMqCVs36U7yQNGHp5if4VbymWFs74vBRw8qzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O5RC6I189Ujfw8bg5GV91LhpkycMYTSSe7IdntZSlR8=;
 b=IM3IfCp1zoRQxW0fWTg5ZtXN6U9QCRDyVlPkqvRTR84xG47cp68Lnhw/EF2Rtqv1Balqh6d+FSyzrfNBriakeDtQ2YT9eTs78T2IX+E2hzEgHBQu4xS5qoeT1zFNQsrhmJwfkHqsUm0glJNha0Kk1LnPrww6EVF6sFUvTAXUZSpoR8tRdyXZDG3FjSzubpQuQTMqbnTt74Cas8ddiAZ4p+PY+e+q1QupgCwiSHcDJI6ApeF9PAWQORm1KJa/2dcODtra6kCm3RNpFwe0sDirLWcVRsLQi2bVzZRNK2nr3DtVEHcuJyddGBG9tXG6UcrG7a1P1u+ZGdFXtW9PYspnyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SJ2PR11MB7547.namprd11.prod.outlook.com
 (2603:10b6:a03:4cd::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.4; Fri, 9 Jan
 2026 08:52:35 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66%7]) with mapi id 15.20.9499.003; Fri, 9 Jan 2026
 08:52:35 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH 1/2] drm/i915/vbt: Add edp pipe joiner enable/disable bits
Thread-Topic: [PATCH 1/2] drm/i915/vbt: Add edp pipe joiner enable/disable bits
Thread-Index: AQHcgJ5rBewwa3d9XE2cGeQgftWgJbVJiRkA
Date: Fri, 9 Jan 2026 08:52:35 +0000
Message-ID: <DM3PPF208195D8D21BA808767B2D3C8E8F1E382A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260108124141.1407760-1-ankit.k.nautiyal@intel.com>
 <20260108124141.1407760-2-ankit.k.nautiyal@intel.com>
In-Reply-To: <20260108124141.1407760-2-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SJ2PR11MB7547:EE_
x-ms-office365-filtering-correlation-id: ce1da86f-8d26-4b62-3fd5-08de4f5c6f1d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?kS2baoASd/h1aZCKR9X8DhMmxZQOCcsTdV2IlXjLLV8QU/M4dRP97nasJ0pm?=
 =?us-ascii?Q?wRVFdlnqQLq5r9Jn5o8Oi32iV7JlNFH9UF80TwIqIIpmFQkw0OxEEcd73HjH?=
 =?us-ascii?Q?SUVUxBkudrDVCCT5I9nwKvPlsvu376icL4Xh+a/m5CgRnWvtSTOtuayhUOU3?=
 =?us-ascii?Q?RVDcR2loP4M5yrzvKzMbD6tiMIfLJzeZiNsdTFrqB21YWGGXtF62hT9Z5zL2?=
 =?us-ascii?Q?fEWBuYPTVhneh5mrlbYtzw3/VNEukYYlDra59dPjHHEiYD8b+gfOgQQVGVb3?=
 =?us-ascii?Q?iIGWkolsaP6KJOM54tD7JPipjWEorNaPDQJd95WfYEMJ0AxQR+o+puyJ4B/N?=
 =?us-ascii?Q?FwvbUUS3PUoAP2r5dSTE1IqweLGrhmuI0pvLAQZCPSmaLed9rsJgCZj92Hga?=
 =?us-ascii?Q?CpJJ5gddbHtiTw3Pfsw10OlThYusnxOKqqQIiIp8syahkSRKun58Z5udQGxn?=
 =?us-ascii?Q?xe+qKJHhOC6rrIyAKiipvFn+mqgbl+D6TFzOKcUbjf/ihCdu/FuGsIjoSfdo?=
 =?us-ascii?Q?HtCthdiacOxubJqnV+lOxOxuKpjhiFeHlxjrz86xh2TThxHWapEcIEa5a8jq?=
 =?us-ascii?Q?9oFlG2IecDmu9jr7056R1/wf7B/vPoIvemG2LKPYAdMpVAdt0nzvGdp9LZfc?=
 =?us-ascii?Q?1JOi0d1DwAJrqqw32gTCnB7dcF667KhvFJ4E6bpBHIqnogqVu/SgmeGzV5Bz?=
 =?us-ascii?Q?Gs9aAB6aDy4/iU1GHiQTk+TshU0rZkKP4q9HYThUABlxvS5EBCnbHMar0o7C?=
 =?us-ascii?Q?iwSJOVw1a4/zsxrCpaHa9u9OqU5yeY/JA51LWuk3e4+rnnlQcjbevIPWBj/b?=
 =?us-ascii?Q?2XT4EdYUQVVkRe8nmoO6vTz1pVt/JGK/1jkNt+2d0WJzSUVVZEetJd7J1tAr?=
 =?us-ascii?Q?qym4hR+KuGg/qKYR9uDfc+Z9vCAEynBMtXcdyU40+HrIPZB6CH66UCD/JT2T?=
 =?us-ascii?Q?NRFEW57JMUILO2/aWQFJ1NK09KuJhO7xCp8SG0EOTRZjIY48uomir/fhHr0g?=
 =?us-ascii?Q?pmRhhi5Ujpy+lUozSDkTELfDdh2v9c7aGpA9/xvPSkNuOa7ahXDcduExF/Mx?=
 =?us-ascii?Q?7otWf01+n9kNSs/XdXs9RjKm7jsD2HhoW/H5KA/nu+0Vs7+Re+Vf48SshhBW?=
 =?us-ascii?Q?r+dKume5lXq3LxIWe8gMuNucSvh1fWozWQPI8VGmOHFocxAA9wWfwf3oShyT?=
 =?us-ascii?Q?LhwTxwOJ5ydHy14ebjrczQClEcpOqLjVS2Ty2JHv0jz25P05b24bkK9X4v35?=
 =?us-ascii?Q?Hh3o8OKB6s6L4TW2pywSQseqNWeco1SH/7ocG/GZLdT4oPAbBOFMgI1DcDsr?=
 =?us-ascii?Q?51mg3RnFvMg6vg/wxFW6qf4DwvuZ9ydhnkLqL9vrZLRppGARHWJ/qPBAICF1?=
 =?us-ascii?Q?+MZJi+dalXRmWKWwB+5t5UhqYgLW0FnbW7PjZgEtUJ3w+LuHU37B9JidBEB7?=
 =?us-ascii?Q?TZOCWTDNaoU8BATsK0D0In6Csh6s6w76LjL0WgDqzv/NMC2uIAHOyNR1bREM?=
 =?us-ascii?Q?mwGCy2GoHwlDHf1akpBolFp/88X6/8Un33lr?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bPx+l09mjLCOVIip/B79qlk3SlKw9DXiqzT7GGbv0Xvh26WoitPhIJDsOheb?=
 =?us-ascii?Q?YNOt7ldK77clU55Sx6rjKijEhfj5NdcCm+QwdcEX8Hq42EA8fuTeuBVbpj54?=
 =?us-ascii?Q?uRG9yTiqhMnKrEelNruF7YLG5Gzan3mffkPTVImYijM7oTrne2bJmfC5GqBj?=
 =?us-ascii?Q?8eISM5veECMBVDKM1TxqooHLd8kwOqaDbSMS5e3V09iwxgJ1ofIUmoPQl6nl?=
 =?us-ascii?Q?hi30syMfQaYcD6PMRWRbV0jyH79uaN/kfO2IGx9KnlIZZtIaxPOTrru0RerY?=
 =?us-ascii?Q?ot7upRfvJ+8slOtNwMmz2h+5StLc1NZEbrkXruNNhx2Te0Xb79D7Z2D3XCrO?=
 =?us-ascii?Q?7cIWK6T/vZENFArptt1tJuM5nYeV6sGzlzun6/oDX0HTPI7l6bvvvmi4y+Lq?=
 =?us-ascii?Q?2GPGV4YQyso23GPtqhHSDKcCwfKe1D0RigQ2gGsGdd3Xj4N8fzjE/kpbQU3K?=
 =?us-ascii?Q?VXvb5c9vhoQYhyt/e6zCgQDwod1tBreLxmI37JA9McGs5hZvyQCPTl195Hoq?=
 =?us-ascii?Q?5BXBy3QIfXSy0XZtHl1JWcsk3an0pMoFMbIe25HuCUDyTChFF3SQ6vx5yBPI?=
 =?us-ascii?Q?dniBa2BuR87YaXIfosseMZjUCuImTNzKYhSqD0OT1fs3SBgZKaPi/lkq7/tA?=
 =?us-ascii?Q?WnhbU+JdY4Nv7sAVCZSCiTR/RhnRrqhT1FYPA7Le3en0K2B2hxyu22cTi/Vc?=
 =?us-ascii?Q?0qkYzBl+ec8BvKXjaW2JzybpjC/Juij22FLS3gjA2GwQTslXalPftLIju8U9?=
 =?us-ascii?Q?Sw2WwMMlHzqY43Y0wRaKsESodaL97IqJeaNzEIlMT391TVSGVVJYBdhearSZ?=
 =?us-ascii?Q?3wYbuxhNbjpWIHOdP7aA7yZXoQdSCLW+yI/ZI8B86ewaxF2c8n9p+kaiw9oP?=
 =?us-ascii?Q?fo1fkc/6wBTBKmveBKMIZLkWlNRZ6OZ2+7uTbptTGg5qIc/eOemRn1CbjaP8?=
 =?us-ascii?Q?duEoLpQU1Gd1DeW6QfYLdEVpz1ST6GfkILOsrJSKaAL0ftEB5BZpYBKwtJAE?=
 =?us-ascii?Q?eiJhlbTf0gBaGtfurt1OpTstENnlTPy/AvUr6qkwTkfiVXYn3c3lzYtigsOB?=
 =?us-ascii?Q?n+VYhMsGx76si1IQIuCJ/cOJeJmqiDtv7yLWdWvOXYA3WZNqh2v2atNGeqrj?=
 =?us-ascii?Q?gyhOFy8QF6hQXvdNr3E3TC/HBfS7HOflL7PqW0uys7VfdjBPrWZbLSbg3X4K?=
 =?us-ascii?Q?HJqt2SVvvsJwAIY+DF3M3qAgLzK2i+kEf9UJaxWFVeMI4UciMy4BD8dtT/Ar?=
 =?us-ascii?Q?cYhuNQFDpROqIudtAswjBIZFxoLMJHTDX+uGzBpExIC7e5bSlFwWSM+HsoWb?=
 =?us-ascii?Q?tL3Ex9CnHN0d6bAspRqZmWOcsplulxYtBWSp0k/XgjOF4nLCMRasDZAJ6Ao7?=
 =?us-ascii?Q?teEZYj6OAem1n+9FhuJV2UNrpItJXVF5m2UT0To8Cq2U/tGR1SvVF8CBECkl?=
 =?us-ascii?Q?JLJSN3btPNKtvH8TlBihAQ6ZVjUvQ0UJoGLlOKt/sYqbp9h5uKmWGaS29tIH?=
 =?us-ascii?Q?X3fSfWcbIR8sF/X7gPPHrPjj5ViDeMhTfdYs/lmem0HxhPecWPrurBkMSpqG?=
 =?us-ascii?Q?6pUrN6sR7L33ylemsz22bOAgymDuvQMx5UoA2tD6/0G1LgpBbES7zSV+apf/?=
 =?us-ascii?Q?D2ffo2d3XwiJUpVR/B9wQAujWV2ulFqlL3n329SmFda+VRK0XiJ9VrBQhWpp?=
 =?us-ascii?Q?hedGxaDKh2EQzZ8GOnTk06Kbtjk4hDCZ1bhFuZq1yDFr7PlhClzIPUBjw+3N?=
 =?us-ascii?Q?xgm2Vi9pow=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ce1da86f-8d26-4b62-3fd5-08de4f5c6f1d
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2026 08:52:35.2378 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mEZj+W6Fztas3BohpGUA45pHiW49263E+8w40fv28rtaue0Yi/cTY/8xQ4L+kDJoPCHwCmszUwiX21lJz/nLRA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7547
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

> Subject: [PATCH 1/2] drm/i915/vbt: Add edp pipe joiner enable/disable bit=
s
>=20
> Add VBT support to enable/disable eDP Pipe Joiner feature.
> The OEMs can choose to enable/disable the feature from VBT.
> ARL - VBTs default this field to disabled.
> PTL+ - VBTs default this field to enabled.
>=20
> Bspec:20142
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bios.c          | 4 ++++
>  drivers/gpu/drm/i915/display/intel_display_types.h | 1 +
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h      | 1 +
>  3 files changed, 6 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c
> b/drivers/gpu/drm/i915/display/intel_bios.c
> index ae0b922d5bc3..633a35153485 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -1546,6 +1546,10 @@ parse_edp(struct intel_display *display,
>  	if (display->vbt.version >=3D 251)
>  		panel->vbt.edp.dsc_disable =3D
>  			panel_bool(edp->edp_dsc_disable, panel_type);
> +
> +	if (display->vbt.version >=3D 261)
> +		panel->vbt.edp.pipe_joiner_enable =3D
> +			panel_bool(edp->pipe_joiner_enable, panel_type);
>  }
>=20
>  static void
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 6b92f333e18b..356979fb9487 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -351,6 +351,7 @@ struct intel_vbt_panel_data {
>  		bool low_vswing;
>  		bool hobl;
>  		bool dsc_disable;
> +		bool pipe_joiner_enable;
>  	} edp;
>=20
>  	struct {
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> index 57fda5824c9c..0dc13d080e8a 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -1109,6 +1109,7 @@ struct bdb_edp {
>  	u16 edp_dsc_disable;					/* 251+ */
>  	u16 t6_delay_support;					/* 260+ */
>  	u16 link_idle_time[16];					/* 260+ */
> +	u16 pipe_joiner_enable;					/*
> 261+ */
>  } __packed;
>=20
>  /*
> --
> 2.45.2

