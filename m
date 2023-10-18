Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3B97CE5B6
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Oct 2023 19:59:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A371E10E3FF;
	Wed, 18 Oct 2023 17:59:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D259F10E3FF
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Oct 2023 17:59:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697651983; x=1729187983;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=xVUMQCqu4vs7QraJkdqShQt6lIZW2rMvXCojz4Jv1Hg=;
 b=grTWiFdeQByph1sLyXr6JQcb1h8E7yKEaYN761sPgVuaxK9UbvSI666c
 sXKzew1WdefvXp80Fvsbwu1cnUJDNNhmwVVtRp3VIdLqQZoVK8RQZ2B/h
 LVrOVBsSSKxqVxWch9AaHhn7Ao2vUOPGIFcTJxL3/lkBIFHbDs0kIbyJz
 ZgBWLrfXyWejWzgRraRw0uuTishCj/ZIQtVn5klri0Xva1+GER6AzXmif
 fumZv9o5oD3SIQcIfjaI3RRgtYRaxUJHkzgtw7pnkFFWcHnWqw8pUjs8n
 /f2iqpIm+waVDIfgH8HrO6t+63+ynYHBJbM3NS2r1hP88AnwbeW92DYxB Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="385904671"
X-IronPort-AV: E=Sophos;i="6.03,235,1694761200"; d="scan'208";a="385904671"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 10:59:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="1088038841"
X-IronPort-AV: E=Sophos;i="6.03,235,1694761200"; d="scan'208";a="1088038841"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmsmga005.fm.intel.com with SMTP; 18 Oct 2023 10:59:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Oct 2023 20:59:38 +0300
Date: Wed, 18 Oct 2023 20:59:38 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <ZTAdCnY7C9Br2YSy@intel.com>
References: <20231016080803.3313020-1-jouni.hogander@intel.com>
 <ZS_72os_326uj8ty@intel.com>
 <eb76fa53-a5b7-24ab-6902-1828e689deed@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <eb76fa53-a5b7-24ab-6902-1828e689deed@linux.intel.com>
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

On Wed, Oct 18, 2023 at 07:13:12PM +0200, Maarten Lankhorst wrote:
> 
> 
> On 2023-10-18 17:38, Ville Syrjälä wrote:
> > On Mon, Oct 16, 2023 at 11:08:03AM +0300, Jouni Högander wrote:
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
> >> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> >> Cc: José Roberto de Souza <jose.souza@intel.com>
> >>
> >> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
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
> > 
> > This I think is broken. The old plane state and its fence can still be
> > in use by the previous commit, so we cannot mutate it here. Thus we
> > really need to get the implicit fence from the old fb chained into the
> > new plane state's fence.
> Is it even needed though? If new_plane_state always calls prepare_fb.

It's explained in the comment.

-- 
Ville Syrjälä
Intel
