Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0700466031A
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Jan 2023 16:26:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C32D510E04C;
	Fri,  6 Jan 2023 15:26:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 017A610E04C
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Jan 2023 15:26:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673018775; x=1704554775;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=4b5fGPqBNyiw46SEg2Uqq6AI16PIwYlAKoNw47+DzsQ=;
 b=HdsmJKAosyuW2DpOh+5qKd9Oj7ZhX7SgcnG+74O1YVtDU8CVpzX5VCtt
 3AisGRzqME0y/oDmKwfBe0mRPpWMDge4UacnaFVYbIr+IO2peX3+yU+7a
 t+AbAWkyQ1RVsbzGlNA/klAUzHWU0lM3OxD6GvE2o31HrCHGntHlBjCPH
 N1hcbCtj1PWsa1Z/0nrn5NOxKGF3YIH4Ze4ce3bggXSqG17tOt3EAcko8
 0gyWBLLoAryKxyq0XqQ3dllg181gMc5IZHjfOnTANX0vMfqleL70m3H04
 gq43iAkthu0C+QlOg+UAxVN0gFsZYRZrKThWlM8haGEPPBLBpVCHsomqm w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10582"; a="310285027"
X-IronPort-AV: E=Sophos;i="5.96,305,1665471600"; d="scan'208";a="310285027"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2023 07:26:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10582"; a="744666711"
X-IronPort-AV: E=Sophos;i="5.96,305,1665471600"; d="scan'208";a="744666711"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP; 06 Jan 2023 07:26:13 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 6 Jan 2023 07:26:13 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 6 Jan 2023 07:26:13 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 6 Jan 2023 07:26:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b7ZK+s13KSLeAiTIsNuQarmC5DezvRF3Z1mZtYjMAcHN+zxXcLY2p3DROgCWCF0yDYmqZZ9HFb/UugZag5i5SbjvCav9PazJQAJduVNk7oB3uGot47RXBh2yfcMBvswYTRZn62IxGI5WeH1h0uD7ZZph3/zvcR59FG8krsOH/9+MTgg2hVAT/abjHQjJ8IAO5HX4epIhy3HQOZbUAnbmiN7/WDnzL+XXyfbc4DU01WN6aClvKZi5uChS5BRv3dPRNbo4oO51oj0gTgZH4gK6N6K/Brjz3P4ODzeSRGCSGQbKQFKdkv1/8wko0g35D4lZcPSWySP8pjqijJYkoLUNew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V+7aTRISLD8WXJI4aN2mNfzeDBR69ZEjamsFANnilcQ=;
 b=JJj+5Q5htUgmJ/MGhJDJll46Iem3o4geq7Rk2SNOjFranBn4w/nCdptLUc0VbVkQ45OogSr01RldiQw4nmv3imX3Wb5Ebou4aKcHVk7efAGkC0gwgTXyrePdrY1wKZNQkP5m3mVmZDGrKZ/6KH2I93In0h1eE7KDdtaiqy5/tsYioid9/mbvkzaE7I9NOy1Z4PNV/kRidUeGlGJTRf2069944JpkUFGJ/4XTJLP5ArpLYKNDpsmaIuEEiVjlIbL76vWEoIqrcOy80ZrNUzyiBkXZCFFeCSUnGYyn4LdyvKHZaEJciqFC3wmmPOOJjXAyTTFX93GQRSTx64wyJRwOaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by IA1PR11MB6370.namprd11.prod.outlook.com (2603:10b6:208:3ae::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Fri, 6 Jan
 2023 15:26:11 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808%8]) with mapi id 15.20.5944.019; Fri, 6 Jan 2023
 15:26:10 +0000
Date: Fri, 6 Jan 2023 10:26:06 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <Y7g9jpqG7gpOIovk@intel.com>
References: <20230105131046.2173431-1-andrzej.hajda@intel.com>
 <20230105131046.2173431-4-andrzej.hajda@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230105131046.2173431-4-andrzej.hajda@intel.com>
X-ClientProxiedBy: BYAPR01CA0047.prod.exchangelabs.com (2603:10b6:a03:94::24)
 To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|IA1PR11MB6370:EE_
