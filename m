Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 853EE7DF3E1
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 14:33:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E475410E8AF;
	Thu,  2 Nov 2023 13:33:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DCE710E8AF
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Nov 2023 13:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698931989; x=1730467989;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=ikbcFCBvaXqulPD3ylUxoGzsc5Whp2b4VKQPy5QX+xY=;
 b=aFaEZUwh1ObF9EHSEmVyAgE/RoIFlzaE0GmDagri/mAPllcxACe9VWuQ
 ZXwt8jV7d88ZWAIzT9UaFwA3e2oIUGppgnLGxVhpUzxHIbabbZdTuOpbv
 IzoW35s59zi7BgGhlRFEz4vmTl+3bCTRZSDCronMELsEDpQdVZBDao6SX
 n6u3Z/66B7LEfTXO7n3wMwIQ8+bzfClk44Pnb34TkUO4QSnqYxeFWPZ2e
 CYEzg8sU4neeIkVkywp/foZs1t6+VPwVVnAimmpuMyjnpDblNc3WHIPHf
 9FiCpRXPAMDl3osONmSuDlxVtRJNvZaDh+6Q/zNQ/yBRZ/p30begni0WW w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="10242661"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="10242661"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 06:33:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; 
   d="scan'208";a="2430631"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 06:33:04 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231101114212.9345-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231101114212.9345-1-ville.syrjala@linux.intel.com>
 <20231101114212.9345-6-ville.syrjala@linux.intel.com>
Date: Thu, 02 Nov 2023 15:32:59 +0200
Message-ID: <875y2k2sc4.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915/dsi: Extract port_ctrl_reg()
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

On Wed, 01 Nov 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> The code to determine the pre-ICL DSI port control register is
> repeated several times. Consolidate.
>
> vlv_dsi_clear_device_ready() is left with the open-coded version
> due to the weirdness with port A vs. C on VLV/CHV.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/vlv_dsi.c | 17 ++++++++++-------
>  1 file changed, 10 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i91=
5/display/vlv_dsi.c
> index 64023fb8dd74..bda49734ca33 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -561,6 +561,12 @@ static void glk_dsi_clear_device_ready(struct intel_=
encoder *encoder)
>  	glk_dsi_disable_mipi_io(encoder);
>  }
>=20=20
> +static i915_reg_t port_ctrl_reg(struct drm_i915_private *i915, enum port=
 port)
> +{
> +	return IS_GEMINILAKE(i915) || IS_BROXTON(i915) ?
> +		BXT_MIPI_PORT_CTRL(port) : MIPI_PORT_CTRL(port);
> +}
> +
>  static void vlv_dsi_clear_device_ready(struct intel_encoder *encoder)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> @@ -627,8 +633,7 @@ static void intel_dsi_port_enable(struct intel_encode=
r *encoder,
>  	}
>=20=20
>  	for_each_dsi_port(port, intel_dsi->ports) {
> -		i915_reg_t port_ctrl =3D IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_pri=
v) ?
> -			BXT_MIPI_PORT_CTRL(port) : MIPI_PORT_CTRL(port);
> +		i915_reg_t port_ctrl =3D port_ctrl_reg(dev_priv, port);
>  		u32 temp;
>=20=20
>  		temp =3D intel_de_read(dev_priv, port_ctrl);
> @@ -664,8 +669,7 @@ static void intel_dsi_port_disable(struct intel_encod=
er *encoder)
>  	enum port port;
>=20=20
>  	for_each_dsi_port(port, intel_dsi->ports) {
> -		i915_reg_t port_ctrl =3D IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_pri=
v) ?
> -			BXT_MIPI_PORT_CTRL(port) : MIPI_PORT_CTRL(port);
> +		i915_reg_t port_ctrl =3D port_ctrl_reg(dev_priv, port);
>=20=20
>  		/* de-assert ip_tg_enable signal */
>  		intel_de_rmw(dev_priv, port_ctrl, DPI_ENABLE, 0);
> @@ -955,9 +959,8 @@ static bool intel_dsi_get_hw_state(struct intel_encod=
er *encoder,
>=20=20
>  	/* XXX: this only works for one DSI output */
>  	for_each_dsi_port(port, intel_dsi->ports) {
> -		i915_reg_t ctrl_reg =3D IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv=
) ?
> -			BXT_MIPI_PORT_CTRL(port) : MIPI_PORT_CTRL(port);
> -		bool enabled =3D intel_de_read(dev_priv, ctrl_reg) & DPI_ENABLE;
> +		i915_reg_t port_ctrl =3D port_ctrl_reg(dev_priv, port);
> +		bool enabled =3D intel_de_read(dev_priv, port_ctrl) & DPI_ENABLE;
>=20=20
>  		/*
>  		 * Due to some hardware limitations on VLV/CHV, the DPI enable

--=20
Jani Nikula, Intel
