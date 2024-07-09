Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B3F92C442
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2024 22:00:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB00810E660;
	Tue,  9 Jul 2024 20:00:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nZfo50OQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C520B10E660;
 Tue,  9 Jul 2024 20:00:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720555251; x=1752091251;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=VvKzwq1kxJIRdh2CitFvTMs+faHktqBsBZqlLc47Bpw=;
 b=nZfo50OQ0JjO9AjNNOXLF2gTOPq0Uw0fx9l2QRmO3ajtFBsALZHunzfY
 5BXHVtARamAUjw54bJj3N9Jc9WieDStb7It97npEwe10DzaylSZtf0ir1
 z15GNT2nIKPUNStHDWl6I7ixIlEm3Mu1gP4L8eYQcWahNU+FZSqCF/q/o
 iz4jK1vqUIAJWOcyafgTaBMZwOSRuvQveY3dXRP2SuzsjZ7XGMMYp/84j
 /NyAkwJizIKjo5yZdVQLzoNeCYl/TdKlDTfkQCe/UtlJ7Cog5S8Z95qmm
 TzUqm2R6qLqgHJb0VhdJQxWmtNRvexFEgYbbdJHzrXV7m3qICF400onWL Q==;
X-CSE-ConnectionGUID: JBBhHfGXQpSRVIl9VKv8Jw==
X-CSE-MsgGUID: A/fbG8DeQXmyEYdMrYKc+Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11128"; a="17950735"
X-IronPort-AV: E=Sophos;i="6.09,195,1716274800"; d="scan'208";a="17950735"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2024 13:00:45 -0700
X-CSE-ConnectionGUID: veG7ChYtRLGi5aqSrMwxqw==
X-CSE-MsgGUID: mf5BXFMXSCGMzQP1apSpzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,195,1716274800"; d="scan'208";a="78705930"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Jul 2024 13:00:45 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 9 Jul 2024 13:00:44 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 9 Jul 2024 13:00:43 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 9 Jul 2024 13:00:43 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 9 Jul 2024 13:00:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QLTMgjohKcauP79n7GjqHCQpyhL8pWzCVuzSb9dRleDhBtarKxTwBuPDs985pBSBUGP+QPaZNsUt/g/zLya9i1fMe42BjX4bMcP50xBAlr9q1FfotRx72jhvFompkxB8A6X8S0NJD8y0C015DY4BXhA/nfYI8ZAbq4WF/DLggXhMKHE8gVy6kPb8LV/eDjwYmY2l7iDxQPak9doRwag4W8EIaSUpNtfJ+5fZdAp3dSmC77FdrCZTXYp7MZl1OjiDUG1xhNiZRFHTIliClFGSwpR9HP8f8Ofbe/V0ddkV0UmlRffkQ7In7w3A3QKOh0tP7yYZgthEnTP4YLF+6kvqqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lLhXqzSkVJA9o2VT06OmNRlmTgKH7XKVdFl9sOtWswk=;
 b=OUJ41ReuOLfsThqB8T1i/rVRyCh/e59k3fSmr8Q8n3R53bfioiPXmSgK1L+IXFiTGxOhdFfStfAMv4IYfkuGEEL6KpXfuAJSEcpVmz4dm05ql24PIZIsBgqFa52TGTfWPad1Jwqpscma2bNWChdysWrO39FLDLA5Rdzqox70Jb0JRxBHyvxj7WH1UnicQilw7weW7Rx6PJ20ZJMruqdja12LbkTCNKp3spcPgBz8j6BKnyLTj19akHmzL3gZEwtbQxPGfmV+vKNX2SMo6ZxAEOhGouXc8pshVNUCJcJqJAbGhymhTqC8nyj515ICheDqBy0kTcx+Iw8qB2W587pt7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2859.namprd11.prod.outlook.com (2603:10b6:5:c9::14) by
 PH0PR11MB4776.namprd11.prod.outlook.com (2603:10b6:510:30::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7741.36; Tue, 9 Jul 2024 20:00:41 +0000
Received: from DM6PR11MB2859.namprd11.prod.outlook.com
 ([fe80::4063:4fec:bf76:f095]) by DM6PR11MB2859.namprd11.prod.outlook.com
 ([fe80::4063:4fec:bf76:f095%3]) with mapi id 15.20.7741.033; Tue, 9 Jul 2024
 20:00:41 +0000
Date: Tue, 9 Jul 2024 16:00:38 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 10/20] drm/i915/fbc: Reoder CFB max height platform checks
Message-ID: <Zo2W5jdImPd_Ul-p@intel.com>
References: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
 <20240705145254.3355-11-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240705145254.3355-11-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: BYAPR08CA0001.namprd08.prod.outlook.com
 (2603:10b6:a03:100::14) To DM6PR11MB2859.namprd11.prod.outlook.com
 (2603:10b6:5:c9::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2859:EE_|PH0PR11MB4776:EE_
X-MS-Office365-Filtering-Correlation-Id: 76863f7c-03e7-4980-1750-08dca051cf44
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?NbbJ31kouzHiHhuEkGAxdzeijDej2upDMGi88YVr+jLkduvXjfbmfwrVnK?=
 =?iso-8859-1?Q?LeokUYY3MsDNA3/yiuHP6HKN4edcERg/Dr2cOeWwpw4qvlrwmCVLnfmpJR?=
 =?iso-8859-1?Q?H7ZZQhWGLt8w9gyQftSXNxwfuZENhotWZmVy1Ldz/LCfZk/VNaXHanerfA?=
 =?iso-8859-1?Q?14eeOK02eY0JHf/h2kk8cUm4TSPNgzvUmi2+jk6Ms8Ux6yUxAYU5EEYDqg?=
 =?iso-8859-1?Q?H0tsmrjH1JBZvXspJGFxUaKM1dzY0bi9rPuUeft7ySiQF4uqUGUVsx1S7I?=
 =?iso-8859-1?Q?TfgJKxseT+4zJx+BQxyhEnhM+70OGFAdSsFwgazM/qO+O1PbuNlMfN+EFL?=
 =?iso-8859-1?Q?4Z9nhDUb3TdMKuJibSjBKNF1TkqUZBmS2IO7fubJMvrLX5IbN31o7j6FI5?=
 =?iso-8859-1?Q?3ZxMD2DIDx0dKx3uqgpzi1TvO2BjrXOa2xsuIWkenq09f4XioxULc6YnAk?=
 =?iso-8859-1?Q?ctcNeW1fmHdyGRJfAvqycM4bM1qhvVR/G/3VA0DgOjZMtHGmytzDKJ4Hni?=
 =?iso-8859-1?Q?zse6S8OcvnSqJvaxOSP0pGYZrz5hrfg0WAW1X3q8wqfo8yfi0xaeMoDPON?=
 =?iso-8859-1?Q?0bvGq4BfORtvyOgD7+2ChwO41LDsYBjQS6BoitZXiz24va58Y+c5fZO6+x?=
 =?iso-8859-1?Q?JlXWwT1AA8Czw5rdWbP2YwmmYRA8fYtWB70aNyEvahTetqKHZwI87DXsr0?=
 =?iso-8859-1?Q?ULOfSA779QrcVFtueTUG10D5MESW/XilBY94dBgJSpLMH96IkCTbqwPqqb?=
 =?iso-8859-1?Q?atFE3wHTQKtSaJRE2YmoqezaY+QGwRoFctySO+sTJGB2ZaFpt7Hi/n9/ZN?=
 =?iso-8859-1?Q?mFes+NT5ZOdU354MaSbcFmgWr5AAY5rnMkUE82Yem0XGEWkgcPhm/n7Awt?=
 =?iso-8859-1?Q?dcMVLAqYq+Rj8qHXFhK3tHFtv0+VGvS7Z7zuhDGWMEAjVH8v0l2Pf1/Lb7?=
 =?iso-8859-1?Q?WCbC/wWrxGUKmreGPVDT7R01a/70aLfXY8WJRnnrWq1U0qpcQ+4SSbLpkh?=
 =?iso-8859-1?Q?yPU+8AyQd3A/novzMoCMumqEyipOBYdV7oj0TI7nVbDrtLU553gZzbzFag?=
 =?iso-8859-1?Q?VeYy8nvVG1t8Ehns/s1ViBFH/EDJPScwyAl+F8QzV3xFuC7iHoYodjXhNg?=
 =?iso-8859-1?Q?6eLmhrE3UzRc63iw1L2zE8O5KDE1jU1K3aUznX1MyVNTgGl/GMQw1aoDDl?=
 =?iso-8859-1?Q?eUKUFUYU7mcbohFvhmhJIhtBeJcZKqO9niW5mxfrJ9yrcZby7Eed4qRVkI?=
 =?iso-8859-1?Q?HgljPgFT0BPLiXljmANr8ckN72TxnCcp4tA4jjTpRW0i9E6orbv1Q0EuV7?=
 =?iso-8859-1?Q?be0+uFeKf2IASASBvYUMMsPHKBjuEpJ7tRr99mIkY/bHHVs/pRv5pZKWuO?=
 =?iso-8859-1?Q?VMdikE9Z7G/ReNWL3oUpZk0bleCPMgRw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?0RtS1a/7f7QR7HgQeu65kQExm9j5gcygzASsbIMc+vVTgP4i8NVTQ2Jykx?=
 =?iso-8859-1?Q?XOZiQuxCXF8csF82a4+LOoZlarda/2zIu65+Pn2bXIHx833Ni60xmX4+rC?=
 =?iso-8859-1?Q?x86htr8KSrf7kfRzu3f3GoA2rWa1peadK9LyOfR7fXcImxmJFRBo9dzyHW?=
 =?iso-8859-1?Q?5/WpLQ+FqZSsxfvv0YR9Ala1Nq2zwEF01A2EhmMaR2/2ZJR2oMf0xh9TAU?=
 =?iso-8859-1?Q?gOYBallpq3bwskaldfU/VaHmRCAWOvf3oM9kLuwLzkGMyDNVG4qLhE4ZNj?=
 =?iso-8859-1?Q?DCMNHu5p/YXcg76dbpJIT4+vOS5A/5L6WHp7WPxh+7TLXrwWWAVlPhTbpw?=
 =?iso-8859-1?Q?4h8Ct0MSdw4lUUHac4DsKyU2ZlZpshPTQLXzzZj0pJY3mV1MiSs9MurKcb?=
 =?iso-8859-1?Q?d307mvtQmY+mTQgukwUUsV0Flh4xtli2XNt+guSoZdyOlunA4zzMlVEZaI?=
 =?iso-8859-1?Q?7LmNgl4XVkDz/D7NvhHDc8qJ+ht4rpsjhWXIxgpaAA0zsAyjZhisUqONUZ?=
 =?iso-8859-1?Q?sx5btt++rIP025ZC+2i67l9XnVdQUzT30rL3nE74jP69j78p3pWszyoqFx?=
 =?iso-8859-1?Q?4/rtHX6MM3lWpkDG02qv0Gpjpc3P9rm0QSfnLpnbX67bJFM6OOuHIVsfCg?=
 =?iso-8859-1?Q?D07UzQ2/K1jYM0xWmJLJHq25FwmZxLgV+ZDD1zPB33oubgYwNLb9SZJ9QD?=
 =?iso-8859-1?Q?hfDF/3x9K34go6jQX5emke0qczFnH2slhW8BiJWF49zzt0VVuHoCSNHFEn?=
 =?iso-8859-1?Q?nbtPQa1NjCAcXL+4L2PMC/+XiFXzGpkuddibaGvk7phgSHEh58ezl5S2cl?=
 =?iso-8859-1?Q?tY3siqYbnwZg/Kuv2EB6Un5FCAHQdInmHFBoCqXhjjmWChnAG/Fwyodwkz?=
 =?iso-8859-1?Q?nPRBSf4/tR+ryNLSjPWT3/Jbrr4x9pg4g9P+Oj+FiTT0RWkCt2cPCZSva4?=
 =?iso-8859-1?Q?7P9ZFIEWsqSTLwRT27O1SuYZylHX0g6/iN3SCpsA8f22arhHNLqdSG27Uj?=
 =?iso-8859-1?Q?GXfGEyweA/QbzVl2SU+ZUjza7Tjm7YKxfa/lkUqhAvJAlh9TEja/KHb1er?=
 =?iso-8859-1?Q?q6FtthBPFN7+qqV5HnKcuhz7gtJu78Opj/1yDvwMTNXCuOT58pC5ZDFtun?=
 =?iso-8859-1?Q?naNO/VhUC2A1kjhehso/+AEGgEcQ3JUeDP0gRyF13Gi9SBzjWAejgjWm8b?=
 =?iso-8859-1?Q?TmkREO+OqSHXBllq2Iv708PnF2/mpldf8q7pld3c4mruoMm+FWBd3RVPNO?=
 =?iso-8859-1?Q?tEI6Hadei4Qk1H95bTLyGrCu2gXyM8gBGtobPOEPn8WTYnQGVT48wYvD5J?=
 =?iso-8859-1?Q?Ttxmmq01Vyb91mcwHJQ3SkMAzeCWp2fMaXcdbK3X2W5Jk+dJXqTKm9bnQL?=
 =?iso-8859-1?Q?mRKHMtD58Eiw7x+/zZ8h0gnCf/8KpLIlqqGuwWlsJF0SFZLrVkD/Qm2fr6?=
 =?iso-8859-1?Q?ZmHVYxt2mdzdkJihHF8UHMDBXq/0UiliuT+e8KgRE7LodxgMNrjJ8+aEaJ?=
 =?iso-8859-1?Q?UGDHsurKGr3lQlXuHZxIawtNO/po/xq1nO3hJM9NjqJ2D9p5pGCBHNEZqm?=
 =?iso-8859-1?Q?RWfGrE8eYw/9uTwkSnEXbpTSvbsTmUX9xJOE5HPFsiAeXmznO91GBcGOI6?=
 =?iso-8859-1?Q?8R4aBr8dmqCLXGOLjNuNQIlZmstpFxDAog?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 76863f7c-03e7-4980-1750-08dca051cf44
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jul 2024 20:00:41.3269 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LudVy5ocLJeU31TPBR6vV4CY3pFD3IexJubnZfNr+Po+61rbXV0iJzbVN61fco4meePQGAh2vYANFtDDFl8W1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4776
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

On Fri, Jul 05, 2024 at 05:52:44PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Rearrange the max CFB max height platform into the
> more common "new first, old last" order.
> 

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 4d25ebb5ae9d..cf5750ed4681 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -206,10 +206,10 @@ static unsigned int intel_fbc_cfb_size(const struct intel_plane_state *plane_sta
>  	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
>  	int height = drm_rect_height(&plane_state->uapi.src) >> 16;
>  
> -	if (DISPLAY_VER(display) == 7)
> -		height = min(height, 2048);
> -	else if (DISPLAY_VER(display) >= 8)
> +	if (DISPLAY_VER(display) >= 8)
>  		height = min(height, 2560);
> +	else if (DISPLAY_VER(display) == 7)
> +		height = min(height, 2048);
>  
>  	return height * intel_fbc_cfb_stride(plane_state);
>  }
> -- 
> 2.44.2
> 
