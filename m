Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BD0865F520
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jan 2023 21:21:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7644710E813;
	Thu,  5 Jan 2023 20:21:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F9DB10E813
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Jan 2023 20:21:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672950109; x=1704486109;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=6pwA7J797frMcOO4RGMeYOtVPV4L1Kn/Mm16woe38BY=;
 b=LRTGu30mBcDMfRs9DrpXRWlDwXCfRb7O9Vms6jFOSNrTG7Ney4PADeaI
 KEkN9PH7eG6SKDfiMZrtxRTkMR6yYH2OBItlQRijBvHy+4HUP3STdEHkD
 dZuw5DrjY2L+M8V0giWBxy1IqG57NkbwU0d0S7YAXQ68LPhs6pbXkBBNj
 5kcQ9zFOGJ/Swatsk9EyKECJOKjM4lW+kkqe2bkr3NGl8LJbzbdqRjB8Z
 cSSKRI9OW6wnMWnh0/f8aQKtWSUG8Omf15LqbJkJrUbl/sTdDxCeLWgMD
 VFV2ECXdwMKdQaf4HUfa8pv0U2WOpQ+lNKOy5B3RFOaPURdj0toe87yKQ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="321027349"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="321027349"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 12:21:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="649072405"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="649072405"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP; 05 Jan 2023 12:21:48 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 5 Jan 2023 12:21:48 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 5 Jan 2023 12:21:48 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 5 Jan 2023 12:21:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FY+UZlESZMRTk6Ch+SO3otZwfTaOb69npmtaR1EtyeWeDCIjvyJFiaQYWyFmCgdgtiQB77fsAIIacVKfwjlZhdKJLAZhNfa6EanJoWVikNtb+fDRSwxQIVx2oaRI71DNtKeWVnjXc5GPPqCbmQJ0Txu9vK35gNwDSbHKkE6LOa/6FGlXHlGBfsMxl1DiZQCOruybuxVg145FmbOxz7lj4ouPjzAS6Ql++VGIZjxj+f9bxkDf5xlZDHXCBWx7bxN+aPW2UNFWm3J2jlHJkEQjRUTu6H+iyvyfCWH/YT9l6wLYHu6CuXC2JJuPtpfgxwHw7TpxBMM5QHxwgsvcQCG71Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xNNUDSks8QT5iGmdkPXnhUQ5HFLJs+D0xRegXc11Yb4=;
 b=XZUYfoP5hp9dLW+qxLehgHmT0ai2co6akTENdlmJbRAea3iXjVgNrrzYVcFzrTF0RAkA4SJ0ItmtGiffh7CbprrzVuceQefzsvZEMwmqsAOKEWbHmcdBRy5m1fRq2Vddc6xMnrId6bu531w1aVpykR6GCFQSvTAtAGzzL9aqwLAG1Miybss3y2FaJW1x+WgPMq5KY2jLHnSqbb3gT90SdSNGIJ8CrfnmkVWQY/NRzR/GZ698jmUmduf5MUp15A2aYmkFLW+XuMU42cCIdwxlUyy7SbGs3Jd+VI2/t1IzuVGVKC7Xv/41eGn4onm9mskMbt6rWUQlTrKdyTTuifsv1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH7PR11MB6380.namprd11.prod.outlook.com (2603:10b6:510:1f8::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Thu, 5 Jan
 2023 20:21:44 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808%8]) with mapi id 15.20.5944.019; Thu, 5 Jan 2023
 20:21:44 +0000
