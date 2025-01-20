Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DE6BA170D5
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2025 17:53:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C83ED10E44E;
	Mon, 20 Jan 2025 16:53:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nwte4SXc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC35810E08A
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jan 2025 16:53:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737392017; x=1768928017;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=PSj8sM2BJF/g3Luvj4bFuwkxNTJJ1M/BWyFmJ8Gv33Q=;
 b=Nwte4SXcwrV46Zigzhr0HJR1BHQ4vq9a5XmsVR3qkygfkj2hpqgEoId5
 A96FmrtRXjpvPoXD094XdJlZXhnPQb/jREsPMhnmUHmNH6yA/EQs0fqmu
 uYyLNSxx80x9ljOOGA1FV9lgjezY0jjUWczbdGFdrWSDINJAaC761gCDs
 UaVXLmgukHjSUJ6KzI+qRO4bQUTpS0SuGrJPR771euA6N8Ves09qIBwdE
 2Tdr0fqUHTji+m5wAXymgQucGNB3RNEaShWHNnfNQq8dxkUbnzZUJauV6
 8SqwzxsZCnhh4QY8MkXXgnE1jeD+jVlm1RtDi5JAT1SXnjtVVJmp0sG/q A==;
X-CSE-ConnectionGUID: JkNzPC+cQD6dWKFQl2S1eA==
X-CSE-MsgGUID: 45N6Eo8RSBy4MpcEoLeZkQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11321"; a="37671395"
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="37671395"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 08:53:33 -0800
X-CSE-ConnectionGUID: k6tkoE34Q6WB9cy9IBlxUA==
X-CSE-MsgGUID: 77G3IybIQvi8KBGZuqKk/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="107115072"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.106])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 08:53:29 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Paz Zcharya <pazz@chromium.org>
Subject: Re: [PATCH 6/8] drm/i915: Allow fastboot to fix up the vblank delay
In-Reply-To: <20250116201637.22486-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250116201637.22486-1-ville.syrjala@linux.intel.com>
 <20250116201637.22486-7-ville.syrjala@linux.intel.com>
Date: Mon, 20 Jan 2025 18:53:24 +0200
Message-ID: <87r04xpgu3.fsf@intel.com>
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

On Thu, 16 Jan 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> GOP might not agree with our idea of what the vblank delay should be.
> Reuse the LRR codepaths to fix that up via a fastset.
>
> The relevant registers aren't actually double buffered so this is a
> little bit dodgy. While I've not seen any real issues from frobbing
> these live, let's limit this to just the fastboot case (by only
> allowing it when old_crtc_state->inherited=3D=3Dtrue).
>
> Cc: Paz Zcharya <pazz@chromium.org>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 26 +++++++++++++++++---
>  1 file changed, 22 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 9b42d980ed7e..471fe7d80f30 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5358,6 +5358,19 @@ pipe_config_cx0pll_mismatch(struct drm_printer *p,=
 bool fastset,
>  	intel_cx0pll_dump_hw_state(display, b);
>  }
>=20=20
> +static bool allow_vblank_delay_fastset(const struct intel_crtc_state *ol=
d_crtc_state)
> +{
> +	struct intel_display *display =3D to_intel_display(old_crtc_state);
> +
> +	/*
> +	 * Allow fastboot to fix up vblank delay (handled via LRR
> +	 * codepaths), a bit dodgy as the registers aren't
> +	 * double buffered but seems to be working more or less...
> +	 */
> +	return HAS_LRR(display) && old_crtc_state->inherited &&
> +		!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DSI);
> +}
> +
>  bool
>  intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  			  const struct intel_crtc_state *pipe_config,
> @@ -5490,7 +5503,8 @@ intel_pipe_config_compare(const struct intel_crtc_s=
tate *current_config,
>  	PIPE_CONF_CHECK_I(name.crtc_hsync_start); \
>  	PIPE_CONF_CHECK_I(name.crtc_hsync_end); \
>  	PIPE_CONF_CHECK_I(name.crtc_vdisplay); \
> -	PIPE_CONF_CHECK_I(name.crtc_vblank_start); \
> +	if (!fastset || !allow_vblank_delay_fastset(current_config)) \
> +		PIPE_CONF_CHECK_I(name.crtc_vblank_start); \

Side note, part of me wants to change fastset to some variation of "full
modeset" because *all* the compare checks are for !fastset.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>  	PIPE_CONF_CHECK_I(name.crtc_vsync_start); \
>  	PIPE_CONF_CHECK_I(name.crtc_vsync_end); \
>  	if (!fastset || !pipe_config->update_lrr) { \
> @@ -6084,7 +6098,8 @@ static int intel_modeset_checks(struct intel_atomic=
_state *state)
>  static bool lrr_params_changed(const struct drm_display_mode *old_adjust=
ed_mode,
>  			       const struct drm_display_mode *new_adjusted_mode)
>  {
> -	return old_adjusted_mode->crtc_vblank_end !=3D new_adjusted_mode->crtc_=
vblank_end ||
> +	return old_adjusted_mode->crtc_vblank_start !=3D new_adjusted_mode->crt=
c_vblank_start ||
> +		old_adjusted_mode->crtc_vblank_end !=3D new_adjusted_mode->crtc_vblank=
_end ||
>  		old_adjusted_mode->crtc_vtotal !=3D new_adjusted_mode->crtc_vtotal;
>  }
>=20=20
> @@ -6098,11 +6113,14 @@ static void intel_crtc_check_fastset(const struct=
 intel_crtc_state *old_crtc_sta
>  	if (old_crtc_state->vrr.in_range !=3D new_crtc_state->vrr.in_range)
>  		new_crtc_state->update_lrr =3D false;
>=20=20
> -	if (!intel_pipe_config_compare(old_crtc_state, new_crtc_state, true))
> +	if (!intel_pipe_config_compare(old_crtc_state, new_crtc_state, true)) {
>  		drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] fastset requirement not met, for=
cing full modeset\n",
>  			    crtc->base.base.id, crtc->base.name);
> -	else
> +	} else {
> +		if (allow_vblank_delay_fastset(old_crtc_state))
> +			new_crtc_state->update_lrr =3D true;
>  		new_crtc_state->uapi.mode_changed =3D false;
> +	}
>=20=20
>  	if (intel_compare_link_m_n(&old_crtc_state->dp_m_n,
>  				   &new_crtc_state->dp_m_n))

--=20
Jani Nikula, Intel
