Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 073359B61A6
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 12:30:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22FFB10E039;
	Wed, 30 Oct 2024 11:30:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LSN0eZ5w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F1A910E039
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2024 11:30:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730287842; x=1761823842;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=dLD0pWA3dGm2S49h0BS9I6LztTUBinv6ixj9K1a1o/A=;
 b=LSN0eZ5wlRzF0/bSIZKRN9hDEfMWaS/luf/u7fpbFEB4Oyz4+UXpcZ+2
 rwTEm0YDnQVlcUq/o/9ePIj0JqkDtmhrWWbBpOZSxO/vPQfCe5cCzzx4h
 f3gGtGk8wvG8S971CBIFGjYjXyfkFnfhrwsyE6OXKEEO104KWAp+CD3bu
 0vyfRC8/QeWJ3rLyAJtwoJsCMgjlH6CmKkjGNf+jzNIVZYMf1r7mkRPgH
 DSz2aoiAjOyRXV6wPi8FNoRmIaDAQJNGpyUHv8A9B+24I4HQa2A2/dk6y
 EjAPQJxOVjwAC/m3leVktiwmk3JYIZYz4aHPtUMgc8/+tX+RHzEV35Fmt A==;
X-CSE-ConnectionGUID: UUleZwKTTriTKCguQepo1A==
X-CSE-MsgGUID: /m7C6E1gQJKbUWlFRwzo9A==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="47458456"
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="47458456"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 04:30:36 -0700
X-CSE-ConnectionGUID: wcCv5WBDS6W17NhwSkoTSg==
X-CSE-MsgGUID: vuswF7cSRPSPN7I/rSlunA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="86841221"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.122])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 04:30:34 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 04/11] drm/i915/cdclk: Extract intel_audio_min_cdclk()
In-Reply-To: <20241029215217.3697-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241029215217.3697-1-ville.syrjala@linux.intel.com>
 <20241029215217.3697-5-ville.syrjala@linux.intel.com>
