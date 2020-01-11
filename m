Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C2C69137A81
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Jan 2020 01:18:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32E966E1E2;
	Sat, 11 Jan 2020 00:18:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF3416E1E2
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Jan 2020 00:18:51 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jan 2020 16:18:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,418,1571727600"; d="scan'208";a="218813814"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by fmsmga008.fm.intel.com with ESMTP; 10 Jan 2020 16:18:51 -0800
Date: Fri, 10 Jan 2020 16:18:51 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200111001851.GX2244136@mdroper-desk1.amr.corp.intel.com>
References: <20200110233902.154960-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200110233902.154960-1-jose.souza@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp/tgl+: Update combo phy vswing
 tables
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 10, 2020 at 03:39:02PM -0800, Jos=E9 Roberto de Souza wrote:
> TGL has now a table for RBR and HBR and another table for HBR2 over
> combo phys. The HBR2 one has some small changes comparing to the ICL
> one, so adding two new tables and adding a function to return TGL
> combo phy tables.
> =

> v2:
> - reordered the tgl_combo_phy_ddi_translations_dp_hbr2 to reduce diff
> (Matt)
> - removed definition of rates, kept using raw number(Jani and Ville)
> - changed code to use icl_get_combo_buf_trans() for non-DP as those
> are equal between TGL and ICL(Matt)
> =

> BSpec: 49291
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>

Matches the spec.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 55 ++++++++++++++++++++++--
>  1 file changed, 51 insertions(+), 4 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index fbc13f36f76f..41c433cdf60c 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -622,6 +622,34 @@ static const struct tgl_dkl_phy_ddi_buf_trans tgl_dk=
l_phy_hdmi_ddi_trans[] =3D {
>  	{ 0x0, 0x0, 0xA },	/* 10		Full	-3 dB */
>  };
>  =

