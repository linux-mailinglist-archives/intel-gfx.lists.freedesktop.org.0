Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C6427CE14F
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Oct 2023 17:36:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BDA810E0BF;
	Wed, 18 Oct 2023 15:36:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6A1610E0BF
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Oct 2023 15:36:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697643370; x=1729179370;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=tpdvUKFScl3VxIXNdnvIug0w8gvTbIWDXqs7ToTm5l0=;
 b=Dsffiu0SGxpK6pOpxMApwBtDrGPAL4/YR57URGf5CDO8IeP1jB0a85Kw
 k4thCWxz7AJrrEUpbEDgu2hqXwA41JxJicP83L4QD6TKEDye2T1uwat7f
 KKZ9rOhLFuu725rKm8D7UmjiQmSEF+YVBGl9MihJ8MFQI7ZACnw4RDCD/
 N21GfKqiHYoNqiXoWraw2aEwGuQ2oVED8OJoIvKvbtPCzvOvg+akiXvGj
 jzU0G4+nS/H6T0mesERVyg63NemXGSIVm+xwd6H3igbKfdD4N+pTj55lN
 lAMU2wiAczNB731L8HkGZ4zsTCYE/jYTq1YZzqT5DN8TwnhZjzzPnm3Qo g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="388901551"
X-IronPort-AV: E=Sophos;i="6.03,235,1694761200"; d="scan'208";a="388901551"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 08:35:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="733217687"
X-IronPort-AV: E=Sophos;i="6.03,235,1694761200"; d="scan'208";a="733217687"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga006.jf.intel.com with SMTP; 18 Oct 2023 08:35:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Oct 2023 18:35:41 +0300
Date: Wed, 18 Oct 2023 18:35:41 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <ZS_7TTHRXBK_bAEN@intel.com>
References: <20231016080803.3313020-1-jouni.hogander@intel.com>
 <ZS_3itLzYATBtJJp@intel.com>
 <3f37930e-0cbe-482c-e323-a50cd616ece3@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3f37930e-0cbe-482c-e323-a50cd616ece3@linux.intel.com>
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

