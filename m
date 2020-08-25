Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 384D22523E3
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 00:56:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F7EE89C85;
	Tue, 25 Aug 2020 22:56:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15A8B89C85
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Aug 2020 22:56:00 +0000 (UTC)
IronPort-SDR: lR0MtmBTTKLPsT3Q6kJ2r6UmhBersfgpk4kBunZytKBdcGtFIQZNQiwHhmQRV8PcIAPOulbw/6
 Kl+U1NwfCj+Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9724"; a="220468827"
X-IronPort-AV: E=Sophos;i="5.76,354,1592895600"; d="scan'208";a="220468827"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2020 15:55:59 -0700
IronPort-SDR: ErqDBqNVjh7FfrsAiSxW+WtjJOIOnQ9bjHm67hdh0FDyxeVv7e6H5+xf30HOpqxAv6Q5m0uY3I
 DcNRkpyicWow==
X-IronPort-AV: E=Sophos;i="5.76,354,1592895600"; d="scan'208";a="299266833"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2020 15:55:59 -0700
Date: Tue, 25 Aug 2020 15:55:57 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200825225557.GK3934000@mdroper-desk1.amr.corp.intel.com>
References: <20200825184343.63253-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200825184343.63253-1-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 1/3] drm/i915/display/tgl: Use TGL DP
 tables for eDP ports without low power support
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

On Tue, Aug 25, 2020 at 11:43:41AM -0700, Jos=E9 Roberto de Souza wrote:
> Reusing icl_get_combo_buf_trans() for eDP was causing the wrong table
> being used when the eDP port don't support low power voltage swing table.
> =

> Cc: Lee Shawn C <shawn.c.lee@intel.com>
> Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 52 +++++++++++++++---------
>  1 file changed, 33 insertions(+), 19 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index de5b216561d8..9a035bb7bd06 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -1088,30 +1088,44 @@ tgl_get_combo_buf_trans(struct intel_encoder *enc=
oder, int type, int rate,
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  =

> -	if (type =3D=3D INTEL_OUTPUT_EDP && dev_priv->vbt.edp.hobl) {
> -		struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> -
> -		if (!intel_dp->hobl_failed && rate <=3D 540000) {
> -			/* Same table applies to TGL, RKL and DG1 */
> -			*n_entries =3D ARRAY_SIZE(tgl_combo_phy_ddi_translations_edp_hbr2_hob=
l);
> -			return tgl_combo_phy_ddi_translations_edp_hbr2_hobl;
> +	switch (type) {
> +	case INTEL_OUTPUT_HDMI:
> +		*n_entries =3D ARRAY_SIZE(icl_combo_phy_ddi_translations_hdmi);
> +		return icl_combo_phy_ddi_translations_hdmi;
> +	case INTEL_OUTPUT_EDP:
> +		if (dev_priv->vbt.edp.hobl) {
> +			struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> +
> +			if (!intel_dp->hobl_failed && rate <=3D 540000) {
> +				/* Same table applies to TGL, RKL and DG1 */
> +				*n_entries =3D ARRAY_SIZE(tgl_combo_phy_ddi_translations_edp_hbr2_ho=
bl);
> +				return tgl_combo_phy_ddi_translations_edp_hbr2_hobl;
> +			}
>  		}
> -	}
>  =

> -	if (type =3D=3D INTEL_OUTPUT_HDMI || type =3D=3D INTEL_OUTPUT_EDP) {
> -		return icl_get_combo_buf_trans(encoder, type, rate, n_entries);
> -	} else if (rate > 270000) {
> -		if (IS_TGL_U(dev_priv) || IS_TGL_Y(dev_priv)) {
> -			*n_entries =3D ARRAY_SIZE(tgl_uy_combo_phy_ddi_translations_dp_hbr2);
> -			return tgl_uy_combo_phy_ddi_translations_dp_hbr2;
> +		if (rate > 540000) {
> +			*n_entries =3D ARRAY_SIZE(icl_combo_phy_ddi_translations_edp_hbr3);
> +			return icl_combo_phy_ddi_translations_edp_hbr3;
> +		} else if (dev_priv->vbt.edp.low_vswing) {
> +			*n_entries =3D ARRAY_SIZE(icl_combo_phy_ddi_translations_edp_hbr2);
> +			return icl_combo_phy_ddi_translations_edp_hbr2;
> +		}
> +		/* fall through */
> +	default:
> +		/* All combo DP and eDP ports that do not support low_vswing */
> +		if (rate > 270000) {
> +			if (IS_TGL_U(dev_priv) || IS_TGL_Y(dev_priv)) {
> +				*n_entries =3D ARRAY_SIZE(tgl_uy_combo_phy_ddi_translations_dp_hbr2);
> +				return tgl_uy_combo_phy_ddi_translations_dp_hbr2;
> +			}
> +
> +			*n_entries =3D ARRAY_SIZE(tgl_combo_phy_ddi_translations_dp_hbr2);
> +			return tgl_combo_phy_ddi_translations_dp_hbr2;
>  		}
>  =

> -		*n_entries =3D ARRAY_SIZE(tgl_combo_phy_ddi_translations_dp_hbr2);
> -		return tgl_combo_phy_ddi_translations_dp_hbr2;
> +		*n_entries =3D ARRAY_SIZE(tgl_combo_phy_ddi_translations_dp_hbr);
> +		return tgl_combo_phy_ddi_translations_dp_hbr;
>  	}
> -
> -	*n_entries =3D ARRAY_SIZE(tgl_combo_phy_ddi_translations_dp_hbr);
> -	return tgl_combo_phy_ddi_translations_dp_hbr;
>  }
>  =

>  static const struct tgl_dkl_phy_ddi_buf_trans *
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