Date: Wed, 30 Oct 2024 13:30:31 +0200
Message-ID: <87ldy5n7zc.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Tue, 29 Oct 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Pull the audio min cdclk calculation into a helper and hide
> it inside intel_audio.c in order to keep most audio related
> details in one place.
>
> The one audio related thing that remains in intel_cdclk.c
> is commit 451eaa1a614c ("drm/i915: Bump GLK CDCLK frequency when
> driving multiple pipes") but given that's implemented in terms
> of the cdclk_state I think it should stay put.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_audio.c | 45 ++++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_audio.h |  1 +
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 37 +-----------------
>  3 files changed, 47 insertions(+), 36 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm=
/i915/display/intel_audio.c
> index 32aa9ec1a204..82c45b24417a 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -978,6 +978,51 @@ static void glk_force_audio_cdclk(struct drm_i915_pr=
ivate *i915,
>  	drm_modeset_acquire_fini(&ctx);
>  }
>=20=20
> +int intel_audio_min_cdclk(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display =3D to_intel_display(crtc_state);
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
> +	int min_cdclk =3D 0;
> +
> +	/* BSpec says "Do not use DisplayPort with CDCLK less than 432 MHz,
> +	 * audio enabled, port width x4, and link rate HBR2 (5.4 GHz), or else
> +	 * there may be audio corruption or screen corruption." This cdclk
> +	 * restriction for GLK is 316.8 MHz.
> +	 */
> +	if (intel_crtc_has_dp_encoder(crtc_state) &&
> +	    crtc_state->has_audio &&
> +	    crtc_state->port_clock >=3D 540000 &&
> +	    crtc_state->lane_count =3D=3D 4) {
> +		if (DISPLAY_VER(display) =3D=3D 10) {
> +			/* Display WA #1145: glk */
> +			min_cdclk =3D max(316800, min_cdclk);
> +		} else if (DISPLAY_VER(display) =3D=3D 9 || IS_BROADWELL(dev_priv)) {
> +			/* Display WA #1144: skl,bxt */
> +			min_cdclk =3D max(432000, min_cdclk);
> +		}
> +	}
> +
> +	/*
> +	 * According to BSpec, "The CD clock frequency must be at least twice
> +	 * the frequency of the Azalia BCLK." and BCLK is 96 MHz by default.
> +	 */
> +	if (crtc_state->has_audio && DISPLAY_VER(display) >=3D 9)
> +		min_cdclk =3D max(2 * 96000, min_cdclk);
> +
> +	/*
> +	 * "For DP audio configuration, cdclk frequency shall be set to
> +	 *  meet the following requirements:
> +	 *  DP Link Frequency(MHz) | Cdclk frequency(MHz)
> +	 *  270                    | 320 or higher
> +	 *  162                    | 200 or higher"
> +	 */
> +	if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
> +	    intel_crtc_has_dp_encoder(crtc_state) && crtc_state->has_audio)
> +		min_cdclk =3D max(crtc_state->port_clock, min_cdclk);
> +
> +	return min_cdclk;
> +}
> +
>  static unsigned long i915_audio_component_get_power(struct device *kdev)
>  {
>  	struct intel_display *display =3D to_intel_display(kdev);
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.h b/drivers/gpu/drm=
/i915/display/intel_audio.h
> index 576c061d72a4..1bafc155434a 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.h
> +++ b/drivers/gpu/drm/i915/display/intel_audio.h
> @@ -27,6 +27,7 @@ void intel_audio_codec_get_config(struct intel_encoder =
*encoder,
>  				  struct intel_crtc_state *crtc_state);
>  void intel_audio_cdclk_change_pre(struct drm_i915_private *dev_priv);
>  void intel_audio_cdclk_change_post(struct drm_i915_private *dev_priv);
> +int intel_audio_min_cdclk(const struct intel_crtc_state *crtc_state);
>  void intel_audio_init(struct drm_i915_private *dev_priv);
>  void intel_audio_register(struct drm_i915_private *i915);
>  void intel_audio_deinit(struct drm_i915_private *dev_priv);
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index 3103ecab980c..89d12c521411 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2858,42 +2858,7 @@ int intel_crtc_compute_min_cdclk(const struct inte=
l_crtc_state *crtc_state)
>=20=20
>  	min_cdclk =3D intel_pixel_rate_to_cdclk(crtc_state);
>  	min_cdclk =3D max(hsw_ips_min_cdclk(crtc_state), min_cdclk);
> -
> -	/* BSpec says "Do not use DisplayPort with CDCLK less than 432 MHz,
> -	 * audio enabled, port width x4, and link rate HBR2 (5.4 GHz), or else
> -	 * there may be audio corruption or screen corruption." This cdclk
> -	 * restriction for GLK is 316.8 MHz.
> -	 */
> -	if (intel_crtc_has_dp_encoder(crtc_state) &&
> -	    crtc_state->has_audio &&
> -	    crtc_state->port_clock >=3D 540000 &&
> -	    crtc_state->lane_count =3D=3D 4) {
> -		if (DISPLAY_VER(display) =3D=3D 10) {
> -			/* Display WA #1145: glk */
> -			min_cdclk =3D max(316800, min_cdclk);
> -		} else if (DISPLAY_VER(display) =3D=3D 9 || IS_BROADWELL(dev_priv)) {
> -			/* Display WA #1144: skl,bxt */
> -			min_cdclk =3D max(432000, min_cdclk);
> -		}
> -	}
> -
> -	/*
> -	 * According to BSpec, "The CD clock frequency must be at least twice
> -	 * the frequency of the Azalia BCLK." and BCLK is 96 MHz by default.
> -	 */
> -	if (crtc_state->has_audio && DISPLAY_VER(display) >=3D 9)
> -		min_cdclk =3D max(2 * 96000, min_cdclk);
> -
> -	/*
> -	 * "For DP audio configuration, cdclk frequency shall be set to
> -	 *  meet the following requirements:
> -	 *  DP Link Frequency(MHz) | Cdclk frequency(MHz)
> -	 *  270                    | 320 or higher
> -	 *  162                    | 200 or higher"
> -	 */
> -	if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
> -	    intel_crtc_has_dp_encoder(crtc_state) && crtc_state->has_audio)
> -		min_cdclk =3D max(crtc_state->port_clock, min_cdclk);
> +	min_cdclk =3D max(intel_audio_min_cdclk(crtc_state), min_cdclk);
>=20=20
>  	/*
>  	 * On Valleyview some DSI panels lose (v|h)sync when the clock is lower

--=20
Jani Nikula, Intel
