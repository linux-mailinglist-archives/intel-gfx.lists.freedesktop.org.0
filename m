Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60849697E17
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Feb 2023 15:11:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 859D310E135;
	Wed, 15 Feb 2023 14:11:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 721F610E135
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Feb 2023 14:11:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676470267; x=1708006267;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=REP7cc9ydwl79qLQya7fr45yVNED36+yKbpNVIj5i98=;
 b=VRCQT+E2hAG06by+VtGco8vbh5U7vHlrkyRnDa4lEt1vt5hltqu4w9Xd
 /bL7A+gKVUZw57REMguyaveaetm0N5Tyy8DI5Z7o1LkbNZ6LXNbPqNaKq
 oDoAFgvoo9qg7xv0cj6XtjriHnoZ5/PluunJUTBlIHhPh6NZK4xRYzFZm
 8zXqDfbSEr3WHOT0jph1tnFsm99Tww2gd2SrvFiBNwgzmD0HTn9jXc4R+
 m6tif2WcWe5n+bsRPEexgFmFVQW+lICLCmjEpkJ4ezfJo6TSrjJGTqlJV
 ftthXNda1HvplFzGzzGBmTV+/VKc5a8rdoXyifpzbndSvgWGdUbKF/dWf A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="396056952"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="396056952"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 06:11:06 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="778802922"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="778802922"
Received: from gchung-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.51.244])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 06:11:05 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230215135616.30411-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230214134739.25077-1-ville.syrjala@linux.intel.com>
 <20230215135616.30411-1-ville.syrjala@linux.intel.com>
Date: Wed, 15 Feb 2023 16:11:02 +0200
Message-ID: <87lekzqart.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 1/3] drm/i915: Make backlight setup
 debugs consistent
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

