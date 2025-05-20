Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC8C3ABDCE4
	for <lists+intel-gfx@lfdr.de>; Tue, 20 May 2025 16:30:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7273C10E526;
	Tue, 20 May 2025 14:30:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X2A4hp1i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93A2B10E526;
 Tue, 20 May 2025 14:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747751400; x=1779287400;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=KX9qkbNJKc45eWNSYL/E33Qu2OHuRxGppGi9Q8c2m88=;
 b=X2A4hp1ij2bUf1QWOgLUfvXz4jN8jrgR2Z3KxISM9DE64fi3rIF+84FK
 LhhR7Lnuu8gNw8GY4FugdNQ+84gCzq0QRbV6dId/E+tSXD1nnFNtXusQ1
 /ELYQ47Se+dXeoGPaDUT+W51mYSzcD5pv4F6HAoByVcErmKMBhucRwRRh
 oJ0DScIr2w/Mpoy21go5RUbueBYWdW5XEqHW1Bxuff3pS9fFMsO/ECzA2
 yn9l6g8r+v13MwfC9lUgrSSxx9jFzD1zggl/vNETUh+xeUFGB4nNsmMNq
 u8B4jibdGniEmgjtvhXRZWACiuSA8j5axER6Zn5AD83Fb/jb3Js4py45W Q==;
X-CSE-ConnectionGUID: 3iHqmxyQTZiCOz1Jtjd4aQ==
X-CSE-MsgGUID: V0zcErN6RGC9p26FBs2Wiw==
X-IronPort-AV: E=McAfee;i="6700,10204,11439"; a="67243991"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="67243991"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 07:30:00 -0700
X-CSE-ConnectionGUID: aP3zbZlFQhWqOKB3G31QGQ==
X-CSE-MsgGUID: sSuWJd0HSZ+x5R0L75xYDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="170722840"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.245.168])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 07:29:58 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: Re: [PATCH] drm/i915/dp: Fix the enabling/disabling of audio SDP
 splitting
In-Reply-To: <20250520142219.1688401-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250520142219.1688401-1-imre.deak@intel.com>
Date: Tue, 20 May 2025 17:29:56 +0300
Message-ID: <87h61ftkwr.fsf@intel.com>
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