On Wed, Oct 18, 2023 at 05:23:00PM +0200, Maarten Lankhorst wrote:
> 
> 
> On 2023-10-18 17:19, Ville Syrj�l� wrote:
> > On Mon, Oct 16, 2023 at 11:08:03AM +0300, Jouni H�gander wrote:
> >> We are preparing for Xe driver. Xe driver doesn't have i915_sw_fence
> >> implementation. Lets drop i915_sw_fence usage from display code and
> >> use dma_fence interfaces directly.
> >>
> >> For this purpose stack dma fences from related objects into old and new
> >> plane states using drm_gem_plane_helper_prepare_fb. Then wait for these
> >> stacked fences during atomic commit.
> >>
> >> There is no be need for separate GPU reset handling in
> >> intel_atomic_commit_fence_wait as the fences are signaled when GPU hang is
> >> detected and GPU is being reset.
> >>
> >> Cc: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> >> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> >> Cc: Jos� Roberto de Souza <jose.souza@intel.com>
> >>
> >> Signed-off-by: Jouni H�gander <jouni.hogander@intel.com>
> >> ---
> >>   drivers/gpu/drm/i915/display/intel_atomic.c   |  3 -
> >>   .../gpu/drm/i915/display/intel_atomic_plane.c | 49 +++---------
> >>   drivers/gpu/drm/i915/display/intel_display.c  | 78 ++++++-------------
> >>   .../drm/i915/display/intel_display_types.h    |  2 -
> >>   4 files changed, 37 insertions(+), 95 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
> >> index 5d18145da279..ec0d5168b503 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> >> @@ -331,9 +331,6 @@ void intel_atomic_state_free(struct drm_atomic_state *_state)
> >>   
> >>   	drm_atomic_state_default_release(&state->base);
> >>   	kfree(state->global_objs);
> >> -
> >> -	i915_sw_fence_fini(&state->commit_ready);
> >> -
> >>   	kfree(state);
> >>   }
> >>   
> >> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> >> index b1074350616c..d4f9168ec42c 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> >> @@ -32,6 +32,7 @@
> >>    */
> >>   
> >>   #include <drm/drm_atomic_helper.h>
> >> +#include <drm/drm_gem_atomic_helper.h>
> >>   #include <drm/drm_blend.h>
> >>   #include <drm/drm_fourcc.h>
> >>   
> >> @@ -1035,7 +1036,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
> >>   	struct intel_atomic_state *state =
> >>   		to_intel_atomic_state(new_plane_state->uapi.state);
> >>   	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
> >> -	const struct intel_plane_state *old_plane_state =
> >> +	struct intel_plane_state *old_plane_state =
> >>   		intel_atomic_get_old_plane_state(state, plane);
> >>   	struct drm_i915_gem_object *obj = intel_fb_obj(new_plane_state->hw.fb);
> >>   	struct drm_i915_gem_object *old_obj = intel_fb_obj(old_plane_state->hw.fb);
> >> @@ -1057,56 +1058,30 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
> >>   		 * This should only fail upon a hung GPU, in which case we
> >>   		 * can safely continue.
> >>   		 */
> >> -		if (new_crtc_state && intel_crtc_needs_modeset(new_crtc_state)) {
> >> -			ret = i915_sw_fence_await_reservation(&state->commit_ready,
> >> -							      old_obj->base.resv,
> >> -							      false, 0,
> >> -							      GFP_KERNEL);
> >> +		if (new_crtc_state && intel_crtc_needs_modeset(new_crtc_state) &&
> >> +		    !dma_resv_test_signaled(old_obj->base.resv,
> >> +					    dma_resv_usage_rw(false))) {
> >> +			ret = drm_gem_plane_helper_prepare_fb(_plane, &old_plane_state->uapi);
> >>   			if (ret < 0)
> >>   				return ret;
> >>   		}
> >>   	}
> >>   
> >> -	if (new_plane_state->uapi.fence) { /* explicit fencing */
> >> -		i915_gem_fence_wait_priority(new_plane_state->uapi.fence,
> >> -					     &attr);
> >> -		ret = i915_sw_fence_await_dma_fence(&state->commit_ready,
> >> -						    new_plane_state->uapi.fence,
> >> -						    i915_fence_timeout(dev_priv),
> >> -						    GFP_KERNEL);
> >> -		if (ret < 0)
> >> -			return ret;
> >> -	}
> >> -
> >>   	if (!obj)
> >>   		return 0;
> >>   
> >> -
> >>   	ret = intel_plane_pin_fb(new_plane_state);
> >>   	if (ret)
> >>   		return ret;
> >>   
> >> -	i915_gem_object_wait_priority(obj, 0, &attr);
> >> -
> >> -	if (!new_plane_state->uapi.fence) { /* implicit fencing */
> >> -		struct dma_resv_iter cursor;
> >> -		struct dma_fence *fence;
> >> +	ret = drm_gem_plane_helper_prepare_fb(_plane, &new_plane_state->uapi);
> > 
> > I don't think we can use that as is due to bigjoiner stuff.
> > I think we'd need a slightly lower level variant that takes
> > the fb+fence in explicitly instead of the full plane state.
> > 
> > And I suppose we already have a slight bug here where only the
> > master pipe's plane will consult the explicit fence and the rest
> > will take the implicit sync path.
> Why would bigjoiner fail? If bigjoiner happens, the uapi fb will be 
> fenced at least once.

Hmm. Yeah, I suppose that should cover it since we don't consider
plane visibility anywhere.

And, I guess I was wrong about the existing bug as well since
there should be no uapi.fb set on the slave planes, and so no
extra implicit sync fence will be added.

-- 
Ville Syrj�l�
Intel
