Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F721A1790
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 23:58:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F08886E90C;
	Tue,  7 Apr 2020 21:58:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E8DD6E90C
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 21:58:55 +0000 (UTC)
IronPort-SDR: V+PPCk4E/fhmq+IhwK0ftkFxhfJQltiCBDauwLfBaCENHVxrwriNkpRLgV9+07TSVZ7UN57M2d
 li7/ws6SaRHw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 14:58:54 -0700
IronPort-SDR: PXdIaqdv2klOQeD5YNMtrYVex80U8SUUzMS7Je/DFuCBzK6CpU8L+XybxP9vMgCGnzTRVFZ3ZS
 ZVpNDZLzSdXw==
X-IronPort-AV: E=Sophos;i="5.72,356,1580803200"; d="scan'208";a="243875018"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 14:58:53 -0700
Date: Wed, 8 Apr 2020 00:58:22 +0300
From: Imre Deak <imre.deak@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200407215822.GB23597@ideak-desk.fi.intel.com>
References: <20200407214000.342933-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200407214000.342933-1-jose.souza@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v3 1/8] drm/i915/display: Move out code to
 return the digital_port of the aux ch
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
Cc: You-Sheng Yang <vicamo@gmail.com>, intel-gfx@lists.freedesktop.org,
 You-Sheng Yang <vicamo.yang@canonical.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 07, 2020 at 02:39:53PM -0700, Jos=E9 Roberto de Souza wrote:
> Moving the code to return the digital port of the aux channel also
> removing the intel_phy_is_tc() to make it generic.
> digital_port will be needed in icl_tc_phy_aux_power_well_enable()
> so adding it as a parameter to icl_tc_port_assert_ref_held().
> =

> While at at removing the duplicated call to icl_tc_phy_aux_ch() in
> icl_tc_port_assert_ref_held().
> =

> v2:
> - fixed build when DRM_I915_DEBUG_RUNTIME_PM is not set
> - moved to before hsw_wait_for_power_well_enable() as it will be
> needed by hsw_wait_for_power_well_enable() in a future patch
> =

> Cc: You-Sheng Yang <vicamo@gmail.com>
> Reviewed-by: Imre Deak <imre.deak@intel.com>
> Tested-by: You-Sheng Yang <vicamo.yang@canonical.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  .../drm/i915/display/intel_display_power.c    | 69 ++++++++++---------
>  1 file changed, 37 insertions(+), 32 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index 433e5a81dd4d..5a8b94d9a10f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -282,6 +282,33 @@ static void hsw_power_well_pre_disable(struct drm_i9=
15_private *dev_priv,
>  		gen8_irq_power_well_pre_disable(dev_priv, irq_pipe_mask);
>  }
>  =

> +static struct intel_digital_port *
> +aux_ch_to_digital_port(struct drm_i915_private *dev_priv,
> +		       enum aux_ch aux_ch)
> +{
> +	struct intel_digital_port *dig_port =3D NULL;
> +	struct intel_encoder *encoder;
> +
> +	for_each_intel_encoder(&dev_priv->drm, encoder) {
> +		/* We'll check the MST primary port */
> +		if (encoder->type =3D=3D INTEL_OUTPUT_DP_MST)
> +			continue;
> +
> +		dig_port =3D enc_to_dig_port(encoder);
> +		if (!dig_port)
> +			return NULL;
			continue;

> +
> +		if (dig_port->aux_ch !=3D aux_ch) {
> +			dig_port =3D NULL;
> +			continue;
> +		}
> +
> +		break;
> +	}
> +
> +	return dig_port;
> +}
> +
>  static void hsw_wait_for_power_well_enable(struct drm_i915_private *dev_=
priv,
>  					   struct i915_power_well *power_well)
>  {
> @@ -501,41 +528,14 @@ static int power_well_async_ref_count(struct drm_i9=
15_private *dev_priv,
>  }
>  =

>  static void icl_tc_port_assert_ref_held(struct drm_i915_private *dev_pri=
v,
> -					struct i915_power_well *power_well)
> +					struct i915_power_well *power_well,
> +					struct intel_digital_port *dig_port)
>  {
> -	enum aux_ch aux_ch =3D icl_tc_phy_aux_ch(dev_priv, power_well);
> -	struct intel_digital_port *dig_port =3D NULL;
> -	struct intel_encoder *encoder;
> -
>  	/* Bypass the check if all references are released asynchronously */
>  	if (power_well_async_ref_count(dev_priv, power_well) =3D=3D
>  	    power_well->count)
>  		return;
>  =

> -	aux_ch =3D icl_tc_phy_aux_ch(dev_priv, power_well);
> -
> -	for_each_intel_encoder(&dev_priv->drm, encoder) {
> -		enum phy phy =3D intel_port_to_phy(dev_priv, encoder->port);
> -
> -		if (!intel_phy_is_tc(dev_priv, phy))
> -			continue;
> -
> -		/* We'll check the MST primary port */
> -		if (encoder->type =3D=3D INTEL_OUTPUT_DP_MST)
> -			continue;
> -
> -		dig_port =3D enc_to_dig_port(encoder);
> -		if (drm_WARN_ON(&dev_priv->drm, !dig_port))
> -			continue;
> -
> -		if (dig_port->aux_ch !=3D aux_ch) {
> -			dig_port =3D NULL;
> -			continue;
> -		}
> -
> -		break;
> -	}
> -
>  	if (drm_WARN_ON(&dev_priv->drm, !dig_port))
>  		return;
>  =

> @@ -545,7 +545,8 @@ static void icl_tc_port_assert_ref_held(struct drm_i9=
15_private *dev_priv,
>  #else
>  =

>  static void icl_tc_port_assert_ref_held(struct drm_i915_private *dev_pri=
v,
> -					struct i915_power_well *power_well)
> +					struct i915_power_well *power_well,
> +					struct intel_digital_port *dig_port)
>  {
>  }
>  =

> @@ -558,9 +559,10 @@ icl_tc_phy_aux_power_well_enable(struct drm_i915_pri=
vate *dev_priv,
>  				 struct i915_power_well *power_well)
>  {
>  	enum aux_ch aux_ch =3D icl_tc_phy_aux_ch(dev_priv, power_well);
> +	struct intel_digital_port *dig_port =3D aux_ch_to_digital_port(dev_priv=
, aux_ch);
>  	u32 val;
>  =

> -	icl_tc_port_assert_ref_held(dev_priv, power_well);
> +	icl_tc_port_assert_ref_held(dev_priv, power_well, dig_port);
>  =

>  	val =3D intel_de_read(dev_priv, DP_AUX_CH_CTL(aux_ch));
>  	val &=3D ~DP_AUX_CH_CTL_TBT_IO;
> @@ -588,7 +590,10 @@ static void
>  icl_tc_phy_aux_power_well_disable(struct drm_i915_private *dev_priv,
>  				  struct i915_power_well *power_well)
>  {
> -	icl_tc_port_assert_ref_held(dev_priv, power_well);
> +	enum aux_ch aux_ch =3D icl_tc_phy_aux_ch(dev_priv, power_well);
> +	struct intel_digital_port *dig_port =3D aux_ch_to_digital_port(dev_priv=
, aux_ch);
> +
> +	icl_tc_port_assert_ref_held(dev_priv, power_well, dig_port);
>  =

>  	hsw_power_well_disable(dev_priv, power_well);
>  }
> -- =

> 2.26.0
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
