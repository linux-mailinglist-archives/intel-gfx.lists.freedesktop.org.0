Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF2228211A
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Oct 2020 06:23:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 784B76EA3B;
	Sat,  3 Oct 2020 04:23:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E9F96EA3B
 for <intel-gfx@lists.freedesktop.org>; Sat,  3 Oct 2020 04:23:45 +0000 (UTC)
IronPort-SDR: qEPo0TlP8jUvYrcmb8wy6/zBHiMNQ1MUrhF7WZMF+9EMa67l4ymY2S2OBY6nLEu94CGoUK3Qro
 JIIgxHCmIf6A==
X-IronPort-AV: E=McAfee;i="6000,8403,9762"; a="160538198"
X-IronPort-AV: E=Sophos;i="5.77,330,1596524400"; d="scan'208";a="160538198"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2020 21:23:43 -0700
IronPort-SDR: fOdSpCm8McDzhPQrJ2vkCtoq+OSqx6bQKCL/+hJS5reh4AnX3XQoZOUb+rUQNei+7BxXW0fAap
 jTprMqbd4JLQ==
X-IronPort-AV: E=Sophos;i="5.77,330,1596524400"; d="scan'208";a="309228553"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2020 21:23:42 -0700
Date: Fri, 2 Oct 2020 21:23:40 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20201003042340.GU2245633@mdroper-desk1.amr.corp.intel.com>
References: <20200928200309.88982-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200928200309.88982-1-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display/ehl: Limit eDP to HBR2
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

On Mon, Sep 28, 2020 at 01:03:09PM -0700, Jos=E9 Roberto de Souza wrote:
> Recent update in documentation defeatured eDP HBR3 for EHL and JSL.
> =

> v2:
> - Remove dead code in ehl_get_combo_buf_trans()
> =

> BSpec: 32247
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Vidya Srinivas <vidya.srinivas@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>

Surprising that DP vs eDP have the exact opposite restrictions that
ICL/TGL do, but this matches the spec.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c |  9 ++-------
>  drivers/gpu/drm/i915/display/intel_dp.c  | 11 ++++++++++-
>  2 files changed, 12 insertions(+), 8 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 4d06178cd76c..ef06b7b82be9 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -1082,13 +1082,8 @@ ehl_get_combo_buf_trans(struct intel_encoder *enco=
der, int type, int rate,
>  		return icl_combo_phy_ddi_translations_hdmi;
>  	case INTEL_OUTPUT_EDP:
>  		if (dev_priv->vbt.edp.low_vswing) {
> -			if (rate > 540000) {
> -				*n_entries =3D ARRAY_SIZE(icl_combo_phy_ddi_translations_edp_hbr3);
> -				return icl_combo_phy_ddi_translations_edp_hbr3;
> -			} else {
> -				*n_entries =3D ARRAY_SIZE(icl_combo_phy_ddi_translations_edp_hbr2);
> -				return icl_combo_phy_ddi_translations_edp_hbr2;
> -			}
> +			*n_entries =3D ARRAY_SIZE(icl_combo_phy_ddi_translations_edp_hbr2);
> +			return icl_combo_phy_ddi_translations_edp_hbr2;
>  		}
>  		/* fall through */
>  	default:
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 54a4b81ea3ff..96d2c76772d6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -277,13 +277,20 @@ static int icl_max_source_rate(struct intel_dp *int=
el_dp)
>  	enum phy phy =3D intel_port_to_phy(dev_priv, dig_port->base.port);
>  =

>  	if (intel_phy_is_combo(dev_priv, phy) &&
> -	    !IS_ELKHARTLAKE(dev_priv) &&
>  	    !intel_dp_is_edp(intel_dp))
>  		return 540000;
>  =

>  	return 810000;
>  }
>  =

> +static int ehl_max_source_rate(struct intel_dp *intel_dp)
> +{
> +	if (intel_dp_is_edp(intel_dp))
> +		return 540000;
> +
> +	return 810000;
> +}
> +
>  static void
>  intel_dp_set_source_rates(struct intel_dp *intel_dp)
>  {
> @@ -318,6 +325,8 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
>  		size =3D ARRAY_SIZE(cnl_rates);
>  		if (IS_GEN(dev_priv, 10))
>  			max_rate =3D cnl_max_source_rate(intel_dp);
> +		else if (IS_ELKHARTLAKE(dev_priv))
> +			max_rate =3D ehl_max_source_rate(intel_dp);
>  		else
>  			max_rate =3D icl_max_source_rate(intel_dp);
>  	} else if (IS_GEN9_LP(dev_priv)) {
> -- =

> 2.28.0
> =


-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
