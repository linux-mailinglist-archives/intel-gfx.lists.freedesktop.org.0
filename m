Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 73E677DC6CF
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Oct 2023 08:00:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3CD710E406;
	Tue, 31 Oct 2023 07:00:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54F8510E406
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Oct 2023 07:00:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698735629; x=1730271629;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=onIcy1z3I0Xi/T5A+DIBs/c0wnoU1NLAqBlFOYWfqTI=;
 b=e8Q0JyFm5zKbXrLBI5qx8A8PcmjaR5EhlYesq33M2rAh+tMe2pLMeA62
 N2QusZV4C1p6nVlbEgj67rAGEZ2FA2+Ohy5K7fJi2ZvgynGsuIrDRUc4l
 7E1+2b+Sx3cg6tpy2NTwHA/uAC/+unOpL1XbPvLGvrzPZ/thdHTdsl/J/
 IUmVCD6ISkudRZbEo4OJaducAroAJi0L8Xp3Ebtnb4yytjQxWZaR3z1wN
 5wUxUjMTnRM7qaOHND/UHNjHE336sDibHpOrGYCMtyZ1qFND2xOr6gDOq
 S+SemCmGnrGzAmRd0X33SZ1+CbgLz+6JyXnop57V2b4quTLbKzCJRQKmH w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="454695312"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="454695312"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2023 00:00:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="764152018"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="764152018"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmsmga007.fm.intel.com with SMTP; 31 Oct 2023 00:00:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 31 Oct 2023 09:00:16 +0200
Date: Tue, 31 Oct 2023 09:00:16 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Message-ID: <ZUCmAN2pJGXEpLd0@intel.com>
References: <20231030120915.760752-1-jouni.hogander@intel.com>
 <ZUCkcoxKPkOl9U2b@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZUCkcoxKPkOl9U2b@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/display: Use dma_fence
 interfaces instead of i915_sw_fence
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