On Wed, 15 Feb 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> It's confusing to debug backlight issues when one can't
> easily even tell what kind of backlight control was
> selected. Sprinkle uniform debug messages to all the
> backlight setup functions.
>
> Also the one that was already there (ext_pwm) was
> using drm_info() for some reason. I don't think that's
> warranted so switch it to drm_dbg_kms() as well.
>
> v2: Deal with AUX backlights too (Jani)
>     Move the VLV/CHV initial pipe debug there too (Jani)
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  .../gpu/drm/i915/display/intel_backlight.c    | 36 +++++++++++++++++--
>  drivers/gpu/drm/i915/display/intel_dp.c       |  5 ---
>  .../drm/i915/display/intel_dp_aux_backlight.c | 29 +++++++++++----
>  .../i915/display/intel_dsi_dcs_backlight.c    |  5 +++
>  4 files changed, 62 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu=
/drm/i915/display/intel_backlight.c
> index a4e4b7f79e4d..cb1e4423decb 100644
> --- a/drivers/gpu/drm/i915/display/intel_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_backlight.c
> @@ -1270,6 +1270,10 @@ static int lpt_setup_backlight(struct intel_connec=
tor *connector, enum pipe unus
>  			       cpu_ctl2 & ~BLM_PWM_ENABLE);
>  	}
>=20=20
> +	drm_dbg_kms(&i915->drm,
> +		    "[CONNECTOR:%d:%s] Using native PCH PWM for backlight control\n",
> +		    connector->base.base.id, connector->base.name);
> +
>  	return 0;
>  }
>=20=20
> @@ -1297,6 +1301,10 @@ static int pch_setup_backlight(struct intel_connec=
tor *connector, enum pipe unus
>  	panel->backlight.pwm_enabled =3D (cpu_ctl2 & BLM_PWM_ENABLE) &&
>  		(pch_ctl1 & BLM_PCH_PWM_ENABLE);
>=20=20
> +	drm_dbg_kms(&i915->drm,
> +		    "[CONNECTOR:%d:%s] Using native PCH PWM for backlight control\n",
> +		    connector->base.base.id, connector->base.name);
> +
>  	return 0;
>  }
>=20=20
> @@ -1335,6 +1343,10 @@ static int i9xx_setup_backlight(struct intel_conne=
ctor *connector, enum pipe unu
>=20=20
>  	panel->backlight.pwm_enabled =3D val !=3D 0;
>=20=20
> +	drm_dbg_kms(&i915->drm,
> +		    "[CONNECTOR:%d:%s] Using native PWM for backlight control\n",
> +		    connector->base.base.id, connector->base.name);
> +
>  	return 0;
>  }
>=20=20
> @@ -1364,6 +1376,10 @@ static int i965_setup_backlight(struct intel_conne=
ctor *connector, enum pipe unu
>=20=20
>  	panel->backlight.pwm_enabled =3D ctl2 & BLM_PWM_ENABLE;
>=20=20
> +	drm_dbg_kms(&i915->drm,
> +		    "[CONNECTOR:%d:%s] Using native PWM for backlight control\n",
> +		    connector->base.base.id, connector->base.name);
> +
>  	return 0;
>  }
>=20=20
> @@ -1392,6 +1408,10 @@ static int vlv_setup_backlight(struct intel_connec=
tor *connector, enum pipe pipe
>=20=20
>  	panel->backlight.pwm_enabled =3D ctl2 & BLM_PWM_ENABLE;
>=20=20
> +	drm_dbg_kms(&i915->drm,
> +		    "[CONNECTOR:%d:%s] Using native PWM for backlight control (on pipe=
 %c)\n",
> +		    connector->base.base.id, connector->base.name, pipe_name(pipe));
> +
>  	return 0;
>  }
>=20=20
> @@ -1428,6 +1448,11 @@ bxt_setup_backlight(struct intel_connector *connec=
tor, enum pipe unused)
>=20=20
>  	panel->backlight.pwm_enabled =3D pwm_ctl & BXT_BLC_PWM_ENABLE;
>=20=20
> +	drm_dbg_kms(&i915->drm,
> +		    "[CONNECTOR:%d:%s] Using native PWM for backlight control (control=
ler=3D%d)\n",
> +		    connector->base.base.id, connector->base.name,
> +		    panel->backlight.controller);
> +
>  	return 0;
>  }
>=20=20
> @@ -1490,6 +1515,11 @@ cnp_setup_backlight(struct intel_connector *connec=
tor, enum pipe unused)
>=20=20
>  	panel->backlight.pwm_enabled =3D pwm_ctl & BXT_BLC_PWM_ENABLE;
>=20=20
> +	drm_dbg_kms(&i915->drm,
> +		    "[CONNECTOR:%d:%s] Using native PCH PWM for backlight control (con=
troller=3D%d)\n",
> +		    connector->base.base.id, connector->base.name,
> +		    panel->backlight.controller);
> +
>  	return 0;
>  }
>=20=20
> @@ -1538,8 +1568,10 @@ static int ext_pwm_setup_backlight(struct intel_co=
nnector *connector,
>  			NSEC_PER_SEC / get_vbt_pwm_freq(connector);
>  	}
>=20=20
> -	drm_info(&i915->drm, "Using %s PWM for LCD backlight control\n",
> -		 desc);
> +	drm_dbg_kms(&i915->drm,
> +		    "[CONNECTOR:%d:%s] Using %s PWM for backlight control\n",
> +		    connector->base.base.id, connector->base.name, desc);
> +
>  	return 0;
>  }
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index b92e0b0f5369..717be9a9ef5b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5256,11 +5256,6 @@ static void intel_edp_backlight_setup(struct intel=
_dp *intel_dp,
>=20=20
>  		if (pipe !=3D PIPE_A && pipe !=3D PIPE_B)
>  			pipe =3D PIPE_A;
> -
> -		drm_dbg_kms(&i915->drm,
> -			    "[CONNECTOR:%d:%s] using pipe %c for initial backlight setup\n",
> -			    connector->base.base.id, connector->base.name,
> -			    pipe_name(pipe));
>  	}
>=20=20
>  	intel_backlight_setup(connector, pipe);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/driv=
ers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index 83af95bce98d..8670b6956fee 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -273,6 +273,11 @@ intel_dp_aux_hdr_disable_backlight(const struct drm_=
connector_state *conn_state,
>  	panel->backlight.pwm_funcs->disable(conn_state, intel_backlight_invert_=
pwm_level(connector, 0));
>  }
>=20=20
> +static const char *dpcd_vs_pwm_str(bool aux)
> +{
> +	return aux ? "DPCD" : "PWM";
> +}
> +
>  static int
>  intel_dp_aux_hdr_setup_backlight(struct intel_connector *connector, enum=
 pipe pipe)
