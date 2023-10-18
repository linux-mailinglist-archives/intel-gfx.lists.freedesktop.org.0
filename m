Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E0E37CE155
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Oct 2023 17:38:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E85F10E0E3;
	Wed, 18 Oct 2023 15:38:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E86210E0E3
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Oct 2023 15:38:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697643489; x=1729179489;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=NC3v+azqoj40wKkWLvC2kqnSKVWZPMln+kJqhB171WA=;
 b=NOck78Pqu7I1z4k+AJebb95hgjh6sEGv6f2TEcSfPuLxFl7ACuY63Oht
 7E8Eo6gNKF5XzzyncZky0AlAXjRCq7u6ly6qhGRyclUAzKhYijKW6v7N0
 YBstqTQoKZNFeSlsjOWVAl4rD6VQkMqEHbt9Ua6EvJ+ymcGyTAdfqSuoT
 dvmt6lZif4uz1T8DScuvqGlCk/atZU6xofwdXJCEkPKnIcIDrLJ08Glj4
 e82B0xevHsAV4vd3LMXFxdml+hzzokTsIucuLmSW6GUWlHXfIShde06+L
 WP3NAPRhtEUtEBg6LHlKTqU52vA7yHUiMuSechExlylf1ENjnkJ8Oo7Dg Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="388902205"
X-IronPort-AV: E=Sophos;i="6.03,235,1694761200"; d="scan'208";a="388902205"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 08:38:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="733218363"
X-IronPort-AV: E=Sophos;i="6.03,235,1694761200"; d="scan'208";a="733218363"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga006.jf.intel.com with SMTP; 18 Oct 2023 08:38:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Oct 2023 18:38:02 +0300
Date: Wed, 18 Oct 2023 18:38:02 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Message-ID: <ZS_72os_326uj8ty@intel.com>
References: <20231016080803.3313020-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231016080803.3313020-1-jouni.hogander@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Use dma_fence interfaces
 instead of i915_sw_fence
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

