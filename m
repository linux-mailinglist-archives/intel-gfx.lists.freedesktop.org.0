Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6DE26997F3
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Feb 2023 15:54:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD6E010EDC1;
	Thu, 16 Feb 2023 14:54:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCEB810EDC1
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Feb 2023 14:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676559239; x=1708095239;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=B4GbzHcW7ikyooFAaWiKtP9ihcEWcsO5L4abORXpTUU=;
 b=GOa6G8YpyRCIo7udvnKhuKBZxJ8LuubFbEIoOq2K+y7idUw04kNUT6rZ
 GTqXoN8amXAv3kh4r/bwEcQgtQkF0i6Tepa1uIJyuagw0L3xbtkvAHO/A
 c+hJGDn199MqVa8LgkXfgafmtmbSj/hsJx5yNBUgaiMjOkcVR4fbIfSm2
 z9+6XlPNjIysP5DJUSq445qV7t4lftehQrRUKXvlwBOhfGHcWwIyIRZ3j
 UPgOg/NMyOoWXZZc8yuu7GqrRBw8B07CM91PH4tGn5q73KWPyEqRPwCNK
 mapTlvK3ajj9nF/eooxX0g5mwKckwNFmspjp8pbuji6/y15p4+ZLAtvjr w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="331730127"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="331730127"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 06:53:59 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="999058556"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="999058556"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.155])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 06:53:58 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230216000425.32216-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230214231925.26535-1-ville.syrjala@linux.intel.com>
 <20230216000425.32216-1-ville.syrjala@linux.intel.com>
Date: Thu, 16 Feb 2023 16:53:55 +0200
Message-ID: <871qmp1x18.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 1/3] drm/i915: Use encoder->devdata more
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

On Thu, 16 Feb 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Switch a lot of the intel_bios_foo() stuff to just accept the
> devdata (VBT child device info) directly, instead of taking
> detours via vbt.ports[].
>
> Also unify the function naming scheme.
>
> v2: Drop the redundant "encoder" from the dp/hdmi specific functions
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 62 +++++------------------
>  drivers/gpu/drm/i915/display/intel_bios.h | 15 +++---
>  drivers/gpu/drm/i915/display/intel_ddi.c  | 10 ++--
>  drivers/gpu/drm/i915/display/intel_dp.c   |  4 +-
>  drivers/gpu/drm/i915/display/intel_hdmi.c |  4 +-
>  5 files changed, 31 insertions(+), 64 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 229f9782e226..8cf2392a5670 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2520,7 +2520,7 @@ static int parse_bdb_216_dp_max_link_rate(const int=
 vbt_max_link_rate)
