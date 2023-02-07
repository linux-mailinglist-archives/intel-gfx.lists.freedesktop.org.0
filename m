Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A476868D209
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 10:06:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FC6910E0F5;
	Tue,  7 Feb 2023 09:06:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1874710E487
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Feb 2023 09:06:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675760799; x=1707296799;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=6oobQxVrHxVQ7Isv2r/HC52DuwZ8N2JRrWqqkAUevYw=;
 b=itAPiClkkv2pU4OKqEwSNTg9cUcYQeZdf/90yB5fHR3zGCYSJrzA3M4V
 Pp783FFMH+JyU6H/rFvF3GVi+rlbFz6jSSgAj0K7nXMmMhYuOXd9RL1Dx
 bgRTbT70dhxBDArPG6rsB167OtqHzp3dNOpWVqC+3/KIzxhEhuuQrPvHF
 X/HTUVBfkG2o0AU2ojMKnrMgsA16gyLpxd2PZPMt37X1K8g58SdtwYXvr
 +jjpq9K2b33sO+1uwykhiEdUO0g95Wv41IwzmH0WREfEBwTAjBi6hpP94
 OAyTGYWjsZMwOXn7+Kcq0gtTq6zrhLiBmQ1ZpD4Q77JRVBmKSMF5mkl2+ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="327143057"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="327143057"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 01:06:11 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="666764830"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="666764830"
Received: from tronach-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.11])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 01:06:03 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230207064337.18697-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230207064337.18697-1-ville.syrjala@linux.intel.com>
 <20230207064337.18697-3-ville.syrjala@linux.intel.com>
Date: Tue, 07 Feb 2023 11:06:01 +0200
Message-ID: <874jrxzvye.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Populate encoder->devdata for
 DSI on icl+
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

On Tue, 07 Feb 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We now have some eDP+DSI dual panel systems floating around
> where the DSI panel is the secondary LFP and thus needs to
> consult "panel type 2" in VBT in order to locate all the
> other panel type dependante stuff correctly.
>
> To that end we need to pass in the devdata to
> intel_bios_init_panel_late(), otherwise it'll just assume
> we want the primary panel type. So let's try to just populate
> the vbt.ports[] stuff and encoder->devdata for icl+ DSI
> panels as well.
>
> We can't do this on older platforms as there we risk a DSI
> port aliasing with a HDMI/DP port, which is a totally legal
> thing as the DSI ports live in their own little parallel
> universe.

Btw the series should probably be Cc: stable.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8016
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c    |  3 ++-
>  drivers/gpu/drm/i915/display/intel_bios.c | 15 ++++++++++++---
>  2 files changed, 14 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i91=
5/display/icl_dsi.c
> index 003cac918228..05e749861658 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1951,7 +1951,8 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
>  	/* attach connector to encoder */
>  	intel_connector_attach_encoder(intel_connector, encoder);
>=20=20
> -	intel_bios_init_panel_late(dev_priv, &intel_connector->panel, NULL, NUL=
L);
> +	encoder->devdata =3D intel_bios_encoder_data_lookup(dev_priv, port);
> +	intel_bios_init_panel_late(dev_priv, &intel_connector->panel, encoder->=
devdata, NULL);
>=20=20
>  	mutex_lock(&dev_priv->drm.mode_config.mutex);
>  	intel_panel_add_vbt_lfp_fixed_mode(intel_connector);
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 06a2d98d2277..1cd8af88ce50 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2593,6 +2593,12 @@ intel_bios_encoder_supports_edp(const struct intel=
_bios_encoder_data *devdata)
>  		devdata->child.device_type & DEVICE_TYPE_INTERNAL_CONNECTOR;
>  }
>=20=20
> +static bool
> +intel_bios_encoder_supports_dsi(const struct intel_bios_encoder_data *de=
vdata)
> +{
> +	return devdata->child.device_type & DEVICE_TYPE_MIPI_OUTPUT;
> +}
> +
>  static int _intel_bios_hdmi_level_shift(const struct intel_bios_encoder_=
data *devdata)
>  {
>  	if (!devdata || devdata->i915->display.vbt.version < 158)
> @@ -2643,7 +2649,7 @@ static void print_ddi_port(const struct intel_bios_=
encoder_data *devdata,
>  {
>  	struct drm_i915_private *i915 =3D devdata->i915;
>  	const struct child_device_config *child =3D &devdata->child;
> -	bool is_dvi, is_hdmi, is_dp, is_edp, is_crt, supports_typec_usb, suppor=
ts_tbt;
> +	bool is_dvi, is_hdmi, is_dp, is_edp, is_dsi, is_crt, supports_typec_usb=
, supports_tbt;
>  	int dp_boost_level, dp_max_link_rate, hdmi_boost_level, hdmi_level_shif=
t, max_tmds_clock;
>=20=20
>  	is_dvi =3D intel_bios_encoder_supports_dvi(devdata);
> @@ -2651,13 +2657,14 @@ static void print_ddi_port(const struct intel_bio=
s_encoder_data *devdata,
>  	is_crt =3D intel_bios_encoder_supports_crt(devdata);
>  	is_hdmi =3D intel_bios_encoder_supports_hdmi(devdata);
>  	is_edp =3D intel_bios_encoder_supports_edp(devdata);
> +	is_dsi =3D intel_bios_encoder_supports_dsi(devdata);
>=20=20
>  	supports_typec_usb =3D intel_bios_encoder_supports_typec_usb(devdata);
>  	supports_tbt =3D intel_bios_encoder_supports_tbt(devdata);
>=20=20
>  	drm_dbg_kms(&i915->drm,
> -		    "Port %c VBT info: CRT:%d DVI:%d HDMI:%d DP:%d eDP:%d LSPCON:%d US=
B-Type-C:%d TBT:%d DSC:%d\n",
> -		    port_name(port), is_crt, is_dvi, is_hdmi, is_dp, is_edp,
> +		    "Port %c VBT info: CRT:%d DVI:%d HDMI:%d DP:%d eDP:%d DSI:%d LSPCO=
N:%d USB-Type-C:%d TBT:%d DSC:%d\n",
> +		    port_name(port), is_crt, is_dvi, is_hdmi, is_dp, is_edp, is_dsi,
>  		    HAS_LSPCON(i915) && child->lspcon,
>  		    supports_typec_usb, supports_tbt,
>  		    devdata->dsc !=3D NULL);
> @@ -2710,6 +2717,8 @@ static void parse_ddi_port(struct intel_bios_encode=
r_data *devdata)
>  	enum port port;
>=20=20
>  	port =3D dvo_port_to_port(i915, child->dvo_port);
> +	if (port =3D=3D PORT_NONE && DISPLAY_VER(i915) >=3D 11)
> +		port =3D dsi_dvo_port_to_port(i915, child->dvo_port);
>  	if (port =3D=3D PORT_NONE)
>  		return;

--=20
Jani Nikula, Intel Open Source Graphics Center