On Mon, Oct 16, 2023 at 11:08:03AM +0300, Jouni Högander wrote:
> We are preparing for Xe driver. Xe driver doesn't have i915_sw_fence
> implementation. Lets drop i915_sw_fence usage from display code and
> use dma_fence interfaces directly.
> 
> For this purpose stack dma fences from related objects into old and new
> plane states using drm_gem_plane_helper_prepare_fb. Then wait for these
> stacked fences during atomic commit.
> 
> There is no be need for separate GPU reset handling in
> intel_atomic_commit_fence_wait as the fences are signaled when GPU hang is
> detected and GPU is being reset.
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: José Roberto de Souza <jose.souza@intel.com>
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_atomic.c   |  3 -
>  .../gpu/drm/i915/display/intel_atomic_plane.c | 49 +++---------
>  drivers/gpu/drm/i915/display/intel_display.c  | 78 ++++++-------------
>  .../drm/i915/display/intel_display_types.h    |  2 -
>  4 files changed, 37 insertions(+), 95 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
> index 5d18145da279..ec0d5168b503 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> @@ -331,9 +331,6 @@ void intel_atomic_state_free(struct drm_atomic_state *_state)
>  
>  	drm_atomic_state_default_release(&state->base);
>  	kfree(state->global_objs);
> -
> -	i915_sw_fence_fini(&state->commit_ready);
> -
>  	kfree(state);
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> index b1074350616c..d4f9168ec42c 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -32,6 +32,7 @@
>   */
>  
>  #include <drm/drm_atomic_helper.h>
> +#include <drm/drm_gem_atomic_helper.h>
>  #include <drm/drm_blend.h>
>  #include <drm/drm_fourcc.h>
>  
> @@ -1035,7 +1036,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
>  	struct intel_atomic_state *state =
>  		to_intel_atomic_state(new_plane_state->uapi.state);
>  	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
> -	const struct intel_plane_state *old_plane_state =
> +	struct intel_plane_state *old_plane_state =
>  		intel_atomic_get_old_plane_state(state, plane);
>  	struct drm_i915_gem_object *obj = intel_fb_obj(new_plane_state->hw.fb);
>  	struct drm_i915_gem_object *old_obj = intel_fb_obj(old_plane_state->hw.fb);
> @@ -1057,56 +1058,30 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
>  		 * This should only fail upon a hung GPU, in which case we
>  		 * can safely continue.
>  		 */
> -		if (new_crtc_state && intel_crtc_needs_modeset(new_crtc_state)) {
> -			ret = i915_sw_fence_await_reservation(&state->commit_ready,
> -							      old_obj->base.resv,
> -							      false, 0,
> -							      GFP_KERNEL);
> +		if (new_crtc_state && intel_crtc_needs_modeset(new_crtc_state) &&
> +		    !dma_resv_test_signaled(old_obj->base.resv,
> +					    dma_resv_usage_rw(false))) {
> +			ret = drm_gem_plane_helper_prepare_fb(_plane, &old_plane_state->uapi);

This I think is broken. The old plane state and its fence can still be
in use by the previous commit, so we cannot mutate it here. Thus we
really need to get the implicit fence from the old fb chained into the
new plane state's fence.

>  			if (ret < 0)
>  				return ret;
>  		}
>  	}
>  
> -	if (new_plane_state->uapi.fence) { /* explicit fencing */
> -		i915_gem_fence_wait_priority(new_plane_state->uapi.fence,
> -					     &attr);
> -		ret = i915_sw_fence_await_dma_fence(&state->commit_ready,
> -						    new_plane_state->uapi.fence,
> -						    i915_fence_timeout(dev_priv),
> -						    GFP_KERNEL);
> -		if (ret < 0)
> -			return ret;
> -	}
> -
>  	if (!obj)
>  		return 0;
>  
> -
>  	ret = intel_plane_pin_fb(new_plane_state);
>  	if (ret)
>  		return ret;
>  
> -	i915_gem_object_wait_priority(obj, 0, &attr);
> -
> -	if (!new_plane_state->uapi.fence) { /* implicit fencing */
> -		struct dma_resv_iter cursor;
> -		struct dma_fence *fence;
> +	ret = drm_gem_plane_helper_prepare_fb(_plane, &new_plane_state->uapi);
> +	if (ret < 0)
> +		goto unpin_fb;
>  
> -		ret = i915_sw_fence_await_reservation(&state->commit_ready,
> -						      obj->base.resv, false,
> -						      i915_fence_timeout(dev_priv),
> -						      GFP_KERNEL);
> -		if (ret < 0)
> -			goto unpin_fb;
> +	if (new_plane_state->uapi.fence) {
> +		i915_gem_fence_wait_priority(new_plane_state->uapi.fence,
> +					     &attr);
>  
> -		dma_resv_iter_begin(&cursor, obj->base.resv,
> -				    DMA_RESV_USAGE_WRITE);
> -		dma_resv_for_each_fence_unlocked(&cursor, fence) {
> -			intel_display_rps_boost_after_vblank(new_plane_state->hw.crtc,
> -							     fence);
> -		}
> -		dma_resv_iter_end(&cursor);
> -	} else {
>  		intel_display_rps_boost_after_vblank(new_plane_state->hw.crtc,
>  						     new_plane_state->uapi.fence);
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 28d85e1e858e..48df0559df00 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -48,6 +48,7 @@
>  #include "g4x_dp.h"
>  #include "g4x_hdmi.h"
>  #include "hsw_ips.h"
> +#include "i915_config.h"
>  #include "i915_drv.h"
>  #include "i915_reg.h"
>  #include "i915_utils.h"
> @@ -7056,29 +7057,34 @@ void intel_atomic_helper_free_state_worker(struct work_struct *work)
>  
>  static void intel_atomic_commit_fence_wait(struct intel_atomic_state *intel_state)
>  {
> -	struct wait_queue_entry wait_fence, wait_reset;
> -	struct drm_i915_private *dev_priv = to_i915(intel_state->base.dev);
> -
> -	init_wait_entry(&wait_fence, 0);
> -	init_wait_entry(&wait_reset, 0);
> -	for (;;) {
> -		prepare_to_wait(&intel_state->commit_ready.wait,
> -				&wait_fence, TASK_UNINTERRUPTIBLE);
> -		prepare_to_wait(bit_waitqueue(&to_gt(dev_priv)->reset.flags,
> -					      I915_RESET_MODESET),
> -				&wait_reset, TASK_UNINTERRUPTIBLE);
> +	struct drm_i915_private *i915 = to_i915(intel_state->base.dev);
> +	struct drm_plane *plane;
> +	struct drm_plane_state *new_plane_state, *old_plane_state;
> +	int ret, i;
>  
> +	for_each_oldnew_plane_in_state(&intel_state->base, plane,
> +				       old_plane_state, new_plane_state, i) {
> +		if (new_plane_state->fence) {
> +			ret = dma_fence_wait_timeout(new_plane_state->fence,
> +						     false,
> +						     i915_fence_timeout(i915));
> +			if (ret <= 0)
> +				break;
>  
> -		if (i915_sw_fence_done(&intel_state->commit_ready) ||
> -		    test_bit(I915_RESET_MODESET, &to_gt(dev_priv)->reset.flags))
> -			break;
> +			dma_fence_put(new_plane_state->fence);
> +			new_plane_state->fence = NULL;
> +		}
> +		if (old_plane_state->fence) {
> +			ret = dma_fence_wait_timeout(old_plane_state->fence,
> +						     false,
> +						     i915_fence_timeout(i915));
> +			if (ret <= 0)
> +				break;
>  
> -		schedule();
> +			dma_fence_put(old_plane_state->fence);
> +			old_plane_state->fence = NULL;
> +		}
>  	}
> -	finish_wait(&intel_state->commit_ready.wait, &wait_fence);
> -	finish_wait(bit_waitqueue(&to_gt(dev_priv)->reset.flags,
> -				  I915_RESET_MODESET),
> -		    &wait_reset);
>  }
>  
>  static void intel_atomic_cleanup_work(struct work_struct *work)
> @@ -7370,32 +7376,6 @@ static void intel_atomic_commit_work(struct work_struct *work)
>  	intel_atomic_commit_tail(state);
>  }
>  
> -static int
> -intel_atomic_commit_ready(struct i915_sw_fence *fence,
> -			  enum i915_sw_fence_notify notify)
> -{
> -	struct intel_atomic_state *state =
> -		container_of(fence, struct intel_atomic_state, commit_ready);
> -
> -	switch (notify) {
> -	case FENCE_COMPLETE:
> -		/* we do blocking waits in the worker, nothing to do here */
> -		break;
> -	case FENCE_FREE:
> -		{
> -			struct drm_i915_private *i915 = to_i915(state->base.dev);
> -			struct intel_atomic_helper *helper =
> -				&i915->display.atomic_helper;
> -
> -			if (llist_add(&state->freed, &helper->free_list))
> -				queue_work(i915->unordered_wq, &helper->free_work);
> -			break;
> -		}
> -	}
> -
> -	return NOTIFY_DONE;
> -}
> -
>  static void intel_atomic_track_fbs(struct intel_atomic_state *state)
>  {
>  	struct intel_plane_state *old_plane_state, *new_plane_state;
> @@ -7418,10 +7398,6 @@ int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state *_state,
>  
>  	state->wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
>  
> -	drm_atomic_state_get(&state->base);
> -	i915_sw_fence_init(&state->commit_ready,
> -			   intel_atomic_commit_ready);
> -
>  	/*
>  	 * The intel_legacy_cursor_update() fast path takes care
>  	 * of avoiding the vblank waits for simple cursor
> @@ -7454,7 +7430,6 @@ int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state *_state,
>  	if (ret) {
>  		drm_dbg_atomic(&dev_priv->drm,
>  			       "Preparing state failed with %i\n", ret);
> -		i915_sw_fence_commit(&state->commit_ready);
>  		intel_runtime_pm_put(&dev_priv->runtime_pm, state->wakeref);
>  		return ret;
>  	}
> @@ -7470,8 +7445,6 @@ int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state *_state,
>  		struct intel_crtc *crtc;
>  		int i;
>  
> -		i915_sw_fence_commit(&state->commit_ready);
> -
>  		for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
>  			intel_color_cleanup_commit(new_crtc_state);
>  
> @@ -7485,7 +7458,6 @@ int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state *_state,
>  	drm_atomic_state_get(&state->base);
>  	INIT_WORK(&state->base.commit_work, intel_atomic_commit_work);
>  
> -	i915_sw_fence_commit(&state->commit_ready);
>  	if (nonblock && state->modeset) {
>  		queue_work(dev_priv->display.wq.modeset, &state->base.commit_work);
>  	} else if (nonblock) {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 8d8b2f8d37a9..a685c527c7d1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -670,8 +670,6 @@ struct intel_atomic_state {
>  
>  	bool rps_interactive;
>  
> -	struct i915_sw_fence commit_ready;
> -
>  	struct llist_node freed;
>  };
>  
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
