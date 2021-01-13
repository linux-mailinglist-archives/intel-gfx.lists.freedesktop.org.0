Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 828742F5213
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jan 2021 19:33:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA9946E7D5;
	Wed, 13 Jan 2021 18:33:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEB446E7D5
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jan 2021 18:33:11 +0000 (UTC)
IronPort-SDR: DjQfjeYZTpN2q3xpVHvRKmMfYKFtp7n1YDL8p6tHo6zrJhuy6yArhPYUZJrEQEtEC9DeW5zvHo
 Xg5IbgIWuNxg==
X-IronPort-AV: E=McAfee;i="6000,8403,9863"; a="196894087"
X-IronPort-AV: E=Sophos;i="5.79,344,1602572400"; d="scan'208";a="196894087"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2021 10:33:10 -0800
IronPort-SDR: rmd7pqtqJo43yKIREkjR0EDDVBgX9+oGHYKJF+mZwbmi3c412gpGApVwPO2KMFPXSJTEgSje6w
 T48aFkGlo9AA==
X-IronPort-AV: E=Sophos;i="5.79,344,1602572400"; d="scan'208";a="381957730"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2021 10:33:10 -0800
Date: Wed, 13 Jan 2021 10:33:07 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20210113183307.GU21197@mdroper-desk1.amr.corp.intel.com>
References: <20210113133759.72055-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210113133759.72055-1-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg1: Apply WA 1409120013 and
 14011059788
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

On Wed, Jan 13, 2021 at 05:37:59AM -0800, Jos=E9 Roberto de Souza wrote:
> DG1 is missing those two WA so instead of copy and paste it to the DG1
> function, here calling the function that implements it.
> =

> While at it also renaming tgl_init_clock_gating to
> gen12lp_init_clock_gating as it is also used by DG1, RKL and ADL-S.
> =

> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_pm.c | 12 +++++++-----
>  1 file changed, 7 insertions(+), 5 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index bbc73df7f753..992fce8b8d13 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -7103,24 +7103,26 @@ static void icl_init_clock_gating(struct drm_i915=
_private *dev_priv)
>  			 0, CNL_DELAY_PMRSP);
>  }
>  =

> -static void tgl_init_clock_gating(struct drm_i915_private *dev_priv)
> +static void gen12lp_init_clock_gating(struct drm_i915_private *dev_priv)
>  {
> -	/* Wa_1409120013:tgl */
> +	/* Wa_1409120013:tgl,rkl,adl_s,dg1 */
>  	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN,
> -		   ILK_DPFC_CHICKEN_COMP_DUMMY_PIXEL);
> +			   ILK_DPFC_CHICKEN_COMP_DUMMY_PIXEL);
>  =

>  	/* Wa_1409825376:tgl (pre-prod)*/
>  	if (IS_TGL_DISP_REVID(dev_priv, TGL_REVID_A0, TGL_REVID_B1))
>  		intel_uncore_write(&dev_priv->uncore, GEN9_CLKGATE_DIS_3, intel_uncore=
_read(&dev_priv->uncore, GEN9_CLKGATE_DIS_3) |
>  			   TGL_VRH_GATING_DIS);
>  =

> -	/* Wa_14011059788:tgl */
> +	/* Wa_14011059788:tgl,rkl,adl_s,dg1 */
>  	intel_uncore_rmw(&dev_priv->uncore, GEN10_DFR_RATIO_EN_AND_CHICKEN,
>  			 0, DFR_DISABLE);
>  }
>  =

>  static void dg1_init_clock_gating(struct drm_i915_private *dev_priv)
>  {
> +	gen12lp_init_clock_gating(dev_priv);
> +
>  	/* Wa_1409836686:dg1[a0] */
>  	if (IS_DG1_REVID(dev_priv, DG1_REVID_A0, DG1_REVID_A0))
>  		intel_uncore_write(&dev_priv->uncore, GEN9_CLKGATE_DIS_3, intel_uncore=
_read(&dev_priv->uncore, GEN9_CLKGATE_DIS_3) |
> @@ -7583,7 +7585,7 @@ void intel_init_clock_gating_hooks(struct drm_i915_=
private *dev_priv)
>  	if (IS_DG1(dev_priv))
>  		dev_priv->display.init_clock_gating =3D dg1_init_clock_gating;
>  	else if (IS_GEN(dev_priv, 12))
> -		dev_priv->display.init_clock_gating =3D tgl_init_clock_gating;
> +		dev_priv->display.init_clock_gating =3D gen12lp_init_clock_gating;
>  	else if (IS_GEN(dev_priv, 11))
>  		dev_priv->display.init_clock_gating =3D icl_init_clock_gating;
>  	else if (IS_CANNONLAKE(dev_priv))
> -- =

> 2.30.0
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