Date: Thu, 5 Jan 2023 15:21:39 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <Y7cxU0t09XEEr3Dq@intel.com>
References: <20230105131046.2173431-1-andrzej.hajda@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230105131046.2173431-1-andrzej.hajda@intel.com>
X-ClientProxiedBy: BYAPR06CA0036.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::49) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH7PR11MB6380:EE_
X-MS-Office365-Filtering-Correlation-Id: cb5c77fa-03e9-4fbc-c19e-08daef5a766b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WAmd7UH6puEsJMEdejUepEk5NNAtqc9M+4CW5gzaI2V3eONgnW3hvYaGSXFTXVb1ZWMKP1jNby2wDPKSgdi/SCqFDNQehWa0j8RGPr4GZbWaKGWJGSz1rAvj2uYksNSqgwEptmEi77MbECdZudyCzTZNWreWS08KAohBg/aBWie69qCmaglM4cK6hCiCFDI1DCwdhaORtusOiRIDrE3efIliAf+hcMHXpu3VoymwIW0cUtmPmuF0x+ivZYNf1O86fsG8UIi04yniXPisAVXJzI6rQivmqjmznS+7xZTatALw8Sbt0cCAlkJiAxP2ovkbVTKG+6K11mB0P3BPT7Zo8Yz6qu4krP1ISbHf+kE8HX/5moCfGtuW/RYUglTWgfpCGHTk8iPc0uXsTvbs+vXsmQIUr76AvJcfow3ABxFu+Izh0ERjJFQr8D6qeadCqtLo0sGF0HPp7m1QQLpW6nO1U8KWQfmo3AXz5Kyyb3aa9F+1id+kMqruZ9ctBxN3XV8NGBmzSTW41lmFXslpyUwEFMQ90t8aFvh3DEKWZXqrNOwpWT3FYsfJI4nnmKHZ5b7HtkUgSgiqNW9UZnmAd+6gDSiiTW9+g36Cyr5CzbVovJBe2HAjWCm3cbcz+BURnGjKu7nMqCFAO1P1SINlwCNi3g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(366004)(396003)(346002)(39860400002)(136003)(451199015)(5660300002)(2906002)(44832011)(8936002)(6862004)(41300700001)(4326008)(8676002)(6636002)(66946007)(66476007)(54906003)(316002)(37006003)(66556008)(6486002)(478600001)(2616005)(26005)(6666004)(83380400001)(6506007)(186003)(6512007)(38100700002)(82960400001)(86362001)(36756003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qOlU5KU58jVeGfKa/cSMjO3/Q19g2I6x7v3pFg1hD8MZVvlTOltCOw3jN0f2?=
 =?us-ascii?Q?oEv6tFUCrb4Od0TgtctEDYHP8GFvWV70Px8AlmZZlScc7QvqmQ1/AK+cAHbD?=
 =?us-ascii?Q?B5aGioYCgpEJEp3zRbVgmBEPVUb2ItHM+YNw+Oaa6UP0flNkp0cvoC6UflCh?=
 =?us-ascii?Q?Y0wm0inOgIml/uFwQDJGGzr1s+wMABlEP/QEy6MCSzeiiyHCIjmER9v4SxkV?=
 =?us-ascii?Q?cZBwkGW2uJrlS7eBdDxJzmxCxl/8Rw5z4p0OvGdDbfKsHTpoJADAsHhoBW5K?=
 =?us-ascii?Q?6knrwMN1FiC1xo/4Lndof/PPbW4MgHzXTFpYAqI+KtZeXLGCz6FQ2gnYTGYA?=
 =?us-ascii?Q?ljjDvaG4PbiO43dtVE9uQiTFPoVVptQjW2Q0c/PUGz+9BkujusH2ZfaQ2EaL?=
 =?us-ascii?Q?RGKDtI1DMsm3HudKXuFJEJ1zg2v2Vf6JgU3mC4IxnYUQM3KDKMTvKtm82+ep?=
 =?us-ascii?Q?vFBLQvlc0pmjgZxvsMbcsBxe63Tc3F3tTEBeN2Z3oOzezpIB3UJ7qF7ueG+P?=
 =?us-ascii?Q?v/v0aWi87rvAb+JmBwshOkWbr7aslq8YbXEzi51deMFOv/TkjQY81MLLYMcy?=
 =?us-ascii?Q?EZke6yiXJ6aCkgF4nMaHGhIcmJGEj/CZmJpQwFiAhayJ7ggobg3aFONTUyNB?=
 =?us-ascii?Q?+itbiy2U8ESJhHZZFPcYwN7D7h9Jg2vFcF8PMjKgDMvE0ckLSGbDy2qUgY9O?=
 =?us-ascii?Q?SxH+TOfIifvYmE0+MEoC3gWxNd8rwtGY2H0WQ/9xMuP4bznhCNYYvZR5F7MT?=
 =?us-ascii?Q?rP2PWhRoZXWGhgrKYSBYBgBj0DikYzVh/4ZJpZc0KWWRGvcu9zhwG/T5x4kf?=
 =?us-ascii?Q?gcJENcn4PZ/GUuydQosOnnId2KnbRclopkgwBKWANyOMXpj4CBYGELnbO6Xl?=
 =?us-ascii?Q?2qSLIiLDeYPHk4H2uQN6klGoDgcATcusTySPO18+rfx9+T4WkPClQOjQxd+C?=
 =?us-ascii?Q?TnFSYav1gYhSwOT0hipp8NYC4umTKf14BaXYKATOUM03d21liNVP2cKyfN57?=
 =?us-ascii?Q?+dssG0gmlkkHpBBp2JFaK4RSnOv/kxyoVLF53MdXlJlIEj9gaVOdDGVk7FuE?=
 =?us-ascii?Q?tdbVRyTqsJTpibJ1uwmZ6xfh2X5u61OjVmxwpI5mx8EkADzAcsE4OhE9bvNo?=
 =?us-ascii?Q?a7bkt1fzC2r/wjhUNaJ06bPKO4Gq68tuDzxfPFezlwqWfXzZEnG/HucYWBpx?=
 =?us-ascii?Q?KUYXLYezTfwr9oYb0rGnSdjU87Of8JGd6iUktgugt9xY2ZpRbQcPlcCIXqS4?=
 =?us-ascii?Q?gV9/V4vbqXLm3ihkZS8C4US6U0d2Z/w90HuOl/YVFsSoqxJYHV8zLl868T0B?=
 =?us-ascii?Q?tI5Er/6C/B1xYmPS1M7rlAUShqxULKzOXKkzu0B5z6Kx8kNmygQ1fpTEslzd?=
 =?us-ascii?Q?iMhAHBvCAg5GnGGyPefXSoZwRGndN6NkNlp/u/ZKjuPQyRia6crELVWNkXm2?=
 =?us-ascii?Q?Z4A1ysO6lhClosJA9cfv6yxN8lb6GCSeW5iicsDTmQFtGA+hXGK+786Dltr2?=
 =?us-ascii?Q?/8+3coLVLFcdGAv7bnVM3c7yyZhOGfHSad6MTEqewlsXUvh7cR6b+nbKH8KT?=
 =?us-ascii?Q?L8YloaVazsanNtDHmIekTq2r1aExpF+CF1GnoK4q7UeCK3sc9fei0mXzLAf+?=
 =?us-ascii?Q?5A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cb5c77fa-03e9-4fbc-c19e-08daef5a766b
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jan 2023 20:21:44.1245 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DANY8BqN9xl0RN9NiVPLryOezMj312+S45hXCwmOFV+ej1mXJmYSRlrw5+OlbJOive6bzH9Mbezyw7pnaKaz9A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6380
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/9] drm/i915/display/core: use
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

