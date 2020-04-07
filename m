Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEDB71A1113
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 18:18:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E124D6E121;
	Tue,  7 Apr 2020 16:18:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A79AF6E121
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 16:18:27 +0000 (UTC)
IronPort-SDR: gbvb1z2E0fbvINIbrbj6JW9TsjDRGi/gqJ2v5soE/wD3amSHHyOGbhloKKcVL5EIzycTa1BHFh
 mOrc8gqcukTA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 09:18:28 -0700
IronPort-SDR: zxcKGODOCL9me8scTBvkju7Pn5UBahca+W0nrjOiY2v+3dkpbpv/h9mNz1RoAgmlKUJ8Vfe2jM
 zyfjxWlUKNoA==
X-IronPort-AV: E=Sophos;i="5.72,355,1580803200"; d="scan'208";a="424803138"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 09:18:25 -0700
Date: Tue, 7 Apr 2020 19:18:15 +0300
From: Imre Deak <imre.deak@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200407161815.GH21484@ideak-desk.fi.intel.com>
References: <20200407011157.362092-1-jose.souza@intel.com>
 <20200407011157.362092-8-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200407011157.362092-8-jose.souza@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v2 8/8] drm/i915/tc: Do not warn when aux
 power well of static TC ports timeout
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

On Mon, Apr 06, 2020 at 06:11:57PM -0700, Jos=E9 Roberto de Souza wrote:
> This is a expected timeout of static TC ports not conneceted, so
> not throwing warnings that would taint CI.
> =

> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  .../drm/i915/display/intel_display_power.c    | 37 +++++++++++--------
>  1 file changed, 21 insertions(+), 16 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index 5d33929f3724..50af5854658e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -284,6 +284,21 @@ static void hsw_power_well_pre_disable(struct drm_i9=
15_private *dev_priv,
>  		gen8_irq_power_well_pre_disable(dev_priv, irq_pipe_mask);
>  }
>  =

> +#define ICL_AUX_PW_TO_CH(pw_idx)	\
> +	((pw_idx) - ICL_PW_CTL_IDX_AUX_A + AUX_CH_A)
> +
> +#define ICL_TBT_AUX_PW_TO_CH(pw_idx)	\
> +	((pw_idx) - ICL_PW_CTL_IDX_AUX_TBT1 + AUX_CH_C)
> +
> +static enum aux_ch icl_tc_phy_aux_ch(struct drm_i915_private *dev_priv,
> +				     struct i915_power_well *power_well)
> +{
> +	int pw_idx =3D power_well->desc->hsw.idx;
> +
> +	return power_well->desc->hsw.is_tc_tbt ? ICL_TBT_AUX_PW_TO_CH(pw_idx) :
> +						 ICL_AUX_PW_TO_CH(pw_idx);
> +}
> +
>  static struct intel_digital_port *
>  aux_ch_to_digital_port(struct drm_i915_private *dev_priv,
>  		       enum aux_ch aux_ch)
> @@ -320,11 +335,16 @@ static void hsw_wait_for_power_well_enable(struct d=
rm_i915_private *dev_priv,
>  	/* Timeout for PW1:10 us, AUX:not specified, other PWs:20 us. */
>  	if (intel_de_wait_for_set(dev_priv, regs->driver,
>  				  HSW_PWR_WELL_CTL_STATE(pw_idx), 1)) {
> +		enum aux_ch aux_ch =3D icl_tc_phy_aux_ch(dev_priv, power_well);

This is only valid for ICL tc phy power wells. You could move the logic
for that to a tc_phy_aux_timeout_expected(pw_idx) helper.

> +		struct intel_digital_port *dig_port =3D aux_ch_to_digital_port(dev_pri=
v, aux_ch);
> +
>  		drm_dbg_kms(&dev_priv->drm, "%s power well enable timeout\n",
>  			    power_well->desc->name);
>  =

>  		/* An AUX timeout is expected if the TBT DP tunnel is down. */
> -		drm_WARN_ON(&dev_priv->drm, !power_well->desc->hsw.is_tc_tbt);
> +		drm_WARN_ON(&dev_priv->drm, !power_well->desc->hsw.is_tc_tbt &&
> +			    !(INTEL_GEN(dev_priv) =3D=3D 11 && dig_port->tc_legacy_port));
> +
>  	}
>  }
>  =

> @@ -520,21 +540,6 @@ icl_combo_phy_aux_power_well_disable(struct drm_i915=
_private *dev_priv,
>  	hsw_wait_for_power_well_disable(dev_priv, power_well);
>  }
>  =

> -#define ICL_AUX_PW_TO_CH(pw_idx)	\
> -	((pw_idx) - ICL_PW_CTL_IDX_AUX_A + AUX_CH_A)
> -
> -#define ICL_TBT_AUX_PW_TO_CH(pw_idx)	\
> -	((pw_idx) - ICL_PW_CTL_IDX_AUX_TBT1 + AUX_CH_C)
> -
> -static enum aux_ch icl_tc_phy_aux_ch(struct drm_i915_private *dev_priv,
> -				     struct i915_power_well *power_well)
> -{
> -	int pw_idx =3D power_well->desc->hsw.idx;
> -
> -	return power_well->desc->hsw.is_tc_tbt ? ICL_TBT_AUX_PW_TO_CH(pw_idx) :
> -						 ICL_AUX_PW_TO_CH(pw_idx);
> -}
> -
>  #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
>  =

>  static u64 async_put_domains_mask(struct i915_power_domains *power_domai=
ns);
> -- =

> 2.26.0
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
