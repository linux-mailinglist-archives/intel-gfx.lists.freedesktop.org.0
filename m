Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF06C21393B
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jul 2020 13:19:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0096C6E231;
	Fri,  3 Jul 2020 11:19:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 444F36E231
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jul 2020 11:19:34 +0000 (UTC)
IronPort-SDR: dG48+RvLSsjHgL9KabfB2AvuQ/6U2VjpU7XrA7CTDRvYMsiroN3FEoqOxNfqAZN6/81Fz9Wwkl
 gsFmjcmEM3uA==
X-IronPort-AV: E=McAfee;i="6000,8403,9670"; a="231998633"
X-IronPort-AV: E=Sophos;i="5.75,308,1589266800"; d="scan'208";a="231998633"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2020 04:19:33 -0700
IronPort-SDR: xXAZM4SyE75y1mgdizqH5L1C0JxauEZJ+DfvpvV15ZUbYe4kDj0yaGtvRtJaCXXGKi9pnVEj1i
 VdSgsEDMvsIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,308,1589266800"; d="scan'208";a="321781770"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 03 Jul 2020 04:19:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 Jul 2020 14:19:30 +0300
Date: Fri, 3 Jul 2020 14:19:30 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200703111930.GK6112@intel.com>
References: <20200625002906.116594-1-jose.souza@intel.com>
 <20200625002906.116594-2-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200625002906.116594-2-jose.souza@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v3 2/3] drm/i915/display: Implement HOBL
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

On Wed, Jun 24, 2020 at 05:29:05PM -0700, Jos=E9 Roberto de Souza wrote:
> Hours Of Battery Life is a new GEN12+ power-saving feature that allows
> supported motherboards to use a special voltage swing table for eDP
> panels that uses less power.
> =

> So here if supported by HW, OEM will set it in VBT and i915 will try
> to train link with HOBL vswing table if link training fails it fall
> back to the original table.
> =

> Just not sure if DP compliance should also use this new voltage swing
> table too, cced some folks that worked in DP compliance.
> =

> v3:
> - removed a few parameters of icl_ddi_combo_vswing_program() that
> can be taken from encoder
> =

> BSpec: 49291
> BSpec: 49399
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Animesh Manna <animesh.manna@intel.com>
> Cc: Manasi Navare <manasi.d.navare@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c      | 51 +++++++++++++++++--
>  .../drm/i915/display/intel_display_types.h    |  2 +
>  .../drm/i915/display/intel_dp_link_training.c | 20 +++++++-
>  drivers/gpu/drm/i915/i915_drv.h               |  2 +
>  drivers/gpu/drm/i915/i915_reg.h               |  2 +
>  5 files changed, 71 insertions(+), 6 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 884b507c5f55..56216aa0d74a 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -706,6 +706,10 @@ static const struct cnl_ddi_buf_trans tgl_combo_phy_=
ddi_translations_dp_hbr2[] =3D
>  	{ 0x6, 0x7F, 0x3F, 0x00, 0x00 },	/* 900   900      0.0   */
>  };
>  =

