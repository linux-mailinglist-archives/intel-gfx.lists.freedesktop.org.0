Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91FAE9DA1DE
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 06:56:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6044710E208;
	Wed, 27 Nov 2024 05:56:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HRVGdkQG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77F4C10E208;
 Wed, 27 Nov 2024 05:56:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732687011; x=1764223011;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nMwS08cmtZpIVD7Ni3vDRMSIJ/OHYidasYUfq38z9EQ=;
 b=HRVGdkQGZCrFzN99v2s2j54GiM5GbvQMGTZefaJqOQL9+rn6f4U7W/aZ
 VZU6yGqPi7FmNEF2gG2ua6xLCE+v3h7XdtT59bmNto5GhRks4OzPDzmjn
 aT+MoohGUHs0bq4xtiR5I/EX8w4Zq1CfbHnazfuq7x/GQuyJA8YmcFnqp
 dEirgXrem3ZVTMo9ya54KGgC8a6iO4ZlYTryGpQFU2DlfIRnYWSsryCuq
 jGV55s38EQG8FLIvWfnUup195uinhPUBhbUgJc3s9UVCgPg8Mm26HQbKL
 Ew7XxxsCBhFPWy0whNqesL1hhfnxNrXnUwhIt47Zdl+1PSs+U9RQ3f/N0 A==;
X-CSE-ConnectionGUID: T80zeVEnSk2J2VgyoEBvuQ==
X-CSE-MsgGUID: 49FXrH8kSgiaKF4ZqHnB2w==
X-IronPort-AV: E=McAfee;i="6700,10204,11268"; a="32247335"
X-IronPort-AV: E=Sophos;i="6.12,188,1728975600"; d="scan'208";a="32247335"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2024 21:56:51 -0800
X-CSE-ConnectionGUID: w/RYY5QFQl69siB9qyEgOA==
X-CSE-MsgGUID: NdKgc0pkT6iJzOCAQyv0rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,188,1728975600"; d="scan'208";a="95909827"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Nov 2024 21:56:51 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 26 Nov 2024 21:56:50 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 26 Nov 2024 21:56:50 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.48) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 26 Nov 2024 21:56:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oM9OcjbdOlK14ECwx07Wy8ESA6GWa25kMJDffsmfKrHXFj3LMGjuSgZsZO2rUwEs5uogcN9is8NDwgQ8VTiMYbc/ds6gND3GWKUYkYgzrLWl3+37UstXNq6mJ+sYvCciTarbmstvQqnVre36RsJQ51BxC1Rs2Yxn+e/q8dFRGWN/54fRk02fguFz/UEmghsNp0B2g3Tyr7oliNWGYTWsgYIuVfncLYP2nHyfOGVZ02DIhRGtSKOBs0Uc7eluDcjOej6yXP9UIIkAhZsC+WfYQiVJPLdN0yE5j2AWobSjegLbOSKsvyXA4fokodIM63tqhgBcEJ5NI6UimSvOKqskfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7D6SwH2bzZq/Pwufgl1tQMzK5hzOPhbIf7zmeh/JfVk=;
 b=kadW+xBAXZB4zzhhMZxMV8kHxP4ttNLzKpbhBTnDydvG/OaDaI9zBV52sJWDLgpC080gn7K2aO1u9Uu/hKMM7HyCu9aV8BEe6YRqhk0ANwHmP9PnM1e5s/JqWqwqSi5f6gFD1U+cMhD6L/1N0tPieIqGoS3OAuAYqGJUx4pNHQgDLPvUvoc/6EYOHlgIVc1UWxRy3DvIgeK8xcBMkxRpzEz+cPGoXOKD1keOOVwjffOuCk+7Zdbkkabn7up+5C/PGiwKsNeGnSe76am80M9evZLfTCXriB7B/n2V3BCIp8j/OBKCM2j/WVCOvLif2dMxtxRrKXVKWbXtHVO4KbskZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8182.20; Wed, 27 Nov
 2024 05:56:48 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8182.019; Wed, 27 Nov 2024
 05:56:48 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, "Deak, Imre"
 <imre.deak@intel.com>
Subject: RE: [PATCH 11/12] drm/i915/dp: Make dsc helpers accept const
 crtc_state pointers
Thread-Topic: [PATCH 11/12] drm/i915/dp: Make dsc helpers accept const
 crtc_state pointers
