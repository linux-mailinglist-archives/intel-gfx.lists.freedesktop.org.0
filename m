Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D63E2671DD1
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 14:33:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE7CD10E74D;
	Wed, 18 Jan 2023 13:33:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9854A10E74D
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 13:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674048780; x=1705584780;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=Is3sb9NnriLm26i8Xux+6DcBZMipQbD7K4AxFJy2FCU=;
 b=V4xN8ilhAs69nVCV1DzsmnsUoY8BmdrsRxcJmBxH2ibkJRFJcIqhhcVs
 9BECod08cbhuI+OSZ6KXLMJogqHxLvD4VfdorE1iZxMx75T0QMlcLxHcm
 fw101CwGTYgfBdzKZ3sFDHwUI4zpsfDouAfwBWt+X8f4LXg3nT1I9pp+l
 mWDz5s2K1kVMHwt24CZeg9Mx4Ba4oZyx1shRJpydO/CtUTtuzmlpZ255s
 7XSgFAetpAbWrsO0XuuNTGakomlWvYu3h96scxc6OXKi4Y5B0Ogk6DfLH
 EDzOXVgd9iDQfkEkwWXrIwz9G17eZDHLRlRXV1tvRO/8kpwbhWroHE+Tn A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="312860396"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="312860396"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 05:32:59 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="652940254"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="652940254"
Received: from llvincen-mobl.ger.corp.intel.com (HELO [10.213.215.37])
 ([10.213.215.37])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 05:32:58 -0800
Message-ID: <c0200ae2-8e53-c439-0417-7f682c15da0e@linux.intel.com>
Date: Wed, 18 Jan 2023 13:32:56 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230118131538.3558599-1-jani.nikula@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230118131538.3558599-1-jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 1/7] drm/i915: add i915_config.h and move
 relevant declarations there
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


On 18/01/2023 13:15, Jani Nikula wrote:
> We already have i915_config.c. Add the i915_config.h counterpart, and
> declutter i915_drv.h in the process.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   .../gpu/drm/i915/display/intel_atomic_plane.c |  1 +
>   drivers/gpu/drm/i915/gem/i915_gem_clflush.c   |  1 +
>   drivers/gpu/drm/i915/i915_config.c            |  5 +++-
>   drivers/gpu/drm/i915/i915_config.h            | 23 +++++++++++++++++++
>   drivers/gpu/drm/i915/i915_drv.h               |  9 --------
>   drivers/gpu/drm/i915/i915_request.c           |  1 +
>   6 files changed, 30 insertions(+), 10 deletions(-)
>   create mode 100644 drivers/gpu/drm/i915/i915_config.h
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> index 10e1fc9d0698..1409bcfb6fd3 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -36,6 +36,7 @@
>   
>   #include "gt/intel_rps.h"
>   
> +#include "i915_config.h"
>   #include "intel_atomic_plane.h"
>   #include "intel_cdclk.h"
>   #include "intel_display_trace.h"
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_clflush.c b/drivers/gpu/drm/i915/gem/i915_gem_clflush.c
> index b3b398fe689c..385ffc575b48 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_clflush.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_clflush.c
> @@ -8,6 +8,7 @@
>   
>   #include "display/intel_frontbuffer.h"
>   
> +#include "i915_config.h"
>   #include "i915_drv.h"
>   #include "i915_gem_clflush.h"
>   #include "i915_sw_fence_work.h"
> diff --git a/drivers/gpu/drm/i915/i915_config.c b/drivers/gpu/drm/i915/i915_config.c
> index afb828dab53b..24e5bb8a670e 100644
> --- a/drivers/gpu/drm/i915/i915_config.c
> +++ b/drivers/gpu/drm/i915/i915_config.c
> @@ -3,7 +3,10 @@
>    * Copyright © 2020 Intel Corporation
>    */
>   
> -#include "i915_drv.h"
> +#include <linux/kernel.h>
> +
> +#include "i915_config.h"
> +#include "i915_utils.h"
>   
>   unsigned long
>   i915_fence_context_timeout(const struct drm_i915_private *i915, u64 context)
> diff --git a/drivers/gpu/drm/i915/i915_config.h b/drivers/gpu/drm/i915/i915_config.h
> new file mode 100644
> index 000000000000..10e18b036489
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/i915_config.h
> @@ -0,0 +1,23 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright © 2023 Intel Corporation
> + */
> +
> +#ifndef __I915_CONFIG_H__
> +#define __I915_CONFIG_H__
> +
> +#include <linux/types.h>
> +#include <linux/limits.h>
> +
> +struct drm_i915_private;
> +
> +unsigned long i915_fence_context_timeout(const struct drm_i915_private *i915,
> +					 u64 context);
> +
> +static inline unsigned long
> +i915_fence_timeout(const struct drm_i915_private *i915)
> +{
> +	return i915_fence_context_timeout(i915, U64_MAX);
> +}
> +
> +#endif /* __I915_CONFIG_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 2ed3cb7e38d7..8377173e8de5 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -196,15 +196,6 @@ struct i915_gem_mm {
>   
>   #define I915_IDLE_ENGINES_TIMEOUT (200) /* in ms */
>   
> -unsigned long i915_fence_context_timeout(const struct drm_i915_private *i915,
> -					 u64 context);
> -
> -static inline unsigned long
> -i915_fence_timeout(const struct drm_i915_private *i915)
> -{
> -	return i915_fence_context_timeout(i915, U64_MAX);
> -}
> -
>   #define HAS_HW_SAGV_WM(i915) (DISPLAY_VER(i915) >= 13 && !IS_DGFX(i915))
>   
>   struct i915_virtual_gpu {
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index f949a9495758..7503dcb9043b 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -43,6 +43,7 @@
>   #include "gt/intel_rps.h"
>   
>   #include "i915_active.h"
> +#include "i915_config.h"
>   #include "i915_deps.h"
>   #include "i915_driver.h"
>   #include "i915_drv.h"

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

It however made me spot the wasteful out of line call to 
i915_fence_context_timeout, with even u64 used as plain bool, so I might 
be tempted to do something about that as a follow up.

Regards,

Tvrtko
