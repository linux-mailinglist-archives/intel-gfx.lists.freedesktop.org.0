Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62F9B1ED774
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jun 2020 22:33:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 786D5899AB;
	Wed,  3 Jun 2020 20:33:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41F31899AB
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jun 2020 20:33:50 +0000 (UTC)
IronPort-SDR: RxCsgfdFYaVufxHHpYyoI3uBUogJl2sRs0TQdBKYA9dAclJW7aXA5VXpQNLerBDQlXNYEIOvyw
 ck1eHtwR+MtA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2020 13:33:49 -0700
IronPort-SDR: wcd8vWZZsLOFvUuDOQ9gOVxa9pL/SRikmvB0pzcl3zn7EqYf4UUSk7V9poX//KZ6FMHTRqTwau
 o/+5Jz5l0Ntg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,469,1583222400"; d="scan'208";a="287152788"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 03 Jun 2020 13:33:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 03 Jun 2020 23:33:46 +0300
Date: Wed, 3 Jun 2020 23:33:46 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200603203346.GQ6112@intel.com>
References: <20200603194308.78622-1-jose.souza@intel.com>
 <20200603194308.78622-2-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200603194308.78622-2-jose.souza@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 2/3] drm/i915/display: Implement HOBL
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

On Wed, Jun 03, 2020 at 12:43:07PM -0700, Jos=E9 Roberto de Souza wrote:
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
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
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
> index 236f3762b6f9..57174a111976 100644
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
> +
>  static const struct ddi_buf_trans *
>  bdw_get_buf_trans_edp(struct drm_i915_private *dev_priv, int *n_entries)
>  {
> @@ -2301,14 +2305,51 @@ static void cnl_ddi_vswing_sequence(struct intel_=
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

Not a real fan of the "hobl" name. It just sounds like nonsense. Also
bspec doesn't use that term at all. It only appears in the vbt spec.
Not sure if there's a better one though.

> +
> +	intel_dp =3D enc_to_intel_dp(encoder);
> +	if (!intel_dp->try_hobl || rate > 540000) {
> +		intel_de_rmw(dev_priv, ICL_PORT_CL_DW10(phy), hobl_en, 0);

I would vote for just doing this programming unconditionally in the normal
sequence.

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

If we're passing in the encoder then a bunch of this other stuff is
redundant.

>  {
>  	const struct cnl_ddi_buf_trans *ddi_translations =3D NULL;
>  	u32 n_entries, val;
>  	int ln;
>  =

> +	ddi_translations =3D hobl_get_combo_buf_trans(dev_priv, encoder, type,
> +						    rate, level, &n_entries);
> +	if (ddi_translations)
> +		goto hobl_found;

Why not just put it into tgl_get_combo_buf_trans(). Hmm. I guess to not
upset .voltage_max(). This feels a bit hackish, but I don't have better
ideas for now.

> +
>  	if (INTEL_GEN(dev_priv) >=3D 12)
>  		ddi_translations =3D tgl_get_combo_buf_trans(dev_priv, type, rate,
>  							   &n_entries);
> @@ -2321,6 +2362,7 @@ static void icl_ddi_combo_vswing_program(struct drm=
_i915_private *dev_priv,
>  	if (!ddi_translations)
>  		return;
>  =

> +hobl_found:
>  	if (level >=3D n_entries) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "DDI translation not found for level %d. Using %d instead.",
> @@ -2428,7 +2470,7 @@ static void icl_combo_phy_ddi_vswing_sequence(struc=
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

What if the sink is still asking for vswing 0 + preemph 0? The spec is
rather ambiguous when it comes to this stuff.

The table also doesn't specify the vswing/preemph for which we should
use this optimized value. Your interpretation of 0+0 seems like the most
sensible thing, but given that the VBT can also specifiy the fast link
training vswing/preemph as something else (and maybe there was also
something like this for normal link training?) I'm not 100% sure.

Hmm. Actually noticed that all the eDP tables are missing the
vswing/preemph levels (they do have the raw mV/dB values but not the
DP spec levels). I filed a few issues in the hopes of clarification.

> +		intel_dp->try_hobl =3D false;
> +		drm_dbg_kms(&dev_priv->drm, "HOBL vswing table failed link "
> +			    "training, switching back to regular table\n");
> +		return;
> +	}
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

If it failed once does it make sense to keep trying to use it?

> +
>  	memset(intel_dp->train_set, 0, sizeof(intel_dp->train_set));
>  	intel_dp_set_signal_levels(intel_dp);
>  	return intel_dp_set_link_train(intel_dp, dp_train_pat);
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 2336c9231eef..c7e7df17eef2 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1687,6 +1687,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
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
> index 578cfe11cbb9..d4611171f075 100644
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

> 2.27.0

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
