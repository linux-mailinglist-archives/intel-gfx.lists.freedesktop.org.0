Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C8DE9F8EDE
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2024 10:23:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DD8610EF4C;
	Fri, 20 Dec 2024 09:23:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SRYj/bFY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0FF210EF5C;
 Fri, 20 Dec 2024 09:23:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734686609; x=1766222609;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=+/6AbG2WWxdjvmAyg3yVwSVogCy2B3rXmghNMlLB/uY=;
 b=SRYj/bFYVFlKiBscykAmq0EGIHQw+6X1qoigdtFVkZKmNdzJzx1e4fP9
 9ZRSPKm0midOFRCyofeHwHxQX1Yyx+2CJzsWirgwGtMCn0oEUu3f/vt+F
 4v5l/kj+2d1NT5GfM8BuNXJB6Lcun7sZo/NVWOtTyZFQTK1CZchQQwmBk
 N6+ctVx3GfgBzqnEx9cmSoEp55/YZ/bejzao1YRuM/15qGzmwRldH+uHl
 c9o4SDU1nTrVz1Xknj2mIdrNFXEfngRueq3Ky7Rt8/x2N9T6aCtD/hZpW
 3xhDBbXR+Z2tIO29sTnB6BC5+1+dfDlB3p4nFrplrF5N2aEDeK6IkZu2p g==;
X-CSE-ConnectionGUID: pj536StuR4S6rJi7CtV9qA==
X-CSE-MsgGUID: +X1OESp1Ti6T0DAvhwZ39Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11291"; a="45836779"
X-IronPort-AV: E=Sophos;i="6.12,250,1728975600"; d="scan'208";a="45836779"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2024 01:23:28 -0800
X-CSE-ConnectionGUID: /HGAyluvQxaxPsbwj/nvug==
X-CSE-MsgGUID: HSum5m2gRCaiKX/FAdd78Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,250,1728975600"; d="scan'208";a="98661497"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 20 Dec 2024 01:23:26 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 20 Dec 2024 11:23:24 +0200
Date: Fri, 20 Dec 2024 11:23:24 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH 2/3] drm/i915/display: Add infra to reduce global state
 funcs boilerplate
Message-ID: <Z2U3jCBKUo1FF21r@intel.com>
References: <20241219214909.104869-1-gustavo.sousa@intel.com>
 <20241219214909.104869-3-gustavo.sousa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241219214909.104869-3-gustavo.sousa@intel.com>
X-Patchwork-Hint: comment
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

