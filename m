Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB047EEC7F
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Nov 2023 08:14:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6133410E71B;
	Fri, 17 Nov 2023 07:14:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDB3A10E71B
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Nov 2023 07:14:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700205275; x=1731741275;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=8QrVuxMz+d10MISgleFV3QVyYE0RTw8nLxDccOw4L8U=;
 b=fxAFOWFL4QMUGIWjnO4f0MHbN8NartU91ELznmO2YG896Yy/PPoMqnK0
 poEBvCWFtMAn8YrFS7HItbwQKfhutoH20lTBUf0CAyK9OYfAfPmKaNlZT
 icQ/TbiHVaeMXbTgr4BhT5VPNCGcpDRpnq5wflsVtKskVem5BbyZxszFp
 eykldEc8hKXmBAX6vD0UMfvI36Cw+hEVflPFmQgiX4gUXQx9k/z5xwX2j
 DxxbHGt7THcmg3vIErGMFvSDLwZGFFm/EDX2h2xqyMI0JwZ8AmwCODUNh
 t1S7IPS1s15AvqPF7u0MGnhKTzOqGZCZ8OnBIRTr2O0MaekHDc5EEIBeV A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="388403854"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="388403854"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 23:14:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="759090098"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="759090098"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 16 Nov 2023 23:14:31 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Nov 2023 09:14:31 +0200
Date: Fri, 17 Nov 2023 09:14:31 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <ZVcS19ZKt2ui-4AH@intel.com>
References: <20231109153450.142185-1-maarten.lankhorst@linux.intel.com>
 <20231109153450.142185-3-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231109153450.142185-3-maarten.lankhorst@linux.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Use a different vblank worker
 for atomic unpin
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

On Thu, Nov 09, 2023 at 04:34:50PM +0100, Maarten Lankhorst wrote:
> For the atomic codepath we unpin_work in old_plane_state to unpin the
> old fb. As this happened after swapping state, this is allowed.
> 
> Use the unpin_work only as a barrier, and keep doing the actual
> unpinning in the atomic path.
> 
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> ---
>  .../gpu/drm/i915/display/intel_atomic_plane.c | 18 ++++++++++++
>  .../gpu/drm/i915/display/intel_atomic_plane.h |  2 ++
>  drivers/gpu/drm/i915/display/intel_crtc.c     | 28 +++++++++++++++++++
>  3 files changed, 48 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> index 06c2455bdd788..6ddb4f4ec79ac 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -1164,6 +1164,9 @@ intel_cleanup_plane_fb(struct drm_plane *plane,
>  	intel_display_rps_mark_interactive(dev_priv, state, false);
>  
>  	/* Should only be called after a successful intel_prepare_plane_fb()! */
> +	if (old_plane_state->unpin_work.vblank)
> +		drm_vblank_work_flush(&old_plane_state->unpin_work);

This feels rather convoluted. Can't we just schedule the cleanup work
to the vblank worker instead of the normal wq?

> +
>  	intel_plane_unpin_fb(old_plane_state);
>  }
>  
> @@ -1176,3 +1179,18 @@ void intel_plane_helper_add(struct intel_plane *plane)
>  {
>  	drm_plane_helper_add(&plane->base, &intel_plane_helper_funcs);
>  }
> +
> +/* Completion is enough */
> +static void intel_plane_cursor_vblank_work(struct kthread_work *base)
> +{ }
> +
> +void intel_plane_init_cursor_vblank_work(struct intel_plane_state *old_plane_state,
> +					 struct intel_plane_state *new_plane_state)
> +{
> +	if (!old_plane_state->ggtt_vma ||
> +	    old_plane_state->ggtt_vma == new_plane_state->ggtt_vma)
> +		return;
> +
> +	drm_vblank_work_init(&old_plane_state->unpin_work, old_plane_state->uapi.crtc,
> +			     intel_plane_cursor_vblank_work);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> index 191dad0efc8e6..5a897cf6fa021 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> @@ -66,5 +66,7 @@ int intel_plane_check_src_coordinates(struct intel_plane_state *plane_state);
>  void intel_plane_set_invisible(struct intel_crtc_state *crtc_state,
>  			       struct intel_plane_state *plane_state);
>  void intel_plane_helper_add(struct intel_plane *plane);
> +void intel_plane_init_cursor_vblank_work(struct intel_plane_state *old_plane_state,
> +					 struct intel_plane_state *new_plane_state);
>  
>  #endif /* __INTEL_ATOMIC_PLANE_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
> index 1fd068e6e26ca..755c40fd0ac13 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -559,6 +559,19 @@ void intel_pipe_update_start(struct intel_atomic_state *state,
>  	if (intel_crtc_needs_vblank_work(new_crtc_state))
>  		intel_crtc_vblank_work_init(new_crtc_state);
>  
> +	if (state->base.legacy_cursor_update) {
> +		struct intel_plane *plane;
> +		struct intel_plane_state *old_plane_state, *new_plane_state;
> +		int i;
> +
> +		for_each_oldnew_intel_plane_in_state(state, plane, old_plane_state,
> +						     new_plane_state, i) {
> +			if (old_plane_state->uapi.crtc == &crtc->base)
> +				intel_plane_init_cursor_vblank_work(old_plane_state,
> +								    new_plane_state);
> +		}
> +	}
> +
>  	intel_crtc_vblank_evade_scanlines(state, crtc, &min, &max, &vblank_start);
>  	if (min <= 0 || max <= 0)
>  		goto irq_disable;
> @@ -721,6 +734,21 @@ void intel_pipe_update_end(struct intel_atomic_state *state,
>  		new_crtc_state->uapi.event = NULL;
>  	}
>  
> +	if (state->base.legacy_cursor_update) {
> +		struct intel_plane *plane;
> +		struct intel_plane_state *old_plane_state;
> +		int i;
> +
> +		for_each_old_intel_plane_in_state(state, plane, old_plane_state, i) {
> +			if (old_plane_state->uapi.crtc == &crtc->base &&
> +			    old_plane_state->unpin_work.vblank) {
> +				drm_vblank_work_schedule(&old_plane_state->unpin_work,
> +							 drm_crtc_accurate_vblank_count(&crtc->base) + 1,
> +							 false);
> +			}
> +		}
> +	}
> +
>  	/*
>  	 * Send VRR Push to terminate Vblank. If we are already in vblank
>  	 * this has to be done _after_ sampling the frame counter, as
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
