Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D6C94697E23
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Feb 2023 15:16:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BE0810E135;
	Wed, 15 Feb 2023 14:16:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9787810E135
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Feb 2023 14:16:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676470591; x=1708006591;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=tvbhdlDFKfHGBlkpty2TV0WiN2sL8m0/PCGIR3UICy4=;
 b=V7Y9DoKDjeAxOoiHa7bOgY+mL2+VFhwCfdjy13VIwL6fClV0pXxvVZEJ
 ysrh0Yw6tlkTcoi5siIWQNObQneoGLqcuL7ZyGiG/wCI/rgaakPx14F9g
 GJ24GOnO7wga6113vxahGjqzolDpsb2Pht02yU6bMBo5UjNMuz/UPBVTx
 FV5E3RgHbo0LvHv5qI5M/v0N74JuzpchYZLUzvLyaGoLKHVlOMjw+tp/c
 clrci8ZhcJpQTKm6elhvbDdfqAXCAYEfRy5FE1mQK/DhAVx5+lDZwdxbR
 Mqgrs3AjGyMDztEMNovOPGDfclgl3W45fkhrl0WvhKSnGrOcZ3TByXByq Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="417653814"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="417653814"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 06:16:21 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="843588308"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="843588308"
Received: from gchung-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.51.244])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 06:16:20 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230215140021.2843-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230215140021.2843-1-ville.syrjala@linux.intel.com>
Date: Wed, 15 Feb 2023 16:16:17 +0200
Message-ID: <87ilg3qaj2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Include connector id+name in all
 backlight debugs/errors
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
> With multi panel machines becoming more prominent it's also
> important to know which connector's backlight we're talking
> about. Include that information in all the backlight debug/error
> messages.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  .../gpu/drm/i915/display/intel_backlight.c    | 60 ++++++++++++-------
>  .../drm/i915/display/intel_dp_aux_backlight.c | 55 ++++++++++-------
>  2 files changed, 72 insertions(+), 43 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu=
/drm/i915/display/intel_backlight.c
> index a4e4b7f79e4d..7e076bd5f07c 100644
> --- a/drivers/gpu/drm/i915/display/intel_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_backlight.c
> @@ -105,7 +105,8 @@ void intel_backlight_set_pwm_level(const struct drm_c=
onnector_state *conn_state,
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	struct intel_panel *panel =3D &connector->panel;
>=20=20
> -	drm_dbg_kms(&i915->drm, "set backlight PWM =3D %d\n", val);
> +	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] set backlight PWM =3D %d\n",
> +		    connector->base.base.id, connector->base.name, val);
>  	panel->backlight.pwm_funcs->set(conn_state, val);
>  }
>=20=20
> @@ -283,7 +284,8 @@ intel_panel_actually_set_backlight(const struct drm_c=
onnector_state *conn_state,
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	struct intel_panel *panel =3D &connector->panel;
>=20=20
> -	drm_dbg_kms(&i915->drm, "set backlight level =3D %d\n", level);
> +	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] set backlight level =3D %d\n=
",
> +		    connector->base.base.id, connector->base.name, level);
>=20=20
>  	panel->backlight.funcs->set(conn_state, level);
>  }
> @@ -345,7 +347,8 @@ static void lpt_disable_backlight(const struct drm_co=
nnector_state *old_conn_sta
>  	 */
>  	tmp =3D intel_de_read(i915, BLC_PWM_CPU_CTL2);
>  	if (tmp & BLM_PWM_ENABLE) {
> -		drm_dbg_kms(&i915->drm, "cpu backlight was enabled, disabling\n");
> +		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] CPU backlight was enabled, =
disabling\n",
> +			    connector->base.base.id, connector->base.name);
>  		intel_de_write(i915, BLC_PWM_CPU_CTL2, tmp & ~BLM_PWM_ENABLE);
>  	}
>=20=20
> @@ -458,7 +461,8 @@ void intel_backlight_disable(const struct drm_connect=
or_state *old_conn_state)
>  	 * another client is not activated.
>  	 */
>  	if (i915->drm.switch_power_state =3D=3D DRM_SWITCH_POWER_CHANGING) {
> -		drm_dbg_kms(&i915->drm, "Skipping backlight disable on vga switch\n");
> +		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] Skipping backlight disable =
on vga switch\n",
> +			    connector->base.base.id, connector->base.name);
>  		return;
>  	}
>=20=20
> @@ -482,7 +486,8 @@ static void lpt_enable_backlight(const struct intel_c=
rtc_state *crtc_state,
>=20=20
>  	pch_ctl1 =3D intel_de_read(i915, BLC_PWM_PCH_CTL1);
>  	if (pch_ctl1 & BLM_PCH_PWM_ENABLE) {
> -		drm_dbg_kms(&i915->drm, "pch backlight already enabled\n");
> +		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] PCH backlight already enabl=
ed\n",
> +			    connector->base.base.id, connector->base.name);
>  		pch_ctl1 &=3D ~BLM_PCH_PWM_ENABLE;
>  		intel_de_write(i915, BLC_PWM_PCH_CTL1, pch_ctl1);
>  	}
> @@ -533,14 +538,16 @@ static void pch_enable_backlight(const struct intel=
_crtc_state *crtc_state,
>=20=20
>  	cpu_ctl2 =3D intel_de_read(i915, BLC_PWM_CPU_CTL2);
>  	if (cpu_ctl2 & BLM_PWM_ENABLE) {
> -		drm_dbg_kms(&i915->drm, "cpu backlight already enabled\n");
> +		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] CPU backlight already enabl=
ed\n",
> +			    connector->base.base.id, connector->base.name);
>  		cpu_ctl2 &=3D ~BLM_PWM_ENABLE;
>  		intel_de_write(i915, BLC_PWM_CPU_CTL2, cpu_ctl2);
>  	}
>=20=20
>  	pch_ctl1 =3D intel_de_read(i915, BLC_PWM_PCH_CTL1);
>  	if (pch_ctl1 & BLM_PCH_PWM_ENABLE) {
> -		drm_dbg_kms(&i915->drm, "pch backlight already enabled\n");
> +		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] PCH backlight already enabl=
ed\n",
> +			    connector->base.base.id, connector->base.name);
>  		pch_ctl1 &=3D ~BLM_PCH_PWM_ENABLE;
>  		intel_de_write(i915, BLC_PWM_PCH_CTL1, pch_ctl1);
>  	}
> @@ -578,7 +585,8 @@ static void i9xx_enable_backlight(const struct intel_=
crtc_state *crtc_state,
>=20=20
>  	ctl =3D intel_de_read(i915, BLC_PWM_CTL);
>  	if (ctl & BACKLIGHT_DUTY_CYCLE_MASK_PNV) {
> -		drm_dbg_kms(&i915->drm, "backlight already enabled\n");
> +		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] backlight already enabled\n=
",
> +			    connector->base.base.id, connector->base.name);
>  		intel_de_write(i915, BLC_PWM_CTL, 0);
>  	}
>=20=20
> @@ -618,7 +626,8 @@ static void i965_enable_backlight(const struct intel_=
crtc_state *crtc_state,
>=20=20
>  	ctl2 =3D intel_de_read(i915, BLC_PWM_CTL2);
>  	if (ctl2 & BLM_PWM_ENABLE) {
> -		drm_dbg_kms(&i915->drm, "backlight already enabled\n");
> +		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] backlight already enabled\n=
",
> +			    connector->base.base.id, connector->base.name);
>  		ctl2 &=3D ~BLM_PWM_ENABLE;
>  		intel_de_write(i915, BLC_PWM_CTL2, ctl2);
>  	}
> @@ -653,7 +662,8 @@ static void vlv_enable_backlight(const struct intel_c=
rtc_state *crtc_state,
>=20=20
>  	ctl2 =3D intel_de_read(i915, VLV_BLC_PWM_CTL2(pipe));
>  	if (ctl2 & BLM_PWM_ENABLE) {
> -		drm_dbg_kms(&i915->drm, "backlight already enabled\n");
> +		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] backlight already enabled\n=
",
> +			    connector->base.base.id, connector->base.name);
>  		ctl2 &=3D ~BLM_PWM_ENABLE;
>  		intel_de_write(i915, VLV_BLC_PWM_CTL2(pipe), ctl2);
>  	}
> @@ -685,7 +695,8 @@ static void bxt_enable_backlight(const struct intel_c=
rtc_state *crtc_state,
>  	if (panel->backlight.controller =3D=3D 1) {
>  		val =3D intel_de_read(i915, UTIL_PIN_CTL);
>  		if (val & UTIL_PIN_ENABLE) {
> -			drm_dbg_kms(&i915->drm, "util pin already enabled\n");
> +			drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] utility pin already enable=
d\n",
> +				    connector->base.base.id, connector->base.name);
>  			val &=3D ~UTIL_PIN_ENABLE;
>  			intel_de_write(i915, UTIL_PIN_CTL, val);
>  		}
> @@ -699,7 +710,8 @@ static void bxt_enable_backlight(const struct intel_c=
rtc_state *crtc_state,
>=20=20
>  	pwm_ctl =3D intel_de_read(i915, BXT_BLC_PWM_CTL(panel->backlight.contro=
ller));
>  	if (pwm_ctl & BXT_BLC_PWM_ENABLE) {
> -		drm_dbg_kms(&i915->drm, "backlight already enabled\n");
> +		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] backlight already enabled\n=
",
> +			    connector->base.base.id, connector->base.name);
>  		pwm_ctl &=3D ~BXT_BLC_PWM_ENABLE;
>  		intel_de_write(i915, BXT_BLC_PWM_CTL(panel->backlight.controller),
>  			       pwm_ctl);
> @@ -1468,7 +1480,8 @@ cnp_setup_backlight(struct intel_connector *connect=
or, enum pipe unused)
>  	 */
>  	panel->backlight.controller =3D connector->panel.vbt.backlight.controll=
er;
>  	if (!cnp_backlight_controller_is_valid(i915, panel->backlight.controlle=
r)) {
> -		drm_dbg_kms(&i915->drm, "Invalid backlight controller %d, assuming 0\n=
",
> +		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] Invalid backlight controlle=
r %d, assuming 0\n",
> +			    connector->base.base.id, connector->base.name,
>  			    panel->backlight.controller);
>  		panel->backlight.controller =3D 0;
>  	}
> @@ -1511,8 +1524,8 @@ static int ext_pwm_setup_backlight(struct intel_con=
nector *connector,
>  	}
>=20=20
>  	if (IS_ERR(panel->backlight.pwm)) {
> -		drm_err(&i915->drm, "Failed to get the %s PWM chip\n",
> -			desc);
> +		drm_err(&i915->drm, "[CONNECTOR:%d:%s] Failed to get the %s PWM chip\n=
",
> +			connector->base.base.id, connector->base.name, desc);
>  		panel->backlight.pwm =3D NULL;
>  		return -ENODEV;
>  	}
> @@ -1529,7 +1542,8 @@ static int ext_pwm_setup_backlight(struct intel_con=
nector *connector,
>  		level =3D intel_backlight_invert_pwm_level(connector, level);
>  		panel->backlight.pwm_enabled =3D true;
>=20=20
> -		drm_dbg_kms(&i915->drm, "PWM already enabled at freq %ld, VBT freq %d,=
 level %d\n",
> +		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] PWM already enabled at freq=
 %ld, VBT freq %d, level %d\n",
> +			    connector->base.base.id, connector->base.name,
>  			    NSEC_PER_SEC / (unsigned long)panel->backlight.pwm_state.period,
>  			    get_vbt_pwm_freq(connector), level);
>  	} else {
> @@ -1623,10 +1637,12 @@ int intel_backlight_setup(struct intel_connector =
*connector, enum pipe pipe)
>  	if (!connector->panel.vbt.backlight.present) {
>  		if (intel_has_quirk(i915, QUIRK_BACKLIGHT_PRESENT)) {
>  			drm_dbg_kms(&i915->drm,
> -				    "no backlight present per VBT, but present per quirk\n");
> +				    "[CONNECTOR:%d:%s] no backlight present per VBT, but present per=
 quirk\n",
> +				    connector->base.base.id, connector->base.name);
>  		} else {
>  			drm_dbg_kms(&i915->drm,
> -				    "no backlight present per VBT\n");
> +				    "[CONNECTOR:%d:%s] no backlight present per VBT\n",
> +				    connector->base.base.id, connector->base.name);
>  			return 0;
>  		}
>  	}
> @@ -1642,16 +1658,16 @@ int intel_backlight_setup(struct intel_connector =
*connector, enum pipe pipe)
>=20=20
>  	if (ret) {
>  		drm_dbg_kms(&i915->drm,
> -			    "failed to setup backlight for connector %s\n",
> -			    connector->base.name);
> +			    "[CONNECTOR:%d:%s] failed to setup backlight\n",
> +			    connector->base.base.id, connector->base.name);
>  		return ret;
>  	}
>=20=20
>  	panel->backlight.present =3D true;
>=20=20
>  	drm_dbg_kms(&i915->drm,
> -		    "Connector %s backlight initialized, %s, brightness %u/%u\n",
> -		    connector->base.name,
> +		    "[CONNECTOR:%d:%s] backlight initialized, %s, brightness %u/%u\n",
> +		    connector->base.base.id, connector->base.name,
>  		    str_enabled_disabled(panel->backlight.enabled),
>  		    panel->backlight.level, panel->backlight.max);
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/driv=
ers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index 83af95bce98d..aaecd1c38172 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -105,6 +105,11 @@ enum intel_dp_aux_backlight_modparam {
>  	INTEL_DP_AUX_BACKLIGHT_FORCE_INTEL =3D 3,
>  };
>=20=20
> +static bool is_intel_tcon_cap(const u8 tcon_cap[4])
> +{
> +	return tcon_cap[0] >=3D 1;
> +}
> +
>  /* Intel EDP backlight callbacks */
>  static bool
>  intel_dp_aux_supports_hdr_backlight(struct intel_connector *connector)
> @@ -125,14 +130,12 @@ intel_dp_aux_supports_hdr_backlight(struct intel_co=
nnector *connector)
>  	if (!(tcon_cap[1] & INTEL_EDP_HDR_TCON_BRIGHTNESS_NITS_CAP))
>  		return false;
>=20=20
> -	if (tcon_cap[0] >=3D 1) {
> -		drm_dbg_kms(&i915->drm, "Detected Intel HDR backlight interface versio=
n %d\n",
> -			    tcon_cap[0]);
> -	} else {
> -		drm_dbg_kms(&i915->drm, "Detected unsupported HDR backlight interface =
version %d\n",
> -			    tcon_cap[0]);
> +	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] Detected %s HDR backlight in=
terface version %d\n",
> +		    connector->base.base.id, connector->base.name,
> +		    is_intel_tcon_cap(tcon_cap) ? "Intel" : "unsupported", tcon_cap[0]=
);
> +
> +	if (!is_intel_tcon_cap(tcon_cap))
>  		return false;
> -	}
>=20=20
>  	/*
>  	 * If we don't have HDR static metadata there is no way to
> @@ -147,7 +150,8 @@ intel_dp_aux_supports_hdr_backlight(struct intel_conn=
ector *connector)
>  	    !(connector->base.hdr_sink_metadata.hdmi_type1.metadata_type &
>  	      BIT(HDMI_STATIC_METADATA_TYPE1))) {
>  		drm_info(&i915->drm,
> -			 "Panel is missing HDR static metadata. Possible support for Intel HD=
R backlight interface is not used. If your backlight controls don't work tr=
y booting with i915.enable_dpcd_backlight=3D%d. needs this, please file a _=
new_ bug report on drm/i915, see " FDO_BUG_URL " for details.\n",
> +			 "[CONNECTOR:%d:%s] Panel is missing HDR static metadata. Possible su=
pport for Intel HDR backlight interface is not used. If your backlight cont=
rols don't work try booting with i915.enable_dpcd_backlight=3D%d. needs thi=
s, please file a _new_ bug report on drm/i915, see " FDO_BUG_URL " for deta=
ils.\n",
> +			 connector->base.base.id, connector->base.name,
>  			 INTEL_DP_AUX_BACKLIGHT_FORCE_INTEL);
>  		return false;
>  	}
> @@ -168,7 +172,8 @@ intel_dp_aux_hdr_get_backlight(struct intel_connector=
 *connector, enum pipe pipe
>  	u8 buf[2] =3D { 0 };
>=20=20
>  	if (drm_dp_dpcd_readb(&intel_dp->aux, INTEL_EDP_HDR_GETSET_CTRL_PARAMS,=
 &tmp) !=3D 1) {
> -		drm_err(&i915->drm, "Failed to read current backlight mode from DPCD\n=
");
> +		drm_err(&i915->drm, "[CONNECTOR:%d:%s] Failed to read current backligh=
t mode from DPCD\n",
> +			connector->base.base.id, connector->base.name);
>  		return 0;
>  	}
>=20=20
> @@ -185,7 +190,8 @@ intel_dp_aux_hdr_get_backlight(struct intel_connector=
 *connector, enum pipe pipe
>=20=20
>  	if (drm_dp_dpcd_read(&intel_dp->aux, INTEL_EDP_BRIGHTNESS_NITS_LSB, buf,
>  			     sizeof(buf)) !=3D sizeof(buf)) {
> -		drm_err(&i915->drm, "Failed to read brightness from DPCD\n");
> +		drm_err(&i915->drm, "[CONNECTOR:%d:%s] Failed to read brightness from =
DPCD\n",
> +			connector->base.base.id, connector->base.name);
>  		return 0;
>  	}
>=20=20
> @@ -205,7 +211,8 @@ intel_dp_aux_hdr_set_aux_backlight(const struct drm_c=
onnector_state *conn_state,
>=20=20
>  	if (drm_dp_dpcd_write(&intel_dp->aux, INTEL_EDP_BRIGHTNESS_NITS_LSB, bu=
f,
>  			      sizeof(buf)) !=3D sizeof(buf))
> -		drm_err(dev, "Failed to write brightness level to DPCD\n");
> +		drm_err(dev, "[CONNECTOR:%d:%s] Failed to write brightness level to DP=
CD\n",
> +			connector->base.base.id, connector->base.name);
>  }
>=20=20
>  static void
> @@ -238,7 +245,8 @@ intel_dp_aux_hdr_enable_backlight(const struct intel_=
crtc_state *crtc_state,
>=20=20
>  	ret =3D drm_dp_dpcd_readb(&intel_dp->aux, INTEL_EDP_HDR_GETSET_CTRL_PAR=
AMS, &old_ctrl);
>  	if (ret !=3D 1) {
> -		drm_err(&i915->drm, "Failed to read current backlight control mode: %d=
\n", ret);
> +		drm_err(&i915->drm, "[CONNECTOR:%d:%s] Failed to read current backligh=
t control mode: %d\n",
> +			connector->base.base.id, connector->base.name, ret);
>  		return;
>  	}
>=20=20
> @@ -254,9 +262,10 @@ intel_dp_aux_hdr_enable_backlight(const struct intel=
_crtc_state *crtc_state,
>  		ctrl &=3D ~INTEL_EDP_HDR_TCON_BRIGHTNESS_AUX_ENABLE;
>  	}
>=20=20
> -	if (ctrl !=3D old_ctrl)
> -		if (drm_dp_dpcd_writeb(&intel_dp->aux, INTEL_EDP_HDR_GETSET_CTRL_PARAM=
S, ctrl) !=3D 1)
> -			drm_err(&i915->drm, "Failed to configure DPCD brightness controls\n");
> +	if (ctrl !=3D old_ctrl &&
> +	    drm_dp_dpcd_writeb(&intel_dp->aux, INTEL_EDP_HDR_GETSET_CTRL_PARAMS=
, ctrl) !=3D 1)
> +		drm_err(&i915->drm, "[CONNECTOR:%d:%s] Failed to configure DPCD bright=
ness controls\n",
> +			connector->base.base.id, connector->base.name);
>  }
>=20=20
>  static void
> @@ -290,7 +299,8 @@ intel_dp_aux_hdr_setup_backlight(struct intel_connect=
or *connector, enum pipe pi
>  		ret =3D panel->backlight.pwm_funcs->setup(connector, pipe);
>  		if (ret < 0) {
>  			drm_err(&i915->drm,
> -				"Failed to setup SDR backlight controls through PWM: %d\n", ret);
> +				"[CONNECTOR:%d:%s] Failed to setup SDR backlight controls through PW=
M: %d\n",
> +				connector->base.base.id, connector->base.name, ret);
>  			return ret;
>  		}
>  	}
> @@ -390,8 +400,8 @@ static int intel_dp_aux_vesa_setup_backlight(struct i=
ntel_connector *connector,
>  		ret =3D panel->backlight.pwm_funcs->setup(connector, pipe);
>  		if (ret < 0) {
>  			drm_err(&i915->drm,
> -				"Failed to setup PWM backlight controls for eDP backlight: %d\n",
> -				ret);
> +				"[CONNECTOR:%d:%s] Failed to setup PWM backlight controls for eDP ba=
cklight: %d\n",
> +				connector->base.base.id, connector->base.name, ret);
>  			return ret;
>  		}
>  	}
> @@ -428,7 +438,8 @@ intel_dp_aux_supports_vesa_backlight(struct intel_con=
nector *connector)
>  	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
>=20=20
>  	if (drm_edp_backlight_supported(intel_dp->edp_dpcd)) {
> -		drm_dbg_kms(&i915->drm, "AUX Backlight Control Supported!\n");
> +		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] AUX Backlight Control Suppo=
rted!\n",
> +			    connector->base.base.id, connector->base.name);
>  		return true;
>  	}
>  	return false;
> @@ -504,13 +515,15 @@ int intel_dp_aux_init_backlight_funcs(struct intel_=
connector *connector)
>  	 * interfaces is to probe for Intel's first, and VESA's second.
>  	 */
>  	if (try_intel_interface && intel_dp_aux_supports_hdr_backlight(connecto=
r)) {
> -		drm_dbg_kms(dev, "Using Intel proprietary eDP backlight controls\n");
> +		drm_dbg_kms(dev, "[CONNECTOR:%d:%s] Using Intel proprietary eDP backli=
ght controls\n",
> +			    connector->base.base.id, connector->base.name);
>  		panel->backlight.funcs =3D &intel_dp_hdr_bl_funcs;
>  		return 0;
>  	}
>=20=20
>  	if (try_vesa_interface && intel_dp_aux_supports_vesa_backlight(connecto=
r)) {
> -		drm_dbg_kms(dev, "Using VESA eDP backlight controls\n");
> +		drm_dbg_kms(dev, "[CONNECTOR:%d:%s] Using VESA eDP backlight controls\=
n",
> +			    connector->base.base.id, connector->base.name);
>  		panel->backlight.funcs =3D &intel_dp_vesa_bl_funcs;
>  		return 0;
>  	}

--=20
Jani Nikula, Intel Open Source Graphics Center
