Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E7C29ACD7F
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 16:55:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02C7A10E805;
	Wed, 23 Oct 2024 14:55:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jNmuEJRx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6097A10E806;
 Wed, 23 Oct 2024 14:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729695300; x=1761231300;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=JZkZqZnXwTdFCtvntdRVHKJxkpgn4psxkCaTxvjcNSY=;
 b=jNmuEJRxrp41jjN9RfOICn4KeiybIGdL8DBetYGQdXyG4PYJErDaT9ct
 p/5ishW+00VrYfg5VQ0Fwf+sjwQ4HvG5vEE3f8Od6rVf45KCQw5uipMgX
 9xtlHyrVvclO0+t8naRlZf3QCgNzavX1t8LBYUTnSSnYEkb8SVdDFbeMe
 RsIXFZA574c50jOdKb4Ff1DP/cINg5lXNvcRH9BkbTtHVCZsk1Ir+Z4UL
 QaT6VsX4tyw/chB0eo39fliNlJ+Skmrb9plman+UVYYXrqvc6wkteuci8
 y1J+vbcrtueIQBIiG40W5cBy4tfn7DB8rEgOboLbO7Lqycpqzfr50DN9N g==;
X-CSE-ConnectionGUID: c6RhGvyrSuSxxSq/lePDkg==
X-CSE-MsgGUID: VvUIX1rAQl+aYrcZlHCVTQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="28746509"
X-IronPort-AV: E=Sophos;i="6.11,226,1725346800"; d="scan'208";a="28746509"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 07:54:58 -0700
X-CSE-ConnectionGUID: nkv907ptR4mnG1jiCbdZqA==
X-CSE-MsgGUID: 13nCmNr7Qdimc81mLLRSyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,226,1725346800"; d="scan'208";a="81062266"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Oct 2024 07:54:58 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 23 Oct 2024 07:54:57 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 23 Oct 2024 07:54:57 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 23 Oct 2024 07:54:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iD0FfKNYBQ04EJB03ObH9Qby71BBY2yft6t3PfzyhzPpSi5/z7thzHJVO+hDJkBgFvCAt7glO9F8WxS940oVBY9/W4tb0InBZ6JEzHpjjX8v1x99jLrYusgz+/+UfMx+DEAy0ER7pZiGNAzMvQd4rMVRtFlllf32myaJlM618W+lsG7ctenYA4twFN+g7E1jdV3nXUVgdXY+ZsCQIJg07bto4Q+XdDVLygOB1QojrBrFFvLIJ5MIzODsGQTUEIg9MU+mLk5laDXRlU1/ixIaqph8pgmT+33k+qTcpXOdekIfs7dBBhsVr72v9HoS7WWT82JoATaQHu2V4nsaUTtglw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KUrQ/mmuLv7LB+9tQ9niT2XHLmREbg2Ih/nAixjU/rw=;
 b=o1InkYWoMsuXqaH93QIXrC6nlAuklXHTxAgcr5b7iOlMpbTro3X7gaxffYqUuuyaq5jU7xCw4t+lOyWE9uUDUvtcLFLa1KW1HIaA6OEFiLXVuFaRXrIqtaAr0zu8BvQ6tneXHROdYxJ/gZeojJ5uui8JiS1CTbY3J2rM1/MESKcTBB6HJasjfag5mAtzAJKRVaxuEemRmX7XW4spF1J77Hf1qCv+X5Usfy4CVVwiSaKwBfKgFE6fPQ+HnrCv6Yzd+2DmTgax5jcIibTY1o1nDreYk6qdBhqi67CDuL9/blvEnaMb7L0xxzCnAkEQw5MBXoYoTaFb7v+l0iUVa6/ggQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH8PR11MB6681.namprd11.prod.outlook.com (2603:10b6:510:1c4::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.17; Wed, 23 Oct
 2024 14:54:50 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8069.020; Wed, 23 Oct 2024
 14:54:50 +0000
Date: Wed, 23 Oct 2024 10:54:47 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 03/11] drm/i915/dpio: convert to struct intel_display
Message-ID: <ZxkON_HiVXdNMbS_@intel.com>
References: <cover.1729612605.git.jani.nikula@intel.com>
 <d466f457803245caff9725c506deb37f8bcb2e63.1729612605.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <d466f457803245caff9725c506deb37f8bcb2e63.1729612605.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW2PR16CA0062.namprd16.prod.outlook.com
 (2603:10b6:907:1::39) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH8PR11MB6681:EE_
