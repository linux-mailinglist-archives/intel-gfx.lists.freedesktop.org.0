Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C47774BD7
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Aug 2023 22:58:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 499CD10E0F9;
	Tue,  8 Aug 2023 20:58:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 099CA10E0E8
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Aug 2023 20:58:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691528323; x=1723064323;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=lBTSU1YGwKO3paD4RL/J6GX1MUTWk7Fnos8vR+5G2cY=;
 b=MsinDcZjr6liD4lNEmybsXdvVom0TKTE1bTgKsOxAgoV2zsdN+RpWJKv
 ClRaIXPkMx80VGq2nfKKWxgp24Vz30g0XzJvJRCoM5hbeMO/CQNtsNERc
 P5FTTD4+ZUus0t8W9RXacSRHzjowr+qwmDogigQ8JeVXVfxHyCr/tqdbi
 WRDVWMg62BRo5Ls7OhW6mVG/fpeZAFF7Qwi2QiCEnz6On775yE5hjCDXB
 vhiVluNsq+tOe3m0NHVIFflvMAcgVIVrjQQZ/5ujme7i0m4f9/GjNV0+Z
 UNY3jMsnQT547b4cCJvZQwONRx1iNNm9tbengPov5dFEUsOeXiPD7XYTr Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="351261471"
X-IronPort-AV: E=Sophos;i="6.01,157,1684825200"; d="scan'208";a="351261471"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2023 13:58:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="801473195"
X-IronPort-AV: E=Sophos;i="6.01,157,1684825200"; d="scan'208";a="801473195"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP; 08 Aug 2023 13:58:30 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 8 Aug 2023 13:58:18 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 8 Aug 2023 13:58:17 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 8 Aug 2023 13:58:17 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 8 Aug 2023 13:58:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JcTpv/eHVm9wg51fFPrFI2BI2937Wu7T2mC3JpR+Iet4zebczDvM5eUnv3H+sELXeh+tdq6ZDL4wln4su+L/6H9yqIS8fpU0GfRxUrE5lG3G8xuJMd9XHQPQBaBcaSUcoaCdaugMPjFHPEQlEyVCdriY2JRHCGhXxCE5G0B7Ubm+WeDrtWvp9jqqslzoewwIWoCoazu90yI328fKXi9PqvB652GHePaq8ZbmsdZKlQBtpTacw4uh6noAjnbXoakXH2RqNtYMr86+ka5vBMY6ARYoE7ThN4GRi30pFaWicE4BNkTZrIqxh7FR3oLDXNAaOMXygC7ij0aGy9oP/c4fBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V3vwPKOIbyzAakvN0P75M027PvQGARY0uxNO1Kr1XyE=;
 b=jqjxNgFMKPEOt3/pbheXrMfBK7E4UzwE4kUxrOtu2eMgGL55ycSRRIceaR934EPRW9bw/UMmehVHsPwN/Ut5yqtH5ZcPWtx0hxLlhBdq7tX4AGFXwipfGFhl5nfXFTtoAtM5lySgJc5RrtUOkc6/0BsTn1T/VWmGlPiwGZKMyXPny+qqM52HU1/H4OzoIFS/hhzm6QN9USQhRNKjOYfxCIj6Y5HJUKGxactL2hJ6zLJyTvGUOHnGbqZWWhKcKHSBPDLT8jv1TJZWqxJxP59xnWOtfOOVqTWF+szbWlH7/WNbnZ7taRWz7bKs8gi7vKejQE0M3MKSJyaSLbJ0sXMfMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH0PR11MB4872.namprd11.prod.outlook.com (2603:10b6:510:32::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.27; Tue, 8 Aug
 2023 20:58:15 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294%5]) with mapi id 15.20.6652.026; Tue, 8 Aug 2023
 20:58:15 +0000