X-MS-Office365-Filtering-Correlation-Id: cd7cedaf-fa1a-42a8-6bf0-08daeffa56cc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pnUghX39rSGBRkHHmlRF3rigk/OXI45zOeM//7aXQ96i1xHJxvMSSJr9q+5tibtmIIezaDLhLsy9TFOLqwEu6MM8X6fgyiOZyWo0Fqcqcb8TRQSoRSNxk82EzIf+StdOrdj/BVPBpZqnnXT3Duy3HWkZGek+lj2B5GW0pH/GtEQ3snDXWQwhS+DNFWraMVCwuhXDlEbJGTdHIE21fIYr5ztti1lcKOC6Zi0Wm4yaBBwjs8Hea5PfeKWxe6fRLyQmKymceg1VWONO8Lu68i33lcoXUTBrJ6SajXZdauVm1YYl/E2i/zIjBYGk1BHMGmFQQxDZ1OupaY7Az6hptzj4Rf6r7NYqX4iU6vKbKZyKGjWMl64JXSp6IN5nfQwzT16GHCtzkpH7z2OEOx5f5NdDIo/xMYRSrNLsxh/Xil8+gGlv0mu8DJjr02ZuQ2qdQQQ/f4U/jfXihiNcn5xpoD5icy29pWY2mGBn7ug2oiX/vYlsfDHZD+m6Mpu3FFaXTVq63tg5jgQD27YotHizTqvpEuFtr4TRBqcCWz6rbeIxSfcdfc1GqGaEjbwBbuOEaJE/vP81tduG9g/19FWEMqoSm7q84m3ZBYRW/OliZw/M+YPPQ2pdAEc4m4kFpb/omoLyxdjot+v5CPUaZrYYuCzeJQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(136003)(376002)(396003)(366004)(346002)(451199015)(8676002)(41300700001)(316002)(66946007)(66556008)(37006003)(2616005)(66476007)(4326008)(82960400001)(44832011)(86362001)(38100700002)(36756003)(83380400001)(5660300002)(6636002)(8936002)(6862004)(6506007)(26005)(2906002)(6512007)(186003)(6666004)(478600001)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qnfbAJ4G2rayXUczH1BNKbSveF4HbgKlHRXQ4TpLqUwjrI2a0M7eiOjomh3g?=
 =?us-ascii?Q?balXi6mFW2zK/4GIRDD3SvednZtFnKGmr7najFQyFZmBi/xbK5Ie7jOtlHSY?=
 =?us-ascii?Q?4vwO9FDzsr3XIC6QZFpqYHcI+kIwCmSiYYLB2XVoSTQFJYHLOvcm/6PQ809a?=
 =?us-ascii?Q?UgWvrESm7CSsrc3lQ52+3hHsWBjqN3o1Lr7PzH8xDh5UrZYUIJ6BqhjDN3ce?=
 =?us-ascii?Q?Tislqb08AC6OfIj5m5AYClARq1lVAgGMD19QLnRqcmR8R1bCCCqOGXVQRDOE?=
 =?us-ascii?Q?t0EQu28xBBuWsqB1LzDoHNXHsMfL+j44rEgCA8uMTQXoMOfa6HKuyLdXso+D?=
 =?us-ascii?Q?Vw0ScuHrvtLdWulL79b4LkjlNqKNbhnomHNJGP1NmgSVnSLBVycPp2al03xL?=
 =?us-ascii?Q?LzQskMaR5NRCK2rar9+OAx4CyLq+Ix260QSMShY569263QF9y0IhcVwLpIux?=
 =?us-ascii?Q?+Kluob2oZMvpKjm7U0mEusbQfAKZgMrp2aKJ3vy07PvqnRihHco3kYO9zJCE?=
 =?us-ascii?Q?hamoU2NIKCLvz42m1FMgdwW3jZW4eqgfR5+yO90NZMhMyr3G/w2KIfjfV2oD?=
 =?us-ascii?Q?5eN2ri5MuTjgrb3SmQsU/qvKJ4wTad3vrJFFSDUAU9qQfrlsPCwLFUxrI38U?=
 =?us-ascii?Q?MooZ6Y+mGYRe8eFrLU5X5Xm6eYWy0f4ziIrQYbRNT8yAxzpCnIXBKTM3tzw5?=
 =?us-ascii?Q?/jYSRPLXbQNz81BrpLqBTPqaw9eCUOtgCeEV74rdvg0xaJpKspLj9DxiDmEs?=
 =?us-ascii?Q?FwyzquzyXQMU7WZOZjmptfb6p9OCtnIv0RnbWk0yg1XvRjLqJjA6Unjp/C5f?=
 =?us-ascii?Q?xOBjJG/6iqCNfnF8FgvSflFiN0ajOMio82a6hvI5E5cZEcOctK1pHowGljrB?=
 =?us-ascii?Q?oxy4kHriunil1XUDNx3Vb0/bg7ulUjCfEr5sTFiSa4w4wT2bLll7byKd2yG3?=
 =?us-ascii?Q?59aHCht9IUL3oyXZeOaGQLyfCzgq07Ypox0da5UCW9jtE6psIAkTQmELHP5g?=
 =?us-ascii?Q?PAUjl0aslNskLdxN7dRvJAoPFmNODOSwPBVyWch+oJhMrZ0at/25Icw6g0W/?=
 =?us-ascii?Q?anoVUikzC5CRHWRduEqi+wx82WyPulsGUjBhACwUNV5oyDNJCybxo1vVzZCO?=
 =?us-ascii?Q?YuXkSblFUfail1rcG9VRWjMB7Fdr0Pi4FPXe1SJDjsjCpcU2xwwOvSf5yMCg?=
 =?us-ascii?Q?BnQEpz1VeQjHBrXPNmkE56j/pXQmouM+wzRugyCXgAn/wHuqXf4zIZh31EtD?=
 =?us-ascii?Q?5futuxUaOcfmtIWlQfyAK2CGFgEd12oSHltdoZo0JO66ZyHsR+ugvsqwDUti?=
 =?us-ascii?Q?BxHoC05AtCQd87B0mp8UxJV5BS+789c8ptUZXMJX3mh1+IaI+KHi9h0B2P94?=
 =?us-ascii?Q?Qljeh2qR/pqRoqQFCFiIszRXmHz4AQMBmQ+Yrez92hvKTYd0o1a0Ts9Uax+J?=
 =?us-ascii?Q?/W8ACEbTEOWl/5yLcMS5ysINxZuZVby+rYvBFtGhQIPc+dSrDTuR9KGwTmtl?=
 =?us-ascii?Q?c0xPQpTMp0gHlZE+NLSDWJiKFJFRsczCIxHI0rb31bBVojmN323mJFXyQny6?=
 =?us-ascii?Q?dmY3w6l+vWVY7yBF1gQW7vWAj1WuP/K4VA4ZWpq4LHcjt3yDfPVQ9R3j/i5O?=
 =?us-ascii?Q?sA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cd7cedaf-fa1a-42a8-6bf0-08daeffa56cc
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jan 2023 15:26:10.6727 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: f8oLbYkEWvcnKtBeg+bUL4L4Eu4Mf9lUbuaxMuuqGQa+DvTR4noWwzIyY4PnwonoQol2AvSeHLRzkatAwlpGvg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6370
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 4/9] drm/i915/display/phys: use
 intel_de_rmw if possible
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 05, 2023 at 02:10:41PM +0100, Andrzej Hajda wrote:
> The helper makes the code more compact and readable.
> 
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_combo_phy.c    | 43 +++++-----------
>  drivers/gpu/drm/i915/display/intel_dpio_phy.c | 51 ++++++-------------
>  2 files changed, 29 insertions(+), 65 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
> index 8b870b2dd4f9d9..27e98eabb0060a 100644
> --- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
> @@ -78,14 +78,11 @@ static void icl_set_procmon_ref_values(struct drm_i915_private *dev_priv,
>  				       enum phy phy)
>  {
>  	const struct icl_procmon *procmon;
> -	u32 val;
>  
>  	procmon = icl_get_procmon_ref_values(dev_priv, phy);
>  
> -	val = intel_de_read(dev_priv, ICL_PORT_COMP_DW1(phy));
> -	val &= ~((0xff << 16) | 0xff);
> -	val |= procmon->dw1;
> -	intel_de_write(dev_priv, ICL_PORT_COMP_DW1(phy), val);
> +	intel_de_rmw(dev_priv, ICL_PORT_COMP_DW1(phy),
> +		     (0xff << 16) | 0xff, procmon->dw1);
>  
>  	intel_de_write(dev_priv, ICL_PORT_COMP_DW9(phy), procmon->dw9);
>  	intel_de_write(dev_priv, ICL_PORT_COMP_DW10(phy), procmon->dw10);
> @@ -267,7 +264,6 @@ void intel_combo_phy_power_up_lanes(struct drm_i915_private *dev_priv,
>  				    int lane_count, bool lane_reversal)
>  {
>  	u8 lane_mask;
> -	u32 val;
>  
>  	if (is_dsi) {
>  		drm_WARN_ON(&dev_priv->drm, lane_reversal);
> @@ -308,10 +304,8 @@ void intel_combo_phy_power_up_lanes(struct drm_i915_private *dev_priv,
>  		}
>  	}
>  
> -	val = intel_de_read(dev_priv, ICL_PORT_CL_DW10(phy));
> -	val &= ~PWR_DOWN_LN_MASK;
> -	val |= lane_mask;
> -	intel_de_write(dev_priv, ICL_PORT_CL_DW10(phy), val);
> +	intel_de_rmw(dev_priv, ICL_PORT_CL_DW10(phy),
> +		     PWR_DOWN_LN_MASK, lane_mask);
>  }
>  
>  static void icl_combo_phys_init(struct drm_i915_private *dev_priv)
> @@ -366,19 +360,13 @@ static void icl_combo_phys_init(struct drm_i915_private *dev_priv)
>  
>  		icl_set_procmon_ref_values(dev_priv, phy);
>  
> -		if (phy_is_master(dev_priv, phy)) {
> -			val = intel_de_read(dev_priv, ICL_PORT_COMP_DW8(phy));
> -			val |= IREFGEN;
> -			intel_de_write(dev_priv, ICL_PORT_COMP_DW8(phy), val);
> -		}
> -
> -		val = intel_de_read(dev_priv, ICL_PORT_COMP_DW0(phy));
> -		val |= COMP_INIT;
> -		intel_de_write(dev_priv, ICL_PORT_COMP_DW0(phy), val);
> +		if (phy_is_master(dev_priv, phy))
> +			intel_de_rmw(dev_priv, ICL_PORT_COMP_DW8(phy),
> +				     0, IREFGEN);
>  
> -		val = intel_de_read(dev_priv, ICL_PORT_CL_DW5(phy));
> -		val |= CL_POWER_DOWN_ENABLE;
> -		intel_de_write(dev_priv, ICL_PORT_CL_DW5(phy), val);
> +		intel_de_rmw(dev_priv, ICL_PORT_COMP_DW0(phy), 0, COMP_INIT);
> +		intel_de_rmw(dev_priv, ICL_PORT_CL_DW5(phy),
> +			     0, CL_POWER_DOWN_ENABLE);
>  	}
>  }
>  
> @@ -387,8 +375,6 @@ static void icl_combo_phys_uninit(struct drm_i915_private *dev_priv)
>  	enum phy phy;
>  
>  	for_each_combo_phy_reverse(dev_priv, phy) {
> -		u32 val;
> -
>  		if (phy == PHY_A &&
>  		    !icl_combo_phy_verify_state(dev_priv, phy)) {
>  			if (IS_TIGERLAKE(dev_priv) || IS_DG1(dev_priv)) {
> @@ -410,14 +396,11 @@ static void icl_combo_phys_uninit(struct drm_i915_private *dev_priv)
>  		if (!has_phy_misc(dev_priv, phy))
>  			goto skip_phy_misc;
>  
> -		val = intel_de_read(dev_priv, ICL_PHY_MISC(phy));
> -		val |= ICL_PHY_MISC_DE_IO_COMP_PWR_DOWN;
> -		intel_de_write(dev_priv, ICL_PHY_MISC(phy), val);
> +		intel_de_rmw(dev_priv, ICL_PHY_MISC(phy), 0,
> +			     ICL_PHY_MISC_DE_IO_COMP_PWR_DOWN);
>  
>  skip_phy_misc:
> -		val = intel_de_read(dev_priv, ICL_PORT_COMP_DW0(phy));
> -		val &= ~COMP_INIT;
> -		intel_de_write(dev_priv, ICL_PORT_COMP_DW0(phy), val);
> +		intel_de_rmw(dev_priv, ICL_PORT_COMP_DW0(phy), COMP_INIT, 0);
>  	}
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
> index 7eb7440b31803f..9d825fdaa29055 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
> @@ -389,9 +389,7 @@ static void _bxt_ddi_phy_init(struct drm_i915_private *dev_priv,
>  			"force reprogramming it\n", phy);
>  	}
>  
> -	val = intel_de_read(dev_priv, BXT_P_CR_GT_DISP_PWRON);
> -	val |= phy_info->pwron_mask;
> -	intel_de_write(dev_priv, BXT_P_CR_GT_DISP_PWRON, val);
> +	intel_de_rmw(dev_priv, BXT_P_CR_GT_DISP_PWRON, 0, phy_info->pwron_mask);
>  
>  	/*
>  	 * The PHY registers start out inaccessible and respond to reads with
> @@ -410,27 +408,19 @@ static void _bxt_ddi_phy_init(struct drm_i915_private *dev_priv,
>  			phy);
>  
>  	/* Program PLL Rcomp code offset */
> -	val = intel_de_read(dev_priv, BXT_PORT_CL1CM_DW9(phy));
> -	val &= ~IREF0RC_OFFSET_MASK;
> -	val |= 0xE4 << IREF0RC_OFFSET_SHIFT;
> -	intel_de_write(dev_priv, BXT_PORT_CL1CM_DW9(phy), val);
> +	intel_de_rmw(dev_priv, BXT_PORT_CL1CM_DW9(phy), IREF0RC_OFFSET_MASK,
> +		     0xE4 << IREF0RC_OFFSET_SHIFT);
>  
> -	val = intel_de_read(dev_priv, BXT_PORT_CL1CM_DW10(phy));
> -	val &= ~IREF1RC_OFFSET_MASK;
> -	val |= 0xE4 << IREF1RC_OFFSET_SHIFT;
> -	intel_de_write(dev_priv, BXT_PORT_CL1CM_DW10(phy), val);
> +	intel_de_rmw(dev_priv, BXT_PORT_CL1CM_DW10(phy), IREF1RC_OFFSET_MASK,
> +		     0xE4 << IREF1RC_OFFSET_SHIFT);
>  
>  	/* Program power gating */
> -	val = intel_de_read(dev_priv, BXT_PORT_CL1CM_DW28(phy));
> -	val |= OCL1_POWER_DOWN_EN | DW28_OLDO_DYN_PWR_DOWN_EN |
> -		SUS_CLK_CONFIG;
> -	intel_de_write(dev_priv, BXT_PORT_CL1CM_DW28(phy), val);
> -
> -	if (phy_info->dual_channel) {
> -		val = intel_de_read(dev_priv, BXT_PORT_CL2CM_DW6(phy));
> -		val |= DW6_OLDO_DYN_PWR_DOWN_EN;
> -		intel_de_write(dev_priv, BXT_PORT_CL2CM_DW6(phy), val);
> -	}
> +	intel_de_rmw(dev_priv, BXT_PORT_CL1CM_DW28(phy), 0,
> +		     OCL1_POWER_DOWN_EN | DW28_OLDO_DYN_PWR_DOWN_EN | SUS_CLK_CONFIG);
> +
> +	if (phy_info->dual_channel)
> +		intel_de_rmw(dev_priv, BXT_PORT_CL2CM_DW6(phy), 0,
> +			     DW6_OLDO_DYN_PWR_DOWN_EN);
>  
>  	if (phy_info->rcomp_phy != -1) {
>  		u32 grc_code;
> @@ -448,34 +438,25 @@ static void _bxt_ddi_phy_init(struct drm_i915_private *dev_priv,
>  			   val << GRC_CODE_SLOW_SHIFT |
>  			   val;
>  		intel_de_write(dev_priv, BXT_PORT_REF_DW6(phy), grc_code);
> -
> -		val = intel_de_read(dev_priv, BXT_PORT_REF_DW8(phy));
> -		val |= GRC_DIS | GRC_RDY_OVRD;
> -		intel_de_write(dev_priv, BXT_PORT_REF_DW8(phy), val);
> +		intel_de_rmw(dev_priv, BXT_PORT_REF_DW8(phy),
> +			     0, GRC_DIS | GRC_RDY_OVRD);
>  	}
>  
>  	if (phy_info->reset_delay)
>  		udelay(phy_info->reset_delay);
>  
> -	val = intel_de_read(dev_priv, BXT_PHY_CTL_FAMILY(phy));
> -	val |= COMMON_RESET_DIS;
> -	intel_de_write(dev_priv, BXT_PHY_CTL_FAMILY(phy), val);
> +	intel_de_rmw(dev_priv, BXT_PHY_CTL_FAMILY(phy), 0, COMMON_RESET_DIS);
>  }
>  
>  void bxt_ddi_phy_uninit(struct drm_i915_private *dev_priv, enum dpio_phy phy)
>  {
>  	const struct bxt_ddi_phy_info *phy_info;
> -	u32 val;
>  
>  	phy_info = bxt_get_phy_info(dev_priv, phy);
>  
> -	val = intel_de_read(dev_priv, BXT_PHY_CTL_FAMILY(phy));
> -	val &= ~COMMON_RESET_DIS;
> -	intel_de_write(dev_priv, BXT_PHY_CTL_FAMILY(phy), val);
> +	intel_de_rmw(dev_priv, BXT_PHY_CTL_FAMILY(phy), COMMON_RESET_DIS, 0);
>  
> -	val = intel_de_read(dev_priv, BXT_P_CR_GT_DISP_PWRON);
> -	val &= ~phy_info->pwron_mask;
> -	intel_de_write(dev_priv, BXT_P_CR_GT_DISP_PWRON, val);
> +	intel_de_rmw(dev_priv, BXT_P_CR_GT_DISP_PWRON, phy_info->pwron_mask, 0);
>  }
>  
>  void bxt_ddi_phy_init(struct drm_i915_private *dev_priv, enum dpio_phy phy)
> -- 
> 2.34.1
> 