>  {
> @@ -282,11 +287,11 @@ intel_dp_aux_hdr_setup_backlight(struct intel_conne=
ctor *connector, enum pipe pi
>  		&connector->base.display_info.luminance_range;
>  	int ret;
>=20=20
> -	if (panel->backlight.edp.intel.sdr_uses_aux) {
> -		drm_dbg_kms(&i915->drm, "SDR backlight is controlled through DPCD\n");
> -	} else {
> -		drm_dbg_kms(&i915->drm, "SDR backlight is controlled through PWM\n");
> +	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] SDR backlight is controlled =
through %s\n",
> +		    connector->base.base.id, connector->base.name,
> +		    dpcd_vs_pwm_str(panel->backlight.edp.intel.sdr_uses_aux));
>=20=20
> +	if (!panel->backlight.edp.intel.sdr_uses_aux) {
>  		ret =3D panel->backlight.pwm_funcs->setup(connector, pipe);
>  		if (ret < 0) {
>  			drm_err(&i915->drm,
> @@ -303,8 +308,10 @@ intel_dp_aux_hdr_setup_backlight(struct intel_connec=
tor *connector, enum pipe pi
>  		panel->backlight.min =3D 0;
>  	}
>=20=20
> -	drm_dbg_kms(&i915->drm, "Using backlight range %d..%d\n", panel->backli=
ght.min,
> -		    panel->backlight.max);
> +	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] Using AUX HDR interface for =
backlight control (range %d..%d)\n",
> +		    connector->base.base.id, connector->base.name,
> +		    panel->backlight.min, panel->backlight.max);
> +
>=20=20
>  	panel->backlight.level =3D intel_dp_aux_hdr_get_backlight(connector, pi=
pe);
>  	panel->backlight.enabled =3D panel->backlight.level !=3D 0;
> @@ -386,6 +393,13 @@ static int intel_dp_aux_vesa_setup_backlight(struct =
intel_connector *connector,
>  	if (ret < 0)
>  		return ret;
>=20=20
> +	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] AUX VESA backlight enable is=
 controlled through %s\n",
> +		    connector->base.base.id, connector->base.name,
> +		    dpcd_vs_pwm_str(panel->backlight.edp.vesa.info.aux_enable));
> +	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] AUX VESA backlight level is =
controlled through %s\n",
> +		    connector->base.base.id, connector->base.name,
> +		    dpcd_vs_pwm_str(panel->backlight.edp.vesa.info.aux_set));
> +
>  	if (!panel->backlight.edp.vesa.info.aux_set || !panel->backlight.edp.ve=
sa.info.aux_enable) {
>  		ret =3D panel->backlight.pwm_funcs->setup(connector, pipe);
>  		if (ret < 0) {
> @@ -418,6 +432,9 @@ static int intel_dp_aux_vesa_setup_backlight(struct i=
ntel_connector *connector,
>  		}
>  	}
>=20=20
> +	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] Using AUX VESA interface for=
 backlight control\n",
> +		    connector->base.base.id, connector->base.name);
> +
>  	return 0;
>  }
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c b/dri=
vers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
> index 20e466d843ce..049443245310 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
> @@ -162,6 +162,7 @@ static void dcs_enable_backlight(const struct intel_c=
rtc_state *crtc_state,
>  static int dcs_setup_backlight(struct intel_connector *connector,
>  			       enum pipe unused)
>  {
> +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	struct intel_panel *panel =3D &connector->panel;
>=20=20
>  	if (panel->vbt.backlight.brightness_precision_bits > 8)
> @@ -171,6 +172,10 @@ static int dcs_setup_backlight(struct intel_connecto=
r *connector,
>=20=20
>  	panel->backlight.level =3D panel->backlight.max;
>=20=20
> +	drm_dbg_kms(&i915->drm,
> +		    "[CONNECTOR:%d:%s] Using DCS for backlight control\n",
> +		    connector->base.base.id, connector->base.name);
> +
>  	return 0;
>  }

--=20
Jani Nikula, Intel Open Source Graphics Center
