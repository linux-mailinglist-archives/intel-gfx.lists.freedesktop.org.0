Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 257F7765367
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jul 2023 14:16:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82A4710E0E6;
	Thu, 27 Jul 2023 12:16:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DA7910E0E6
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jul 2023 12:16:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690460207; x=1721996207;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=PhoEo+uEkOon7m0DGXJ/XjLMnhELjisw29BCRxcVaZk=;
 b=VMzGH7mG8GyznVfIbWWoPoMgxWNngY8BHx1d1E2iMJNwQFp9xdP+jY8v
 RlBv3+ghbQQls8bll/JCozN9p4OOgGK0nRJU60KkYQStBtrsRhJbn5LLO
 Bvy6mQctkGyIHGT83RmZnwHnDM4HnT91GGjC0PG1G/ovY3qJGpij6UmKz
 wK0xkUO+BRoZm+fO3fRcu5RjXohtnmMFZRrjF7TCfaYHc3FQxfgNcbpR1
 Xu4Ur24gEJCX7X3lRinAhkzuvs+Dk1i3TCAjDr4YpbULyKldpIGwZ6dsJ
 egJ4lFPfMh88DIpnDexkOHMbkAYKquky3j4b5q7zVOV/SqMENR8gSdiqg Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="399228582"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="399228582"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2023 05:16:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="850812636"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="850812636"
Received: from sguija-mobl1.amr.corp.intel.com (HELO intel.com)
 ([10.252.35.185])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2023 05:16:43 -0700
Date: Thu, 27 Jul 2023 14:16:40 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Message-ID: <ZMJgKO9DbXg4cob4@ashyti-mobl2.lan>
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

On Wed, Jul 26, 2023 at 08:53:55AM -0700, Jonathan Cavitt wrote:
> Refactor i915_coherent_map_type to be GT-centric rather than
> device-centric.  Each GT may require different coherency
> handling due to hardware workarounds.
> 
> Since the function now takes a GT instead of the i915, the function is
> renamed and moved to the gt folder.

[...]

> --- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> @@ -465,21 +465,6 @@ void *i915_gem_object_pin_map_unlocked(struct drm_i915_gem_object *obj,
>  	return ret;
>  }
>  
> -enum i915_map_type i915_coherent_map_type(struct drm_i915_private *i915,
> -					  struct drm_i915_gem_object *obj,
> -					  bool always_coherent)
> -{
> -	/*
> -	 * Wa_22016122933: always return I915_MAP_WC for MTL
> -	 */
> -	if (i915_gem_object_is_lmem(obj) || IS_METEORLAKE(i915))
> -		return I915_MAP_WC;
> -	if (HAS_LLC(i915) || always_coherent)
> -		return I915_MAP_WB;
> -	else
> -		return I915_MAP_WC;
> -}
> -

[...]

> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -1134,6 +1134,21 @@ void intel_gt_invalidate_tlb(struct intel_gt *gt, u32 seqno)
>  	}
>  }
>  
> +enum i915_map_type intel_gt_coherent_map_type(struct intel_gt *gt,
> +					      struct drm_i915_gem_object *obj,
> +					      bool always_coherent)
> +{
> +	/*
> +	 * Wa_22016122933: always return I915_MAP_WC for MTL
> +	 */
> +	if (i915_gem_object_is_lmem(obj) || IS_METEORLAKE(gt->i915))
> +		return I915_MAP_WC;
> +	if (HAS_LLC(gt->i915) || always_coherent)
> +		return I915_MAP_WB;
> +	else
> +		return I915_MAP_WC;
> +}
> +

yep! That's how it should be! Thanks for moving it.

I'm just thinking whether intel_gt.c is the right place to put
it... I'm anyway OK with it.


> --- a/drivers/gpu/drm/i915/gt/intel_ring.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ring.c
> @@ -13,6 +13,7 @@
>  #include "intel_engine_regs.h"
>  #include "intel_gpu_commands.h"
>  #include "intel_ring.h"
> +#include "intel_gt.h"

mmhhh... pity... this required this extra include because it
needs the prototype of intel_gt_coherent_map_type();

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>  

Andi
