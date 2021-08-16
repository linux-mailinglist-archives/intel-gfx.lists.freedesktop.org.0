Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F8CE3ED177
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Aug 2021 11:59:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEDB189C1B;
	Mon, 16 Aug 2021 09:59:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD65089C1B
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Aug 2021 09:59:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10077"; a="202989242"
X-IronPort-AV: E=Sophos;i="5.84,324,1620716400"; d="scan'208";a="202989242"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2021 02:59:09 -0700
X-IronPort-AV: E=Sophos;i="5.84,324,1620716400"; d="scan'208";a="519593817"
Received: from ifridman-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.210.77])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2021 02:59:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: =?utf-8?Q?Jos=C3=A9?= Roberto de Souza <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <20210722054338.12891-1-jose.souza@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210722054338.12891-1-jose.souza@intel.com>
Date: Mon, 16 Aug 2021 12:59:04 +0300
Message-ID: <8735r9k8wn.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 01/10] drm/i915/bios: Allow DSI ports to be
 parsed by parse_ddi_port()
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

On Wed, 21 Jul 2021, Jos=C3=A9 Roberto de Souza <jose.souza@intel.com> wrot=
e:
> Allow MIPI DSI ports to be parsed like any other DDI port.
> This will be helpful to integrate into just one function the parse of
> information about integrated panels(eDP and DSI).
>
> Allow MIPI DSI ports to be parsed to be parsed like any other DDI
> port.
> This will be helpful to integrate into just one function the parse of
> information about integrated panels(eDP and DSI).

Here be dragons.

For starters, parse_ddi_ports() is only run on DDI + CHV, most
significantly not VLV.

So intel_bios_encoder_supports_dsi() is not universal.

It's not trivial to extend parse_ddi_ports() to cover VLV in general or
CHV+DSI, because apparently they have the DSI ports in the same
"namespace", if you will, with other ports. I.e. you could have dupes,
which parse_ddi_port() does not allow.

There are existing patches on the list where I've attempted this, and
Ville has refuted them refuted me time and time again. :(


BR,
Jani.

>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 22 +++++++++++++++-------
>  1 file changed, 15 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 5b6922e28ef28..5bc2c944d99b4 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -1709,10 +1709,10 @@ static enum port dvo_port_to_port(struct drm_i915=
_private *i915,
>  	 * so look for all the possible values for each port.
>  	 */
>  	static const int port_mapping[][3] =3D {
> -		[PORT_A] =3D { DVO_PORT_HDMIA, DVO_PORT_DPA, -1 },
> -		[PORT_B] =3D { DVO_PORT_HDMIB, DVO_PORT_DPB, -1 },
> -		[PORT_C] =3D { DVO_PORT_HDMIC, DVO_PORT_DPC, -1 },
> -		[PORT_D] =3D { DVO_PORT_HDMID, DVO_PORT_DPD, -1 },
> +		[PORT_A] =3D { DVO_PORT_HDMIA, DVO_PORT_DPA, DVO_PORT_MIPIA },
> +		[PORT_B] =3D { DVO_PORT_HDMIB, DVO_PORT_DPB, DVO_PORT_MIPIB },
> +		[PORT_C] =3D { DVO_PORT_HDMIC, DVO_PORT_DPC, DVO_PORT_MIPIC },
> +		[PORT_D] =3D { DVO_PORT_HDMID, DVO_PORT_DPD, DVO_PORT_MIPID },
>  		[PORT_E] =3D { DVO_PORT_HDMIE, DVO_PORT_DPE, DVO_PORT_CRT },
>  		[PORT_F] =3D { DVO_PORT_HDMIF, DVO_PORT_DPF, -1 },
>  		[PORT_G] =3D { DVO_PORT_HDMIG, DVO_PORT_DPG, -1 },
> @@ -1868,6 +1868,12 @@ intel_bios_encoder_supports_edp(const struct intel=
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
>  static bool is_port_valid(struct drm_i915_private *i915, enum port port)
>  {
>  	/*
> @@ -1886,7 +1892,8 @@ static void parse_ddi_port(struct drm_i915_private =
*i915,
>  {
>  	const struct child_device_config *child =3D &devdata->child;
>  	struct ddi_vbt_port_info *info;
> -	bool is_dvi, is_hdmi, is_dp, is_edp, is_crt, supports_typec_usb, suppor=
ts_tbt;
> +	bool is_dvi, is_hdmi, is_dp, is_edp, is_crt, supports_typec_usb;
> +	bool supports_tbt, is_dsi;
>  	int dp_boost_level, hdmi_boost_level;
>  	enum port port;
>=20=20
> @@ -1917,16 +1924,17 @@ static void parse_ddi_port(struct drm_i915_privat=
e *i915,
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
> +		    "Port %c VBT info: CRT:%d DVI:%d HDMI:%d DP:%d eDP:%d LSPCON:%d US=
B-Type-C:%d TBT:%d DSC:%d DSI:%d\n",
>  		    port_name(port), is_crt, is_dvi, is_hdmi, is_dp, is_edp,
>  		    HAS_LSPCON(i915) && child->lspcon,
>  		    supports_typec_usb, supports_tbt,
> -		    devdata->dsc !=3D NULL);
> +		    devdata->dsc !=3D NULL, is_dsi);
>=20=20
>  	if (is_dvi) {
>  		u8 ddc_pin;

--=20
Jani Nikula, Intel Open Source Graphics Center
