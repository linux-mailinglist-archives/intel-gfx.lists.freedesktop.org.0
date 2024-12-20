Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B1D69F8E30
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2024 09:50:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 113F210EF28;
	Fri, 20 Dec 2024 08:50:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DySKocXu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96C3B10EF3B;
 Fri, 20 Dec 2024 08:50:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734684613; x=1766220613;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ieb7KiBj2Y4Drx5PxL9cZ8q+37Hwi/0Vhl+Qqu0xNdE=;
 b=DySKocXu8PRFqZ6UJ1fyl+WPAZxR1J+JHgnQOPV8VT+lYYThoc1PgaL1
 jPPYVkmOpF9UkTCEUm0yjRewphev6snY7/fKkmOf5P7PwuQY1UgX6jPQj
 CAgrgP5rwl+0E4EDqELY4mj9kMpmExIguxqECyfy1B19fA/uyzoU1XrgM
 nOopJk4mdpHucz9Qy7lluJp26p+mjdvAZntWU0bQ0fx9S9K8fM53uaokv
 ECmCWQrxvM+eOEoIqSETrlNzXCjBiBRLwi8/+/6GSw8SvDBPsjMQrl1ZV
 0VxllXg8P1Jco3r+JIxSY4uaeUYJg2V6siQKjJ7MpADYjrt7rj5IN22CK Q==;
X-CSE-ConnectionGUID: ACjdMOyyQQ2JLLaVuCwzMw==
X-CSE-MsgGUID: YZRz1Nj4SMa4U7PQBv/rDg==
X-IronPort-AV: E=McAfee;i="6700,10204,11291"; a="35351914"
X-IronPort-AV: E=Sophos;i="6.12,250,1728975600"; d="scan'208";a="35351914"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2024 00:50:12 -0800
X-CSE-ConnectionGUID: CsgbDXB2Q8GFyeNsJXuoyw==
X-CSE-MsgGUID: xeNiZEJBRx6V1iCX/QBWVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="98283335"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.210])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2024 00:50:11 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 2/3] drm/i915/display: Add infra to reduce global state
 funcs boilerplate
In-Reply-To: <20241219214909.104869-3-gustavo.sousa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241219214909.104869-1-gustavo.sousa@intel.com>
 <20241219214909.104869-3-gustavo.sousa@intel.com>
Date: Fri, 20 Dec 2024 10:50:05 +0200
Message-ID: <87o716pwle.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 19 Dec 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
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

Gut feeling says these should be part of struct intel_global_state
rather than struct intel_global_state_funcs. Keyword being "funcs".

They would have to be passed to intel_atomic_global_obj_init() and
initialized runtime. That's a downside. But then you could do away with
the funcs struct altogether when defaults are used, and pass NULL.

And you could also drop INTEL_GLOBAL_STATE_DEFAULTS() which I don't find
particularly pretty.

BR,
Jani.

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

-- 
Jani Nikula, Intel