>  	}
>  }
>=20=20
> -static int _intel_bios_dp_max_link_rate(const struct intel_bios_encoder_=
data *devdata)
> +int intel_bios_dp_max_link_rate(const struct intel_bios_encoder_data *de=
vdata)
>  {
>  	if (!devdata || devdata->i915->display.vbt.version < 216)
>  		return 0;
> @@ -2531,7 +2531,7 @@ static int _intel_bios_dp_max_link_rate(const struc=
t intel_bios_encoder_data *de
>  		return parse_bdb_216_dp_max_link_rate(devdata->child.dp_max_link_rate);
>  }
>=20=20
> -static int _intel_bios_dp_max_lane_count(const struct intel_bios_encoder=
_data *devdata)
> +int intel_bios_dp_max_lane_count(const struct intel_bios_encoder_data *d=
evdata)
>  {
>  	if (!devdata || devdata->i915->display.vbt.version < 244)
>  		return 0;
> @@ -2604,7 +2604,8 @@ intel_bios_encoder_is_lspcon(const struct intel_bio=
s_encoder_data *devdata)
>  	return devdata && HAS_LSPCON(devdata->i915) && devdata->child.lspcon;
>  }
>=20=20
> -static int _intel_bios_hdmi_level_shift(const struct intel_bios_encoder_=
data *devdata)
> +/* This is an index in the HDMI/DVI DDI buffer translation table, or -1 =
*/
> +int intel_bios_hdmi_level_shift(const struct intel_bios_encoder_data *de=
vdata)
>  {
>  	if (!devdata || devdata->i915->display.vbt.version < 158)
>  		return -1;
> @@ -2612,7 +2613,7 @@ static int _intel_bios_hdmi_level_shift(const struc=
t intel_bios_encoder_data *de
>  	return devdata->child.hdmi_level_shifter_value;
>  }
>=20=20
> -static int _intel_bios_max_tmds_clock(const struct intel_bios_encoder_da=
ta *devdata)
> +int intel_bios_hdmi_max_tmds_clock(const struct intel_bios_encoder_data =
*devdata)
>  {
>  	if (!devdata || devdata->i915->display.vbt.version < 204)
>  		return 0;
> @@ -2674,33 +2675,33 @@ static void print_ddi_port(const struct intel_bio=
s_encoder_data *devdata,
>  		    supports_typec_usb, supports_tbt,
>  		    devdata->dsc !=3D NULL);
>=20=20
> -	hdmi_level_shift =3D _intel_bios_hdmi_level_shift(devdata);
> +	hdmi_level_shift =3D intel_bios_hdmi_level_shift(devdata);
>  	if (hdmi_level_shift >=3D 0) {
>  		drm_dbg_kms(&i915->drm,
>  			    "Port %c VBT HDMI level shift: %d\n",
>  			    port_name(port), hdmi_level_shift);
>  	}
>=20=20
> -	max_tmds_clock =3D _intel_bios_max_tmds_clock(devdata);
> +	max_tmds_clock =3D intel_bios_hdmi_max_tmds_clock(devdata);
>  	if (max_tmds_clock)
>  		drm_dbg_kms(&i915->drm,
>  			    "Port %c VBT HDMI max TMDS clock: %d kHz\n",
>  			    port_name(port), max_tmds_clock);
>=20=20
>  	/* I_boost config for SKL and above */
> -	dp_boost_level =3D intel_bios_encoder_dp_boost_level(devdata);
> +	dp_boost_level =3D intel_bios_dp_boost_level(devdata);
>  	if (dp_boost_level)
>  		drm_dbg_kms(&i915->drm,
>  			    "Port %c VBT (e)DP boost level: %d\n",
>  			    port_name(port), dp_boost_level);
>=20=20
> -	hdmi_boost_level =3D intel_bios_encoder_hdmi_boost_level(devdata);
> +	hdmi_boost_level =3D intel_bios_hdmi_boost_level(devdata);
>  	if (hdmi_boost_level)
>  		drm_dbg_kms(&i915->drm,
>  			    "Port %c VBT HDMI boost level: %d\n",
>  			    port_name(port), hdmi_boost_level);
>=20=20
> -	dp_max_link_rate =3D _intel_bios_dp_max_link_rate(devdata);
> +	dp_max_link_rate =3D intel_bios_dp_max_link_rate(devdata);
>  	if (dp_max_link_rate)
>  		drm_dbg_kms(&i915->drm,
>  			    "Port %c VBT DP max link rate: %d\n",
> @@ -3665,24 +3666,8 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i915=
_private *i915,
>  	return aux_ch;
>  }
>=20=20
> -int intel_bios_max_tmds_clock(struct intel_encoder *encoder)
> -{
> -	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> -	const struct intel_bios_encoder_data *devdata =3D i915->display.vbt.por=
ts[encoder->port];
>=20=20
> -	return _intel_bios_max_tmds_clock(devdata);
> -}
> -
> -/* This is an index in the HDMI/DVI DDI buffer translation table, or -1 =
*/
> -int intel_bios_hdmi_level_shift(struct intel_encoder *encoder)
> -{
> -	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> -	const struct intel_bios_encoder_data *devdata =3D i915->display.vbt.por=
ts[encoder->port];
> -
> -	return _intel_bios_hdmi_level_shift(devdata);
> -}
> -
> -int intel_bios_encoder_dp_boost_level(const struct intel_bios_encoder_da=
ta *devdata)
> +int intel_bios_dp_boost_level(const struct intel_bios_encoder_data *devd=
ata)
>  {
>  	if (!devdata || devdata->i915->display.vbt.version < 196 || !devdata->c=
hild.iboost)
>  		return 0;
> @@ -3690,7 +3675,7 @@ int intel_bios_encoder_dp_boost_level(const struct =
intel_bios_encoder_data *devd
>  	return translate_iboost(devdata->child.dp_iboost_level);
>  }
>=20=20
> -int intel_bios_encoder_hdmi_boost_level(const struct intel_bios_encoder_=
data *devdata)
> +int intel_bios_hdmi_boost_level(const struct intel_bios_encoder_data *de=
vdata)
>  {
>  	if (!devdata || devdata->i915->display.vbt.version < 196 || !devdata->c=
hild.iboost)
>  		return 0;
> @@ -3698,31 +3683,12 @@ int intel_bios_encoder_hdmi_boost_level(const str=
uct intel_bios_encoder_data *de
>  	return translate_iboost(devdata->child.hdmi_iboost_level);
>  }
>=20=20
> -int intel_bios_dp_max_link_rate(struct intel_encoder *encoder)
> +int intel_bios_hdmi_ddc_pin(const struct intel_bios_encoder_data *devdat=
a)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> -	const struct intel_bios_encoder_data *devdata =3D i915->display.vbt.por=
ts[encoder->port];
> -
> -	return _intel_bios_dp_max_link_rate(devdata);
> -}
> -
> -int intel_bios_dp_max_lane_count(struct intel_encoder *encoder)
> -{
> -	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> -	const struct intel_bios_encoder_data *devdata =3D i915->display.vbt.por=
ts[encoder->port];
> -
> -	return _intel_bios_dp_max_lane_count(devdata);
> -}
> -
> -int intel_bios_alternate_ddc_pin(struct intel_encoder *encoder)
> -{
> -	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> -	const struct intel_bios_encoder_data *devdata =3D i915->display.vbt.por=
ts[encoder->port];
> -
>  	if (!devdata || !devdata->child.ddc_pin)
>  		return 0;
>=20=20
> -	return map_ddc_pin(i915, devdata->child.ddc_pin);
> +	return map_ddc_pin(devdata->i915, devdata->child.ddc_pin);
>  }
>=20=20
>  bool intel_bios_encoder_supports_typec_usb(const struct intel_bios_encod=
er_data *devdata)
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/=
i915/display/intel_bios.h
> index 1a6ae38bd4f6..53123468331a 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.h
> +++ b/drivers/gpu/drm/i915/display/intel_bios.h
> @@ -254,11 +254,6 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i915_p=
rivate *i915,
>  bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
>  			       struct intel_crtc_state *crtc_state,
>  			       int dsc_max_bpc);
> -int intel_bios_max_tmds_clock(struct intel_encoder *encoder);
> -int intel_bios_hdmi_level_shift(struct intel_encoder *encoder);
> -int intel_bios_dp_max_link_rate(struct intel_encoder *encoder);
> -int intel_bios_dp_max_lane_count(struct intel_encoder *encoder);
> -int intel_bios_alternate_ddc_pin(struct intel_encoder *encoder);
>  bool intel_bios_port_supports_typec_usb(struct drm_i915_private *i915, e=
num port port);
>  bool intel_bios_port_supports_tbt(struct drm_i915_private *i915, enum po=
rt port);
>=20=20
> @@ -272,9 +267,15 @@ bool intel_bios_encoder_supports_edp(const struct in=
tel_bios_encoder_data *devda
>  bool intel_bios_encoder_supports_typec_usb(const struct intel_bios_encod=
er_data *devdata);
>  bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_dat=
a *devdata);
>  bool intel_bios_encoder_is_lspcon(const struct intel_bios_encoder_data *=
devdata);
> -int intel_bios_encoder_dp_boost_level(const struct intel_bios_encoder_da=
ta *devdata);
> -int intel_bios_encoder_hdmi_boost_level(const struct intel_bios_encoder_=
data *devdata);
>  bool intel_bios_encoder_lane_reversal(const struct intel_bios_encoder_da=
ta *devdata);
>  bool intel_bios_encoder_hpd_invert(const struct intel_bios_encoder_data =
*devdata);
> +int intel_bios_dp_boost_level(const struct intel_bios_encoder_data *devd=
ata);
> +int intel_bios_dp_max_link_rate(const struct intel_bios_encoder_data *de=
vdata);
> +int intel_bios_dp_max_lane_count(const struct intel_bios_encoder_data *d=
evdata);
> +int intel_bios_hdmi_boost_level(const struct intel_bios_encoder_data *de=
vdata);
> +int intel_bios_hdmi_max_tmds_clock(const struct intel_bios_encoder_data =
*devdata);
> +int intel_bios_hdmi_boost_level(const struct intel_bios_encoder_data *de=
vdata);

Dupe declaration of intel_bios_hdmi_boost_level(), with that dropped,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> +int intel_bios_hdmi_level_shift(const struct intel_bios_encoder_data *de=
vdata);
> +int intel_bios_hdmi_ddc_pin(const struct intel_bios_encoder_data *devdat=
a);
>=20=20
>  #endif /* _INTEL_BIOS_H_ */
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index bfd1e30a27b4..6010ba977adb 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -89,7 +89,7 @@ static int intel_ddi_hdmi_level(struct intel_encoder *e=
ncoder,
>  {
>  	int level;
>=20=20
> -	level =3D intel_bios_hdmi_level_shift(encoder);
> +	level =3D intel_bios_hdmi_level_shift(encoder->devdata);
>  	if (level < 0)
>  		level =3D trans->hdmi_default_entry;
>=20=20
> @@ -126,7 +126,7 @@ void hsw_prepare_dp_ddi_buffers(struct intel_encoder =
*encoder,
>=20=20
>  	/* If we're boosting the current, set bit 31 of trans1 */
>  	if (has_iboost(dev_priv) &&
> -	    intel_bios_encoder_dp_boost_level(encoder->devdata))
> +	    intel_bios_dp_boost_level(encoder->devdata))
>  		iboost_bit =3D DDI_BUF_BALANCE_LEG_ENABLE;
>=20=20
>  	for (i =3D 0; i < n_entries; i++) {
> @@ -158,7 +158,7 @@ static void hsw_prepare_hdmi_ddi_buffers(struct intel=
_encoder *encoder,
>=20=20
>  	/* If we're boosting the current, set bit 31 of trans1 */
>  	if (has_iboost(dev_priv) &&
> -	    intel_bios_encoder_hdmi_boost_level(encoder->devdata))
> +	    intel_bios_hdmi_boost_level(encoder->devdata))
>  		iboost_bit =3D DDI_BUF_BALANCE_LEG_ENABLE;
>=20=20
>  	/* Entry 9 is for HDMI: */
> @@ -1009,9 +1009,9 @@ static void skl_ddi_set_iboost(struct intel_encoder=
 *encoder,
>  	u8 iboost;
>=20=20
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> -		iboost =3D intel_bios_encoder_hdmi_boost_level(encoder->devdata);
> +		iboost =3D intel_bios_hdmi_boost_level(encoder->devdata);
>  	else
> -		iboost =3D intel_bios_encoder_dp_boost_level(encoder->devdata);
> +		iboost =3D intel_bios_dp_boost_level(encoder->devdata);
>=20=20
>  	if (iboost =3D=3D 0) {
>  		const struct intel_ddi_buf_trans *trans;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index b92e0b0f5369..86fdf9d74b93 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -288,7 +288,7 @@ static int intel_dp_max_common_rate(struct intel_dp *=
intel_dp)
>=20=20
>  static int intel_dp_max_source_lane_count(struct intel_digital_port *dig=
_port)
>  {
> -	int vbt_max_lanes =3D intel_bios_dp_max_lane_count(&dig_port->base);
> +	int vbt_max_lanes =3D intel_bios_dp_max_lane_count(dig_port->base.devda=
ta);
>  	int max_lanes =3D dig_port->max_lanes;
>=20=20
>  	if (vbt_max_lanes)
> @@ -425,7 +425,7 @@ static int vbt_max_link_rate(struct intel_dp *intel_d=
p)
>  	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
>  	int max_rate;
>=20=20
> -	max_rate =3D intel_bios_dp_max_link_rate(encoder);
> +	max_rate =3D intel_bios_dp_max_link_rate(encoder->devdata);
>=20=20
>  	if (intel_dp_is_edp(intel_dp)) {
>  		struct intel_connector *connector =3D intel_dp->attached_connector;
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/=
i915/display/intel_hdmi.c
> index 619865b45eca..74e2bc0ef8ba 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -1795,7 +1795,7 @@ static int intel_hdmi_source_max_tmds_clock(struct =
intel_encoder *encoder)
>  	else
>  		max_tmds_clock =3D 165000;
>=20=20
> -	vbt_max_tmds_clock =3D intel_bios_max_tmds_clock(encoder);
> +	vbt_max_tmds_clock =3D intel_bios_hdmi_max_tmds_clock(encoder->devdata);
>  	if (vbt_max_tmds_clock)
>  		max_tmds_clock =3D min(max_tmds_clock, vbt_max_tmds_clock);
>=20=20
> @@ -2871,7 +2871,7 @@ static u8 intel_hdmi_ddc_pin(struct intel_encoder *=
encoder)
>  	enum port port =3D encoder->port;
>  	u8 ddc_pin;
>=20=20
> -	ddc_pin =3D intel_bios_alternate_ddc_pin(encoder);
> +	ddc_pin =3D intel_bios_hdmi_ddc_pin(encoder->devdata);
>  	if (ddc_pin) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "Using DDC pin 0x%x for port %c (VBT)\n",

--=20
Jani Nikula, Intel Open Source Graphics Center