X-MS-Office365-Filtering-Correlation-Id: 18e7d3cf-6866-4b6a-e914-08dcf372a52b
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Je5W1ImfLkmU4prIxlAI4nLmb+7S1mQ8p2SpR0FqB+dRrYN6x/ObI/M/f8zU?=
 =?us-ascii?Q?rOnl6X5A0YR8OaUoTkChaaFz2Y/LBZEGRVkd9QWCEEUjh7/aqEuwcJQBGgPp?=
 =?us-ascii?Q?u7zn0LKm8DxySPOFbCl4kJWGkYRCAdZJOmNDUbLUgTwmOKYHOioCbiY+KEod?=
 =?us-ascii?Q?qAJTI0mfxwg09V7k4xFFECvjTJ6XohXScVx3hAE+RWOP7Dw0gA/Ycx/rC2Vl?=
 =?us-ascii?Q?po+f92R/dC4Ggb2iWmaPi3GEPqCIMWEZZ5sGSYZ1mtmvUylVEcf91cgaGFj8?=
 =?us-ascii?Q?d7bWyPWDEzFDYEgB7njw2lhLVnnqKI5M8FcCmI6gX0vltZvckcNGGJpn9yH1?=
 =?us-ascii?Q?rE5Sdfj10ocgyoVMreuwjFaWinJkyHQMCGcsSRRIif1d6QiWDYPO/pucERRR?=
 =?us-ascii?Q?vgcW8wanqVnkbLcq/HE/NN9rO2Iy0MXXYtKWphb7jF5XqQY/6nWLPM9HJQrg?=
 =?us-ascii?Q?OTDO/PlhWYrF/h51stiallWIrnknnI1iuBRDDohFeMtlE/zDgmjK7lnnJHtf?=
 =?us-ascii?Q?vnF0WZ+ZP5btsh5TOLhnHG7jwSFVFrET3ODkbDL3hPw9BCSs1zBOSYYvMrj8?=
 =?us-ascii?Q?jGNgsKDHs313c9JHgsBZTbSQT5GeGDIu/z/R79ZGHkBmedFochln48s/FGIf?=
 =?us-ascii?Q?NP79W7jhirX/PMhaLzzY5oxUIJUtfEe16tB6N2gl42+UBR9JwlX/XOEc7cQB?=
 =?us-ascii?Q?3CJQUFc3ONxG4TOhiBm2tKwRJq7J8ejnqYNdSGnhyx2ougT/v9pnkxU6uGQO?=
 =?us-ascii?Q?ntb8SF68UVzTwoOXbD4TnXfNtAm/S39jyLIjsEJZMUbWGirABHAT8p7FnnXy?=
 =?us-ascii?Q?1jnUXoWn/sz2pXLaXCFDG9rcvtz0pEc1TbDDQduIVaB0f0JjYtChVcOqAHJT?=
 =?us-ascii?Q?pyrtowE/nzEWTa4GAgpNYb8kkMX5T64H+ooCNkYKugOaNQYxy7u3QW3+u48L?=
 =?us-ascii?Q?LjNWy+MG/iyhLALkgBgL3BIY+vxAl+AOHijmPBl+vBxIScyDAralhLlzHOAM?=
 =?us-ascii?Q?zPDzvTnARvp1L6wW4eH8v+/adCyqH+VK1Z9oj+yBk8V2R393/ADirdtfRuWQ?=
 =?us-ascii?Q?mHt5Y3a22C9YeU+/c7/lUlzagAcdJrboo4sxISVwotdIhWV1Pbo/CDQWM1bg?=
 =?us-ascii?Q?A+x+LIAEtIUM6MlbGbUQ53tEzsl8Ij7zjWc7C76H3dhZtNUP85sNW4EQU8rw?=
 =?us-ascii?Q?T239PDyh2AdnGr0E7H8Rg9ROFOC/GHNR4uPnlbAV8DRFOiZuswflgu2Sgbhr?=
 =?us-ascii?Q?43qfwd0EKj4A0t880MHVUiFJFTWerfakY8vr6W9ggijJlWB+owjx6SqknFMu?=
 =?us-ascii?Q?j6iLof9QInmIr3Qdd27cMex0?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?65orjSmV7TUtV/jBZSmnKdD9Y6l8LJ9WDKK9FtSh/zSB/hPnD013FCs0WZ+6?=
 =?us-ascii?Q?3C/szzBZgi6WEb0CEesf2bYmL68IOh7adBDfcUAF09GiYVmZ01DmtVLL2bGu?=
 =?us-ascii?Q?GyNbOCu5DJtB4LPXtw+C2vtuqe0+QrzbqDzMxQGpgZa2YcTflJ/HwkB6HW96?=
 =?us-ascii?Q?+o0oZF9MV16kkLPHnnyUg+EOnl9mjMUkNbEptq4rGi4R89c6OwNXdfuKVoSy?=
 =?us-ascii?Q?b8bdw/hE4GTUE5T7OHDsWmFDOyzRu73wW00igbQf/qRxuOxeKNQ0d14LnMk5?=
 =?us-ascii?Q?X0p7PpncUJVWD726n5j8X6WG0DvLpRQtS0TzLyyrwgXp1tY/MfQWjh8rkZ62?=
 =?us-ascii?Q?Z24PKcgefM8ZDbQpsM5FoN4LbEB+K0AyJAQRETOqResGX0uORremfghykjG5?=
 =?us-ascii?Q?St5vFUF+TZ6benzBDNPCE8Ceuq6FsEUIK6Yi8XoAvlk+eyvfgqziQqV8ZtVq?=
 =?us-ascii?Q?jfiAEqh3foK81HLGlkVSLrkWR9vfUYx454LldfxJyRryWWqigPo/0o3L/2rc?=
 =?us-ascii?Q?6Oajub1xXQETrwdPKItY6sVc7CbbAp7f8YSMWynhRHMnj/MLKwdOMdGMRYAw?=
 =?us-ascii?Q?BmlnCKdSLs86zcvEjE8JYiki6v5lGVMk6Bsi0lAfWrE8OhNo6cOkZUclFM7H?=
 =?us-ascii?Q?wpH9WOxeF4LYnWVo02IVDqVmUW+8+5yDstp+dwzeCt6FovcjPpAY6y/RY+eE?=
 =?us-ascii?Q?MOjaRP76b7mMfA7CoSS0rfsdx7Nb4U5vmmbKedKxr3WpX3XRTJ87jw5K7PBB?=
 =?us-ascii?Q?xVgwAGQyN4IOweoRuLjzA1KGJZnz8oKM2KiwAoP/g8UoHPDMHOo5VSU37cy6?=
 =?us-ascii?Q?P6gSp6Xr2MUXf1SXUdkE9Xabvsl6mYD67sVwkFnWOkaRkfJOM32QkXaDiiiY?=
 =?us-ascii?Q?Q6QCeSMPurZM9l1s+egBJ1vibe7rrPf3a0qY0YriuvYOkuo/yYW6uJaiklmH?=
 =?us-ascii?Q?oVk9vFHnZuLMMHPkiIsfNN7I4dQFO2Tds50zMufnFryeT0Cn8+sDg5ZPifFT?=
 =?us-ascii?Q?itXuz9cPQsMKOR5B1miZVtii6s95+G9X5npz+Bu6YT2ONvKFgwrQz9a1UoP+?=
 =?us-ascii?Q?qmCvj2neySdlJPVI+G1nlpYvDfWCUZC3Hu/TN1ZcBjhNWWE/E4kVLfA2UQXy?=
 =?us-ascii?Q?OTEDTlBAZ7JKTc1VEYNOPXc7drKtM540Qud/a7XI0rfigiS+/wiLhtx8wFIQ?=
 =?us-ascii?Q?8w7DnSBiys/8N5HjbfsWJdrYTfKSK1LyB6RucO9LBNT0Aw4R2H8OkFXf8gEC?=
 =?us-ascii?Q?RjjETx7en7E9ekc/rfCS9SixrqApw7JEze08GohYwKLJeUhGQpfrMq3hFHjx?=
 =?us-ascii?Q?RGiVP3ImMhNkKhPvtxz1hiSwYFqvIPXG1NtstkH3+O1zrx1Jfc8hkeWoDHiP?=
 =?us-ascii?Q?etRSCkOFhIPjyEdgqVPPLvZ9dcFtufeEfEy66WG00VMXDcHs3h38VKEcLL3Q?=
 =?us-ascii?Q?nQJC2SJ83o21/NY4i9BJ/wJkOX91+PUwelFWISFZqPqA5COM8/qKxMlLDpOO?=
 =?us-ascii?Q?7sroiLdLQGjiLp/dHUK8DUU8zCQzchRbf7gc1I+ZgocEOi9IWIbzWqEhdm/j?=
 =?us-ascii?Q?9iQFGNynbmzQzY4x34xBIgVuZBBTwB/j7g9jf5PU+4uOQ28egChaDk1PSf52?=
 =?us-ascii?Q?pQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 18e7d3cf-6866-4b6a-e914-08dcf372a52b
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2024 14:54:50.6181 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bN0VWy4mFjNUEiFm67BfAhJxW+j7/v0aJMru7k1bySrZdS4jSATCOQbyhRt0g6D8ujTbXuy16gBAj6jPoYiujA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6681
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

