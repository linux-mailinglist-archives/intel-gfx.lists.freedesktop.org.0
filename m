Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EB9A2FB5B3
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 12:36:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11CBD6E1FB;
	Tue, 19 Jan 2021 11:36:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D683A6E1FB
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 11:36:30 +0000 (UTC)
IronPort-SDR: C3fbomNhhqzNIcVJBXqwt4/BcInv68g6JTz3L54tH6oUDodHo4bz2Z10Z72vJr9zzTIUnTNi1B
 JdaG6Dlt1WAw==
X-IronPort-AV: E=McAfee;i="6000,8403,9868"; a="178999665"
X-IronPort-AV: E=Sophos;i="5.79,358,1602572400"; d="scan'208";a="178999665"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2021 03:36:30 -0800
IronPort-SDR: P0RHFa2xh1o79uy+gGjsv7EoI5ze8wMa+lyGZIB3inaqwWXLpXv5P1G0w1HdMQw5K3c6g4dGn2
 OD5ne+zA6e3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,358,1602572400"; d="scan'208";a="353765973"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga006.jf.intel.com with ESMTP; 19 Jan 2021 03:36:28 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 45D115C20E6; Tue, 19 Jan 2021 13:33:43 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20210114113434.8229-2-chris@chris-wilson.co.uk>
References: <20210114113434.8229-1-chris@chris-wilson.co.uk>
 <20210114113434.8229-2-chris@chris-wilson.co.uk>
Date: Tue, 19 Jan 2021 13:33:43 +0200
Message-ID: <87bldlgnzc.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Make GEM errors non-fatal by
 default
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> While immensely convenient for developing to only tackle the first
> error, and not be flooded by repeated or secondiary issues, many more
> casual testers are not setup to remotely capture debug traces. For those
> testers, it is more beneficial to keep the system running in the remote
> chance that they are able to extract the original debug logs.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>  drivers/gpu/drm/i915/Kconfig.debug | 16 ++++++++++++++++
>  drivers/gpu/drm/i915/i915_gem.h    |  9 ++++++++-
>  2 files changed, 24 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/Kconfig.debug b/drivers/gpu/drm/i915/Kconfig.debug
> index 3701bae5b855..4005f6619bec 100644
> --- a/drivers/gpu/drm/i915/Kconfig.debug
> +++ b/drivers/gpu/drm/i915/Kconfig.debug
> @@ -41,6 +41,7 @@ config DRM_I915_DEBUG
>  	select SW_SYNC # signaling validation framework (igt/syncobj*)
>  	select DRM_I915_WERROR
>  	select DRM_I915_DEBUG_GEM
> +	select DRM_I915_DEBUG_GEM_ONCE
>  	select DRM_I915_DEBUG_MMIO
>  	select DRM_I915_DEBUG_RUNTIME_PM
>  	select DRM_I915_SW_FENCE_DEBUG_OBJECTS
> @@ -80,6 +81,21 @@ config DRM_I915_DEBUG_GEM
>  
>  	  If in doubt, say "N".
>  
> +config DRM_I915_DEBUG_GEM_ONCE
> +	bool "Make a GEM debug failure fatal"
> +	default n
> +	depends on DRM_I915_DEBUG_GEM
> +	help
> +	  During development, we often only want the very first failure
> +	  as that would otherwise be lost in the deluge of subsequent
> +	  failures. However, more causal testers may not want to trigger
> +	  a hard BUG_ON and hope that the system remains sufficiently usable
> +	  to capture a bug report in situ.

Yes. And also sometimes check the state the hardware had ended up into.
eg. unusual conditions that are not captured by hang/hangcheck.

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> +
> +	  Recommended for driver developers only.
> +
> +	  If in doubt, say "N".
> +
>  config DRM_I915_ERRLOG_GEM
>  	bool "Insert extra logging (very verbose) for common GEM errors"
>  	default n
> diff --git a/drivers/gpu/drm/i915/i915_gem.h b/drivers/gpu/drm/i915/i915_gem.h
> index a4cad3f154ca..e622aee6e4be 100644
> --- a/drivers/gpu/drm/i915/i915_gem.h
> +++ b/drivers/gpu/drm/i915/i915_gem.h
> @@ -38,11 +38,18 @@ struct drm_i915_private;
>  
>  #define GEM_SHOW_DEBUG() drm_debug_enabled(DRM_UT_DRIVER)
>  
> +#ifdef CONFIG_DRM_I915_DEBUG_GEM_ONCE
> +#define __GEM_BUG(cond) BUG()
> +#else
> +#define __GEM_BUG(cond) \
> +	WARN(1, "%s:%d GEM_BUG_ON(%s)\n", __func__, __LINE__, __stringify(cond))
> +#endif
> +
>  #define GEM_BUG_ON(condition) do { if (unlikely((condition))) {	\
>  		GEM_TRACE_ERR("%s:%d GEM_BUG_ON(%s)\n", \
>  			      __func__, __LINE__, __stringify(condition)); \
>  		GEM_TRACE_DUMP(); \
> -		BUG(); \
> +		__GEM_BUG(condition); \
>  		} \
>  	} while(0)
>  #define GEM_WARN_ON(expr) WARN_ON(expr)
> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
