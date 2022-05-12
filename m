Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 83C9752495B
	for <lists+intel-gfx@lfdr.de>; Thu, 12 May 2022 11:45:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B77FC10F166;
	Thu, 12 May 2022 09:45:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9991710F0AD
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 May 2022 09:45:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652348715; x=1683884715;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=P6RdkDC0KBIOa7Fyu9IHPfQuWhqGqoCazjy2C/R7KAk=;
 b=dZTTCmF9hehcIXh8rMwEoOB8/FyUcZCINSK+e/EiZaslftuUI7VEBh/5
 cw8MS3Q4uB/bcLvQi3JNiDeRU2Egpu+SCykdHU2gXzg7lyMY/9Nv+Lrht
 Gl3yOia+htzUkqrQT4ehIwt11JEfIVkDjBePVqpNdczUOOj+PDYqLQ+IH
 9x+jkurQeDfdSjJlPeTKtAjWhnkpM2/NYAZLjJvOxwwKP2KFqNUW+th8L
 ArPcJvoiKciN1ZN9a/kWb2DlDuyf07qvOxREmaQyPDDv4DoTMn5vnRS9x
 dO6rLhkVn+X6Z+ejaI+1XsIXZLYFQOSJYfZ5ivxMeQ3KQOVCLAiWbrtfs g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10344"; a="250477397"
X-IronPort-AV: E=Sophos;i="5.91,219,1647327600"; d="scan'208";a="250477397"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2022 02:45:15 -0700
X-IronPort-AV: E=Sophos;i="5.91,219,1647327600"; d="scan'208";a="594590570"
Received: from ksadlows-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.130.178])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2022 02:45:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220511224728.459724-1-manasi.d.navare@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220511224728.459724-1-manasi.d.navare@intel.com>
Date: Thu, 12 May 2022 12:45:09 +0300
Message-ID: <87fslfhyoq.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Add a separate
 crtc_enable hook for SKL+
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

On Wed, 11 May 2022, Manasi Navare <manasi.d.navare@intel.com> wrote:
> Currently we reuse hsw_crtc_enable for SKL+ platforms.
> But this has added a lot of platform checks for SKL+ platforms.
> So its time to move the code to a separate crtc_enable hook
> for SKL+ platforms.

This leaves behind a ton of unused code paths in hsw_crtc_enable, which
needs cleanup.

BR,
Jani.

>
> No functional changes here.
>
> Suggested-by: Jani Nikula <jani.nikula@intel.com>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 74 +++++++++++++++++++-
>  1 file changed, 73 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 806d50b302ab..e2e228073e2e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1895,6 +1895,78 @@ static void hsw_configure_cpu_transcoder(const str=
uct intel_crtc_state *crtc_sta
>  	hsw_set_transconf(crtc_state);
>  }
>=20=20
> +static void skl_crtc_enable(struct intel_atomic_state *state,
> +			    struct intel_crtc *crtc)
> +{
> +	const struct intel_crtc_state *new_crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	enum pipe pipe =3D crtc->pipe;
> +	enum transcoder cpu_transcoder =3D new_crtc_state->cpu_transcoder;
> +	bool psl_clkgate_wa;
> +
> +	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
> +		return;
> +
> +	if (!new_crtc_state->bigjoiner_pipes) {
> +		intel_encoders_pre_pll_enable(state, crtc);
> +
> +		if (new_crtc_state->shared_dpll)
> +			intel_enable_shared_dpll(new_crtc_state);
> +
> +		intel_encoders_pre_enable(state, crtc);
> +	} else {
> +		icl_ddi_bigjoiner_pre_enable(state, new_crtc_state);
> +	}
> +
> +	intel_dsc_enable(new_crtc_state);
> +
> +	if (DISPLAY_VER(dev_priv) >=3D 13)
> +		intel_uncompressed_joiner_enable(new_crtc_state);
> +
> +	intel_set_pipe_src_size(new_crtc_state);
> +	bdw_set_pipemisc(new_crtc_state);
> +
> +	if (!intel_crtc_is_bigjoiner_slave(new_crtc_state) &&
> +	    !transcoder_is_dsi(cpu_transcoder))
> +		hsw_configure_cpu_transcoder(new_crtc_state);
> +
> +	crtc->active =3D true;
> +
> +	/* Display WA #1180: WaDisableScalarClockGating: glk */
> +	psl_clkgate_wa =3D DISPLAY_VER(dev_priv) =3D=3D 10 &&
> +		new_crtc_state->pch_pfit.enabled;
> +	if (psl_clkgate_wa)
> +		glk_pipe_scaler_clock_gating_wa(dev_priv, pipe, true);
> +
> +	skl_pfit_enable(new_crtc_state);
> +
> +	/*
> +	 * On ILK+ LUT must be loaded before the pipe is running but with
> +	 * clocks enabled
> +	 */
> +	intel_color_load_luts(new_crtc_state);
> +	intel_color_commit_noarm(new_crtc_state);
> +	intel_color_commit_arm(new_crtc_state);
> +
> +	hsw_set_linetime_wm(new_crtc_state);
> +
> +	if (DISPLAY_VER(dev_priv) >=3D 11)
> +		icl_set_pipe_chicken(new_crtc_state);
> +
> +	intel_initial_watermarks(state, crtc);
> +
> +	if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
> +		intel_crtc_vblank_on(new_crtc_state);
> +
> +	intel_encoders_enable(state, crtc);
> +
> +	if (psl_clkgate_wa) {
> +		intel_crtc_wait_for_next_vblank(crtc);
> +		glk_pipe_scaler_clock_gating_wa(dev_priv, pipe, false);
> +	}
> +}
> +
>  static void hsw_crtc_enable(struct intel_atomic_state *state,
>  			    struct intel_crtc *crtc)
>  {
> @@ -9231,7 +9303,7 @@ static const struct drm_mode_config_funcs intel_mod=
e_funcs =3D {
>=20=20
>  static const struct drm_i915_display_funcs skl_display_funcs =3D {
>  	.get_pipe_config =3D hsw_get_pipe_config,
> -	.crtc_enable =3D hsw_crtc_enable,
> +	.crtc_enable =3D skl_crtc_enable,
>  	.crtc_disable =3D hsw_crtc_disable,
>  	.commit_modeset_enables =3D skl_commit_modeset_enables,
>  	.get_initial_plane_config =3D skl_get_initial_plane_config,

--=20
Jani Nikula, Intel Open Source Graphics Center
