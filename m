Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA30F2FBCBA
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 17:42:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FAF16E332;
	Tue, 19 Jan 2021 16:42:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC0CA6E332
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 16:42:39 +0000 (UTC)
IronPort-SDR: I8IgJDpTvFQxxE8ootolNEPLHFZ2sNnocD8FuRJP2gVMHPezRAarmfpleRUBGnwUFyeinQSrdN
 EeXtO7dnsxow==
X-IronPort-AV: E=McAfee;i="6000,8403,9869"; a="263767378"
X-IronPort-AV: E=Sophos;i="5.79,359,1602572400"; d="scan'208";a="263767378"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2021 08:42:39 -0800
IronPort-SDR: oXoyvDTJRkrIhE0p9DE5Jn2Ifvu/p6HwuCa/voLx/hlRISYbVGRh1dx1ruz7MaptqIJW97TJeM
 euccrgrEAvpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,359,1602572400"; d="scan'208";a="347238554"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 19 Jan 2021 08:42:36 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 19 Jan 2021 18:42:36 +0200
Date: Tue, 19 Jan 2021 18:42:36 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <YAcL/GQ0B3H1lJ5I@intel.com>
References: <20210118115929.23509-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210118115929.23509-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Apply interactive
 priority to explicit flip fences
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 18, 2021 at 11:59:29AM +0000, Chris Wilson wrote:
> Currently, if a modeset/pageflip needs to wait for render completion to
> an object, we boost the priority of that rendering above all other work.
> We can apply the same interactive priority boosting to explicit fences
> that we can unwrap into a native i915_request (i.e. sync_file).
> =

> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 16 +++----
>  drivers/gpu/drm/i915/gem/i915_gem_object.h   |  3 ++
>  drivers/gpu/drm/i915/gem/i915_gem_wait.c     | 49 ++++++++++++++------
>  3 files changed, 44 insertions(+), 24 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index b728792e0c27..3a6b2e79c68b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -13514,15 +13514,6 @@ void intel_plane_unpin_fb(struct intel_plane_sta=
te *old_plane_state)
>  		intel_unpin_fb_vma(vma, old_plane_state->flags);
>  }
>  =

