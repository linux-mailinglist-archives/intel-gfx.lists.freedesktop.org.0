Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D9936A5E77
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Feb 2023 18:58:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF28F10E061;
	Tue, 28 Feb 2023 17:58:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97ECB10E061
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Feb 2023 17:58:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677607115; x=1709143115;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=9kuBC96NzCETJ4z2HSSLcS5/rb0Fsy+rS/P373IDY+4=;
 b=RXz+CGEtU65wAarsYU7dpu6+gNJKTLSqNIGj7ezv5By9AdqjvGEGgswg
 HAjgHJc+eQ32YJyjBkcb6Yvjj5XBmabbRZ8jyv+db43PI+mAptSU2O5Qh
 pdI8oPIVUwf3dMUvaMCKaCgHuOMuCaErOHsti4BdpXiATPfD+lmsRs80e
 c+TJz9etkABPLuX9y+k7kig873/JFc24OxpdESda3SuybkTiJpAKAWD/p
 qpz2y3BYOIcxuQ9fNtw11NU90tijdpR8sioRB8eiffK0QoRghwVzQm+gO
 scVfiQAWn1o7WVZRqrYUpU9N78bhkTj5FkaG8U0/CqZvin3RclHoIdCcj Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="322459482"
X-IronPort-AV: E=Sophos;i="5.98,222,1673942400"; d="scan'208";a="322459482"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2023 09:58:34 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="706646770"
X-IronPort-AV: E=Sophos;i="5.98,222,1673942400"; d="scan'208";a="706646770"
Received: from barumuga-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.47.26])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2023 09:58:32 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230221230227.6244-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230221230227.6244-1-ville.syrjala@linux.intel.com>
 <20230221230227.6244-2-ville.syrjala@linux.intel.com>
Date: Tue, 28 Feb 2023 19:58:30 +0200
Message-ID: <87bkldy8mx.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v3 01/22] drm/i915: Populate
 dig_port->connected() before connector init
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

On Wed, 22 Feb 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We'll need dig_port->connected() to be there for a HPD live
> state check during eDP connector probing. Reorder intel_ddi_init()
> accordingly. g4x_dp_init() is already fine.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 40 ++++++++++++------------
>  1 file changed, 20 insertions(+), 20 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index e5979427b38b..40b5c93f9223 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4503,8 +4503,28 @@ void intel_ddi_init(struct drm_i915_private *dev_p=
riv, enum port port)
>=20=20
>  	drm_WARN_ON(&dev_priv->drm, port > PORT_I);
>  	dig_port->ddi_io_power_domain =3D intel_display_power_ddi_io_domain(dev=
_priv, port);
>=20=20
> +	if (DISPLAY_VER(dev_priv) >=3D 11) {
> +		if (intel_phy_is_tc(dev_priv, phy))
> +			dig_port->connected =3D intel_tc_port_connected;
> +		else
> +			dig_port->connected =3D lpt_digital_port_connected;
> +	} else if (DISPLAY_VER(dev_priv) >=3D 8) {
> +		if (port =3D=3D PORT_A || IS_GEMINILAKE(dev_priv) ||
> +		    IS_BROXTON(dev_priv))
> +			dig_port->connected =3D bdw_digital_port_connected;
> +		else
> +			dig_port->connected =3D lpt_digital_port_connected;
> +	} else {
> +		if (port =3D=3D PORT_A)
> +			dig_port->connected =3D hsw_digital_port_connected;
> +		else
> +			dig_port->connected =3D lpt_digital_port_connected;
> +	}
> +
> +	intel_infoframe_init(dig_port);
> +
>  	if (init_dp) {
>  		if (!intel_ddi_init_dp_connector(dig_port))
>  			goto err;
>=20=20
> @@ -4520,28 +4540,8 @@ void intel_ddi_init(struct drm_i915_private *dev_p=
riv, enum port port)
>  		if (!intel_ddi_init_hdmi_connector(dig_port))
>  			goto err;
>  	}
>=20=20
> -	if (DISPLAY_VER(dev_priv) >=3D 11) {
> -		if (intel_phy_is_tc(dev_priv, phy))
> -			dig_port->connected =3D intel_tc_port_connected;
> -		else
> -			dig_port->connected =3D lpt_digital_port_connected;
> -	} else if (DISPLAY_VER(dev_priv) >=3D 8) {
> -		if (port =3D=3D PORT_A || IS_GEMINILAKE(dev_priv) ||
> -		    IS_BROXTON(dev_priv))
> -			dig_port->connected =3D bdw_digital_port_connected;
> -		else
> -			dig_port->connected =3D lpt_digital_port_connected;
> -	} else {
> -		if (port =3D=3D PORT_A)
> -			dig_port->connected =3D hsw_digital_port_connected;
> -		else
> -			dig_port->connected =3D lpt_digital_port_connected;
> -	}
> -
> -	intel_infoframe_init(dig_port);
> -
>  	return;
>=20=20
>  err:
>  	drm_encoder_cleanup(&encoder->base);

--=20
Jani Nikula, Intel Open Source Graphics Center
