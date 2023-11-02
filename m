Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B9AF7DF16C
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 12:43:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B7AD10E85C;
	Thu,  2 Nov 2023 11:43:11 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F97B10E85B;
 Thu,  2 Nov 2023 11:43:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698925389; x=1730461389;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=OMHI+dsYQ0q5EdSjbBm7CHYRZYJF72oZUqR/qQErSqM=;
 b=U2Rx8hCN4Eo8EP/MslyYvO4M++iDkvn0Ew/X7Qzdey2JmNBcBHdM2aB+
 UlnZd36aceZrjlY4ntFqvr8RpD7eT/itE4Ge4CJbPHsE8pkEUGG5VLOq0
 qGtLM/Mdv731WGdr4ED9vTkYaGrPM8IdJ3ye8cdn77FlnX21CdUMCoIpq
 fqe3czdCYh7UT3pMxKKQXyyfRCEQj3sVGJ9r4jnVFc0dPkgn0I2/S3UbQ
 2hT9MyTaVYmuSUoBSFlt7FWLqxj5vmxEOtzj4SOPBxfCzFcVdyL9Z+Srz
 NgNVCfEgUyi/rc1khRD6FUkvxBOyTuDr/0s+6uxHg9SfzjpM8+mEvGhIU w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10881"; a="387568986"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="387568986"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 04:43:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10881"; a="878217375"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="878217375"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 04:43:06 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
In-Reply-To: <20231102093248.362659-2-tvrtko.ursulin@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231102093248.362659-1-tvrtko.ursulin@linux.intel.com>
 <20231102093248.362659-2-tvrtko.ursulin@linux.intel.com>
Date: Thu, 02 Nov 2023 13:43:03 +0200
Message-ID: <87zfzw2xfc.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Move for_each_engine* out of
 i915_drv.h
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
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 02 Nov 2023, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>
> Iterators operate on struct intel_gt so lets move it to intel_gt.h in
> order to make i915_drv.h less of a dumping ground for stuff.
>
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Suggested-by: Jani Nikula <jani.nikula@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/gt/intel_engine_pm.h          |  1 +
>  drivers/gpu/drm/i915/gt/intel_gt.h                 | 14 ++++++++++++++
>  drivers/gpu/drm/i915/gt/intel_gt_engines_debugfs.c |  2 +-
>  drivers/gpu/drm/i915/i915_drv.h                    | 14 --------------
>  drivers/gpu/drm/i915/selftests/intel_uncore.c      |  2 ++
>  5 files changed, 18 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.h b/drivers/gpu/drm/i915/gt/intel_engine_pm.h
> index d68675925b79..1d97c435a015 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_pm.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.h
> @@ -10,6 +10,7 @@
>  #include "i915_request.h"
>  #include "intel_engine_types.h"
>  #include "intel_wakeref.h"
> +#include "intel_gt.h"
>  #include "intel_gt_pm.h"
>  
>  static inline bool
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
> index 9ffdb05e231e..b0e453e27ea8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.h
> @@ -171,6 +171,20 @@ void intel_gt_release_all(struct drm_i915_private *i915);
>  	     (id__)++) \
>  		for_each_if(((gt__) = (i915__)->gt[(id__)]))
>  
> +/* Simple iterator over all initialised engines */
> +#define for_each_engine(engine__, gt__, id__) \
> +	for ((id__) = 0; \
> +	     (id__) < I915_NUM_ENGINES; \
> +	     (id__)++) \
> +		for_each_if ((engine__) = (gt__)->engine[(id__)])
> +
> +/* Iterator over subset of engines selected by mask */
> +#define for_each_engine_masked(engine__, gt__, mask__, tmp__) \
> +	for ((tmp__) = (mask__) & (gt__)->info.engine_mask; \
> +	     (tmp__) ? \
> +	     ((engine__) = (gt__)->engine[__mask_next_bit(tmp__)]), 1 : \
> +	     0;)
> +
>  void intel_gt_info_print(const struct intel_gt_info *info,
>  			 struct drm_printer *p);
>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_engines_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_engines_debugfs.c
> index 8f9b874fdc9c..3aa1d014c14d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_engines_debugfs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_engines_debugfs.c
> @@ -6,8 +6,8 @@
>  
>  #include <drm/drm_print.h>
>  
> -#include "i915_drv.h" /* for_each_engine! */
>  #include "intel_engine.h"
> +#include "intel_gt.h"
>  #include "intel_gt_debugfs.h"
>  #include "intel_gt_engines_debugfs.h"
>  
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index bf6ed434bb6b..f3be9033a93f 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -396,20 +396,6 @@ static inline struct intel_gt *to_gt(const struct drm_i915_private *i915)
>  	return i915->gt[0];
>  }
>  
> -/* Simple iterator over all initialised engines */
> -#define for_each_engine(engine__, gt__, id__) \
> -	for ((id__) = 0; \
> -	     (id__) < I915_NUM_ENGINES; \
> -	     (id__)++) \
> -		for_each_if ((engine__) = (gt__)->engine[(id__)])
> -
> -/* Iterator over subset of engines selected by mask */
> -#define for_each_engine_masked(engine__, gt__, mask__, tmp__) \
> -	for ((tmp__) = (mask__) & (gt__)->info.engine_mask; \
> -	     (tmp__) ? \
> -	     ((engine__) = (gt__)->engine[__mask_next_bit(tmp__)]), 1 : \
> -	     0;)
> -
>  #define rb_to_uabi_engine(rb) \
>  	rb_entry_safe(rb, struct intel_engine_cs, uabi_node)
>  
> diff --git a/drivers/gpu/drm/i915/selftests/intel_uncore.c b/drivers/gpu/drm/i915/selftests/intel_uncore.c
> index 03ea75cd84dd..4f98aa8a861e 100644
> --- a/drivers/gpu/drm/i915/selftests/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/selftests/intel_uncore.c
> @@ -24,6 +24,8 @@
>  
>  #include "../i915_selftest.h"
>  
> +#include "gt/intel_gt.h"
> +
>  static int intel_fw_table_check(const struct intel_forcewake_range *ranges,
>  				unsigned int num_ranges,
>  				bool is_watertight)

-- 
Jani Nikula, Intel