Date: Tue, 8 Aug 2023 16:58:12 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZNKsZD7z3JXsnwYP@intel.com>
References: <cover.1691509966.git.jani.nikula@intel.com>
 <45c247c9f5104f3e25bd8913644402a11ec3afaf.1691509966.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <45c247c9f5104f3e25bd8913644402a11ec3afaf.1691509966.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0275.namprd03.prod.outlook.com
 (2603:10b6:a03:39e::10) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH0PR11MB4872:EE_
X-MS-Office365-Filtering-Correlation-Id: ac6bf4d5-2e55-4b9f-1671-08db98522f72
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vhfKzIh9+0vqn419NzFX2RDIvaohVfZz3r4QCiNBs0ojkUPE66QS3r7T1nbw7lC9GNLC5OcT/4/yWDgTiUnwXhyLsRuSfgetufDMSCmINgYQf5j1XDvxyVM7siJlTDRERiCzrvtpXBCGn9IpoQNw1l/QYgN5E2Rj2Lr8eY2JEr/Z3xRcu4jynvZdC0Af6StVVWp4h/7VKwqYR5j8iVKnr0qCipvOANWbKGtxCWVn1w0fGbRYJem2znoEEG+6m03cHJ9dnFF831OAW47i48BVRz6yPjefBhVxs/fUsZPp/K9mEJs47tq8plGlVvS6Ip29jeoAbSdCne/vbg3qb6IWF3hWwOrXskiH5ZCKGOjJyA/9VgrTmrS+gxJqfag5rGqjGWmwGsdXeEA+tXNFiJuAjpvLJj1ezQoIuqQKIb05zKH5AJCy0ho+M/awGGcF/mm0cpS0wLPMmTOoWu5Xr/6pnDINix5TffxDga1rCqgjxC7oC7o+Ws0CFMb7vy+WgvvE2Ru1uEIz3ZSm4YGL2S9JoKdg/UA8n6qBeJjzpheW8IwrrgfEgUyVRDGxbzUAnqWo
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(346002)(39860400002)(396003)(136003)(376002)(1800799003)(186006)(451199021)(2616005)(36756003)(6506007)(26005)(6486002)(6512007)(6666004)(478600001)(82960400001)(37006003)(38100700002)(66946007)(66476007)(66556008)(6636002)(4326008)(316002)(41300700001)(6862004)(8676002)(5660300002)(44832011)(8936002)(2906002)(83380400001)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?edZ0Kh2JQA6AC8gu+u+9JQcv8uwsIErsCQcPjRfQgRXJJS/SIgYU0gFgQcfT?=
 =?us-ascii?Q?r6t6MMDyKr3sfKpoyiZe7lTXZTW+bsDkxYID8iKgDP592WsPqGHxKCOU2uZ9?=
 =?us-ascii?Q?u69CRGRL1acNZyx03p/jGB+9Noul6SkkBG4T5uyfNjY4ejGySUjPB8YrF7BK?=
 =?us-ascii?Q?DKWS2o2GVbc2lJE2hiZR3Q+/F2TZMWrFhVY+h0wh3olzBmZghvOzu7zYvuDo?=
 =?us-ascii?Q?+szpw0L9Y+iPx6YrrpbQumijb6SKM01ldHRJ5XuqbWd6UrJcvSFfqG5vhdhR?=
 =?us-ascii?Q?JXtv26gO2Cv0hWxv+knejmiTKVVFHGB1sMgeoyogFzHJvQXD0Yogvq3xH1HM?=
 =?us-ascii?Q?JGMcjWBJjwwOvHhO24sqJ467goe8CZZ+VxGhItSJ4+HfzD5PcggoYGJAdtfW?=
 =?us-ascii?Q?MQPRraAi4qIfuvRV79i3GOVknMgR5he0rzLri9WULxMoqUUlFM6yGfJyw68G?=
 =?us-ascii?Q?AZ0Ovu3KeglJenYwzEJy24Q9eJBSi8r9srXaxeteU90IAI9KdpYRHgU/578s?=
 =?us-ascii?Q?BKEP6JTS05fKeAllsrhMsiA0qC88l6zSgctQ3t+GtitQqKFRRZ+wWId0sS6n?=
 =?us-ascii?Q?fBSlYEVDJumgYlhucJFE6ky4F3Z5U1MPIMRD9UshtujigxcvR9PD8p3uYVhY?=
 =?us-ascii?Q?EMpBAmyp186DtWKa0TAI/hA/JGLUa5wwemRoe3ZAhMaAN/FsPpsfoZPYO+kd?=
 =?us-ascii?Q?Vojq9IqeB0BQfLp0wdwG/DsZGFJiJyDDVkROpsN15BmbYw40+lJGHP1SXwAC?=
 =?us-ascii?Q?wBUoZ4slKsGd49/ONnVSnnz6hyF15E8Bobo8xS+N+4pco8EzsEHHqEG5hjTb?=
 =?us-ascii?Q?UWkzKSuip5VfYBb3uPf1vvpLXRVE5xInTHw+hFHZ7npJFXNd81nve5xcR0tP?=
 =?us-ascii?Q?3W8QZLfu3TmOdM94iFwS0F+Ud+/h8Jlu91CiXF4hsovcoy/ZDvJza8ETzBMg?=
 =?us-ascii?Q?X1TnvrcIwVZ8fDY8q0iZAZKAOyjiRC3HJ6q86I1XP86DnrZYUTxv8CnK/SWZ?=
 =?us-ascii?Q?0CNcvPgX0Ep0AAh5QcndLTZXngbK8cWLBvoIBSg6rDMsIDuPjEC+EzLFEdOP?=
 =?us-ascii?Q?+9Ni/jNjby3dDU1M+E+WstZNul4UVakDnSYxtjsXSU2hJ3JyaXMxY4ut9W0w?=
 =?us-ascii?Q?SucULhDx3aazEtN85ljOW67RYjRGKFMICTQvBO12GdoNGNnIztOp8Wx/tn/7?=
 =?us-ascii?Q?6piRgfKVb96UdttLokaNKic3dPfRgul2KNbNK6t4vTQmyU4cPo/157NTIhtq?=
 =?us-ascii?Q?PTCJzYP+FJVDbcyxnq3th65kyJqf1i4XbprC6ARJo/fW/XKdB+gA9d3/lFS4?=
 =?us-ascii?Q?nG91cASl/xkhK87aNCScpracI79eGK2K/l6telyOqjfFi2Vl/Q3aMk/4ZI7b?=
 =?us-ascii?Q?iKTlNtYDHg+WmWHY/3UYbPZbIIe1yp+72YupbpvZlsV1gLa2ODWNk88SH6U5?=
 =?us-ascii?Q?AsT5r/t2UeP0PrZszbqPVL+Y5Ub3Jf2ktdAmzBJmDqaT81ivcTuZlDxvXq1S?=
 =?us-ascii?Q?Pu3bntHmJ49cFiGqVYuV34NODdWvARFNDtWJ1Dsb1vIiVSDSKGpYkXxgAv9j?=
 =?us-ascii?Q?eCqghzekapoV6dlBtbg0rSAXmveI8OpdfcWuhSycvVPiOyCHx3geRLHSk9Ny?=
 =?us-ascii?Q?Lg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ac6bf4d5-2e55-4b9f-1671-08db98522f72
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Aug 2023 20:58:15.8037 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gwZ5fhevP+Ix4LVgj4rlh4bwO5q16WmtIEo8UAO6gwJrpQ/gN1OIKy8kv97KzLDFQYjYLE1H/HLnVEY3EZekOw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4872
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/irq: add dedicated
 intel_display_irq_init()
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

