Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC0AD76102C
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jul 2023 12:04:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97EA010E08A;
	Tue, 25 Jul 2023 10:04:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA2A110E08A
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jul 2023 10:04:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690279488; x=1721815488;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=HXPeyObRqsK6tI/2NGH7VOpJeb+aJnZDmjiR0CiXk5E=;
 b=ltQp+qzXEfTg0UimwHak9Jks5pKRwEM21szDp+Or9UHHIY9mb1nJoG41
 5EjBqes/gdGAOywHt3J19EvlkEPAi/8xT4Dy9jx1rGCR2XGSMD5/3hZpu
 muo95pY3VaSgoBkU0tvGYXHl3AHj05yB+qU7rWm8WyEnwFCjeqMI33Lc+
 Zww5pmxmGchpgTclHb4/tdWldCmu4L+WPWFQ+T+fDyJhP0AvYiXRrs/Tg
 Hds+o4dQLQbOiVcGNynqveiCv0lhl6e+Gp1LPaJ76AtsRYlJQsoCh9RIv
 2M50R5WBrEuFUUCoyrzu3aOZ1p7iEiKXuwd7pjP/AfCVnzrV/1e1/obxm w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="431476911"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="431476911"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 03:04:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="839815557"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="839815557"
Received: from kshutemo-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.249.37.237])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 03:04:45 -0700
Date: Tue, 25 Jul 2023 12:04:43 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <ZL+eO0t6K8IRcsiD@ashyti-mobl2.lan>
References: <20230725001312.1907319-11-matthew.d.roper@intel.com>
 <20230725001312.1907319-15-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230725001312.1907319-15-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 4/9] drm/i915: Eliminate
 IS_MTL_GRAPHICS_STEP
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

Hi Matt,

> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -436,6 +436,9 @@ static inline struct intel_gt *to_gt(struct drm_i915_private *i915)
>  #define __GT_VER_FULL(gt) (__IS_MEDIA_GT(gt) ? \
>  			   MEDIA_VER_FULL((gt)->i915) : \
>  			   GRAPHICS_VER_FULL((gt)->i915))
> +#define __GT_STEP(gt) (__IS_MEDIA_GT(gt) ? \
> +		       INTEL_MEDIA_STEP((gt)->i915) : \
> +		       INTEL_GRAPHICS_STEP((gt)->i915))
>  
>  /*
>   * Check that a GT contains IP of the specified type and within the specified
> @@ -454,6 +457,29 @@ static inline struct intel_gt *to_gt(struct drm_i915_private *i915)
>  	 __GT_VER_FULL(gt) >= (from) && \
>  	 __GT_VER_FULL(gt) <= (until)))
>  
> +/*
> + * Check whether a GT contains the specific IP version and a stepping within
> + * the specified range [from, until).  The lower stepping bound is inclusive,
> + * the upper bound is exclusive (corresponding to the first hardware stepping
> + * at when the workaround is no longer needed).  E.g.,
> + *
> + *    IS_GT_IP_STEP(GFX, IP_VER(12, 70), A0, B0)
> + *    IS_GT_IP_STEP(MEDIA, IP_VER(13, 00), B1, D0)
> + *    IS_GT_IP_STEP(GFX, IP_VER(12, 71), B1, FOREVER)
> + *
> + * "FOREVER" can be passed as the upper stepping bound for workarounds that
> + * have no upper bound on steppings of the specified IP version.
> + *
> + * Note that media version checks with this macro will only work on platforms
> + * with standalone media design (i.e., media version 13 and higher).
> + */
> +#define IS_GT_IP_STEP(type, gt, ipver, since, until) \
> +	(BUILD_BUG_ON_ZERO(ipver < IP_VER(2, 0)) + \
> +	 (__IS_##type##_GT(gt) && \
> +	  __GT_VER_FULL(gt) == ipver && \
> +	  __GT_STEP(gt) >= STEP_##since && \
> +	  __GT_STEP(gt) <= STEP_##until))
> +

Should this go in intel_gt.h?

>  #define MEDIA_VER(i915)			(RUNTIME_INFO(i915)->media.ip.ver)
>  #define MEDIA_VER_FULL(i915)		IP_VER(RUNTIME_INFO(i915)->media.ip.ver, \
>  					       RUNTIME_INFO(i915)->media.ip.rel)
> @@ -710,10 +736,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define IS_XEHPSDV_GRAPHICS_STEP(__i915, since, until) \
>  	(IS_XEHPSDV(__i915) && IS_GRAPHICS_STEP(__i915, since, until))
>  
> -#define IS_MTL_GRAPHICS_STEP(__i915, variant, since, until) \
> -	(IS_SUBPLATFORM(__i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_##variant) && \
> -	 IS_GRAPHICS_STEP(__i915, since, until))
> -

For completeness I would either leave this or remove all the
above. Or I would make this a wrapper around IS_GT_IP_STEP() with
a compile error if we are outside the MTL range.

Andi

>  #define IS_MTL_DISPLAY_STEP(__i915, since, until) \
>  	(IS_METEORLAKE(__i915) && \
>  	 IS_DISPLAY_STEP(__i915, since, until))
> -- 
> 2.41.0
