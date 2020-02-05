Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB66153AF6
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 23:28:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D1856EA10;
	Wed,  5 Feb 2020 22:28:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D757B6EA10
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Feb 2020 22:28:46 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Feb 2020 14:28:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,407,1574150400"; d="scan'208";a="235745436"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga006.jf.intel.com with ESMTP; 05 Feb 2020 14:28:45 -0800
Date: Wed, 5 Feb 2020 14:28:45 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200205222845.GY232048@mdroper-desk1.amr.corp.intel.com>
References: <20200205205647.64902-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200205205647.64902-1-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/ehl: Add HBR2 and HBR3
 voltage swing table
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

On Wed, Feb 05, 2020 at 12:56:47PM -0800, Jos=E9 Roberto de Souza wrote:
> EHL only differs from ICL on the voltage swing table for HBR2 and
> HBR3.
> =

> BSpec: 21257
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 34 +++++++++++++++++++++++-
>  1 file changed, 33 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 1ab638e17046..3060cc37e1d2 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -568,6 +568,20 @@ static const struct cnl_ddi_buf_trans icl_combo_phy_=
ddi_translations_hdmi[] =3D {
>  	{ 0x6, 0x7F, 0x35, 0x00, 0x0A },	/* 600   850      3.0   */
>  };
>  =

> +static const struct cnl_ddi_buf_trans ehl_combo_phy_ddi_translations_hbr=
2_hbr3[] =3D {
> +						/* NT mV Trans mV db    */
> +	{ 0xA, 0x33, 0x3F, 0x00, 0x00 },	/* 350   350      0.0   */
> +	{ 0xA, 0x47, 0x36, 0x00, 0x09 },	/* 350   500      3.1   */
> +	{ 0xC, 0x64, 0x30, 0x00, 0x0F },	/* 350   700      6.0   */
> +	{ 0x6, 0x7F, 0x2C, 0x00, 0x13 },	/* 350   900      8.2   */
> +	{ 0xA, 0x46, 0x3F, 0x00, 0x00 },	/* 500   500      0.0   */
> +	{ 0xC, 0x64, 0x36, 0x00, 0x09 },	/* 500   700      2.9   */
> +	{ 0x6, 0x7F, 0x30, 0x00, 0x0F },	/* 500   900      5.1   */
> +	{ 0xC, 0x61, 0x3F, 0x00, 0x00 },	/* 650   700      0.6   */
> +	{ 0x6, 0x7F, 0x37, 0x00, 0x08 },	/* 600   900      3.5   */
> +	{ 0x6, 0x7F, 0x3F, 0x00, 0x00 },	/* 900   900      0.0   */
> +};
> +
>  struct icl_mg_phy_ddi_buf_trans {
>  	u32 cri_txdeemph_override_5_0;
>  	u32 cri_txdeemph_override_11_6;
> @@ -929,6 +943,18 @@ icl_get_combo_buf_trans(struct drm_i915_private *dev=
_priv, int type, int rate,
>  	return icl_combo_phy_ddi_translations_dp_hbr2;
>  }
>  =

> +static const struct cnl_ddi_buf_trans *
> +ehl_get_combo_buf_trans(struct drm_i915_private *dev_priv, int type, int=
 rate,
> +			int *n_entries)
> +{
> +	if (type =3D=3D INTEL_OUTPUT_DP && rate > 270000) {
> +		*n_entries =3D ARRAY_SIZE(ehl_combo_phy_ddi_translations_hbr2_hbr3);
> +		return ehl_combo_phy_ddi_translations_hbr2_hbr3;
> +	}
> +
> +	return icl_get_combo_buf_trans(dev_priv, type, rate, n_entries);
> +}
> +
>  static const struct cnl_ddi_buf_trans *
>  tgl_get_combo_buf_trans(struct drm_i915_private *dev_priv, int type, int=
 rate,
>  			int *n_entries)
> @@ -2415,7 +2441,10 @@ u8 intel_ddi_dp_voltage_max(struct intel_encoder *=
encoder)
>  		else
>  			n_entries =3D ARRAY_SIZE(tgl_dkl_phy_dp_ddi_trans);
>  	} else if (INTEL_GEN(dev_priv) =3D=3D 11) {
> -		if (intel_phy_is_combo(dev_priv, phy))
> +		if (IS_ELKHARTLAKE(dev_priv))
> +			ehl_get_combo_buf_trans(dev_priv, encoder->type,
> +						intel_dp->link_rate, &n_entries);

Might be more natural to promote this to the outer if/else (before the
general gen11 case).

But your table matches the bspec and the logic looks correct, so either
way,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>


> +		else if (intel_phy_is_combo(dev_priv, phy))
>  			icl_get_combo_buf_trans(dev_priv, encoder->type,
>  						intel_dp->link_rate, &n_entries);
>  		else
> @@ -2608,6 +2637,9 @@ static void icl_ddi_combo_vswing_program(struct drm=
_i915_private *dev_priv,
>  	if (INTEL_GEN(dev_priv) >=3D 12)
>  		ddi_translations =3D tgl_get_combo_buf_trans(dev_priv, type, rate,
>  							   &n_entries);
> +	else if (IS_ELKHARTLAKE(dev_priv))
> +		ddi_translations =3D ehl_get_combo_buf_trans(dev_priv, type, rate,
> +							   &n_entries);
>  	else
>  		ddi_translations =3D icl_get_combo_buf_trans(dev_priv, type, rate,
>  							   &n_entries);
> -- =

> 2.25.0
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