On Tue, 20 May 2025, Imre Deak <imre.deak@intel.com> wrote:
> Adjust the enabling/disabling steps of the DP audio SDP splitting
> according to a recent Bspec update. This moves the enabling to the audio
> codec enable sequence after the transcoder is enabled and disables SDP
> splitting explicitly during the audio disable sequence.
>
> Bspec requires waiting for a vblank event after the transcoder is
> enabled and before SDP splitting is enabled. There is no need for an
> explicit wait for this, since after the transcoder is enabled this
> vblank event is guaranteed to have happened via a flip done wait (see
> intel_atomic_commit_tail() -> drm_atomic_helper_wait_for_flip_done()).
>
> The bspec update is for LNL+ only, but the HW team clarified that this
> has been always the intended sequence on all platforms and bspec will be
> updated everywhere accordingly.
>
> The way SDP splitting was originally enabled matched the version of
> bspec at that time. Adding here the Fixes: line still, since this
> change fixes a FIFO underrun on PTL during output enabling when DSC is
> enabled.
>
> Bspec: 49283, 68943
> Fixes: 8853750dbad8 ("drm/i915: Enable SDP split for DP2.0")
> Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Acked-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_audio.c  | 27 +++++++++++++--------
>  drivers/gpu/drm/i915/display/intel_audio.h  |  1 -
>  drivers/gpu/drm/i915/display/intel_ddi.c    |  3 ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c |  2 --
>  4 files changed, 17 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
> index 40d8bbd8107d6..55af3a553c58a 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -397,6 +397,19 @@ hsw_audio_config_update(struct intel_encoder *encoder,
>  		hsw_hdmi_audio_config_update(encoder, crtc_state);
>  }
>  
> +static void intel_audio_sdp_split_update(const struct intel_crtc_state *crtc_state,
> +					 bool enable)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder trans = crtc_state->cpu_transcoder;
> +
> +	if (!HAS_DP20(display))
> +		return;
> +
> +	intel_de_rmw(display, AUD_DP_2DOT0_CTRL(trans), AUD_ENABLE_SDP_SPLIT,
> +		     enable && crtc_state->sdp_split_enable ? AUD_ENABLE_SDP_SPLIT : 0);
> +}
> +
>  static void hsw_audio_codec_disable(struct intel_encoder *encoder,
>  				    const struct intel_crtc_state *old_crtc_state,
>  				    const struct drm_connector_state *old_conn_state)
> @@ -430,6 +443,8 @@ static void hsw_audio_codec_disable(struct intel_encoder *encoder,
>  	if (needs_wa_14020863754(display))
>  		intel_de_rmw(display, AUD_CHICKENBIT_REG3, DACBE_DISABLE_MIN_HBLANK_FIX, 0);
>  
> +	intel_audio_sdp_split_update(old_crtc_state, false);
> +
>  	mutex_unlock(&display->audio.mutex);
>  }
>  
> @@ -555,6 +570,8 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP))
>  		enable_audio_dsc_wa(encoder, crtc_state);
>  
> +	intel_audio_sdp_split_update(crtc_state, true);
> +
>  	if (needs_wa_14020863754(display))
>  		intel_de_rmw(display, AUD_CHICKENBIT_REG3, 0, DACBE_DISABLE_MIN_HBLANK_FIX);
>  
> @@ -681,16 +698,6 @@ static void ibx_audio_codec_enable(struct intel_encoder *encoder,
>  	mutex_unlock(&display->audio.mutex);
>  }
>  
> -void intel_audio_sdp_split_update(const struct intel_crtc_state *crtc_state)
> -{
> -	struct intel_display *display = to_intel_display(crtc_state);
> -	enum transcoder trans = crtc_state->cpu_transcoder;
> -
> -	if (HAS_DP20(display))
> -		intel_de_rmw(display, AUD_DP_2DOT0_CTRL(trans), AUD_ENABLE_SDP_SPLIT,
> -			     crtc_state->sdp_split_enable ? AUD_ENABLE_SDP_SPLIT : 0);
> -}
> -
>  bool intel_audio_compute_config(struct intel_encoder *encoder,
>  				struct intel_crtc_state *crtc_state,
>  				struct drm_connector_state *conn_state)
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.h b/drivers/gpu/drm/i915/display/intel_audio.h
> index ad49eefa7182c..42cf886f3d24f 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.h
> +++ b/drivers/gpu/drm/i915/display/intel_audio.h
> @@ -31,6 +31,5 @@ int intel_audio_min_cdclk(const struct intel_crtc_state *crtc_state);
>  void intel_audio_init(struct intel_display *display);
>  void intel_audio_register(struct intel_display *display);
>  void intel_audio_deinit(struct intel_display *display);
> -void intel_audio_sdp_split_update(const struct intel_crtc_state *crtc_state);
>  
>  #endif /* __INTEL_AUDIO_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 0e6d618b53565..3d47d0ed3c37b 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3507,9 +3507,6 @@ static void intel_ddi_enable(struct intel_atomic_state *state,
>  
>  	intel_vrr_transcoder_enable(crtc_state);
>  
> -	/* Enable/Disable DP2.0 SDP split config before transcoder */
> -	intel_audio_sdp_split_update(crtc_state);
> -
>  	/* 128b/132b SST */
>  	if (!is_hdmi && intel_dp_is_uhbr(crtc_state)) {
>  		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 57602606acd5a..cc00a73898f14 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1336,8 +1336,6 @@ static void mst_stream_enable(struct intel_atomic_state *state,
>  			     FECSTALL_DIS_DPTSTREAM_DPTTG,
>  			     pipe_config->fec_enable ? FECSTALL_DIS_DPTSTREAM_DPTTG : 0);
>  
> -	intel_audio_sdp_split_update(pipe_config);
> -
>  	intel_enable_transcoder(pipe_config);
>  
>  	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, pipe_config, i) {

-- 
Jani Nikula, Intel