On Thu, Dec 19, 2024 at 06:48:37PM -0300, Gustavo Sousa wrote:
> If we look at how the members of struct intel_global_state_funcs, we see
> a common pattern repeating itself. Let's add the necessary
> infra-structure to allow reducing the boilerplate. We do that by
> adding common generic implementations for each member and adding a macro
> INTEL_GLOBAL_STATE_DEFAULTS() to be used when initializing an instance
> of struct intel_global_state_funcs.
> 
> That way, a global state that does not need custom behavior can have
> its funcs structure be initialized as in the following example,
> 
>     static const struct intel_global_state_funcs <prefix>_funcs = {
>            INTEL_GLOBAL_STATE_DEFAULTS(struct <prefix>_state, <base_member_name>),
>     };
> 
> , without the need to implementing the functions.
> 
> That doesn't come without cost - we will need to store two size_t
> members -, but that cost is arguably justified by the simplification
> gained.
> 
> In an upcoming change we will put that infra into action on existing
> users.
> 
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_global_state.c | 41 ++++++++++++++++++-
>  .../gpu/drm/i915/display/intel_global_state.h | 15 +++++++
>  2 files changed, 54 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_global_state.c b/drivers/gpu/drm/i915/display/intel_global_state.c
> index cbcd1e91b7be..4b4c33fa99fb 100644
> --- a/drivers/gpu/drm/i915/display/intel_global_state.c
> +++ b/drivers/gpu/drm/i915/display/intel_global_state.c
> @@ -59,7 +59,10 @@ static void __intel_atomic_global_state_free(struct kref *kref)
>  
>  	commit_put(obj_state->commit);
>  
> -	obj->funcs->atomic_destroy_state(obj, obj_state);
> +	if (obj->funcs->atomic_destroy_state)
> +		obj->funcs->atomic_destroy_state(obj, obj_state);
> +	else
> +		intel_atomic_global_destroy_state_common(obj, obj_state);
>  }
>  
>  static void intel_atomic_global_state_put(struct intel_global_state *obj_state)
> @@ -164,7 +167,11 @@ intel_atomic_get_global_obj_state(struct intel_atomic_state *state,
>  	index = state->num_global_objs;
>  	memset(&state->global_objs[index], 0, sizeof(*state->global_objs));
>  
> -	obj_state = obj->funcs->atomic_duplicate_state(obj);
> +	if (obj->funcs->atomic_duplicate_state)
> +		obj_state = obj->funcs->atomic_duplicate_state(obj);
> +	else
> +		obj_state = intel_atomic_global_duplicate_state_common(obj);
> +
>  	if (!obj_state)
>  		return ERR_PTR(-ENOMEM);
>  
> @@ -382,3 +389,33 @@ intel_atomic_global_state_commit_done(struct intel_atomic_state *state)
>  		complete_all(&commit->done);
>  	}
>  }
> +
> +struct intel_global_state *
> +intel_atomic_global_duplicate_state_common(struct intel_global_obj *obj)
> +{
> +	void *state_wrapper;
> +
> +	if (WARN_ON(obj->funcs->state_size == 0))
> +		return NULL;
> +
> +	state_wrapper = (void *)obj->state - obj->funcs->base_offset;
> +
> +	state_wrapper = kmemdup(state_wrapper, obj->funcs->state_size, GFP_KERNEL);
> +	if (!state_wrapper)
> +		return NULL;
> +
> +	return state_wrapper + obj->funcs->base_offset;

I'm not really a fan. What was obvious code before now looks 
complicated.

Also this no longer matches how any of the standard kms object
types work, which I don't think is a good idea. IMO if we
want to do something like this then it should probably try to
cover all kms object types.

> +}
> +
> +void intel_atomic_global_destroy_state_common(struct intel_global_obj *obj,
> +					      struct intel_global_state *state)
> +{
> +	void *state_wrapper;
> +
> +	if (WARN_ON(obj->funcs->state_size == 0))
> +		return;
> +
> +	state_wrapper = (void *)state - obj->funcs->base_offset;
> +
> +	kfree(state_wrapper);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_global_state.h b/drivers/gpu/drm/i915/display/intel_global_state.h
> index 6506a8e32972..e47e007225cc 100644
> --- a/drivers/gpu/drm/i915/display/intel_global_state.h
> +++ b/drivers/gpu/drm/i915/display/intel_global_state.h
> @@ -8,6 +8,8 @@
>  
>  #include <linux/kref.h>
>  #include <linux/list.h>
> +#include <linux/stddef.h>
> +#include <linux/types.h>
>  
>  struct drm_i915_private;
>  struct intel_atomic_state;
> @@ -15,6 +17,10 @@ struct intel_global_obj;
>  struct intel_global_state;
>  
>  struct intel_global_state_funcs {
> +	/* state_size and base_offset are initialized by INTEL_GLOBAL_STATE_DEFAULTS() */
> +	size_t state_size;
> +	size_t base_offset;
> +
>  	struct intel_global_state *(*atomic_duplicate_state)(struct intel_global_obj *obj);
>  	void (*atomic_destroy_state)(struct intel_global_obj *obj,
>  				     struct intel_global_state *state);
> @@ -26,6 +32,10 @@ struct intel_global_obj {
>  	const struct intel_global_state_funcs *funcs;
>  };
>  
> +#define INTEL_GLOBAL_STATE_DEFAULTS(type, base_member) \
> +	.state_size = sizeof(type), \
> +	.base_offset = offsetof(type, base_member)
> +
>  #define intel_for_each_global_obj(obj, dev_priv) \
>  	list_for_each_entry(obj, &(dev_priv)->display.global.obj_list, head)
>  
> @@ -96,4 +106,9 @@ int intel_atomic_global_state_wait_for_dependencies(struct intel_atomic_state *s
>  
>  bool intel_atomic_global_state_is_serialized(struct intel_atomic_state *state);
>  
> +struct intel_global_state *
> +intel_atomic_global_duplicate_state_common(struct intel_global_obj *obj);
> +void intel_atomic_global_destroy_state_common(struct intel_global_obj *obj,
> +					      struct intel_global_state *state);
> +
>  #endif
> -- 
> 2.47.1

-- 
Ville Syrjälä
Intel
