Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 183C4BD367A
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 16:16:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B2CF10E459;
	Mon, 13 Oct 2025 14:16:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FplButhp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AB5E10E111;
 Mon, 13 Oct 2025 14:16:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760365006; x=1791901006;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=fkqfWTCAudc8rH47YSKCoUEZaAeCD7A17EPorOa8kWA=;
 b=FplButhpsZ5tvgsAmrArwDbePGK7SH8PaXeAaPu/SR5i/mc5SkN3j6gy
 lpA7sapK95HTU95ehczwzPBeiaUhvneF6gFv/Ptg4V9LeHQrUU9sn7F0b
 ZmRG/pq/60wdoWcZ7mdmKbVsArjEqhvmBfIGtLQEOl72L+NgGSi7Xd+gi
 lOmJfd74+RYThR/IKndtoafv7dTdKS/9W7inXxo/53rj28JbbIykRByaF
 GdY6O6naMDeCbFwgWJpIznqpKjICPDFgmmK8hNIHXEMk0pYT/GPWpIp2b
 QKQbgIKDI9BY0RGaEJ4RyAiiHtXqDJYUCU2KQCsb3HXQXu3Kk5neCcjBd g==;
X-CSE-ConnectionGUID: MbjeKKpGR9uuHo7gS8gfaQ==
X-CSE-MsgGUID: jVutb7X4Tk67ZoMp937fPw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="66329188"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="66329188"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 07:16:45 -0700
X-CSE-ConnectionGUID: En7BWmLCR0m8ZiWP6gP6WA==
X-CSE-MsgGUID: 5z/qOLcfRleR5z4uP/43Yw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,225,1754982000"; d="scan'208";a="180757531"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.105])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 07:16:43 -0700
Date: Mon, 13 Oct 2025 17:16:40 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jouni.hogander@intel.com, animesh.manna@intel.com
Subject: Re: [PATCH 3/8] drm/i915/vrr:
 s/intel_vrr_compute_config_late/intel_vrr_compute_guardband
Message-ID: <aO0JyEbsuygLrtlK@intel.com>
References: <20251013123559.1055429-1-ankit.k.nautiyal@intel.com>
 <20251013123559.1055429-4-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251013123559.1055429-4-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Mon, Oct 13, 2025 at 06:05:54PM +0530, Ankit Nautiyal wrote:
> The helper intel_vrr_compute_config_late() practically just computes the
> guardband. Rename intel_vrr_compute_config_late() to
> intel_vrr_compute_guardband().
> 
> Since we are going to compute the guardband and then move the
> vblank_start for optmizing guardband move it to
> intel_crtc_compute_config() which handles such changes.
> 
> v2: Move the function at the last after clocks, pipe_mode etc. are all
> set. (Ville)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
>  drivers/gpu/drm/i915/display/intel_vrr.c     | 2 +-
>  drivers/gpu/drm/i915/display/intel_vrr.h     | 2 +-
>  3 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 3f725553599e..ceee5ae99c2c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2431,6 +2431,8 @@ static int intel_crtc_compute_config(struct intel_atomic_state *state,
>  	if (crtc_state->has_pch_encoder)
>  		return ilk_fdi_compute_config(crtc, crtc_state);
>  
> +	intel_vrr_compute_guardband(crtc_state);
> +

Yeah, this probably makes most sense here. I was pondering if there's
anything in intel_crtc_compute_config() that needs to be done after
this and perhaps there is nothing. pipe_src perhaps we could do
afterwards but I suppose it doesn't really matter which way we do
that. We can move it later if desired.

I was first thinking that with the current method we could even use
pipe_src in the prefill/guardband calculations, but we actually don't
want to do that because we don't want the guardband to depend on the
pfit configuration. But pipe_mode should be good because you'd need
a full modeset anyway to change that (if we ignore DRRS that is).

One thing we'll probably want to do is fix up the pipe_mode.crtc_vblank_start
along with adjusted_mode.crtc_vblank_start, just to be sure they'll
remain in sync. But that'll belong in the patch where we fix up
adjusted_mode itself.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  	return 0;
>  }
>  
> @@ -4722,8 +4724,6 @@ intel_modeset_pipe_config_late(struct intel_atomic_state *state,
>  	struct drm_connector *connector;
>  	int i;
>  
> -	intel_vrr_compute_config_late(crtc_state);
> -
>  	for_each_new_connector_in_state(&state->base, connector,
>  					conn_state, i) {
>  		struct intel_encoder *encoder =
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 4bc14b5e685f..8d71d7dc9d12 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -433,7 +433,7 @@ intel_vrr_max_guardband(struct intel_crtc_state *crtc_state)
>  		   intel_vrr_max_vblank_guardband(crtc_state));
>  }
>  
> -void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
> +void intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
>  	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
> index 7317f8730089..bc9044621635 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -21,7 +21,7 @@ bool intel_vrr_possible(const struct intel_crtc_state *crtc_state);
>  void intel_vrr_check_modeset(struct intel_atomic_state *state);
>  void intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  			      struct drm_connector_state *conn_state);
> -void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state);
> +void intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state);
>  void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state);
>  void intel_vrr_enable(const struct intel_crtc_state *crtc_state);
>  void intel_vrr_send_push(struct intel_dsb *dsb,
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