> +static const struct cnl_ddi_buf_trans tgl_combo_phy_ddi_translations_edp=
_hbr2_hobl[] =3D {
> +	{ 0x6, 0x7F, 0x3F, 0x00, 0x00 }
> +};
> +
>  static const struct ddi_buf_trans *
>  bdw_get_buf_trans_edp(struct drm_i915_private *dev_priv, int *n_entries)
>  {
> @@ -2331,14 +2335,52 @@ static void cnl_ddi_vswing_sequence(struct intel_=
encoder *encoder,
>  	intel_de_write(dev_priv, CNL_PORT_TX_DW5_GRP(port), val);
>  }
>  =

> -static void icl_ddi_combo_vswing_program(struct drm_i915_private *dev_pr=
iv,
> -					u32 level, enum phy phy, int type,
> -					int rate)
> +/*
> + * If supported return HOBL vswing table and set registers to enable HOBL
> + * otherwise returns NULL and unset registers to enable HOBL.
> + */
> +static const struct cnl_ddi_buf_trans *
> +hobl_get_combo_buf_trans(struct drm_i915_private *dev_priv,
> +			 struct intel_encoder *encoder, int type, int rate,
> +			 u32 level, int *n_entries)
>  {
> +	const u32 hobl_en =3D EDP4K2K_MODE_OVRD_EN | EDP4K2K_MODE_OVRD_OPTIMIZE=
D;
> +	enum phy phy =3D intel_port_to_phy(dev_priv, encoder->port);
> +	struct intel_dp *intel_dp;
> +
> +	if (!HAS_HOBL(dev_priv) || type !=3D INTEL_OUTPUT_EDP)
> +		return NULL;
> +
> +	intel_dp =3D enc_to_intel_dp(encoder);
> +	if (!intel_dp->try_hobl || rate > 540000) {
> +		intel_de_rmw(dev_priv, ICL_PORT_CL_DW10(phy), hobl_en, 0);
> +		return NULL;
> +	}
> +
> +	drm_dbg_kms(&dev_priv->drm, "Enabling HOBL in PHY %c\n", phy_name(phy));
> +	drm_WARN_ON_ONCE(&dev_priv->drm, level > 0);
> +
> +	intel_de_rmw(dev_priv, ICL_PORT_CL_DW10(phy), hobl_en, hobl_en);
> +	/* Same table applies to TGL, RKL and DG1 */
> +	*n_entries =3D ARRAY_SIZE(tgl_combo_phy_ddi_translations_edp_hbr2_hobl);
> +	return tgl_combo_phy_ddi_translations_edp_hbr2_hobl;
> +}
> +
> +static void icl_ddi_combo_vswing_program(struct intel_encoder *encoder,
> +					 u32 level, enum intel_output_type type,
> +					 int rate)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +	enum phy phy =3D intel_port_to_phy(dev_priv, encoder->port);
>  	const struct cnl_ddi_buf_trans *ddi_translations =3D NULL;
>  	u32 n_entries, val;
>  	int ln;
>  =

> +	ddi_translations =3D hobl_get_combo_buf_trans(dev_priv, encoder, type,
> +						    rate, level, &n_entries);
> +	if (ddi_translations)
> +		goto table_found;
> +
>  	if (INTEL_GEN(dev_priv) >=3D 12)
>  		ddi_translations =3D tgl_get_combo_buf_trans(dev_priv, type, rate,
>  							   &n_entries);
> @@ -2351,6 +2393,7 @@ static void icl_ddi_combo_vswing_program(struct drm=
_i915_private *dev_priv,
>  	if (!ddi_translations)
>  		return;
>  =

> +table_found:
>  	if (level >=3D n_entries) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "DDI translation not found for level %d. Using %d instead.",
> @@ -2458,7 +2501,7 @@ static void icl_combo_phy_ddi_vswing_sequence(struc=
t intel_encoder *encoder,
>  	intel_de_write(dev_priv, ICL_PORT_TX_DW5_GRP(phy), val);
>  =

>  	/* 5. Program swing and de-emphasis */
> -	icl_ddi_combo_vswing_program(dev_priv, level, phy, type, rate);
> +	icl_ddi_combo_vswing_program(encoder, level, type, rate);
>  =

>  	/* 6. Set training enable to trigger update */
>  	val =3D intel_de_read(dev_priv, ICL_PORT_TX_DW5_LN0(phy));
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 4b0aaa3081c9..f8943b67819d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1375,6 +1375,8 @@ struct intel_dp {
>  =

>  	/* Display stream compression testing */
>  	bool force_dsc_en;
> +
> +	bool try_hobl;
>  };
>  =

>  enum lspcon_vendor {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/driv=
ers/gpu/drm/i915/display/intel_dp_link_training.c
> index b9e4ee2dbddc..88f366bb28d7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -52,12 +52,24 @@ static u8 dp_voltage_max(u8 preemph)
>  void intel_dp_get_adjust_train(struct intel_dp *intel_dp,
>  			       const u8 link_status[DP_LINK_STATUS_SIZE])
>  {
> +	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
>  	u8 v =3D 0;
>  	u8 p =3D 0;
>  	int lane;
>  	u8 voltage_max;
>  	u8 preemph_max;
>  =

> +	if (intel_dp->try_hobl) {
> +		/*
> +		 * Do not adjust, try now with the regular table using VSwing 0
> +		 * and pre-emp 0
> +		 */
> +		intel_dp->try_hobl =3D false;
> +		drm_dbg_kms(&dev_priv->drm, "HOBL vswing table failed link "
> +			    "training, switching back to regular table\n");
> +		return;
> +	}

The same comment from the earlier review still apply. I tried to get
some clarification from bspec how we should do this, but no one seems to
know exactly. Would be nice to figure out what Windows does to get some
idea what approach has been tested.

My current thinking is we should just do the full link training with the
optimized table (this is totally valid according to the eDP spec AFAICS),
and only if that fails we fall back to the normal table. And we probably
shouldn't switch back ever.

> +
>  	for (lane =3D 0; lane < intel_dp->lane_count; lane++) {
>  		v =3D max(v, drm_dp_get_adjust_request_voltage(link_status, lane));
>  		p =3D max(p, drm_dp_get_adjust_request_pre_emphasis(link_status, lane)=
);
> @@ -103,9 +115,13 @@ intel_dp_set_link_train(struct intel_dp *intel_dp,
>  }
>  =

>  static bool
> -intel_dp_reset_link_train(struct intel_dp *intel_dp,
> -			u8 dp_train_pat)
> +intel_dp_reset_link_train(struct intel_dp *intel_dp, u8 dp_train_pat)
>  {
> +	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> +
> +	if (intel_dp_is_edp(intel_dp) && dev_priv->vbt.edp.hobl)
> +		intel_dp->try_hobl =3D true;
> +
>  	memset(intel_dp->train_set, 0, sizeof(intel_dp->train_set));
>  	intel_dp_set_signal_levels(intel_dp);
>  	return intel_dp_set_link_train(intel_dp, dp_train_pat);
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 16692c94351a..984da03421c3 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1697,6 +1697,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define INTEL_DISPLAY_ENABLED(dev_priv) \
>  	(drm_WARN_ON(&(dev_priv)->drm, !HAS_DISPLAY(dev_priv)), !(dev_priv)->pa=
rams.disable_display)
>  =

> +#define HAS_HOBL(dev_priv) (INTEL_GEN(dev_priv) >=3D 12)
> +
>  static inline bool intel_vtd_active(void)
>  {
>  #ifdef CONFIG_INTEL_IOMMU
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index f09120cac89a..6be5087b5d92 100644
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