On Tue, Aug 08, 2023 at 06:53:28PM +0300, Jani Nikula wrote:
> Continue splitting display from the rest.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_driver.c |  2 ++
>  .../gpu/drm/i915/display/intel_display_irq.c    | 17 +++++++++++++++++
>  .../gpu/drm/i915/display/intel_display_irq.h    |  2 ++
>  drivers/gpu/drm/i915/i915_irq.c                 | 17 -----------------
>  4 files changed, 21 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index b909814ae02b..8f144d4d3c39 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -28,6 +28,7 @@
>  #include "intel_crtc.h"
>  #include "intel_display_debugfs.h"
>  #include "intel_display_driver.h"
> +#include "intel_display_irq.h"
>  #include "intel_display_power.h"
>  #include "intel_display_types.h"
>  #include "intel_dkl_phy.h"
> @@ -177,6 +178,7 @@ void intel_display_driver_early_probe(struct drm_i915_private *i915)
>  	if (!HAS_DISPLAY(i915))
>  		return;
>  
> +	intel_display_irq_init(i915);

nice clean up, even the order of the calls stayed absolutely the same


Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

>  	intel_dkl_phy_init(i915);
>  	intel_color_init_hooks(i915);
>  	intel_init_cdclk_hooks(i915);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index e6f172cc665a..168f6d4ce208 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -1699,3 +1699,20 @@ void gen11_de_irq_postinstall(struct drm_i915_private *dev_priv)
>  			   GEN11_DISPLAY_IRQ_ENABLE);
>  }
>  
> +void intel_display_irq_init(struct drm_i915_private *i915)
> +{
> +	i915->drm.vblank_disable_immediate = true;
> +
> +	/*
> +	 * Most platforms treat the display irq block as an always-on power
> +	 * domain. vlv/chv can disable it at runtime and need special care to
> +	 * avoid writing any of the display block registers outside of the power
> +	 * domain. We defer setting up the display irqs in this case to the
> +	 * runtime pm.
> +	 */
> +	i915->display_irqs_enabled = true;
> +	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
> +		i915->display_irqs_enabled = false;
> +
> +	intel_hotplug_irq_init(i915);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
> index 874893f4f16d..8a2d069d3aac 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
> @@ -78,4 +78,6 @@ void i965_pipestat_irq_handler(struct drm_i915_private *i915, u32 iir, u32 pipe_
>  void valleyview_pipestat_irq_handler(struct drm_i915_private *i915, u32 pipe_stats[I915_MAX_PIPES]);
>  void i8xx_pipestat_irq_handler(struct drm_i915_private *i915, u16 iir, u32 pipe_stats[I915_MAX_PIPES]);
>  
> +void intel_display_irq_init(struct drm_i915_private *i915);
> +
>  #endif /* __INTEL_DISPLAY_IRQ_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index 512fc0ef94a4..1723c215dcf6 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -1343,23 +1343,6 @@ void intel_irq_init(struct drm_i915_private *dev_priv)
>  	/* pre-gen11 the guc irqs bits are in the upper 16 bits of the pm reg */
>  	if (HAS_GT_UC(dev_priv) && GRAPHICS_VER(dev_priv) < 11)
>  		to_gt(dev_priv)->pm_guc_events = GUC_INTR_GUC2HOST << 16;
> -
> -	if (!HAS_DISPLAY(dev_priv))
> -		return;
> -
> -	dev_priv->drm.vblank_disable_immediate = true;
> -
> -	/* Most platforms treat the display irq block as an always-on
> -	 * power domain. vlv/chv can disable it at runtime and need
> -	 * special care to avoid writing any of the display block registers
> -	 * outside of the power domain. We defer setting up the display irqs
> -	 * in this case to the runtime pm.
> -	 */
> -	dev_priv->display_irqs_enabled = true;
> -	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> -		dev_priv->display_irqs_enabled = false;
> -
> -	intel_hotplug_irq_init(dev_priv);
>  }
>  
>  /**
> -- 
> 2.39.2
> 
