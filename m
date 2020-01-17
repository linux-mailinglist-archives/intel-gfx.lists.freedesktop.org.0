Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1592E140D77
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 16:10:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1C356F5DC;
	Fri, 17 Jan 2020 15:10:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EA246F5D9
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 15:10:28 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jan 2020 07:10:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,330,1574150400"; d="scan'208";a="218933107"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 17 Jan 2020 07:10:25 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Jan 2020 17:10:24 +0200
Date: Fri, 17 Jan 2020 17:10:24 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200117151024.GO13686@intel.com>
References: <cover.1579270868.git.jani.nikula@intel.com>
 <21549ff74e8e5746917b0e2be4afbfb141e26657.1579270868.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <21549ff74e8e5746917b0e2be4afbfb141e26657.1579270868.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 7/9] drm/i915/bios: add
 intel_bios_port_supports_*()
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 17, 2020 at 04:29:27PM +0200, Jani Nikula wrote:
> Don't access i915->vbt.ddi_port_info[] directly.

3-7
Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> =

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 26 +++++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_bios.h |  5 +++++
>  drivers/gpu/drm/i915/display/intel_ddi.c  | 12 +++++------
>  3 files changed, 37 insertions(+), 6 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 23cbbe32e22f..4c69253739ec 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2606,3 +2606,29 @@ int intel_bios_alternate_ddc_pin(struct intel_enco=
der *encoder)
>  =

>  	return i915->vbt.ddi_port_info[encoder->port].alternate_ddc_pin;
>  }
> +
> +bool intel_bios_port_supports_dvi(struct drm_i915_private *i915, enum po=
rt port)
> +{
> +	return i915->vbt.ddi_port_info[port].supports_dvi;
> +}
> +
> +bool intel_bios_port_supports_hdmi(struct drm_i915_private *i915, enum p=
ort port)
> +{
> +	return i915->vbt.ddi_port_info[port].supports_hdmi;
> +}
> +
> +bool intel_bios_port_supports_dp(struct drm_i915_private *i915, enum por=
t port)
> +{
> +	return i915->vbt.ddi_port_info[port].supports_dp;
> +}
> +
> +bool intel_bios_port_supports_typec_usb(struct drm_i915_private *i915,
> +					enum port port)
> +{
> +	return i915->vbt.ddi_port_info[port].supports_typec_usb;
> +}
> +
> +bool intel_bios_port_supports_tbt(struct drm_i915_private *i915, enum po=
rt port)
> +{
> +	return i915->vbt.ddi_port_info[port].supports_tbt;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/=
i915/display/intel_bios.h
> index 077828d77642..c17199caeff8 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.h
> +++ b/drivers/gpu/drm/i915/display/intel_bios.h
> @@ -253,5 +253,10 @@ int intel_bios_dp_boost_level(struct intel_encoder *=
encoder);
>  int intel_bios_hdmi_boost_level(struct intel_encoder *encoder);
>  int intel_bios_dp_max_link_rate(struct intel_encoder *encoder);
>  int intel_bios_alternate_ddc_pin(struct intel_encoder *encoder);
> +bool intel_bios_port_supports_dvi(struct drm_i915_private *i915, enum po=
rt port);
> +bool intel_bios_port_supports_hdmi(struct drm_i915_private *i915, enum p=
ort port);
> +bool intel_bios_port_supports_dp(struct drm_i915_private *i915, enum por=
t port);
> +bool intel_bios_port_supports_typec_usb(struct drm_i915_private *i915, e=
num port port);
> +bool intel_bios_port_supports_tbt(struct drm_i915_private *i915, enum po=
rt port);
>  =

>  #endif /* _INTEL_BIOS_H_ */
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 3697fa047362..18a8186699f9 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4780,15 +4780,14 @@ intel_ddi_max_lanes(struct intel_digital_port *in=
tel_dport)
>  =

>  void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
>  {
> -	struct ddi_vbt_port_info *port_info =3D
> -		&dev_priv->vbt.ddi_port_info[port];
>  	struct intel_digital_port *intel_dig_port;
>  	struct intel_encoder *encoder;
>  	bool init_hdmi, init_dp, init_lspcon =3D false;
>  	enum phy phy =3D intel_port_to_phy(dev_priv, port);
>  =

> -	init_hdmi =3D port_info->supports_dvi || port_info->supports_hdmi;
> -	init_dp =3D port_info->supports_dp;
> +	init_hdmi =3D intel_bios_port_supports_dvi(dev_priv, port) ||
> +		intel_bios_port_supports_hdmi(dev_priv, port);
> +	init_dp =3D intel_bios_port_supports_dp(dev_priv, port);
>  =

>  	if (intel_bios_is_lspcon_present(dev_priv, port)) {
>  		/*
> @@ -4849,8 +4848,9 @@ void intel_ddi_init(struct drm_i915_private *dev_pr=
iv, enum port port)
>  	intel_dig_port->aux_ch =3D intel_bios_port_aux_ch(dev_priv, port);
>  =

>  	if (intel_phy_is_tc(dev_priv, phy)) {
> -		bool is_legacy =3D !port_info->supports_typec_usb &&
> -				 !port_info->supports_tbt;
> +		bool is_legacy =3D
> +			!intel_bios_port_supports_typec_usb(dev_priv, port) &&
> +			!intel_bios_port_supports_tbt(dev_priv, port);
>  =

>  		intel_tc_port_init(intel_dig_port, is_legacy);
>  =

> -- =

> 2.20.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
