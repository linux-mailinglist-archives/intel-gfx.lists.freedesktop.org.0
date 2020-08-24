Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E995250C44
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Aug 2020 01:22:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 410376E2BC;
	Mon, 24 Aug 2020 23:22:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FCD26E2BC
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Aug 2020 23:22:41 +0000 (UTC)
IronPort-SDR: d2p03mUWGB11wagjtjAXTKjkOo3HR8CIE+D94OJBv0MRDt5n45wL2AD1TfMkTDAiuS13fmSzW7
 xa3lY2GsonqQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9723"; a="240824328"
X-IronPort-AV: E=Sophos;i="5.76,350,1592895600"; d="scan'208";a="240824328"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2020 16:22:40 -0700
IronPort-SDR: EE2ZQMOcxig+9Ol37Sk1E92lNprer4Cw3B4tIYIbIDXqsi0zBl7qrm598+Mu/rWwQ2kANg3Lbf
 AJUKbOgI2e+g==
X-IronPort-AV: E=Sophos;i="5.76,350,1592895600"; d="scan'208";a="322525327"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2020 16:22:40 -0700
Date: Mon, 24 Aug 2020 16:22:39 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200824232239.GE3880425@mdroper-desk1.amr.corp.intel.com>
References: <20200819185146.22109-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200819185146.22109-1-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/display/tgl: Use TGL DP tables
 for eDP ports without low power support
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

On Wed, Aug 19, 2020 at 11:51:44AM -0700, Jos=E9 Roberto de Souza wrote:
> Reusing icl_get_combo_buf_trans() for eDP was causing the wrong table
> being used when the eDP port don't support low power voltage swing table.
> =

> Cc: Lee Shawn C <shawn.c.lee@intel.com>
> Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
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

So if we have (HBR3 && !low_vswing) we still want to use the eDP table
values?  How did you figure that out?  The only relevant comment I see
in the bspec is

        eDP panels may support lower power, low voltage, swing values
        using the "eDP" protocol values from the table or higher power,
        high voltage, swing values using the "DP" protocol values. =


which doesn't make any specific mention of HBR3 being a special case.


Matt

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

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

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
