Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8436B760FBE
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jul 2023 11:52:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2BF310E07F;
	Tue, 25 Jul 2023 09:52:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF1B510E07F
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jul 2023 09:52:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690278722; x=1721814722;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=dIhHhjUA0nUogzt/qZrFdEz1eX5p5+c4uUm7mELTU4A=;
 b=ixs9LvOe30yzsnYyeaz1mDa8Iu2GVX16MhxWbDu2D2DBwLfUHRyKTjiJ
 sdRJJso26JiyJH01+ad3tIb2vwLkAAFiZPL/RG7ucocgU3k+JqX/WSJNC
 TwQ4ux2naHnL+x0e4DoGJ8P/HCMLCKXZBdnHfe5sVaGwVG3tMjAzCdT2Q
 tlVzNO0h9bxbFMCFfGymjJsymuTQfr+0n90ndY1VrYrqXh8hIyOAd1qxJ
 5a+9lzDky5shpN/XipRtpDwPR3XhaSFJsQcWy3QwOdefEPzw7iC9oLLUK
 PEaBVuz7CeMDEjMrtQAvYsbZl+9IoK0KVHfR3HAOlN2d4nv8XgxP1c/+Y Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="371282094"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="371282094"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 02:52:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="729281307"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="729281307"
Received: from kshutemo-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.249.37.237])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 02:52:00 -0700
Date: Tue, 25 Jul 2023 11:51:56 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <ZL+bPE5Ui+7MVjWZ@ashyti-mobl2.lan>
References: <20230725001312.1907319-11-matthew.d.roper@intel.com>
 <20230725001312.1907319-14-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230725001312.1907319-14-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 3/9] drm/i915/xelpg: Call Xe_LPG
 workaround functions based on IP version
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

[...]

all good

[...]

> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h

Is this the right place to define this? Maybe in
i915/gt/intel_gt.h?

> @@ -431,6 +431,29 @@ static inline struct intel_gt *to_gt(struct drm_i915_private *i915)
>  #define IS_GRAPHICS_VER(i915, from, until) \
>  	(GRAPHICS_VER(i915) >= (from) && GRAPHICS_VER(i915) <= (until))
>  
> +#define __IS_MEDIA_GT(gt) ((gt)->type == GT_MEDIA)
> +#define __IS_GFX_GT(gt) (!__IS_MEDIA_GT(gt))
> +#define __GT_VER_FULL(gt) (__IS_MEDIA_GT(gt) ? \
> +			   MEDIA_VER_FULL((gt)->i915) : \
> +			   GRAPHICS_VER_FULL((gt)->i915))

I think you can remove the '__' they can be widely used all
around the gt/ code.

> +/*
> + * Check that a GT contains IP of the specified type and within the specified
> + * IP range.  E.g.,
> + *
> + *    IS_GT_IP_RANGE(GFX, IP_VER(12, 70), IP_VER(12, 71))
> + *    IS_GT_IP_RANGE(MEDIA, IP_VER(13, 00), IP_VER(18, 02))
> + *
> + * Note that media version checks with this macro will only work on platforms
> + * with standalone media design (i.e., media version 13 and higher).
> + */
> +#define IS_GT_IP_RANGE(type, gt, from, until) ( \
> +	BUILD_BUG_ON_ZERO(from < IP_VER(2, 0)) + \
> +	BUILD_BUG_ON_ZERO(until < from) + \
> +	(__IS_##type##_GT(gt) && \
> +	 __GT_VER_FULL(gt) >= (from) && \
> +	 __GT_VER_FULL(gt) <= (until)))

This helper deservers its own patch :) Can we split it from the
rest?

Thanks,
Andi

>  #define MEDIA_VER(i915)			(RUNTIME_INFO(i915)->media.ip.ver)
>  #define MEDIA_VER_FULL(i915)		IP_VER(RUNTIME_INFO(i915)->media.ip.ver, \
>  					       RUNTIME_INFO(i915)->media.ip.rel)
> -- 
> 2.41.0
