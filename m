Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 901F176B782
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Aug 2023 16:32:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA40810E354;
	Tue,  1 Aug 2023 14:32:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C494A10E354
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Aug 2023 14:32:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690900338; x=1722436338;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=WwV046P0CxmG9CPMyMDtQ7oBdkdACiJku8MVNkOE9Bk=;
 b=FGhAm/753SI6C4L+3e3gVCiHB5oYEDneAcLLev4ziEmTGDm3f4IP4R+A
 QuXJIBsXABMcoqc+Ic84GoLBZOKGGlzHOr+GUipklW/ubY5ZdzNXCrP5z
 6Zr3nSWRzcVIXY5/FL6FuwQcJyBWFMRV+Yctn8np+fOeGMmm7cOPbQDs0
 xVXu3TWl0WNbH9Yb6OWgY35HpgPUpsDj499BxOPFe0xIEZIrderFgfOME
 KJjg3ARCFjvcytiGpMh8tqdUrD9wG1ysFq07TuRrhuADCkXb8LjK44iSR
 v2vB0M4dcZVkOy/YGoI842xXNdCRPiGQXUrAJBNqmbZLOGvmyscwEGvmF Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="455687687"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="455687687"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 07:32:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="705842537"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="705842537"
Received: from jhajducz-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.37.77])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 07:32:03 -0700
Date: Tue, 1 Aug 2023 16:32:00 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Message-ID: <ZMkXYAASwtYZ6gYt@ashyti-mobl2.lan>
References: <20230726155356.1652979-1-jonathan.cavitt@intel.com>
 <20230726155356.1652979-2-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230726155356.1652979-2-jonathan.cavitt@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Make i915_coherent_map_type
 GT-centric
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
Cc: chris.p.wilson@linux.intel.com, intel-gfx@lists.freedesktop.org,
 matthew.d.roper@intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jonathan,

Apparently checkpatch is complaining...

[...]

> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 119deb9f938c..1897cb5aa2a2 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1191,7 +1191,7 @@ lrc_pre_pin(struct intel_context *ce,
>  	GEM_BUG_ON(!i915_vma_is_pinned(ce->state));
>  
>  	*vaddr = i915_gem_object_pin_map(ce->state->obj,
> -					 i915_coherent_map_type(ce->engine->i915,
> +					 intel_gt_coherent_map_type(ce->engine->gt,
>  								ce->state->obj,
>  								false) |

... here:

CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis

>  					 I915_MAP_OVERRIDE);

[...]

> diff --git a/drivers/gpu/drm/i915/gt/selftest_context.c b/drivers/gpu/drm/i915/gt/selftest_context.c
> index 76fbae358072..afce036bcaa8 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_context.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_context.c
> @@ -88,7 +88,7 @@ static int __live_context_size(struct intel_engine_cs *engine)
>  		goto err;
>  
>  	vaddr = i915_gem_object_pin_map_unlocked(ce->state->obj,
> -						 i915_coherent_map_type(engine->i915,
> +						 intel_gt_coherent_map_type(engine->gt,
>  									ce->state->obj, false));


... here:

CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis


>  	if (IS_ERR(vaddr)) {
>  		err = PTR_ERR(vaddr);

[...]

> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> index a78a3d2c2e16..bc883de02295 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -1292,7 +1292,7 @@ static int compare_isolation(struct intel_engine_cs *engine,
>  	}
>  
>  	lrc = i915_gem_object_pin_map_unlocked(ce->state->obj,
> -					       i915_coherent_map_type(engine->i915,
> +					       intel_gt_coherent_map_type(engine->gt,
>  								      ce->state->obj,
>  								      false));

... here:

CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis

>  	if (IS_ERR(lrc)) {

[...]

> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> index 2eb891b270ae..c0fa9d232205 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> @@ -792,7 +792,7 @@ int intel_guc_allocate_and_map_vma(struct intel_guc *guc, u32 size,
>  		return PTR_ERR(vma);
>  
>  	vaddr = i915_gem_object_pin_map_unlocked(vma->obj,
> -						 i915_coherent_map_type(guc_to_gt(guc)->i915,
> +						 intel_gt_coherent_map_type(guc_to_gt(guc),
>  									vma->obj, true));

... here:

CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis

>  	if (IS_ERR(vaddr)) {
>  		i915_vma_unpin_and_release(&vma, 0);

[...]

> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> index 1ce07d7e8769..8e0b5d48ddf6 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> @@ -11,6 +11,7 @@
>  #include "gem/i915_gem_lmem.h"
>  
>  #include "i915_drv.h"
> +#include "gt/intel_gt.h"
>  
>  #include "intel_pxp.h"
>  #include "intel_pxp_cmd_interface_42.h"
> @@ -245,7 +246,7 @@ static int alloc_streaming_command(struct intel_pxp *pxp)
>  	}
>  
>  	/* map the lmem into the virtual memory pointer */
> -	cmd = i915_gem_object_pin_map_unlocked(obj, i915_coherent_map_type(i915, obj, true));
> +	cmd = i915_gem_object_pin_map_unlocked(obj, intel_gt_coherent_map_type(pxp->ctrl_gt, obj, true));

... and here:

WARNING:LONG_LINE: line length of 105 exceeds 100 columns

Can you please fix those, run again checkpatch.pl and resend?

Thanks,
Andi

>  	if (IS_ERR(cmd)) {
>  		drm_err(&i915->drm, "Failed to map gsc message page!\n");
>  		err = PTR_ERR(cmd);
