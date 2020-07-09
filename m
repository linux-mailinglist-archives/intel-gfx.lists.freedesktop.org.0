Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC55021A20B
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 16:24:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E0BB6EA84;
	Thu,  9 Jul 2020 14:24:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC0D76EA84
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2020 14:24:12 +0000 (UTC)
IronPort-SDR: x9LC5NP56oCKZL7Y/NuLPBwWYR29gpkcZ5Yb7Iixzh0F6CkQ94z5U7uPy7QkgIXI2Kdo/cSI8v
 nfJXwbJkoDdQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9676"; a="209533924"
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="209533924"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 07:24:12 -0700
IronPort-SDR: X1yTiEZjLKN2VkUMdLwm3sORn29R2S/H8ktDzqie0bFFMfmCtHvMteKF4eOKlRXj+K+So7QSNa
 +E6YJxS6jhYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="358457373"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 09 Jul 2020 07:24:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 09 Jul 2020 17:24:09 +0300
Date: Thu, 9 Jul 2020 17:24:09 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200709142409.GE6112@intel.com>
References: <20200708205512.21625-1-jose.souza@intel.com>
 <20200708205512.21625-4-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200708205512.21625-4-jose.souza@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v4 4/5] drm/i915/display: Implement HOBL
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

On Wed, Jul 08, 2020 at 01:55:11PM -0700, Jos=E9 Roberto de Souza wrote:
> Hours Of Battery Life is a new GEN12+ power-saving feature that allows
> supported motherboards to use a special voltage swing table for eDP
> panels that uses less power.
> =

> So here if supported by HW, OEM will set it in VBT and i915 will try
> to train link with HOBL vswing table if link training fails it fall
> back to the original table.
> =

> intel_ddi_dp_preemph_max() was optimized to only check the HOBL flag
> instead of do something like is done in intel_ddi_dp_voltage_max()
> because it is only called after the first entry of the voltage swing
> table was loaded so the HOBL flag is valid at that point.
> =

> v3:
> - removed a few parameters of icl_ddi_combo_vswing_program() that
> can be taken from encoder(TODO)
> =

> v4:
> - using the HOBL vswing table until training fails completely (Ville)
> =

> BSpec: 49291
> BSpec: 49399
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Animesh Manna <animesh.manna@intel.com>
> Cc: Manasi Navare <manasi.d.navare@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c      | 37 ++++++++++++++++---
>  .../drm/i915/display/intel_display_types.h    |  2 +
>  .../drm/i915/display/intel_dp_link_training.c |  5 +++
>  drivers/gpu/drm/i915/i915_reg.h               |  2 +
>  4 files changed, 41 insertions(+), 5 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 2c484b55bcdf..bf86c588f726 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -706,6 +706,15 @@ static const struct cnl_ddi_buf_trans tgl_combo_phy_=
ddi_translations_dp_hbr2[] =3D
>  	{ 0x6, 0x7F, 0x3F, 0x00, 0x00 },	/* 900   900      0.0   */
>  };
>  =

