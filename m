Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C853497D4CF
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2024 13:26:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 494D610E80B;
	Fri, 20 Sep 2024 11:26:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hktI98hA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3DC210E80B
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2024 11:26:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726831606; x=1758367606;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=HSVH7rjjwisjaFmMYR5CJp2gYBEFWJh75mMvd/nFVvY=;
 b=hktI98hAurOfP0UeZKuij1ZiiJzsMdh8SbMRQT0AHt+xXrX9vhX0lJJi
 HZIXNGaNuLVKCyQDKWOLeO1My4//uveVtDc7R7GzmJU+EEYvBXNnCL/Yt
 o6GMCW540QF3bLSDTCE/KWO7aizP91seuSGpP/VwXidgCCbI0gt22fRk+
 Cr+H7D6bigifNrPVuKMgsteZjvbCKK+tTBkZTrQXvn8Dz16BSCKKKU/1O
 uX+jlbjTJplSJapxdUQfP3NaWwaV7/QWU86xsyPQa9QsB3TB/2E93LeNf
 HGogvmDhx9S1ByEl7Ot8zZJNEk/679oM54BiIUQ4kaxWewLV/NbJsDTbN Q==;
X-CSE-ConnectionGUID: nFE4RnfDTRWGTiBjhRpdDw==
X-CSE-MsgGUID: BBAbDFEnT9SoAxrUbgBBVw==
X-IronPort-AV: E=McAfee;i="6700,10204,11200"; a="25953600"
X-IronPort-AV: E=Sophos;i="6.10,244,1719903600"; d="scan'208";a="25953600"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2024 04:26:46 -0700
X-CSE-ConnectionGUID: 8HK2ewe/Rx2Yv0qINulOYQ==
X-CSE-MsgGUID: Foev6VXUSr+p3pe2tyFU2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,244,1719903600"; d="scan'208";a="70398878"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 20 Sep 2024 04:26:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 20 Sep 2024 14:26:42 +0300
Date: Fri, 20 Sep 2024 14:26:42 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Animesh Manna <animesh.manna@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.nikula@intel.com,
 jouni.hogander@intel.com, arun.r.murthy@intel.com,
 ankit.k.nautiyal@intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH v11 1/2] drm/i915/vrr: Split vrr-compute-config in two
 phases
Message-ID: <Zu1b8gFLa4g36sCw@intel.com>
References: <20240916075406.3521433-1-animesh.manna@intel.com>
 <20240916075406.3521433-2-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240916075406.3521433-2-animesh.manna@intel.com>
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

On Mon, Sep 16, 2024 at 01:24:05PM +0530, Animesh Manna wrote:
> As vrr guardband calculation is dependent on modified
> vblank start so better to compute late after all
> vblank adjustement.
> 
> v1: Initial version.
> v2: Split in a separate patch from panel-replay workaround. [Ankit]
> v3: Add a function for late vrr related computation. [Ville]
> 
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c |  2 ++
>  drivers/gpu/drm/i915/display/intel_vrr.c     | 30 +++++++++++++-------
>  drivers/gpu/drm/i915/display/intel_vrr.h     |  1 +
>  3 files changed, 22 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index fdf244a32b24..111e61eceafc 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4802,6 +4802,8 @@ intel_modeset_pipe_config_late(struct intel_atomic_state *state,
>  	struct drm_connector *connector;
>  	int i;
>  
> +	intel_vrr_compute_config_late(crtc_state);
> +
>  	for_each_new_connector_in_state(&state->base, connector,
>  					conn_state, i) {
>  		struct intel_encoder *encoder =
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 9a51f5bac307..2de1c04bf1a5 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -239,18 +239,26 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  			(crtc_state->hw.adjusted_mode.crtc_vtotal -
>  			 crtc_state->hw.adjusted_mode.vsync_end);
>  	}
> +}
>  
> -	/*
> -	 * For XE_LPD+, we use guardband and pipeline override
> -	 * is deprecated.
> -	 */
> -	if (DISPLAY_VER(display) >= 13) {
> -		crtc_state->vrr.guardband =
> -			crtc_state->vrr.vmin + 1 - adjusted_mode->crtc_vblank_start;
> -	} else {
> -		crtc_state->vrr.pipeline_full =
> -			min(255, crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start -
> -			    crtc_state->framestart_delay - 1);
> +void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> +
> +	if (crtc_state->vrr.enable) {

Never use that. VRR state must be computed correctly even when
VRR is not actually enabled. That is how we can simply toggle
VRR during fastsets. 

You want to check vrr.flipline just like
intel_vrr_set_transcoder_timings() does. We should perhaps add
a helper with a decent name for that purpose. intel_vrr_possible()
perhaps?

Also flip this condition around to eliminate the nasty
whole function indentation.

> +		/*
> +		 * For XE_LPD+, we use guardband and pipeline override
> +		 * is deprecated.
> +		 */

Could drop that redundant comment while at it.

> +		if (DISPLAY_VER(display) >= 13) {
> +			crtc_state->vrr.guardband =
> +				crtc_state->vrr.vmin + 1 - adjusted_mode->crtc_vblank_start;
> +		} else {
> +			crtc_state->vrr.pipeline_full =
> +				min(255, crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start -
> +				crtc_state->framestart_delay - 1);
> +		}
>  	}
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
> index 89937858200d..3127c94e9778 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -18,6 +18,7 @@ bool intel_vrr_is_in_range(struct intel_connector *connector, int vrefresh);
>  void intel_vrr_check_modeset(struct intel_atomic_state *state);
>  void intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  			      struct drm_connector_state *conn_state);
> +void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state);
>  void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state);
>  void intel_vrr_enable(const struct intel_crtc_state *crtc_state);
>  void intel_vrr_send_push(const struct intel_crtc_state *crtc_state);
> -- 
> 2.29.0

-- 
Ville Syrjälä
Intel