On Thu, Jan 05, 2023 at 02:10:38PM +0100, Andrzej Hajda wrote:
> The helper makes the code more compact and readable.
> 
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c  | 22 ++++++++-----------
>  .../drm/i915/display/intel_modeset_setup.c    | 17 ++++++--------
>  2 files changed, 16 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index e75b9b2a0e015a..ce506c9fd6ab9f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -293,11 +293,11 @@ static void
>  skl_wa_827(struct drm_i915_private *dev_priv, enum pipe pipe, bool enable)
>  {
>  	if (enable)
> -		intel_de_write(dev_priv, CLKGATE_DIS_PSL(pipe),
> -		               intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) | DUPS1_GATING_DIS | DUPS2_GATING_DIS);
> +		intel_de_rmw(dev_priv, CLKGATE_DIS_PSL(pipe),
> +			     0, DUPS1_GATING_DIS | DUPS2_GATING_DIS);
>  	else
> -		intel_de_write(dev_priv, CLKGATE_DIS_PSL(pipe),
> -		               intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) & ~(DUPS1_GATING_DIS | DUPS2_GATING_DIS));
> +		intel_de_rmw(dev_priv, CLKGATE_DIS_PSL(pipe),
> +			     DUPS1_GATING_DIS | DUPS2_GATING_DIS, 0);
>  }
>  
>  /* Wa_2006604312:icl,ehl */
> @@ -306,11 +306,9 @@ icl_wa_scalerclkgating(struct drm_i915_private *dev_priv, enum pipe pipe,
>  		       bool enable)
>  {
>  	if (enable)
> -		intel_de_write(dev_priv, CLKGATE_DIS_PSL(pipe),
> -		               intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) | DPFR_GATING_DIS);
> +		intel_de_rmw(dev_priv, CLKGATE_DIS_PSL(pipe), 0, DPFR_GATING_DIS);
>  	else
> -		intel_de_write(dev_priv, CLKGATE_DIS_PSL(pipe),
> -		               intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) & ~DPFR_GATING_DIS);
> +		intel_de_rmw(dev_priv, CLKGATE_DIS_PSL(pipe), DPFR_GATING_DIS, 0);
>  }
>  
>  /* Wa_1604331009:icl,jsl,ehl */
> @@ -1852,12 +1850,10 @@ static void hsw_set_frame_start_delay(const struct intel_crtc_state *crtc_state)
>  	enum transcoder transcoder = crtc_state->cpu_transcoder;
>  	i915_reg_t reg = DISPLAY_VER(dev_priv) >= 14 ? MTL_CHICKEN_TRANS(transcoder) :
>  			 CHICKEN_TRANS(transcoder);
> -	u32 val;
>  
> -	val = intel_de_read(dev_priv, reg);
> -	val &= ~HSW_FRAME_START_DELAY_MASK;
> -	val |= HSW_FRAME_START_DELAY(crtc_state->framestart_delay - 1);
> -	intel_de_write(dev_priv, reg, val);
> +	intel_de_rmw(dev_priv, reg,
> +		     HSW_FRAME_START_DELAY_MASK,
> +		     HSW_FRAME_START_DELAY(crtc_state->framestart_delay - 1));
>  }
>  
>  static void icl_ddi_bigjoiner_pre_enable(struct intel_atomic_state *state,
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> index 96395bfbd41dfb..6f6dc7c6b88b0c 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> @@ -647,17 +647,14 @@ static void intel_early_display_was(struct drm_i915_private *i915)
>  	 * Also known as Wa_14010480278.
>  	 */
>  	if (IS_DISPLAY_VER(i915, 10, 12))
> -		intel_de_write(i915, GEN9_CLKGATE_DIS_0,
> -			       intel_de_read(i915, GEN9_CLKGATE_DIS_0) | DARBF_GATING_DIS);
> +		intel_de_rmw(i915, GEN9_CLKGATE_DIS_0, 0, DARBF_GATING_DIS);
>  
> -	if (IS_HASWELL(i915)) {
> -		/*
> -		 * WaRsPkgCStateDisplayPMReq:hsw
> -		 * System hang if this isn't done before disabling all planes!
> -		 */
> -		intel_de_write(i915, CHICKEN_PAR1_1,
> -			       intel_de_read(i915, CHICKEN_PAR1_1) | FORCE_ARB_IDLE_PLANES);
> -	}
> +	/*
> +	 * WaRsPkgCStateDisplayPMReq:hsw
> +	 * System hang if this isn't done before disabling all planes!
> +	 */
> +	if (IS_HASWELL(i915))
> +		intel_de_rmw(i915, CHICKEN_PAR1_1, 0, FORCE_ARB_IDLE_PLANES);
>  
>  	if (IS_KABYLAKE(i915) || IS_COFFEELAKE(i915) || IS_COMETLAKE(i915)) {
>  		/* Display WA #1142:kbl,cfl,cml */
> -- 
> 2.34.1
> 