> -static void fb_obj_bump_render_priority(struct drm_i915_gem_object *obj)
> -{
> -	struct i915_sched_attr attr =3D {
> -		.priority =3D I915_USER_PRIORITY(I915_PRIORITY_DISPLAY),
> -	};
> -
> -	i915_gem_object_wait_priority(obj, 0, &attr);
> -}
> -
>  /**
>   * intel_prepare_plane_fb - Prepare fb for usage on plane
>   * @_plane: drm plane to prepare for
> @@ -13539,6 +13530,9 @@ int
>  intel_prepare_plane_fb(struct drm_plane *_plane,
>  		       struct drm_plane_state *_new_plane_state)
>  {
> +	struct i915_sched_attr attr =3D {
> +		.priority =3D I915_USER_PRIORITY(I915_PRIORITY_DISPLAY),
> +	};
>  	struct intel_plane *plane =3D to_intel_plane(_plane);
>  	struct intel_plane_state *new_plane_state =3D
>  		to_intel_plane_state(_new_plane_state);
> @@ -13578,6 +13572,8 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
>  	}
>  =

>  	if (new_plane_state->uapi.fence) { /* explicit fencing */
> +		i915_gem_fence_wait_priority(new_plane_state->uapi.fence,
> +					     &attr);
>  		ret =3D i915_sw_fence_await_dma_fence(&state->commit_ready,
>  						    new_plane_state->uapi.fence,
>  						    i915_fence_timeout(dev_priv),
> @@ -13599,7 +13595,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
>  	if (ret)
>  		return ret;
>  =

> -	fb_obj_bump_render_priority(obj);
> +	i915_gem_object_wait_priority(obj, 0, &attr);
>  	i915_gem_object_flush_frontbuffer(obj, ORIGIN_DIRTYFB);
>  =

>  	if (!new_plane_state->uapi.fence) { /* implicit fencing */
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm=
/i915/gem/i915_gem_object.h
> index be14486f63a7..31d05bfa57ce 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> @@ -512,6 +512,9 @@ static inline void __start_cpu_write(struct drm_i915_=
gem_object *obj)
>  		obj->cache_dirty =3D true;
>  }
>  =

> +void i915_gem_fence_wait_priority(struct dma_fence *fence,
> +				  const struct i915_sched_attr *attr);
> +
>  int i915_gem_object_wait(struct drm_i915_gem_object *obj,
>  			 unsigned int flags,
>  			 long timeout);
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_wait.c b/drivers/gpu/drm/i=
915/gem/i915_gem_wait.c
> index c1b13ac50d0f..3078f3a2864b 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_wait.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
> @@ -5,6 +5,7 @@
>   */
>  =

>  #include <linux/dma-fence-array.h>
> +#include <linux/dma-fence-chain.h>
>  #include <linux/jiffies.h>
>  =

>  #include "gt/intel_engine.h"
> @@ -44,8 +45,7 @@ i915_gem_object_wait_reservation(struct dma_resv *resv,
>  		unsigned int count, i;
>  		int ret;
>  =

> -		ret =3D dma_resv_get_fences_rcu(resv,
> -							&excl, &count, &shared);
> +		ret =3D dma_resv_get_fences_rcu(resv, &excl, &count, &shared);
>  		if (ret)
>  			return ret;
>  =

> @@ -91,39 +91,60 @@ i915_gem_object_wait_reservation(struct dma_resv *res=
v,
>  	return timeout;
>  }
>  =

> -static void __fence_set_priority(struct dma_fence *fence,
> -				 const struct i915_sched_attr *attr)
> +static bool fence_set_priority(struct dma_fence *fence,
> +			       const struct i915_sched_attr *attr)
>  {
>  	struct i915_request *rq;
>  	struct intel_engine_cs *engine;
>  =

>  	if (dma_fence_is_signaled(fence) || !dma_fence_is_i915(fence))
> -		return;
> +		return false;
>  =

>  	rq =3D to_request(fence);
>  	engine =3D rq->engine;
>  =

> -	local_bh_disable();
>  	rcu_read_lock(); /* RCU serialisation for set-wedged protection */
>  	if (engine->schedule)
>  		engine->schedule(rq, attr);
>  	rcu_read_unlock();
> -	local_bh_enable(); /* kick the tasklets if queues were reprioritised */
> +
> +	return true;
>  }
>  =

> -static void fence_set_priority(struct dma_fence *fence,
> -			       const struct i915_sched_attr *attr)
> +static inline bool __dma_fence_is_chain(const struct dma_fence *fence)
>  {
> +	return fence->ops !=3D &dma_fence_chain_ops;
> +}
> +
> +void i915_gem_fence_wait_priority(struct dma_fence *fence,
> +				  const struct i915_sched_attr *attr)
> +{
> +	if (dma_fence_is_signaled(fence))
> +		return;
> +
> +	local_bh_disable();
> +
>  	/* Recurse once into a fence-array */
>  	if (dma_fence_is_array(fence)) {
>  		struct dma_fence_array *array =3D to_dma_fence_array(fence);
>  		int i;
>  =

>  		for (i =3D 0; i < array->num_fences; i++)
> -			__fence_set_priority(array->fences[i], attr);
> +			fence_set_priority(array->fences[i], attr);
> +	} else if (__dma_fence_is_chain(fence)) {
> +		struct dma_fence *iter;
> +
> +		dma_fence_chain_for_each(iter, fence) {
> +			if (!fence_set_priority(to_dma_fence_chain(iter)->fence,
> +						attr))
> +				break;

Does this mean the fence chain is ordered in some way, ie. the
rest of the fences in the chain will have been signalled already?
I couldn't find any description of what a fence chain really is
anywhere.

Otherwise looks sensible to me.
Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> +		}
> +		dma_fence_put(iter);
>  	} else {
> -		__fence_set_priority(fence, attr);
> +		fence_set_priority(fence, attr);
>  	}
> +
> +	local_bh_enable(); /* kick the tasklets if queues were reprioritised */
>  }
>  =

>  int
> @@ -139,12 +160,12 @@ i915_gem_object_wait_priority(struct drm_i915_gem_o=
bject *obj,
>  		int ret;
>  =

>  		ret =3D dma_resv_get_fences_rcu(obj->base.resv,
> -							&excl, &count, &shared);
> +					      &excl, &count, &shared);
>  		if (ret)
>  			return ret;
>  =

>  		for (i =3D 0; i < count; i++) {
> -			fence_set_priority(shared[i], attr);
> +			i915_gem_fence_wait_priority(shared[i], attr);
>  			dma_fence_put(shared[i]);
>  		}
>  =

> @@ -154,7 +175,7 @@ i915_gem_object_wait_priority(struct drm_i915_gem_obj=
ect *obj,
>  	}
>  =

>  	if (excl) {
> -		fence_set_priority(excl, attr);
> +		i915_gem_fence_wait_priority(excl, attr);
>  		dma_fence_put(excl);
>  	}
>  	return 0;
> -- =

> 2.20.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