> +static const struct cnl_ddi_buf_trans tgl_combo_phy_ddi_translations_edp=
_hbr2_hobl[] =3D {
> +	{ 0x6, 0x7F, 0x3F, 0x00, 0x00 }
> +};
> +
> +static bool is_hobl_buf_trans(const struct cnl_ddi_buf_trans *table)
> +{
> +	return table =3D=3D tgl_combo_phy_ddi_translations_edp_hbr2_hobl;
> +}
> +
>  static const struct ddi_buf_trans *
>  bdw_get_buf_trans_edp(struct intel_encoder *encoder, int *n_entries)
>  {
> @@ -1050,6 +1059,16 @@ static const struct cnl_ddi_buf_trans *
>  tgl_get_combo_buf_trans(struct intel_encoder *encoder, int type, int rat=
e,
>  			int *n_entries)
>  {
> +	if (type =3D=3D INTEL_OUTPUT_EDP && dev_priv->vbt.edp.hobl) {
> +		struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> +
> +		if (!intel_dp->hobl_disabled && rate <=3D 540000) {
> +			/* Same table applies to TGL, RKL and DG1 */
> +			*n_entries =3D ARRAY_SIZE(tgl_combo_phy_ddi_translations_edp_hbr2_hob=
l);
> +			return tgl_combo_phy_ddi_translations_edp_hbr2_hobl;
> +		}
> +	}
> +
>  	if (type =3D=3D INTEL_OUTPUT_HDMI || type =3D=3D INTEL_OUTPUT_EDP) {
>  		return icl_get_combo_buf_trans(encoder, type, rate, n_entries);
>  	} else if (rate > 270000) {
> @@ -2223,13 +2242,12 @@ static u8 intel_ddi_dp_voltage_max(struct intel_d=
p *intel_dp)
>  		DP_TRAIN_VOLTAGE_SWING_MASK;
>  }
>  =

> -/*
> - * We assume that the full set of pre-emphasis values can be
> - * used on all DDI platforms. Should that change we need to
> - * rethink this code.
> - */
>  static u8 intel_ddi_dp_preemph_max(struct intel_dp *intel_dp)
>  {
> +	/* HOBL voltage swing table only have one entry */
> +	if (intel_dp->hobl_active)
> +		return DP_TRAIN_PRE_EMPH_LEVEL_0;

That's illegal. We need to claim support for at least all
vswing/pre-emphasis levels 0-2. 3 is optional. Though there is
some confusion around this in the eDP spec where it kinda seems suggest
that even some of the level 2 things are optional. But it's so unclear
I would defer to just trusting what the DP spec says.

/me goes to write the patch with the WARNs...


> +
>  	return DP_TRAIN_PRE_EMPH_LEVEL_3;
>  }
>  =

> @@ -2392,6 +2410,15 @@ static void icl_ddi_combo_vswing_program(struct in=
tel_encoder *encoder,
>  		level =3D n_entries - 1;
>  	}
>  =

> +	if (INTEL_GEN(dev_priv) >=3D 12 && type =3D=3D INTEL_OUTPUT_EDP) {
> +		struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> +
> +		val =3D EDP4K2K_MODE_OVRD_EN | EDP4K2K_MODE_OVRD_OPTIMIZED;
> +		intel_dp->hobl_active =3D is_hobl_buf_trans(ddi_translations);
> +		intel_de_rmw(dev_priv, ICL_PORT_CL_DW10(phy), val,
> +			     intel_dp->hobl_active ? val : 0);
> +	}

I'd still suggest writing that unconditionally.

> +
>  	/* Set PORT_TX_DW5 */
>  	val =3D intel_de_read(dev_priv, ICL_PORT_TX_DW5_LN0(phy));
>  	val &=3D ~(SCALING_MODE_SEL_MASK | RTERM_SELECT_MASK |
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index e8f809161c75..fd4f0e4d0be7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1375,6 +1375,8 @@ struct intel_dp {
>  =

>  	/* Display stream compression testing */
>  	bool force_dsc_en;
> +
> +	u8 hobl_disabled : 1, hobl_active : 1, hobl_not_used : 6;

Why did we go from a simple boolean to this complicated thing?

>  };
>  =

>  enum lspcon_vendor {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/driv=
ers/gpu/drm/i915/display/intel_dp_link_training.c
> index 2493142a70e9..925822fd386d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -401,6 +401,11 @@ intel_dp_start_link_train(struct intel_dp *intel_dp)
>  		    intel_connector->base.base.id,
>  		    intel_connector->base.name,
>  		    intel_dp->link_rate, intel_dp->lane_count);
> +	if (intel_dp->hobl_active) {
> +		drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
> +			    "Link Training failed with HOBL active, not enabling it for now o=
n");
> +		intel_dp->hobl_disabled =3D true;

I don't think we should do the link rate/lanes reduction in
this case. Ie. we should just mark hobl as no good and retry
the link training with the same link param limits.

> +	}
>  	if (!intel_dp_get_link_train_fallback_values(intel_dp,
>  						     intel_dp->link_rate,
>  						     intel_dp->lane_count))
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 86a23ced051b..ea16931c0fa4 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1898,6 +1898,8 @@ static inline bool i915_mmio_reg_valid(i915_reg_t r=
eg)
>  #define  PWR_DOWN_LN_3_1_0		(0xb << 4)
>  #define  PWR_DOWN_LN_MASK		(0xf << 4)
>  #define  PWR_DOWN_LN_SHIFT		4
> +#define  EDP4K2K_MODE_OVRD_EN		(1 << 3)
> +#define  EDP4K2K_MODE_OVRD_OPTIMIZED	(1 << 2)
>  =

>  #define ICL_PORT_CL_DW12(phy)		_MMIO(_ICL_PORT_CL_DW(12, phy))
>  #define   ICL_LANE_ENABLE_AUX		(1 << 0)
> -- =

> 2.27.0

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