Thread-Index: AQHbOzf6jLXDTEatn0uPo5BoVxtSHrLKq6wQ
Date: Wed, 27 Nov 2024 05:56:48 +0000
Message-ID: <SN7PR11MB6750B129528BBFAAD6C91EEFE3282@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241120103802.134295-1-ankit.k.nautiyal@intel.com>
 <20241120103802.134295-12-ankit.k.nautiyal@intel.com>
In-Reply-To: <20241120103802.134295-12-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|MN0PR11MB6059:EE_
x-ms-office365-filtering-correlation-id: ec8d5770-bf16-455e-d69e-08dd0ea84821
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?3hiIdftNRk5mDdNe5WRJpJ2jrkijrOeSxIuHDAyMte7fnL6SqkXj0hUFa5ta?=
 =?us-ascii?Q?f886y3ww/IQJzKkr26PP4AAN+yFlsieGVfPwKjJ3+pYDhd8ke3HI4r7+ytuy?=
 =?us-ascii?Q?mnOkwBjrq1YrcMwCnv24rM7NgKiO21YqDJU34aE1n7zWX1DV3n+y6DBjG5mF?=
 =?us-ascii?Q?vvw6sMahsh+sxHV5GtzLxBW4HkGtWv97vRF9iofJhBNfTCS8b3wxaehJ3Dq3?=
 =?us-ascii?Q?TJKoafWzPWYnzL9MOLMTMsZ7EBpugW1jw/jLg3kLvCFKuvPK5C87di9DVdC2?=
 =?us-ascii?Q?3Js0n9/lL7kAU5in69KT2j1l88n45k2JAmtwe5BXWgRiBv10Nm1uQqX4wFtX?=
 =?us-ascii?Q?lpHX7+v0yVj0TNWKxlCGFS+FcgbSpHRjdQFGmlhOCWfmBSnt5OUvCmGrMnQ5?=
 =?us-ascii?Q?YdaatcJz/xsaf40Pi9r7rOe58+MwNRRcxE4hEUHgQj6GGIS3xFJMJHLnPLif?=
 =?us-ascii?Q?xK60Om23+8JfTIT0h4wH7EDHxnKuAwIPo5XHNeWwYXCRtsADRJQmJIE0Ai4S?=
 =?us-ascii?Q?hA3LIjaoRU/tTiqrRz8XBodUfaRXOcGOV2Jc8rBkw5PCUxxtuZEi6yd3kY/J?=
 =?us-ascii?Q?kMv2DQ4BxLSe1/96yaXZkHsZy4C7XT1vEyKLdt6wkKFOkcVfevXM1zMct7d8?=
 =?us-ascii?Q?DDg142+uhzSYQpNvXKqo6MUJGDcBJVfmBlTEzX+NidavyunzNkpP1hHjiT4R?=
 =?us-ascii?Q?6fr28lesWqhnPxfJ/qEhNM7bZZJVIp8rK7uxr8c9HiDnvkrkxVU/pFGaB94Y?=
 =?us-ascii?Q?Mvh1qgQeV1yvyX1mQgEDq5HBFn+rhuMwakcNbByhzFkAcjxLMkkL3jNiBwf9?=
 =?us-ascii?Q?5bpPlWhrBztxql8lUTAZuZsG2wdCO9Zj83fuC4mcVGKrJYZHJj2jg5Rd4e/K?=
 =?us-ascii?Q?B+WfcCA1gxcES35RduQo7/cFQqeUBrAiQ6/UCsox/nm2VeFGEKrcd/KJxpck?=
 =?us-ascii?Q?tOvXPPbESi8tXL7ZstN3VQvK3GIpHmXVn0iMUN6EzPnlgs4j5Bd//99duZE6?=
 =?us-ascii?Q?58w+872ZrSkw5AgZVtIyMnEjQqXBOgqPmc1Sd2pFuDYdhpUotGwQeDwm9bc5?=
 =?us-ascii?Q?cnbyyx+ZAjL0YnHZjQA+y+qxUElgGbpOFnT5xv8LGw0YfNCBjCUeMlosF979?=
 =?us-ascii?Q?EvlQ7w+KXTB3B85XxWBUISQB2hPm+yaQVOG+X+8yvLXeSFwbRhprut+YEem3?=
 =?us-ascii?Q?2Xbs2OkTRSJKgCR37SxEzXSjCkCl5AO3V6Ij1tyiKFbfRLpei1cjqeklprEi?=
 =?us-ascii?Q?zK0kMBEODVxynWF//kdFO/mhFQHnmLhw3XWathW6JgoDvB+Uun8mSftlfuez?=
 =?us-ascii?Q?aLS61djOTJ4Myiekty26Fm17zaIin2bBBwWex3ERSmPHKnTOf8iMUFsLtIzH?=
 =?us-ascii?Q?2v2bWqUVOa8cYaSMOsCJAjqQBrZJkrrzG70HVb/sELe1gSSVkQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KI/0AR5TcY58bTNKnEoW/hYGPOe3Sai/oxmxIKZbekSQuo6l1VH5DtjSdtBe?=
 =?us-ascii?Q?68pPjzmwY2fIMykpLo0OkbFSHMwoLB8wAEQbc/I7djJS1Msu968ieiKHhfsh?=
 =?us-ascii?Q?QYiCH/Jsa1sx9l5qCC/lqTJ5HykmBkb7XsOptQQqMhNTvHOjrELIy8A/lhwa?=
 =?us-ascii?Q?x8HHB0/lenne9njoBYR7vfanYKUC/gANr3lEP1xp9M1fVNMxsQvT1gUEwyNf?=
 =?us-ascii?Q?cNxXI/IITBmu1Lu2OMHuJ/Ow1cfRXJiu1rRZvtNKfysV4m1NDRcGclPz1Jf4?=
 =?us-ascii?Q?Viqbp21TJfdYI6tTPLtHAFPdxH9Ax8bgKIHBc66Duw87hknhzXOk35JrLQcO?=
 =?us-ascii?Q?AgaxAn5Mz883Ly9QeMSWfk481VnJeIiCLLtjnkWRStKMgvQheUCGUWOuToZM?=
 =?us-ascii?Q?MCHTCZSYgWumFq6Vz25asTi+s79dNpUxYrchP6DZRCULP2/2it//pvjIIK+J?=
 =?us-ascii?Q?uRdHKwLgFpqXD5jun5sZ719T3J4NBQRMDMNwvFq6VafqYD2Gp70PoMFlU0lf?=
 =?us-ascii?Q?SfpqvJ2L7/i6yISidy03KDQQ1Rzjgvlh/JesxkfnYxuNpihGIG2ecUTCGwDG?=
 =?us-ascii?Q?/TNZ2sRaE958nudEs0iigQ0lpAhIvcNPccQPmqR3/c5o7wO12fsofCKb2Je0?=
 =?us-ascii?Q?cEVb0FoaMlXXMMSGm8MZ1Eatc/uXz9JZL9X6YR1GhfL51MnX/OopE0KPSx7n?=
 =?us-ascii?Q?cSx6L7DHxp4qgnTKCeWDIlSo/Bnb4F/n4LqQucNV4MbaTBdoa9B/SpKxkw2J?=
 =?us-ascii?Q?4X1CdMRfZS4caqyZQ4aFFwGDz1OF40TW7w6wqHbR9sRuZPL8FK4TTATm566P?=
 =?us-ascii?Q?8lly9parX9/pMpTxtAKcgQ4IvNulq7U8BilfQc13yA8BmcvVf0Yzesw7M2A0?=
 =?us-ascii?Q?KRITgsOpSHnZDVttBAbmw7vmM7j2Y03/xW/aoG7zsSgjDdsO3HsrQoDnjnUM?=
 =?us-ascii?Q?TZXHQRRUsnhX+ZoDTrXagL7OjWE9ueEsVJm2iUQFy+WvGsa0wapp1ZbLedaU?=
 =?us-ascii?Q?V9B73abNMFNF90F2LGP/amG77bMuRmAwOYGYA1KPEfKCyfp6dsSf1OCu1nsO?=
 =?us-ascii?Q?KrwIHFfHC/MWczxlVLFk8pYUvFTNO1/avtfJfo8JQaoQi58yGxgfxE0NoqSO?=
 =?us-ascii?Q?Kz/ELfi2WHoNJmhq6PaCO1dr+fXE8jT4Bkmy2UzwBE0ecN8JttAPQ8Err8dg?=
 =?us-ascii?Q?b5EouFhjyy+Vvc5JUzyanVu/hGYDEXWAughmy2siuV4WM9IJjBlX0XkVdzIj?=
 =?us-ascii?Q?pnPS9MGIP1kBSKGfAqgW5Ku/TuBmY5dJHvVSaEkWfpGSh96HducafKCbhN+j?=
 =?us-ascii?Q?miGWbnoYzLtuV45t91EsztVVNShkoXcQVgsJZGhtEKbl0fwV04bK6ygT8UXf?=
 =?us-ascii?Q?/mRd62neWmIj4WY7ahDIgg4MLUezeIObe+8cQA26Khq7KfE2dOQ1VwZoD2gw?=
 =?us-ascii?Q?IE6akJZ34ns0GlcVPFNOzsmjPAv7H1l05CeQFSZAJtGvZof8nVm4j053Cn6z?=
 =?us-ascii?Q?PZvsfk74HRWoKKi9aT3lP4fUKar8n9I+TzMBtobzyfiKyINkln9OJyWO7tqg?=
 =?us-ascii?Q?Yhl8Tx0kwULmJ1/j3Hk/2n2UFWjziHfINzXjc1EF?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ec8d5770-bf16-455e-d69e-08dd0ea84821
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Nov 2024 05:56:48.3838 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5VfAPZ3STdGamFcdSsNsvA+96fCkdSa7CzpKgGN9MHTyI0Xi47FuaIYyIIY7tuKkixFH9ROa79EHep/cOoVWjQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6059
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
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: Wednesday, November 20, 2024 4:08 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Kandpal, Suraj <suraj.kandpal@intel.c=
om>;
> jani.nikula@linux.intel.com; Deak, Imre <imre.deak@intel.com>
> Subject: [PATCH 11/12] drm/i915/dp: Make dsc helpers accept const crtc_st=
ate
> pointers
>=20
> Modify the dsc helpers to get max/min compressed bpp to accept `const
> struct intel_crtc_state *` pointers instead of `struct intel_crtc_state *=
`.
>=20
> These helpers are not supposed to modify `crtc_state`.
> Accepting const pointers will allow these helpers to be called from funct=
ions
> that have const pointer to crtc_state.
>=20

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 6 +++---
> drivers/gpu/drm/i915/display/intel_dp.h | 4 ++--
>  2 files changed, 5 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 6cd3ae2db1a9..1adde61c5b76 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1980,7 +1980,7 @@ static int dsc_compute_link_config(struct intel_dp
> *intel_dp,
>=20
>  static
>  u16 intel_dp_dsc_max_sink_compressed_bppx16(const struct
> intel_connector *connector,
> -					    struct intel_crtc_state *pipe_config,
> +					    const struct intel_crtc_state
> *pipe_config,
>  					    int bpc)
>  {
>  	u16 max_bppx16 =3D drm_edp_dsc_sink_output_bpp(connector-
> >dp.dsc_dpcd);
> @@ -2005,7 +2005,7 @@ u16
> intel_dp_dsc_max_sink_compressed_bppx16(const struct intel_connector
> *connec
>  	return 0;
>  }
>=20
> -int intel_dp_dsc_sink_min_compressed_bpp(struct intel_crtc_state
> *pipe_config)
> +int intel_dp_dsc_sink_min_compressed_bpp(const struct intel_crtc_state
> +*pipe_config)
>  {
>  	/* From Mandatory bit rate range Support Table 2-157 (DP v2.0) */
>  	switch (pipe_config->output_format) {
> @@ -2023,7 +2023,7 @@ int intel_dp_dsc_sink_min_compressed_bpp(struct
> intel_crtc_state *pipe_config)  }
>=20
>  int intel_dp_dsc_sink_max_compressed_bpp(const struct intel_connector
> *connector,
> -					 struct intel_crtc_state *pipe_config,
> +					 const struct intel_crtc_state
> *pipe_config,
>  					 int bpc)
>  {
>  	return intel_dp_dsc_max_sink_compressed_bppx16(connector,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h
> b/drivers/gpu/drm/i915/display/intel_dp.h
> index 973b2aa0da1d..eac517c1d445 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -145,9 +145,9 @@ u16 intel_dp_dsc_get_max_compressed_bpp(struct
> drm_i915_private *i915,
>  					enum intel_output_format
> output_format,
>  					u32 pipe_bpp,
>  					u32 timeslots);
> -int intel_dp_dsc_sink_min_compressed_bpp(struct intel_crtc_state
> *pipe_config);
> +int intel_dp_dsc_sink_min_compressed_bpp(const struct intel_crtc_state
> +*pipe_config);
>  int intel_dp_dsc_sink_max_compressed_bpp(const struct intel_connector
> *connector,
> -					 struct intel_crtc_state *pipe_config,
> +					 const struct intel_crtc_state
> *pipe_config,
>  					 int bpc);
>  u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
>  				int mode_clock, int mode_hdisplay,
> --
> 2.45.2