> +static const struct cnl_ddi_buf_trans tgl_combo_phy_ddi_translations_dp_=
hbr[] =3D {
> +						/* NT mV Trans mV db    */
> +	{ 0xA, 0x32, 0x3F, 0x00, 0x00 },	/* 350   350      0.0   */
> +	{ 0xA, 0x4F, 0x37, 0x00, 0x08 },	/* 350   500      3.1   */
> +	{ 0xC, 0x71, 0x2F, 0x00, 0x10 },	/* 350   700      6.0   */
> +	{ 0x6, 0x7D, 0x2B, 0x00, 0x14 },	/* 350   900      8.2   */
> +	{ 0xA, 0x4C, 0x3F, 0x00, 0x00 },	/* 500   500      0.0   */
> +	{ 0xC, 0x73, 0x34, 0x00, 0x0B },	/* 500   700      2.9   */
> +	{ 0x6, 0x7F, 0x2F, 0x00, 0x10 },	/* 500   900      5.1   */
> +	{ 0xC, 0x6C, 0x3C, 0x00, 0x03 },	/* 650   700      0.6   */
> +	{ 0x6, 0x7F, 0x35, 0x00, 0x0A },	/* 600   900      3.5   */
> +	{ 0x6, 0x7F, 0x3F, 0x00, 0x00 },	/* 900   900      0.0   */
> +};
> +
> +static const struct cnl_ddi_buf_trans tgl_combo_phy_ddi_translations_dp_=
hbr2[] =3D {
> +						/* NT mV Trans mV db    */
> +	{ 0xA, 0x35, 0x3F, 0x00, 0x00 },	/* 350   350      0.0   */
> +	{ 0xA, 0x4F, 0x37, 0x00, 0x08 },	/* 350   500      3.1   */
> +	{ 0xC, 0x63, 0x2F, 0x00, 0x10 },	/* 350   700      6.0   */
> +	{ 0x6, 0x7F, 0x2B, 0x00, 0x14 },	/* 350   900      8.2   */
> +	{ 0xA, 0x47, 0x3F, 0x00, 0x00 },	/* 500   500      0.0   */
> +	{ 0xC, 0x63, 0x34, 0x00, 0x0B },	/* 500   700      2.9   */
> +	{ 0x6, 0x7F, 0x2F, 0x00, 0x10 },	/* 500   900      5.1   */
> +	{ 0xC, 0x61, 0x3C, 0x00, 0x03 },	/* 650   700      0.6   */
> +	{ 0x6, 0x7B, 0x35, 0x00, 0x0A },	/* 600   900      3.5   */
> +	{ 0x6, 0x7F, 0x3F, 0x00, 0x00 },	/* 900   900      0.0   */
> +};
> +
>  static const struct ddi_buf_trans *
>  bdw_get_buf_trans_edp(struct drm_i915_private *dev_priv, int *n_entries)
>  {
> @@ -901,6 +929,21 @@ icl_get_combo_buf_trans(struct drm_i915_private *dev=
_priv, int type, int rate,
>  	return icl_combo_phy_ddi_translations_dp_hbr2;
>  }
>  =

> +static const struct cnl_ddi_buf_trans *
> +tgl_get_combo_buf_trans(struct drm_i915_private *dev_priv, int type, int=
 rate,
> +			int *n_entries)
> +{
> +	if (type !=3D INTEL_OUTPUT_DP) {
> +		return icl_get_combo_buf_trans(dev_priv, type, rate, n_entries);
> +	} else if (rate > 270000) {
> +		*n_entries =3D ARRAY_SIZE(tgl_combo_phy_ddi_translations_dp_hbr2);
> +		return tgl_combo_phy_ddi_translations_dp_hbr2;
> +	}
> +
> +	*n_entries =3D ARRAY_SIZE(tgl_combo_phy_ddi_translations_dp_hbr);
> +	return tgl_combo_phy_ddi_translations_dp_hbr;
> +}
> +
>  static int intel_ddi_hdmi_level(struct drm_i915_private *dev_priv, enum =
port port)
>  {
>  	struct ddi_vbt_port_info *port_info =3D &dev_priv->vbt.ddi_port_info[po=
rt];
> @@ -909,7 +952,7 @@ static int intel_ddi_hdmi_level(struct drm_i915_priva=
te *dev_priv, enum port por
>  =

>  	if (INTEL_GEN(dev_priv) >=3D 12) {
>  		if (intel_phy_is_combo(dev_priv, phy))
> -			icl_get_combo_buf_trans(dev_priv, INTEL_OUTPUT_HDMI,
> +			tgl_get_combo_buf_trans(dev_priv, INTEL_OUTPUT_HDMI,
>  						0, &n_entries);
>  		else
>  			n_entries =3D ARRAY_SIZE(tgl_dkl_phy_hdmi_ddi_trans);
> @@ -2372,7 +2415,7 @@ u8 intel_ddi_dp_voltage_max(struct intel_encoder *e=
ncoder)
>  =

>  	if (INTEL_GEN(dev_priv) >=3D 12) {
>  		if (intel_phy_is_combo(dev_priv, phy))
> -			icl_get_combo_buf_trans(dev_priv, encoder->type,
> +			tgl_get_combo_buf_trans(dev_priv, encoder->type,
>  						intel_dp->link_rate, &n_entries);
>  		else
>  			n_entries =3D ARRAY_SIZE(tgl_dkl_phy_dp_ddi_trans);
> @@ -2567,8 +2610,12 @@ static void icl_ddi_combo_vswing_program(struct dr=
m_i915_private *dev_priv,
>  	u32 n_entries, val;
>  	int ln;
>  =

> -	ddi_translations =3D icl_get_combo_buf_trans(dev_priv, type, rate,
> -						   &n_entries);
> +	if (INTEL_GEN(dev_priv) >=3D 12)
> +		ddi_translations =3D tgl_get_combo_buf_trans(dev_priv, type, rate,
> +							   &n_entries);
> +	else
> +		ddi_translations =3D icl_get_combo_buf_trans(dev_priv, type, rate,
> +							   &n_entries);
>  	if (!ddi_translations)
>  		return;
>  =

> -- =

> 2.24.1
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
