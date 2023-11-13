Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D8AE27EA07F
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Nov 2023 16:49:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 248C010E165;
	Mon, 13 Nov 2023 15:49:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D0B710E3C0
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Nov 2023 15:49:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699890579; x=1731426579;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=CimKklazM7gQqoBCgjCbq+Sc+R+T/Lvkb1ibQM7XsZg=;
 b=MPsBjJ/i6z6eZN96lQ4XtpEJ8lVsHaif6Gm+KiiYFknWG4kpa9rGFuR9
 NP0gqUQo87JQMS6yP54edIzS74i7EEHIv6rvXcF5ooYtUbAu57bRssqT6
 8Hmnd/hrNjEEAORlQnzjQFoW45JKrAFa07fdeWDdVgRevDO+YaAmkTs1t
 7wVYdY8ow3qShkK9mmL6VRbCFwIE9DeImd1W3+MrjsX2JmZmWoCUWRrW1
 H2WnlJg1BsHTMsA1a5auy1BuGuRdvPV73/dZu192MXWCglfF9RWMp0iMA
 L4ZTpvV/AlN7kMg3ozlam4Ux4oFOWrNXJP2EtR6CumKao9dLXpnXNINGx g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="394361133"
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; d="scan'208";a="394361133"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2023 07:49:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="1095786815"
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; d="scan'208";a="1095786815"
Received: from cgheban-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.92])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2023 07:49:35 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231106211915.13406-11-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231106211915.13406-1-ville.syrjala@linux.intel.com>
 <20231106211915.13406-11-ville.syrjala@linux.intel.com>
Date: Mon, 13 Nov 2023 17:49:32 +0200
Message-ID: <87leb1tzzn.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 10/11] drm/i915: Push audio_{enable,
 disable}() to the pre/post pane update stage
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

On Mon, 06 Nov 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Relocate the audio enable/disable from the full modeset hooks into
> the common pre/post plane update stage of the commit. Audio fastset
> is within easy reach now.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 31 +++++++++++++++-----
>  1 file changed, 24 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index d606befa007c..98d4fcd28073 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -990,6 +990,24 @@ static bool vrr_disabling(const struct intel_crtc_st=
ate *old_crtc_state,
>  		  vrr_params_changed(old_crtc_state, new_crtc_state)));
>  }
>=20=20
> +static bool audio_enabling(const struct intel_crtc_state *old_crtc_state,
> +			   const struct intel_crtc_state *new_crtc_state)
> +{
> +	if (!new_crtc_state->hw.active)
> +		return false;

Makes me wonder if these check should've been added to the
is_enabling/is_disabling macros instead. *shrug*

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> +
> +	return is_enabling(has_audio, old_crtc_state, new_crtc_state);
> +}
> +
> +static bool audio_disabling(const struct intel_crtc_state *old_crtc_stat=
e,
> +			    const struct intel_crtc_state *new_crtc_state)
> +{
> +	if (!old_crtc_state->hw.active)
> +		return false;
> +
> +	return is_disabling(has_audio, old_crtc_state, new_crtc_state);
> +}
> +
>  #undef is_disabling
>  #undef is_enabling
>=20=20
> @@ -1030,6 +1048,9 @@ static void intel_post_plane_update(struct intel_at=
omic_state *state,
>=20=20
>  	if (intel_crtc_needs_color_update(new_crtc_state))
>  		intel_color_post_update(new_crtc_state);
> +
> +	if (audio_enabling(old_crtc_state, new_crtc_state))
> +		intel_encoders_audio_enable(state, crtc);
>  }
>=20=20
>  static void intel_crtc_enable_flip_done(struct intel_atomic_state *state,
> @@ -1113,6 +1134,9 @@ static void intel_pre_plane_update(struct intel_ato=
mic_state *state,
>  		intel_crtc_update_active_timings(old_crtc_state, false);
>  	}
>=20=20
> +	if (audio_disabling(old_crtc_state, new_crtc_state))
> +		intel_encoders_audio_disable(state, crtc);
> +
>  	intel_drrs_deactivate(old_crtc_state);
>=20=20
>  	intel_psr_pre_plane_update(state, crtc);
> @@ -1503,7 +1527,6 @@ static void ilk_crtc_enable(struct intel_atomic_sta=
te *state,
>  	intel_crtc_vblank_on(new_crtc_state);
>=20=20
>  	intel_encoders_enable(state, crtc);
> -	intel_encoders_audio_enable(state, crtc);
>=20=20
>  	if (HAS_PCH_CPT(dev_priv))
>  		intel_wait_for_pipe_scanline_moving(crtc);
> @@ -1677,7 +1700,6 @@ static void hsw_crtc_enable(struct intel_atomic_sta=
te *state,
>  		intel_crtc_vblank_on(new_crtc_state);
>=20=20
>  	intel_encoders_enable(state, crtc);
> -	intel_encoders_audio_enable(state, crtc);
>=20=20
>  	if (psl_clkgate_wa) {
>  		intel_crtc_wait_for_next_vblank(crtc);
> @@ -1729,7 +1751,6 @@ static void ilk_crtc_disable(struct intel_atomic_st=
ate *state,
>  	intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, false);
>  	intel_set_pch_fifo_underrun_reporting(dev_priv, pipe, false);
>=20=20
> -	intel_encoders_audio_disable(state, crtc);
>  	intel_encoders_disable(state, crtc);
>=20=20
>  	intel_crtc_vblank_off(old_crtc_state);
> @@ -1764,7 +1785,6 @@ static void hsw_crtc_disable(struct intel_atomic_st=
ate *state,
>  	 * Need care with mst->ddi interactions.
>  	 */
>  	if (!intel_crtc_is_bigjoiner_slave(old_crtc_state)) {
> -		intel_encoders_audio_disable(state, crtc);
>  		intel_encoders_disable(state, crtc);
>  		intel_encoders_post_disable(state, crtc);
>  	}
> @@ -2034,7 +2054,6 @@ static void valleyview_crtc_enable(struct intel_ato=
mic_state *state,
>  	intel_crtc_vblank_on(new_crtc_state);
>=20=20
>  	intel_encoders_enable(state, crtc);
> -	intel_encoders_audio_enable(state, crtc);
>  }
>=20=20
>  static void i9xx_crtc_enable(struct intel_atomic_state *state,
> @@ -2076,7 +2095,6 @@ static void i9xx_crtc_enable(struct intel_atomic_st=
ate *state,
>  	intel_crtc_vblank_on(new_crtc_state);
>=20=20
>  	intel_encoders_enable(state, crtc);
> -	intel_encoders_audio_enable(state, crtc);
>=20=20
>  	/* prevents spurious underruns */
>  	if (DISPLAY_VER(dev_priv) =3D=3D 2)
> @@ -2113,7 +2131,6 @@ static void i9xx_crtc_disable(struct intel_atomic_s=
tate *state,
>  	if (DISPLAY_VER(dev_priv) =3D=3D 2)
>  		intel_crtc_wait_for_next_vblank(crtc);
>=20=20
> -	intel_encoders_audio_disable(state, crtc);
>  	intel_encoders_disable(state, crtc);
>=20=20
>  	intel_crtc_vblank_off(old_crtc_state);

--=20
Jani Nikula, Intel
