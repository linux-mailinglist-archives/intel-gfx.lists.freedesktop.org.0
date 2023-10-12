Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1C797C70A8
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 16:48:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B8C810E4F0;
	Thu, 12 Oct 2023 14:48:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FACA10E4EF
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Oct 2023 14:48:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697122100; x=1728658100;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=AqDeaKEne4TeNLHbk1wAXr34nSK4Vg/z4hzW5GjX/Ls=;
 b=hO82GYJY8y5Q5K2oKP/PclHkpnnyGsdkXWygKM2rZVu5PvbpNueM1mCk
 q5s28M5nYKBxaKYH2WuKYJSDhlPOKUzb7Bsgg28DjZThDMl37s7CxPSTP
 19J9vJWzWp7ttTr19ipJ2e8YenCrh5uSq9DKnIgK3PRbm7xUTa8nOfhqD
 1ulF98tRRg97Xfr85UeDslk0X12rEkhrTMClOT/2ojN9EaYCG66tc/FpW
 tNMeYqFNfqefswqmFz/kryEOj/b90qvF+JqWS2wFBFz41VDXoPvDHjERj
 srwneTcGkzkBAFETLOrfgCRC0t6fcfRtnN3xlQJtA8qS90fwdJqvCGyp/ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="382172898"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="382172898"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 07:48:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="870605746"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="870605746"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.162])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 07:48:18 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231012124033.26983-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231012124033.26983-1-ville.syrjala@linux.intel.com>
Date: Thu, 12 Oct 2023 17:48:16 +0300
Message-ID: <87lec728y7.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Move the g45 PEG band gap HPD
 workaround to the HPD code
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

On Thu, 12 Oct 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We are asked to reprogram PEG_BAND_GAP_DATA prior to enabling
> hotplug detection on the g45 HDMI/DP ports. Currently we do said
> reprogamming from the DP/HDMI connector initialization functions.
> That code should be mostly platform agnostic so clearly not the
> best place for this. Move the workaround to the place where we
> actually enable HPD detection.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c          | 10 ----------
>  drivers/gpu/drm/i915/display/intel_hdmi.c        | 10 ----------
>  drivers/gpu/drm/i915/display/intel_hotplug_irq.c | 16 ++++++++++++++++
>  3 files changed, 16 insertions(+), 20 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 4f6835a7578e..f2d6c4da72ab 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -6198,16 +6198,6 @@ intel_dp_init_connector(struct intel_digital_port =
*dig_port,
>  				    "HDCP init failed, skipping.\n");
>  	}
>=20=20
> -	/* For G4X desktop chip, PEG_BAND_GAP_DATA 3:0 must first be written
> -	 * 0xd.  Failure to do so will result in spurious interrupts being
> -	 * generated on the port when a cable is not attached.
> -	 */
> -	if (IS_G45(dev_priv)) {
> -		u32 temp =3D intel_de_read(dev_priv, PEG_BAND_GAP_DATA);
> -		intel_de_write(dev_priv, PEG_BAND_GAP_DATA,
> -			       (temp & ~0xf) | 0xd);
> -	}
> -
>  	intel_dp->frl.is_trained =3D false;
>  	intel_dp->frl.trained_rate_gbps =3D 0;
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/=
i915/display/intel_hdmi.c
> index ac315f8e7820..ab18cfc19c0a 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -3030,16 +3030,6 @@ void intel_hdmi_init_connector(struct intel_digita=
l_port *dig_port,
>  				    "HDCP init failed, skipping.\n");
>  	}
>=20=20
> -	/* For G4X desktop chip, PEG_BAND_GAP_DATA 3:0 must first be written
> -	 * 0xd.  Failure to do so will result in spurious interrupts being
> -	 * generated on the port when a cable is not attached.
> -	 */
> -	if (IS_G45(dev_priv)) {
> -		u32 temp =3D intel_de_read(dev_priv, PEG_BAND_GAP_DATA);
> -		intel_de_write(dev_priv, PEG_BAND_GAP_DATA,
> -		               (temp & ~0xf) | 0xd);
> -	}
> -
>  	cec_fill_conn_info_from_drm(&conn_info, connector);
>=20=20
>  	intel_hdmi->cec_notifier =3D
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/g=
pu/drm/i915/display/intel_hotplug_irq.c
> index f07047e9cb30..04f62f27ad74 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> @@ -1361,11 +1361,24 @@ static void bxt_hpd_irq_setup(struct drm_i915_pri=
vate *dev_priv)
>  	bxt_hpd_detection_setup(dev_priv);
>  }
>=20=20
> +static void g45_hpd_peg_band_gap_wa(struct drm_i915_private *i915)
> +{
> +	/*
> +	 * For G4X desktop chip, PEG_BAND_GAP_DATA 3:0 must first be written
> +	 * 0xd.  Failure to do so will result in spurious interrupts being
> +	 * generated on the port when a cable is not attached.
> +	 */
> +	intel_de_rmw(i915, PEG_BAND_GAP_DATA, 0xf, 0xd);
> +}
> +
>  static void i915_hpd_enable_detection(struct intel_encoder *encoder)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>  	u32 hotplug_en =3D hpd_mask_i915[encoder->hpd_pin];
>=20=20
> +	if (IS_G45(i915))
> +		g45_hpd_peg_band_gap_wa(i915);
> +
>  	/* HPD sense and interrupt enable are one and the same */
>  	i915_hotplug_interrupt_update(i915, hotplug_en, hotplug_en);
>  }
> @@ -1389,6 +1402,9 @@ static void i915_hpd_irq_setup(struct drm_i915_priv=
ate *dev_priv)
>  		hotplug_en |=3D CRT_HOTPLUG_ACTIVATION_PERIOD_64;
>  	hotplug_en |=3D CRT_HOTPLUG_VOLTAGE_COMPARE_50;
>=20=20
> +	if (IS_G45(dev_priv))
> +		g45_hpd_peg_band_gap_wa(dev_priv);
> +
>  	/* Ignore TV since it's buggy */
>  	i915_hotplug_interrupt_update_locked(dev_priv,
>  					     HOTPLUG_INT_EN_MASK |

--=20
Jani Nikula, Intel