On Tue, Oct 22, 2024 at 06:57:20PM +0300, Jani Nikula wrote:
> struct intel_display will replace struct drm_i915_private as the main
> device pointer for display code. Switch DPIO PHY code over to it.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  .../i915/display/intel_display_power_well.c   |  19 ++-
>  drivers/gpu/drm/i915/display/intel_dpio_phy.c | 158 +++++++++---------
>  drivers/gpu/drm/i915/display/intel_dpio_phy.h |  22 +--
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c |   6 +-
>  4 files changed, 106 insertions(+), 99 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index adaf7cf3a33b..885bc2e563c5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -919,38 +919,45 @@ static void hsw_power_well_sync_hw(struct drm_i915_private *dev_priv,
>  static void bxt_dpio_cmn_power_well_enable(struct drm_i915_private *dev_priv,
>  					   struct i915_power_well *power_well)
>  {
> -	bxt_dpio_phy_init(dev_priv, i915_power_well_instance(power_well)->bxt.phy);
> +	struct intel_display *display = &dev_priv->display;
> +
> +	bxt_dpio_phy_init(display, i915_power_well_instance(power_well)->bxt.phy);
>  }
>  
>  static void bxt_dpio_cmn_power_well_disable(struct drm_i915_private *dev_priv,
>  					    struct i915_power_well *power_well)
>  {
> -	bxt_dpio_phy_uninit(dev_priv, i915_power_well_instance(power_well)->bxt.phy);
> +	struct intel_display *display = &dev_priv->display;
> +
> +	bxt_dpio_phy_uninit(display, i915_power_well_instance(power_well)->bxt.phy);
>  }
>  
>  static bool bxt_dpio_cmn_power_well_enabled(struct drm_i915_private *dev_priv,
>  					    struct i915_power_well *power_well)
>  {
> -	return bxt_dpio_phy_is_enabled(dev_priv, i915_power_well_instance(power_well)->bxt.phy);
> +	struct intel_display *display = &dev_priv->display;
> +
> +	return bxt_dpio_phy_is_enabled(display, i915_power_well_instance(power_well)->bxt.phy);
>  }
>  
>  static void bxt_verify_dpio_phy_power_wells(struct drm_i915_private *dev_priv)
>  {
> +	struct intel_display *display = &dev_priv->display;
>  	struct i915_power_well *power_well;
>  
>  	power_well = lookup_power_well(dev_priv, BXT_DISP_PW_DPIO_CMN_A);
>  	if (intel_power_well_refcount(power_well) > 0)
> -		bxt_dpio_phy_verify_state(dev_priv, i915_power_well_instance(power_well)->bxt.phy);
> +		bxt_dpio_phy_verify_state(display, i915_power_well_instance(power_well)->bxt.phy);
>  
>  	power_well = lookup_power_well(dev_priv, VLV_DISP_PW_DPIO_CMN_BC);
>  	if (intel_power_well_refcount(power_well) > 0)
> -		bxt_dpio_phy_verify_state(dev_priv, i915_power_well_instance(power_well)->bxt.phy);
> +		bxt_dpio_phy_verify_state(display, i915_power_well_instance(power_well)->bxt.phy);
>  
>  	if (IS_GEMINILAKE(dev_priv)) {
>  		power_well = lookup_power_well(dev_priv,
>  					       GLK_DISP_PW_DPIO_CMN_C);
>  		if (intel_power_well_refcount(power_well) > 0)
> -			bxt_dpio_phy_verify_state(dev_priv,
> +			bxt_dpio_phy_verify_state(display,
>  						  i915_power_well_instance(power_well)->bxt.phy);
>  	}
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
> index d20e4e9cf7f7..0f12f2c3467c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
> @@ -219,8 +219,10 @@ static const struct bxt_dpio_phy_info glk_dpio_phy_info[] = {
>  };
>  
>  static const struct bxt_dpio_phy_info *
> -bxt_get_phy_list(struct drm_i915_private *dev_priv, int *count)
> +bxt_get_phy_list(struct intel_display *display, int *count)
>  {
> +	struct drm_i915_private *dev_priv = to_i915(display->drm);
> +
>  	if (IS_GEMINILAKE(dev_priv)) {
>  		*count =  ARRAY_SIZE(glk_dpio_phy_info);
>  		return glk_dpio_phy_info;
> @@ -231,22 +233,22 @@ bxt_get_phy_list(struct drm_i915_private *dev_priv, int *count)
>  }
>  
>  static const struct bxt_dpio_phy_info *
> -bxt_get_phy_info(struct drm_i915_private *dev_priv, enum dpio_phy phy)
> +bxt_get_phy_info(struct intel_display *display, enum dpio_phy phy)
>  {
>  	int count;
>  	const struct bxt_dpio_phy_info *phy_list =
> -		bxt_get_phy_list(dev_priv, &count);
> +		bxt_get_phy_list(display, &count);
>  
>  	return &phy_list[phy];
>  }
>  
> -void bxt_port_to_phy_channel(struct drm_i915_private *dev_priv, enum port port,
> +void bxt_port_to_phy_channel(struct intel_display *display, enum port port,
>  			     enum dpio_phy *phy, enum dpio_channel *ch)
>  {
>  	const struct bxt_dpio_phy_info *phy_info, *phys;
>  	int i, count;
>  
> -	phys = bxt_get_phy_list(dev_priv, &count);
> +	phys = bxt_get_phy_list(display, &count);
>  
>  	for (i = 0; i < count; i++) {
>  		phy_info = &phys[i];
> @@ -265,7 +267,7 @@ void bxt_port_to_phy_channel(struct drm_i915_private *dev_priv, enum port port,
>  		}
>  	}
>  
> -	drm_WARN(&dev_priv->drm, 1, "PHY not found for PORT %c",
> +	drm_WARN(display->drm, 1, "PHY not found for PORT %c",
>  		 port_name(port));
>  	*phy = DPIO_PHY0;
>  	*ch = DPIO_CH0;
> @@ -275,16 +277,16 @@ void bxt_port_to_phy_channel(struct drm_i915_private *dev_priv, enum port port,
>   * Like intel_de_rmw() but reads from a single per-lane register and
>   * writes to the group register to write the same value to all the lanes.
>   */
> -static u32 bxt_dpio_phy_rmw_grp(struct drm_i915_private *i915,
> +static u32 bxt_dpio_phy_rmw_grp(struct intel_display *display,
>  				i915_reg_t reg_single,
>  				i915_reg_t reg_group,
>  				u32 clear, u32 set)
>  {
>  	u32 old, val;
>  
> -	old = intel_de_read(i915, reg_single);
> +	old = intel_de_read(display, reg_single);
>  	val = (old & ~clear) | set;
> -	intel_de_write(i915, reg_group, val);
> +	intel_de_write(display, reg_group, val);
>  
>  	return old;
>  }
> @@ -292,30 +294,30 @@ static u32 bxt_dpio_phy_rmw_grp(struct drm_i915_private *i915,
>  void bxt_dpio_phy_set_signal_levels(struct intel_encoder *encoder,
>  				    const struct intel_crtc_state *crtc_state)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> +	struct intel_display *display = to_intel_display(encoder);
>  	const struct intel_ddi_buf_trans *trans;
>  	enum dpio_channel ch;
>  	enum dpio_phy phy;
>  	int lane, n_entries;
>  
>  	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
> -	if (drm_WARN_ON_ONCE(&dev_priv->drm, !trans))
> +	if (drm_WARN_ON_ONCE(display->drm, !trans))
>  		return;
>  
> -	bxt_port_to_phy_channel(dev_priv, encoder->port, &phy, &ch);
> +	bxt_port_to_phy_channel(display, encoder->port, &phy, &ch);
>  
>  	/*
>  	 * While we write to the group register to program all lanes at once we
>  	 * can read only lane registers and we pick lanes 0/1 for that.
>  	 */
> -	bxt_dpio_phy_rmw_grp(dev_priv, BXT_PORT_PCS_DW10_LN01(phy, ch),
> +	bxt_dpio_phy_rmw_grp(display, BXT_PORT_PCS_DW10_LN01(phy, ch),
>  			     BXT_PORT_PCS_DW10_GRP(phy, ch),
>  			     TX2_SWING_CALC_INIT | TX1_SWING_CALC_INIT, 0);
>  
>  	for (lane = 0; lane < crtc_state->lane_count; lane++) {
>  		int level = intel_ddi_level(encoder, crtc_state, lane);
>  
> -		intel_de_rmw(dev_priv, BXT_PORT_TX_DW2_LN(phy, ch, lane),
> +		intel_de_rmw(display, BXT_PORT_TX_DW2_LN(phy, ch, lane),
>  			     MARGIN_000_MASK | UNIQ_TRANS_SCALE_MASK,
>  			     MARGIN_000(trans->entries[level].bxt.margin) |
>  			     UNIQ_TRANS_SCALE(trans->entries[level].bxt.scale));
> @@ -325,50 +327,50 @@ void bxt_dpio_phy_set_signal_levels(struct intel_encoder *encoder,
>  		int level = intel_ddi_level(encoder, crtc_state, lane);
>  		u32 val;
>  
> -		intel_de_rmw(dev_priv, BXT_PORT_TX_DW3_LN(phy, ch, lane),
> +		intel_de_rmw(display, BXT_PORT_TX_DW3_LN(phy, ch, lane),
>  			     SCALE_DCOMP_METHOD,
>  			     trans->entries[level].bxt.enable ?
>  			     SCALE_DCOMP_METHOD : 0);
>  
> -		val = intel_de_read(dev_priv, BXT_PORT_TX_DW3_LN(phy, ch, lane));
> +		val = intel_de_read(display, BXT_PORT_TX_DW3_LN(phy, ch, lane));
>  		if ((val & UNIQUE_TRANGE_EN_METHOD) && !(val & SCALE_DCOMP_METHOD))
> -			drm_err(&dev_priv->drm,
> +			drm_err(display->drm,
>  				"Disabled scaling while ouniqetrangenmethod was set");
>  	}
>  
>  	for (lane = 0; lane < crtc_state->lane_count; lane++) {
>  		int level = intel_ddi_level(encoder, crtc_state, lane);
>  
> -		intel_de_rmw(dev_priv, BXT_PORT_TX_DW4_LN(phy, ch, lane),
> +		intel_de_rmw(display, BXT_PORT_TX_DW4_LN(phy, ch, lane),
>  			     DE_EMPHASIS_MASK,
>  			     DE_EMPHASIS(trans->entries[level].bxt.deemphasis));
>  	}
>  
> -	bxt_dpio_phy_rmw_grp(dev_priv, BXT_PORT_PCS_DW10_LN01(phy, ch),
> +	bxt_dpio_phy_rmw_grp(display, BXT_PORT_PCS_DW10_LN01(phy, ch),
>  			     BXT_PORT_PCS_DW10_GRP(phy, ch),
>  			     0, TX2_SWING_CALC_INIT | TX1_SWING_CALC_INIT);
>  }
>  
> -bool bxt_dpio_phy_is_enabled(struct drm_i915_private *dev_priv,
> +bool bxt_dpio_phy_is_enabled(struct intel_display *display,
>  			     enum dpio_phy phy)
>  {
>  	const struct bxt_dpio_phy_info *phy_info;
>  
> -	phy_info = bxt_get_phy_info(dev_priv, phy);
> +	phy_info = bxt_get_phy_info(display, phy);
>  
> -	if (!(intel_de_read(dev_priv, BXT_P_CR_GT_DISP_PWRON) & phy_info->pwron_mask))
> +	if (!(intel_de_read(display, BXT_P_CR_GT_DISP_PWRON) & phy_info->pwron_mask))
>  		return false;
>  
> -	if ((intel_de_read(dev_priv, BXT_PORT_CL1CM_DW0(phy)) &
> +	if ((intel_de_read(display, BXT_PORT_CL1CM_DW0(phy)) &
>  	     (PHY_POWER_GOOD | PHY_RESERVED)) != PHY_POWER_GOOD) {
> -		drm_dbg(&dev_priv->drm,
> +		drm_dbg(display->drm,
>  			"DDI PHY %d powered, but power hasn't settled\n", phy);
>  
>  		return false;
>  	}
>  
> -	if (!(intel_de_read(dev_priv, BXT_PHY_CTL_FAMILY(phy)) & COMMON_RESET_DIS)) {
> -		drm_dbg(&dev_priv->drm,
> +	if (!(intel_de_read(display, BXT_PHY_CTL_FAMILY(phy)) & COMMON_RESET_DIS)) {
> +		drm_dbg(display->drm,
>  			"DDI PHY %d powered, but still in reset\n", phy);
>  
>  		return false;
> @@ -377,47 +379,44 @@ bool bxt_dpio_phy_is_enabled(struct drm_i915_private *dev_priv,
>  	return true;
>  }
>  
> -static u32 bxt_get_grc(struct drm_i915_private *dev_priv, enum dpio_phy phy)
> +static u32 bxt_get_grc(struct intel_display *display, enum dpio_phy phy)
>  {
> -	u32 val = intel_de_read(dev_priv, BXT_PORT_REF_DW6(phy));
> +	u32 val = intel_de_read(display, BXT_PORT_REF_DW6(phy));
>  
>  	return REG_FIELD_GET(GRC_CODE_MASK, val);
>  }
>  
> -static void bxt_phy_wait_grc_done(struct drm_i915_private *dev_priv,
> +static void bxt_phy_wait_grc_done(struct intel_display *display,
>  				  enum dpio_phy phy)
>  {
> -	if (intel_de_wait_for_set(dev_priv, BXT_PORT_REF_DW3(phy),
> -				  GRC_DONE, 10))
> -		drm_err(&dev_priv->drm, "timeout waiting for PHY%d GRC\n",
> -			phy);
> +	if (intel_de_wait_for_set(display, BXT_PORT_REF_DW3(phy), GRC_DONE, 10))
> +		drm_err(display->drm, "timeout waiting for PHY%d GRC\n", phy);
>  }
>  
> -static void _bxt_dpio_phy_init(struct drm_i915_private *dev_priv,
> -			       enum dpio_phy phy)
> +static void _bxt_dpio_phy_init(struct intel_display *display, enum dpio_phy phy)
>  {
>  	const struct bxt_dpio_phy_info *phy_info;
>  	u32 val;
>  
> -	phy_info = bxt_get_phy_info(dev_priv, phy);
> +	phy_info = bxt_get_phy_info(display, phy);
>  
> -	if (bxt_dpio_phy_is_enabled(dev_priv, phy)) {
> +	if (bxt_dpio_phy_is_enabled(display, phy)) {
>  		/* Still read out the GRC value for state verification */
>  		if (phy_info->rcomp_phy != -1)
> -			dev_priv->display.state.bxt_phy_grc = bxt_get_grc(dev_priv, phy);
> +			display->state.bxt_phy_grc = bxt_get_grc(display, phy);
>  
> -		if (bxt_dpio_phy_verify_state(dev_priv, phy)) {
> -			drm_dbg(&dev_priv->drm, "DDI PHY %d already enabled, "
> +		if (bxt_dpio_phy_verify_state(display, phy)) {
> +			drm_dbg(display->drm, "DDI PHY %d already enabled, "
>  				"won't reprogram it\n", phy);
>  			return;
>  		}
>  
> -		drm_dbg(&dev_priv->drm,
> +		drm_dbg(display->drm,
>  			"DDI PHY %d enabled with invalid state, "
>  			"force reprogramming it\n", phy);
>  	}
>  
> -	intel_de_rmw(dev_priv, BXT_P_CR_GT_DISP_PWRON, 0, phy_info->pwron_mask);
> +	intel_de_rmw(display, BXT_P_CR_GT_DISP_PWRON, 0, phy_info->pwron_mask);
>  
>  	/*
>  	 * The PHY registers start out inaccessible and respond to reads with
> @@ -427,92 +426,91 @@ static void _bxt_dpio_phy_init(struct drm_i915_private *dev_priv,
>  	 * The flag should get set in 100us according to the HW team, but
>  	 * use 1ms due to occasional timeouts observed with that.
>  	 */
> -	if (intel_de_wait_fw(dev_priv, BXT_PORT_CL1CM_DW0(phy),
> +	if (intel_de_wait_fw(display, BXT_PORT_CL1CM_DW0(phy),
>  			     PHY_RESERVED | PHY_POWER_GOOD, PHY_POWER_GOOD, 1))
> -		drm_err(&dev_priv->drm, "timeout during PHY%d power on\n",
> +		drm_err(display->drm, "timeout during PHY%d power on\n",
>  			phy);
>  
>  	/* Program PLL Rcomp code offset */
> -	intel_de_rmw(dev_priv, BXT_PORT_CL1CM_DW9(phy),
> +	intel_de_rmw(display, BXT_PORT_CL1CM_DW9(phy),
>  		     IREF0RC_OFFSET_MASK, IREF0RC_OFFSET(0xE4));
>  
> -	intel_de_rmw(dev_priv, BXT_PORT_CL1CM_DW10(phy),
> +	intel_de_rmw(display, BXT_PORT_CL1CM_DW10(phy),
>  		     IREF1RC_OFFSET_MASK, IREF1RC_OFFSET(0xE4));
>  
>  	/* Program power gating */
> -	intel_de_rmw(dev_priv, BXT_PORT_CL1CM_DW28(phy), 0,
> +	intel_de_rmw(display, BXT_PORT_CL1CM_DW28(phy), 0,
>  		     OCL1_POWER_DOWN_EN | DW28_OLDO_DYN_PWR_DOWN_EN | SUS_CLK_CONFIG);
>  
>  	if (phy_info->dual_channel)
> -		intel_de_rmw(dev_priv, BXT_PORT_CL2CM_DW6(phy), 0,
> +		intel_de_rmw(display, BXT_PORT_CL2CM_DW6(phy), 0,
>  			     DW6_OLDO_DYN_PWR_DOWN_EN);
>  
>  	if (phy_info->rcomp_phy != -1) {
>  		u32 grc_code;
>  
> -		bxt_phy_wait_grc_done(dev_priv, phy_info->rcomp_phy);
> +		bxt_phy_wait_grc_done(display, phy_info->rcomp_phy);
>  
>  		/*
>  		 * PHY0 isn't connected to an RCOMP resistor so copy over
>  		 * the corresponding calibrated value from PHY1, and disable
>  		 * the automatic calibration on PHY0.
>  		 */
> -		val = bxt_get_grc(dev_priv, phy_info->rcomp_phy);
> -		dev_priv->display.state.bxt_phy_grc = val;
> +		val = bxt_get_grc(display, phy_info->rcomp_phy);
> +		display->state.bxt_phy_grc = val;
>  
>  		grc_code = GRC_CODE_FAST(val) |
>  			GRC_CODE_SLOW(val) |
>  			GRC_CODE_NOM(val);
> -		intel_de_write(dev_priv, BXT_PORT_REF_DW6(phy), grc_code);
> -		intel_de_rmw(dev_priv, BXT_PORT_REF_DW8(phy),
> +		intel_de_write(display, BXT_PORT_REF_DW6(phy), grc_code);
> +		intel_de_rmw(display, BXT_PORT_REF_DW8(phy),
>  			     0, GRC_DIS | GRC_RDY_OVRD);
>  	}
>  
>  	if (phy_info->reset_delay)
>  		udelay(phy_info->reset_delay);
>  
> -	intel_de_rmw(dev_priv, BXT_PHY_CTL_FAMILY(phy), 0, COMMON_RESET_DIS);
> +	intel_de_rmw(display, BXT_PHY_CTL_FAMILY(phy), 0, COMMON_RESET_DIS);
>  }
>  
> -void bxt_dpio_phy_uninit(struct drm_i915_private *dev_priv, enum dpio_phy phy)
> +void bxt_dpio_phy_uninit(struct intel_display *display, enum dpio_phy phy)
>  {
>  	const struct bxt_dpio_phy_info *phy_info;
>  
> -	phy_info = bxt_get_phy_info(dev_priv, phy);
> +	phy_info = bxt_get_phy_info(display, phy);
>  
> -	intel_de_rmw(dev_priv, BXT_PHY_CTL_FAMILY(phy), COMMON_RESET_DIS, 0);
> +	intel_de_rmw(display, BXT_PHY_CTL_FAMILY(phy), COMMON_RESET_DIS, 0);
>  
> -	intel_de_rmw(dev_priv, BXT_P_CR_GT_DISP_PWRON, phy_info->pwron_mask, 0);
> +	intel_de_rmw(display, BXT_P_CR_GT_DISP_PWRON, phy_info->pwron_mask, 0);
>  }
>  
> -void bxt_dpio_phy_init(struct drm_i915_private *dev_priv, enum dpio_phy phy)
> +void bxt_dpio_phy_init(struct intel_display *display, enum dpio_phy phy)
>  {
> -	const struct bxt_dpio_phy_info *phy_info =
> -		bxt_get_phy_info(dev_priv, phy);
> +	const struct bxt_dpio_phy_info *phy_info = bxt_get_phy_info(display, phy);
>  	enum dpio_phy rcomp_phy = phy_info->rcomp_phy;
>  	bool was_enabled;
>  
> -	lockdep_assert_held(&dev_priv->display.power.domains.lock);
> +	lockdep_assert_held(&display->power.domains.lock);
>  
>  	was_enabled = true;
>  	if (rcomp_phy != -1)
> -		was_enabled = bxt_dpio_phy_is_enabled(dev_priv, rcomp_phy);
> +		was_enabled = bxt_dpio_phy_is_enabled(display, rcomp_phy);
>  
>  	/*
>  	 * We need to copy the GRC calibration value from rcomp_phy,
>  	 * so make sure it's powered up.
>  	 */
>  	if (!was_enabled)
> -		_bxt_dpio_phy_init(dev_priv, rcomp_phy);
> +		_bxt_dpio_phy_init(display, rcomp_phy);
>  
> -	_bxt_dpio_phy_init(dev_priv, phy);
> +	_bxt_dpio_phy_init(display, phy);
>  
>  	if (!was_enabled)
> -		bxt_dpio_phy_uninit(dev_priv, rcomp_phy);
> +		bxt_dpio_phy_uninit(display, rcomp_phy);
>  }
>  
>  static bool __printf(6, 7)
> -__phy_reg_verify_state(struct drm_i915_private *dev_priv, enum dpio_phy phy,
> +__phy_reg_verify_state(struct intel_display *display, enum dpio_phy phy,
>  		       i915_reg_t reg, u32 mask, u32 expected,
>  		       const char *reg_fmt, ...)
>  {
> @@ -520,7 +518,7 @@ __phy_reg_verify_state(struct drm_i915_private *dev_priv, enum dpio_phy phy,
>  	va_list args;
>  	u32 val;
>  
> -	val = intel_de_read(dev_priv, reg);
> +	val = intel_de_read(display, reg);
>  	if ((val & mask) == expected)
>  		return true;
>  
> @@ -528,7 +526,7 @@ __phy_reg_verify_state(struct drm_i915_private *dev_priv, enum dpio_phy phy,
>  	vaf.fmt = reg_fmt;
>  	vaf.va = &args;
>  
> -	drm_dbg(&dev_priv->drm, "DDI PHY %d reg %pV [%08x] state mismatch: "
> +	drm_dbg(display->drm, "DDI PHY %d reg %pV [%08x] state mismatch: "
>  			 "current %08x, expected %08x (mask %08x)\n",
>  			 phy, &vaf, reg.reg, val, (val & ~mask) | expected,
>  			 mask);
> @@ -538,20 +536,20 @@ __phy_reg_verify_state(struct drm_i915_private *dev_priv, enum dpio_phy phy,
>  	return false;
>  }
>  
> -bool bxt_dpio_phy_verify_state(struct drm_i915_private *dev_priv,
> +bool bxt_dpio_phy_verify_state(struct intel_display *display,
>  			       enum dpio_phy phy)
>  {
>  	const struct bxt_dpio_phy_info *phy_info;
>  	u32 mask;
>  	bool ok;
>  
> -	phy_info = bxt_get_phy_info(dev_priv, phy);
> +	phy_info = bxt_get_phy_info(display, phy);
>  
>  #define _CHK(reg, mask, exp, fmt, ...)					\
> -	__phy_reg_verify_state(dev_priv, phy, reg, mask, exp, fmt,	\
> +	__phy_reg_verify_state(display, phy, reg, mask, exp, fmt,	\
>  			       ## __VA_ARGS__)
>  
> -	if (!bxt_dpio_phy_is_enabled(dev_priv, phy))
> +	if (!bxt_dpio_phy_is_enabled(display, phy))
>  		return false;
>  
>  	ok = true;
> @@ -575,7 +573,7 @@ bool bxt_dpio_phy_verify_state(struct drm_i915_private *dev_priv,
>  			   "BXT_PORT_CL2CM_DW6(%d)", phy);
>  
>  	if (phy_info->rcomp_phy != -1) {
> -		u32 grc_code = dev_priv->display.state.bxt_phy_grc;
> +		u32 grc_code = display->state.bxt_phy_grc;
>  
>  		grc_code = GRC_CODE_FAST(grc_code) |
>  			GRC_CODE_SLOW(grc_code) |
> @@ -614,20 +612,20 @@ bxt_dpio_phy_calc_lane_lat_optim_mask(u8 lane_count)
>  void bxt_dpio_phy_set_lane_optim_mask(struct intel_encoder *encoder,
>  				      u8 lane_lat_optim_mask)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> +	struct intel_display *display = to_intel_display(encoder);
>  	enum port port = encoder->port;
>  	enum dpio_phy phy;
>  	enum dpio_channel ch;
>  	int lane;
>  
> -	bxt_port_to_phy_channel(dev_priv, port, &phy, &ch);
> +	bxt_port_to_phy_channel(display, port, &phy, &ch);
>  
>  	for (lane = 0; lane < 4; lane++) {
>  		/*
>  		 * Note that on CHV this flag is called UPAR, but has
>  		 * the same function.
>  		 */
> -		intel_de_rmw(dev_priv, BXT_PORT_TX_DW14_LN(phy, ch, lane),
> +		intel_de_rmw(display, BXT_PORT_TX_DW14_LN(phy, ch, lane),
>  			     LATENCY_OPTIM,
>  			     lane_lat_optim_mask & BIT(lane) ? LATENCY_OPTIM : 0);
>  	}
> @@ -636,18 +634,18 @@ void bxt_dpio_phy_set_lane_optim_mask(struct intel_encoder *encoder,
>  u8
>  bxt_dpio_phy_get_lane_lat_optim_mask(struct intel_encoder *encoder)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> +	struct intel_display *display = to_intel_display(encoder);
>  	enum port port = encoder->port;
>  	enum dpio_phy phy;
>  	enum dpio_channel ch;
>  	int lane;
>  	u8 mask;
>  
> -	bxt_port_to_phy_channel(dev_priv, port, &phy, &ch);
> +	bxt_port_to_phy_channel(display, port, &phy, &ch);
>  
>  	mask = 0;
>  	for (lane = 0; lane < 4; lane++) {
> -		u32 val = intel_de_read(dev_priv,
> +		u32 val = intel_de_read(display,
>  					BXT_PORT_TX_DW14_LN(phy, ch, lane));
>  
>  		if (val & LATENCY_OPTIM)
> diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.h b/drivers/gpu/drm/i915/display/intel_dpio_phy.h
> index 226994dcb89b..a82939165546 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpio_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.h
> @@ -10,9 +10,9 @@
>  
>  enum pipe;
>  enum port;
> -struct drm_i915_private;
>  struct intel_crtc_state;
>  struct intel_digital_port;
> +struct intel_display;
>  struct intel_encoder;
>  
>  enum dpio_channel {
> @@ -27,15 +27,15 @@ enum dpio_phy {
>  };
>  
>  #ifdef I915
> -void bxt_port_to_phy_channel(struct drm_i915_private *dev_priv, enum port port,
> +void bxt_port_to_phy_channel(struct intel_display *display, enum port port,
>  			     enum dpio_phy *phy, enum dpio_channel *ch);
>  void bxt_dpio_phy_set_signal_levels(struct intel_encoder *encoder,
>  				    const struct intel_crtc_state *crtc_state);
> -void bxt_dpio_phy_init(struct drm_i915_private *dev_priv, enum dpio_phy phy);
> -void bxt_dpio_phy_uninit(struct drm_i915_private *dev_priv, enum dpio_phy phy);
> -bool bxt_dpio_phy_is_enabled(struct drm_i915_private *dev_priv,
> +void bxt_dpio_phy_init(struct intel_display *display, enum dpio_phy phy);
> +void bxt_dpio_phy_uninit(struct intel_display *display, enum dpio_phy phy);
> +bool bxt_dpio_phy_is_enabled(struct intel_display *display,
>  			     enum dpio_phy phy);
> -bool bxt_dpio_phy_verify_state(struct drm_i915_private *dev_priv,
> +bool bxt_dpio_phy_verify_state(struct intel_display *display,
>  			       enum dpio_phy phy);
>  u8 bxt_dpio_phy_calc_lane_lat_optim_mask(u8 lane_count);
>  void bxt_dpio_phy_set_lane_optim_mask(struct intel_encoder *encoder,
> @@ -73,7 +73,7 @@ void vlv_phy_pre_encoder_enable(struct intel_encoder *encoder,
>  void vlv_phy_reset_lanes(struct intel_encoder *encoder,
>  			 const struct intel_crtc_state *old_crtc_state);
>  #else
> -static inline void bxt_port_to_phy_channel(struct drm_i915_private *dev_priv, enum port port,
> +static inline void bxt_port_to_phy_channel(struct intel_display *display, enum port port,
>  					   enum dpio_phy *phy, enum dpio_channel *ch)
>  {
>  }
> @@ -81,18 +81,18 @@ static inline void bxt_dpio_phy_set_signal_levels(struct intel_encoder *encoder,
>  						  const struct intel_crtc_state *crtc_state)
>  {
>  }
> -static inline void bxt_dpio_phy_init(struct drm_i915_private *dev_priv, enum dpio_phy phy)
> +static inline void bxt_dpio_phy_init(struct intel_display *display, enum dpio_phy phy)
>  {
>  }
> -static inline void bxt_dpio_phy_uninit(struct drm_i915_private *dev_priv, enum dpio_phy phy)
> +static inline void bxt_dpio_phy_uninit(struct intel_display *display, enum dpio_phy phy)
>  {
>  }
> -static inline bool bxt_dpio_phy_is_enabled(struct drm_i915_private *dev_priv,
> +static inline bool bxt_dpio_phy_is_enabled(struct intel_display *display,
>  					   enum dpio_phy phy)
>  {
>  	return false;
>  }
> -static inline bool bxt_dpio_phy_verify_state(struct drm_i915_private *dev_priv,
> +static inline bool bxt_dpio_phy_verify_state(struct intel_display *display,
>  					     enum dpio_phy phy)
>  {
>  	return true;
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index f490b2157828..99962d8cc6b5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -2035,13 +2035,14 @@ static void bxt_ddi_pll_enable(struct drm_i915_private *i915,
>  			       struct intel_shared_dpll *pll,
>  			       const struct intel_dpll_hw_state *dpll_hw_state)
>  {
> +	struct intel_display *display = &i915->display;
>  	const struct bxt_dpll_hw_state *hw_state = &dpll_hw_state->bxt;
>  	enum port port = (enum port)pll->info->id; /* 1:1 port->PLL mapping */
>  	enum dpio_phy phy;
>  	enum dpio_channel ch;
>  	u32 temp;
>  
> -	bxt_port_to_phy_channel(i915, port, &phy, &ch);
> +	bxt_port_to_phy_channel(display, port, &phy, &ch);
>  
>  	/* Non-SSC reference */
>  	intel_de_rmw(i915, BXT_PORT_PLL_ENABLE(port), 0, PORT_PLL_REF_SEL);
> @@ -2157,6 +2158,7 @@ static bool bxt_ddi_pll_get_hw_state(struct drm_i915_private *i915,
>  				     struct intel_shared_dpll *pll,
>  				     struct intel_dpll_hw_state *dpll_hw_state)
>  {
> +	struct intel_display *display = &i915->display;
>  	struct bxt_dpll_hw_state *hw_state = &dpll_hw_state->bxt;
>  	enum port port = (enum port)pll->info->id; /* 1:1 port->PLL mapping */
>  	intel_wakeref_t wakeref;
> @@ -2165,7 +2167,7 @@ static bool bxt_ddi_pll_get_hw_state(struct drm_i915_private *i915,
>  	u32 val;
>  	bool ret;
>  
> -	bxt_port_to_phy_channel(i915, port, &phy, &ch);
> +	bxt_port_to_phy_channel(display, port, &phy, &ch);
>  
>  	wakeref = intel_display_power_get_if_enabled(i915,
>  						     POWER_DOMAIN_DISPLAY_CORE);
> -- 
> 2.39.5
> 
