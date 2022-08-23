Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A1859D24C
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Aug 2022 09:38:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0989FB03F1;
	Tue, 23 Aug 2022 07:37:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D5CFB03DC
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 07:37:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661240258; x=1692776258;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=arpjheY++aSFwsx114yorR2RDBlV0h/82XEkdhZq6rQ=;
 b=YuI7MDl53gRSReepcG9j4Aa3NcOPOJFtFlvUKo9/VRV3rbE7UzHd1vEM
 +lX+Qf+d8OEjpQimCh6GBHKX2HowqvYYPpXiGfsrgOeHeqQyBGDNgdvIP
 ajeGTfaz2cy3+2oCnI602FjYT/N8g0RLhRrT/exdq0FoVzwkrj6VvDX6G
 +Uxohtesxl1iHCzg/TXuWlDre/Lblo4HvuzIQCEV8rCUsQrfX9fOp457A
 6zewN/RTdx9ShRkBCMDIwzxBNPC3dO5EwJnHrmQOzgU60wkDMpwyi16eg
 EQRaYOPyaS4JKmMhzursdwzDEMPXkNRwueTRf/jaO+zluXJ++xuHCPVgj Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10447"; a="276644661"
X-IronPort-AV: E=Sophos;i="5.93,256,1654585200"; d="scan'208";a="276644661"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 00:37:33 -0700
X-IronPort-AV: E=Sophos;i="5.93,256,1654585200"; d="scan'208";a="669908301"
Received: from bmarkovi-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.43.229])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 00:37:32 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220822140836.534432-1-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220822140836.534432-1-jouni.hogander@intel.com>
Date: Tue, 23 Aug 2022 10:37:29 +0300
Message-ID: <87fshnmmva.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/backlight: Disable pps power hook
 for aux based backlight
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

On Mon, 22 Aug 2022, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> Pps power hook seems to be problematic for backlight controlled via
> aux channel. Disable it for such cases.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/3657
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_backlight.c | 11 ++++++++---
>  drivers/gpu/drm/i915/display/intel_dp.c        |  2 --
>  2 files changed, 8 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu=
/drm/i915/display/intel_backlight.c
> index af28b143d27a..5d317a20dd0f 100644
> --- a/drivers/gpu/drm/i915/display/intel_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_backlight.c
> @@ -17,6 +17,7 @@
>  #include "intel_dsi_dcs_backlight.h"
>  #include "intel_panel.h"
>  #include "intel_pci_config.h"
> +#include "intel_pps.h"
>=20=20
>  /**
>   * scale - scale values from one range to another
> @@ -1778,9 +1779,13 @@ void intel_backlight_init_funcs(struct intel_panel=
 *panel)
>  		panel->backlight.pwm_funcs =3D &i9xx_pwm_funcs;
>  	}
>=20=20
> -	if (connector->base.connector_type =3D=3D DRM_MODE_CONNECTOR_eDP &&
> -	    intel_dp_aux_init_backlight_funcs(connector) =3D=3D 0)
> -		return;
> +	if (connector->base.connector_type =3D=3D DRM_MODE_CONNECTOR_eDP) {
> +		if (intel_dp_aux_init_backlight_funcs(connector) =3D=3D 0)
> +			return;
> +
> +		if (!(dev_priv->quirks & QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK))
> +			connector->panel.backlight.power =3D intel_pps_backlight_power;
> +	}
>=20=20
>  	/* We're using a standard PWM backlight interface */
>  	panel->backlight.funcs =3D &pwm_bl_funcs;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 32292c0be2bd..ac90d455a7c7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5293,8 +5293,6 @@ static bool intel_edp_init_connector(struct intel_d=
p *intel_dp,
>=20=20
>  	intel_panel_init(intel_connector);
>=20=20
> -	if (!(dev_priv->quirks & QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK))
> -		intel_connector->panel.backlight.power =3D intel_pps_backlight_power;
>  	intel_backlight_setup(intel_connector, pipe);
>=20=20
>  	intel_edp_add_properties(intel_dp);

--=20
Jani Nikula, Intel Open Source Graphics Center
