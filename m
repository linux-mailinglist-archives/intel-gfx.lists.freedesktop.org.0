Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A4CE1E764B
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2020 09:00:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 959C66E866;
	Fri, 29 May 2020 07:00:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19D766E866
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 May 2020 07:00:21 +0000 (UTC)
IronPort-SDR: WsNoyIIJZTa8SRNv/qOu8jem1WVuxFMiH1JGG79LpQTf/pxCaYoQx5EA/WF6ZnErbk+OwmVwQc
 w14Gz1u+1i8w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2020 00:00:20 -0700
IronPort-SDR: aP52EDVeH+1LNhjtQ6LVveE7t7hA1ifgdtgDvI39EeEIMO2Xvm0kJQDhhshAAGrkSIkMFvICAe
 bKrrZz/Bn7Qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,447,1583222400"; d="scan'208";a="311165135"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 29 May 2020 00:00:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 29 May 2020 10:00:17 +0300
Date: Fri, 29 May 2020 10:00:17 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200529070017.GH6112@intel.com>
References: <20200528200356.36756-1-jose.souza@intel.com>
 <20200528200356.36756-3-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200528200356.36756-3-jose.souza@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/display: Implement HOBL
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

On Thu, May 28, 2020 at 01:03:55PM -0700, Jos=E9 Roberto de Souza wrote:
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

> BSpec: 49291
> BSpec: 49399
> Cc: Animesh Manna <animesh.manna@intel.com>
> Cc: Manasi Navare <manasi.d.navare@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c      | 48 +++++++++++++++++--
>  .../drm/i915/display/intel_display_types.h    |  2 +
>  .../drm/i915/display/intel_dp_link_training.c | 20 +++++++-
>  drivers/gpu/drm/i915/i915_drv.h               |  2 +
>  drivers/gpu/drm/i915/i915_reg.h               |  2 +
>  5 files changed, 69 insertions(+), 5 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index c100efc6a2c4..a44e190de79f 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -692,6 +692,10 @@ static const struct cnl_ddi_buf_trans tgl_combo_phy_=
ddi_translations_dp_hbr2[] =3D
>  	{ 0x6, 0x7F, 0x3F, 0x00, 0x00 },	/* 900   900      0.0   */
>  };
>  =

> +static const struct cnl_ddi_buf_trans tgl_combo_phy_ddi_translations_edp=
_hbr2_hobl[] =3D {
> +	{ 0x6, 0x7F, 0x3F, 0x00, 0x00 }
> +};

This doesn't seem to mesh well with the notion of "at least
everything up to vswing 2/preemph 2 is mandatory", as laid =

out in https://patchwork.freedesktop.org/series/77198/

Hmm. I was going to add some WARNs there to make sure
.{voltage,preemph}_max() always return level 2 or level 3.
But looks like I failed to actually do it.

> +
>  static const struct ddi_buf_trans *
>  bdw_get_buf_trans_edp(struct drm_i915_private *dev_priv, int *n_entries)
>  {
> @@ -2297,14 +2301,51 @@ static void cnl_ddi_vswing_sequence(struct intel_=
encoder *encoder,
>  	intel_de_write(dev_priv, CNL_PORT_TX_DW5_GRP(port), val);
>  }
>  =

> +/*
> + * If supported return HOBL vswing table and set registers to enable HOBL
> + * otherwise returns NULL and unset registers to enable HOBL.
> + */
> +static const struct cnl_ddi_buf_trans *
> +hobl_get_combo_buf_trans(struct drm_i915_private *dev_priv,
> +			 struct intel_encoder *encoder, int type, int rate,
> +			 u32 level, int *n_entries)
> +{
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
>  static void icl_ddi_combo_vswing_program(struct drm_i915_private *dev_pr=
iv,
> -					u32 level, enum phy phy, int type,
> -					int rate)
> +					 struct intel_encoder *encoder,
> +					 u32 level, enum phy phy, int type,
> +					 int rate)
>  {
>  	const struct cnl_ddi_buf_trans *ddi_translations =3D NULL;
>  	u32 n_entries, val;
>  	int ln;
>  =

> +	ddi_translations =3D hobl_get_combo_buf_trans(dev_priv, encoder, type,
> +						    rate, level, &n_entries);
> +	if (ddi_translations)
> +		goto hobl_found;
> +
>  	if (INTEL_GEN(dev_priv) >=3D 12)
>  		ddi_translations =3D tgl_get_combo_buf_trans(dev_priv, type, rate,
>  							   &n_entries);
> @@ -2317,6 +2358,7 @@ static void icl_ddi_combo_vswing_program(struct drm=
_i915_private *dev_priv,
>  	if (!ddi_translations)
>  		return;
>  =

> +hobl_found:
>  	if (level >=3D n_entries) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "DDI translation not found for level %d. Using %d instead.",
> @@ -2424,7 +2466,7 @@ static void icl_combo_phy_ddi_vswing_sequence(struc=
t intel_encoder *encoder,
>  	intel_de_write(dev_priv, ICL_PORT_TX_DW5_GRP(phy), val);
>  =

>  	/* 5. Program swing and de-emphasis */
> -	icl_ddi_combo_vswing_program(dev_priv, level, phy, type, rate);
> +	icl_ddi_combo_vswing_program(dev_priv, encoder, level, phy, type, rate);
>  =

>  	/* 6. Set training enable to trigger update */
>  	val =3D intel_de_read(dev_priv, ICL_PORT_TX_DW5_LN0(phy));
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 30b2767578dc..9e7dbff7dd43 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1365,6 +1365,8 @@ struct intel_dp {
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
> index e4f1843170b7..db078780542f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -37,12 +37,24 @@ intel_dp_dump_link_status(const u8 link_status[DP_LIN=
K_STATUS_SIZE])
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
> +
>  	for (lane =3D 0; lane < intel_dp->lane_count; lane++) {
>  		u8 this_v =3D drm_dp_get_adjust_request_voltage(link_status, lane);
>  		u8 this_p =3D drm_dp_get_adjust_request_pre_emphasis(link_status, lane=
);
> @@ -92,9 +104,13 @@ intel_dp_set_link_train(struct intel_dp *intel_dp,
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
> index 1e060de3edc4..8c2fb4da70fd 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1678,6 +1678,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define INTEL_DISPLAY_ENABLED(dev_priv) \
>  		(drm_WARN_ON(&(dev_priv)->drm, !HAS_DISPLAY(dev_priv)), !i915_modparam=
s.disable_display)
>  =

> +#define HAS_HOBL(dev_priv) (INTEL_GEN(dev_priv) >=3D 12)
> +
>  static inline bool intel_vtd_active(void)
>  {
>  #ifdef CONFIG_INTEL_IOMMU
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index e9d50fe0f375..a7a8d12fa49d 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1896,6 +1896,8 @@ static inline bool i915_mmio_reg_valid(i915_reg_t r=
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

> 2.26.2
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
