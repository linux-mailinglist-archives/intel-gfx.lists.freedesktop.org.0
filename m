Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B8EF92C480B
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 20:05:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15D2A6E8F8;
	Wed, 25 Nov 2020 19:05:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A74EA6E8F8
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 19:05:55 +0000 (UTC)
IronPort-SDR: gkap5sYbsfPaSqXHFpIAltlpBxjb6R9/L94G/fvUupydYpcv6X09/PgijmLbMOYcL7x0qZ/jFG
 jh7Rs3fRhlBQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="172286198"
X-IronPort-AV: E=Sophos;i="5.78,370,1599548400"; d="scan'208";a="172286198"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 11:05:54 -0800
IronPort-SDR: T/mzmUyVilwBr+5FCFTmGX0U/JkgT1VnrAVD5rC1e3sUe7czBTpTPFs/GL7uUzckMU6mauNnRh
 9S6HZh1BpkLw==
X-IronPort-AV: E=Sophos;i="5.78,370,1599548400"; d="scan'208";a="333100893"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 11:05:53 -0800
Date: Wed, 25 Nov 2020 21:05:49 +0200
From: Imre Deak <imre.deak@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Message-ID: <20201125190549.GC1992336@ideak-desk.fi.intel.com>
References: <20201120195748.99265-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201120195748.99265-1-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Warn about types of
 backlight not handled
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Nov 20, 2020 at 11:57:48AM -0800, Jos=E9 Roberto de Souza wrote:
> Right now we are only explicitly handling the backlight of types
> INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE, INTEL_BACKLIGHT_DSI_DCS and
> INTEL_BACKLIGHT_DISPLAY_DDI all others are being handled as
> INTEL_BACKLIGHT_DISPLAY_DDI(south display engine PWM) but that
> might not be the intended HW usage, so lets warn to identify those
> systems and implement it properly if needed.
> =

> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_panel.c | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm=
/i915/display/intel_panel.c
> index 9f23bac0d792..368722536462 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -2023,6 +2023,21 @@ intel_panel_init_backlight_funcs(struct intel_pane=
l *panel)
>  	struct intel_connector *connector =3D
>  		container_of(panel, struct intel_connector, panel);
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> +	enum intel_backlight_type type =3D dev_priv->vbt.backlight.type;
> +
> +	if (dev_priv->params.enable_dpcd_backlight)
> +		type =3D INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE;
> +
> +	drm_dbg_kms(&dev_priv->drm,
> +		    "Connector %s backlight type %u controller %u\n",
> +		    connector->base.name, type,
> +		    dev_priv->vbt.backlight.controller);
> +
> +	if (type !=3D INTEL_BACKLIGHT_DISPLAY_DDI &&
> +	    type !=3D INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE &&
> +	    type !=3D INTEL_BACKLIGHT_DSI_DCS)
> +		drm_warn(&dev_priv->drm, "Backlight type %i not properly handled\n",
> +			 type);

Not sure about the history/current state of VBT errors wrt. the
backlight type and so this may generate a lot of bug reports without an
actual problem. A backlight problem would be anyway visible, so
we'd get a report and then we could just use the previous debug print
you added. It could be added to the relevant debug print in =

intel_panel_setup_backlight().

+Jani.

>  =

>  	if (connector->base.connector_type =3D=3D DRM_MODE_CONNECTOR_eDP &&
>  	    intel_dp_aux_init_backlight_funcs(connector) =3D=3D 0)
> -- =

> 2.29.2
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