On Tue, Oct 31, 2023 at 08:53:38AM +0200, Ville Syrjälä wrote:
> On Mon, Oct 30, 2023 at 02:09:15PM +0200, Jouni Högander wrote:
> > We are preparing for Xe driver. Xe driver doesn't have i915_sw_fence
> > implementation. Lets drop i915_sw_fence usage from display code and
> > use dma_fence interfaces directly.
> > 
> > For this purpose stack dma fences from related objects into new plane
> > state. Drm_gem_plane_helper_prepare_fb can be used for fences in new
> > fb. Separate local implementation is used for Stacking fences from old fb
> > into new plane state. Then wait for these stacked fences during atomic
> > commit. There is no be need for separate GPU reset handling in
> > intel_atomic_commit_fence_wait as the fences are signaled when GPU hang is
> > detected and GPU is being reset.
> > 
> > v3:
> >   - Rename add_fences and it's parameters
> >   - Remove signaled check
> >   - Remove waiting old_plane_state fences
> > v2:
> >   - Add fences from old fb into new_plane_state->uapi.fence rather than
> >     into old_plane_state->uapi.fence
> > 
> > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > Cc: José Roberto de Souza <jose.souza@intel.com>
> > 
> > Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> > Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_atomic.c   |  3 -
> >  .../gpu/drm/i915/display/intel_atomic_plane.c | 86 +++++++++++--------
> >  drivers/gpu/drm/i915/display/intel_display.c  | 68 +++------------
> >  .../drm/i915/display/intel_display_types.h    |  2 -
> >  4 files changed, 64 insertions(+), 95 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
> > index 5d18145da279..ec0d5168b503 100644
> > --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> > +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> > @@ -331,9 +331,6 @@ void intel_atomic_state_free(struct drm_atomic_state *_state)
> >  
> >  	drm_atomic_state_default_release(&state->base);
> >  	kfree(state->global_objs);
> > -
> > -	i915_sw_fence_fini(&state->commit_ready);
> > -
> >  	kfree(state);
> >  }
> >  
> > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > index b1074350616c..d7a2d7ff6090 100644
> > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > @@ -31,7 +31,10 @@
> >   * prepare/check/commit/cleanup steps.
> >   */
> >  
> > +#include <linux/dma-fence-chain.h>
> > +
> >  #include <drm/drm_atomic_helper.h>
> > +#include <drm/drm_gem_atomic_helper.h>
> >  #include <drm/drm_blend.h>
> >  #include <drm/drm_fourcc.h>
> >  
> > @@ -1012,6 +1015,44 @@ int intel_plane_check_src_coordinates(struct intel_plane_state *plane_state)
> >  	return 0;
> >  }
> >  
> > +static int add_dma_resv_fences_to_new_plane_state(struct dma_resv *resv,
> > +						  struct drm_plane_state *new_plane_state)
> 
> The 'to_new_plane_state' part in the name seems a bit redundant.
> 
> > +{
> > +	struct dma_fence *fence = dma_fence_get(new_plane_state->fence);
> > +	enum dma_resv_usage usage;
> > +	struct dma_fence *new;
> > +	int ret;
> > +
> > +	usage = fence ? DMA_RESV_USAGE_KERNEL : DMA_RESV_USAGE_WRITE;
> 
> I believe we want USAGE_WRITE here always. We aren't attempting
> to make the regular implicit vs. explicit sync decision here.

Although in practice it shouldn't matter since Xorg/intel ddx
will be using implicit sync anyway. But preserving the current
behaviour seems like the better choice regardless.

> 
> Apart from that everything else looks good to me. So with that
> sorted this is
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> > +
> > +	ret = dma_resv_get_singleton(resv, usage, &new);
> > +	if (ret)
> > +		goto error;
> > +
> > +	if (new && fence) {
> > +		struct dma_fence_chain *chain = dma_fence_chain_alloc();
> > +
> > +		if (!chain) {
> > +			ret = -ENOMEM;
> > +			goto error;
> > +		}
> > +
> > +		dma_fence_chain_init(chain, fence, new, 1);
> > +		fence = &chain->base;
> > +
> > +	} else if (new) {
> > +		fence = new;
> > +	}
> > +
> > +	dma_fence_put(new_plane_state->fence);
> > +	new_plane_state->fence = fence;
> > +	return 0;
> > +
> > +error:
> > +	dma_fence_put(fence);
> > +	return ret;
> > +}
> > +
> >  /**
> >   * intel_prepare_plane_fb - Prepare fb for usage on plane
> >   * @_plane: drm plane to prepare for
> > @@ -1035,7 +1076,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
> >  	struct intel_atomic_state *state =
> >  		to_intel_atomic_state(new_plane_state->uapi.state);
> >  	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
> > -	const struct intel_plane_state *old_plane_state =
> > +	struct intel_plane_state *old_plane_state =
> >  		intel_atomic_get_old_plane_state(state, plane);
> >  	struct drm_i915_gem_object *obj = intel_fb_obj(new_plane_state->hw.fb);
> >  	struct drm_i915_gem_object *old_obj = intel_fb_obj(old_plane_state->hw.fb);
> > @@ -1058,55 +1099,28 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
> >  		 * can safely continue.
> >  		 */
> >  		if (new_crtc_state && intel_crtc_needs_modeset(new_crtc_state)) {
> > -			ret = i915_sw_fence_await_reservation(&state->commit_ready,
> > -							      old_obj->base.resv,
> > -							      false, 0,
> > -							      GFP_KERNEL);
> > +			ret = add_dma_resv_fences_to_new_plane_state(old_obj->base.resv,
> > +								     &new_plane_state->uapi);
> >  			if (ret < 0)
> >  				return ret;
> >  		}
> >  	}
> >  
> > -	if (new_plane_state->uapi.fence) { /* explicit fencing */
> > -		i915_gem_fence_wait_priority(new_plane_state->uapi.fence,
> > -					     &attr);
> > -		ret = i915_sw_fence_await_dma_fence(&state->commit_ready,
> > -						    new_plane_state->uapi.fence,
> > -						    i915_fence_timeout(dev_priv),
> > -						    GFP_KERNEL);
> > -		if (ret < 0)
> > -			return ret;
> > -	}
> > -
> >  	if (!obj)
> >  		return 0;
> >  
> > -
> >  	ret = intel_plane_pin_fb(new_plane_state);
> >  	if (ret)
> >  		return ret;
> >  
> > -	i915_gem_object_wait_priority(obj, 0, &attr);
> > +	ret = drm_gem_plane_helper_prepare_fb(&plane->base, &new_plane_state->uapi);
> > +	if (ret < 0)
> > +		goto unpin_fb;
> >  
> > -	if (!new_plane_state->uapi.fence) { /* implicit fencing */
> > -		struct dma_resv_iter cursor;
> > -		struct dma_fence *fence;
> > -
> > -		ret = i915_sw_fence_await_reservation(&state->commit_ready,
> > -						      obj->base.resv, false,
> > -						      i915_fence_timeout(dev_priv),
> > -						      GFP_KERNEL);
> > -		if (ret < 0)
> > -			goto unpin_fb;
> > +	if (new_plane_state->uapi.fence) {
> > +		i915_gem_fence_wait_priority(new_plane_state->uapi.fence,
> > +					     &attr);
> >  
> > -		dma_resv_iter_begin(&cursor, obj->base.resv,
> > -				    DMA_RESV_USAGE_WRITE);
> > -		dma_resv_for_each_fence_unlocked(&cursor, fence) {
> > -			intel_display_rps_boost_after_vblank(new_plane_state->hw.crtc,
> > -							     fence);
> > -		}
> > -		dma_resv_iter_end(&cursor);
> > -	} else {
> >  		intel_display_rps_boost_after_vblank(new_plane_state->hw.crtc,
> >  						     new_plane_state->uapi.fence);
> >  	}
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index 1caf46e3e569..6a37573c3d82 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -48,6 +48,7 @@
> >  #include "g4x_dp.h"
> >  #include "g4x_hdmi.h"
> >  #include "hsw_ips.h"
> > +#include "i915_config.h"
> >  #include "i915_drv.h"
> >  #include "i915_reg.h"
> >  #include "i915_utils.h"
> > @@ -7056,29 +7057,22 @@ void intel_atomic_helper_free_state_worker(struct work_struct *work)
> >  
> >  static void intel_atomic_commit_fence_wait(struct intel_atomic_state *intel_state)
> >  {
> > -	struct wait_queue_entry wait_fence, wait_reset;
> > -	struct drm_i915_private *dev_priv = to_i915(intel_state->base.dev);
> > -
> > -	init_wait_entry(&wait_fence, 0);
> > -	init_wait_entry(&wait_reset, 0);
> > -	for (;;) {
> > -		prepare_to_wait(&intel_state->commit_ready.wait,
> > -				&wait_fence, TASK_UNINTERRUPTIBLE);
> > -		prepare_to_wait(bit_waitqueue(&to_gt(dev_priv)->reset.flags,
> > -					      I915_RESET_MODESET),
> > -				&wait_reset, TASK_UNINTERRUPTIBLE);
> > -
> > +	struct drm_i915_private *i915 = to_i915(intel_state->base.dev);
> > +	struct drm_plane *plane;
> > +	struct drm_plane_state *new_plane_state;
> > +	int ret, i;
> >  
> > -		if (i915_sw_fence_done(&intel_state->commit_ready) ||
> > -		    test_bit(I915_RESET_MODESET, &to_gt(dev_priv)->reset.flags))
> > -			break;
> > +	for_each_new_plane_in_state(&intel_state->base, plane, new_plane_state, i) {
> > +		if (new_plane_state->fence) {
> > +			ret = dma_fence_wait_timeout(new_plane_state->fence, false,
> > +						     i915_fence_timeout(i915));
> > +			if (ret <= 0)
> > +				break;
> >  
> > -		schedule();
> > +			dma_fence_put(new_plane_state->fence);
> > +			new_plane_state->fence = NULL;
> > +		}
> >  	}
> > -	finish_wait(&intel_state->commit_ready.wait, &wait_fence);
> > -	finish_wait(bit_waitqueue(&to_gt(dev_priv)->reset.flags,
> > -				  I915_RESET_MODESET),
> > -		    &wait_reset);
> >  }
> >  
> >  static void intel_atomic_cleanup_work(struct work_struct *work)
> > @@ -7370,32 +7364,6 @@ static void intel_atomic_commit_work(struct work_struct *work)
> >  	intel_atomic_commit_tail(state);
> >  }
> >  
> > -static int
> > -intel_atomic_commit_ready(struct i915_sw_fence *fence,
> > -			  enum i915_sw_fence_notify notify)
> > -{
> > -	struct intel_atomic_state *state =
> > -		container_of(fence, struct intel_atomic_state, commit_ready);
> > -
> > -	switch (notify) {
> > -	case FENCE_COMPLETE:
> > -		/* we do blocking waits in the worker, nothing to do here */
> > -		break;
> > -	case FENCE_FREE:
> > -		{
> > -			struct drm_i915_private *i915 = to_i915(state->base.dev);
> > -			struct intel_atomic_helper *helper =
> > -				&i915->display.atomic_helper;
> > -
> > -			if (llist_add(&state->freed, &helper->free_list))
> > -				queue_work(i915->unordered_wq, &helper->free_work);
> > -			break;
> > -		}
> > -	}
> > -
> > -	return NOTIFY_DONE;
> > -}
> > -
> >  static void intel_atomic_track_fbs(struct intel_atomic_state *state)
> >  {
> >  	struct intel_plane_state *old_plane_state, *new_plane_state;
> > @@ -7418,10 +7386,6 @@ int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state *_state,
> >  
> >  	state->wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
> >  
> > -	drm_atomic_state_get(&state->base);
> > -	i915_sw_fence_init(&state->commit_ready,
> > -			   intel_atomic_commit_ready);
> > -
> >  	/*
> >  	 * The intel_legacy_cursor_update() fast path takes care
> >  	 * of avoiding the vblank waits for simple cursor
> > @@ -7454,7 +7418,6 @@ int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state *_state,
> >  	if (ret) {
> >  		drm_dbg_atomic(&dev_priv->drm,
> >  			       "Preparing state failed with %i\n", ret);
> > -		i915_sw_fence_commit(&state->commit_ready);
> >  		intel_runtime_pm_put(&dev_priv->runtime_pm, state->wakeref);
> >  		return ret;
> >  	}
> > @@ -7470,8 +7433,6 @@ int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state *_state,
> >  		struct intel_crtc *crtc;
> >  		int i;
> >  
> > -		i915_sw_fence_commit(&state->commit_ready);
> > -
> >  		for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
> >  			intel_color_cleanup_commit(new_crtc_state);
> >  
> > @@ -7485,7 +7446,6 @@ int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state *_state,
> >  	drm_atomic_state_get(&state->base);
> >  	INIT_WORK(&state->base.commit_work, intel_atomic_commit_work);
> >  
> > -	i915_sw_fence_commit(&state->commit_ready);
> >  	if (nonblock && state->modeset) {
> >  		queue_work(dev_priv->display.wq.modeset, &state->base.commit_work);
> >  	} else if (nonblock) {
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 65ea37fe8cff..047fe3f8905a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -676,8 +676,6 @@ struct intel_atomic_state {
> >  
> >  	bool rps_interactive;
> >  
> > -	struct i915_sw_fence commit_ready;
> > -
> >  	struct llist_node freed;
> >  };
> >  
> > -- 
> > 2.34.1
> 
> -- 
> Ville Syrjälä
> Intel

-- 
Ville Syrjälä
Intel
