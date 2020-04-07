Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5756D1A183B
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 00:31:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7A1C6E170;
	Tue,  7 Apr 2020 22:31:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71B756E170
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 22:31:26 +0000 (UTC)
IronPort-SDR: PPO3wt/FO8Aj2TZCpXQwIZpvZixXoTsF1ebA3R85dQjAlqXlBAepNAj76O0qyGl4VHZUWlTLjz
 kvataakhbzEw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 15:31:25 -0700
IronPort-SDR: BIxznz1lYcLhU6UIVJ8843VOWMa2WcZyMcN1dliwLACox66bjulLqXW7+CddJ84/m1XO7ccd6M
 gMycTpPfkDdg==
X-IronPort-AV: E=Sophos;i="5.72,356,1580803200"; d="scan'208";a="424914653"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 15:31:24 -0700
Date: Wed, 8 Apr 2020 01:31:13 +0300
From: Imre Deak <imre.deak@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200407223113.GE23597@ideak-desk.fi.intel.com>
References: <20200407214000.342933-1-jose.souza@intel.com>
 <20200407214000.342933-8-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200407214000.342933-8-jose.souza@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v3 8/8] drm/i915/tc: Do not warn when aux
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

On Tue, Apr 07, 2020 at 02:40:00PM -0700, Jos=E9 Roberto de Souza wrote:
> This is a expected timeout of static TC ports not conneceted, so
> not throwing warnings that would taint CI.
> =

> v3:
> - moved checks to tc_phy_aux_timeout_expected()
> =

> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  .../drm/i915/display/intel_display_power.c    | 50 +++++++++++++------
>  1 file changed, 34 insertions(+), 16 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index 0be6757f797c..fa7521f7680d 100644
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
> @@ -311,6 +326,22 @@ aux_ch_to_digital_port(struct drm_i915_private *dev_=
priv,
>  	return dig_port;
>  }
>  =

> +static bool tc_phy_aux_timeout_expected(struct drm_i915_private *dev_pri=
v,
> +					struct i915_power_well *power_well)
> +{
> +	if (power_well->desc->hsw.is_tc_tbt)
> +		return true;
> +
> +	if (INTEL_GEN(dev_priv) =3D=3D 11) {

	if (GEN=3D=3D11 && power_well->desc->ops =3D=3D &icl_tc_phy_aux_power_well=
_ops) {

> +		enum aux_ch aux_ch =3D icl_tc_phy_aux_ch(dev_priv, power_well);
> +		struct intel_digital_port *dig_port =3D aux_ch_to_digital_port(dev_pri=
v, aux_ch);
> +
> +		return dig_port->tc_legacy_port;
> +	}
> +
> +	return false;
> +}
> +
>  static void hsw_wait_for_power_well_enable(struct drm_i915_private *dev_=
priv,
>  					   struct i915_power_well *power_well)
>  {
> @@ -324,7 +355,9 @@ static void hsw_wait_for_power_well_enable(struct drm=
_i915_private *dev_priv,
>  			    power_well->desc->name);
>  =

>  		/* An AUX timeout is expected if the TBT DP tunnel is down. */

The comment is now misplaced.

> -		drm_WARN_ON(&dev_priv->drm, !power_well->desc->hsw.is_tc_tbt);
> +		drm_WARN_ON(&dev_priv->drm,
> +			    !tc_phy_aux_timeout_expected(dev_priv, power_well));
> +
>  	}
>  }
>  =

> @@ -520,21 +553,6 @@ icl_combo_phy_aux_power_well_disable(struct drm_i915=
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
