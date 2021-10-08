Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C96C74267AF
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Oct 2021 12:21:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 176676E0D8;
	Fri,  8 Oct 2021 10:21:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9D626E0D8
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Oct 2021 10:21:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10130"; a="206597657"
X-IronPort-AV: E=Sophos;i="5.85,357,1624345200"; d="scan'208";a="206597657"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2021 03:21:47 -0700
X-IronPort-AV: E=Sophos;i="5.85,357,1624345200"; d="scan'208";a="489408678"
Received: from ssedpiaz-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.40.186])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2021 03:21:45 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20211006204937.30774-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211006204937.30774-1-ville.syrjala@linux.intel.com>
 <20211006204937.30774-5-ville.syrjala@linux.intel.com>
Date: Fri, 08 Oct 2021 13:21:42 +0300
Message-ID: <87y273x1e1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 04/16] drm/i915: Add all per-lane register
 definitions for icl combo phy
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 06 Oct 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Add the FOO_LN() register macros for all the icl combo phy registers.
> Also get rid of the semi-pointless FOO_LN0() variants and just use
> the parametrized version.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Might argue the phy should be before lane, but that's another
conversation.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c         | 14 +++++++-------
>  drivers/gpu/drm/i915/display/intel_combo_phy.c |  8 ++++----
>  drivers/gpu/drm/i915/display/intel_ddi.c       | 14 +++++++-------
>  drivers/gpu/drm/i915/i915_reg.h                | 10 ++++------
>  4 files changed, 22 insertions(+), 24 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i91=
5/display/icl_dsi.c
> index 9ee62707ec72..168c84a74d30 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -233,7 +233,7 @@ static void dsi_program_swing_and_deemphasis(struct i=
ntel_encoder *encoder)
>  		 * Program voltage swing and pre-emphasis level values as per
>  		 * table in BSPEC under DDI buffer programing
>  		 */
> -		tmp =3D intel_de_read(dev_priv, ICL_PORT_TX_DW5_LN0(phy));
> +		tmp =3D intel_de_read(dev_priv, ICL_PORT_TX_DW5_LN(0, phy));
>  		tmp &=3D ~(SCALING_MODE_SEL_MASK | RTERM_SELECT_MASK);
>  		tmp |=3D SCALING_MODE_SEL(0x2);
>  		tmp |=3D TAP2_DISABLE | TAP3_DISABLE;
> @@ -247,7 +247,7 @@ static void dsi_program_swing_and_deemphasis(struct i=
ntel_encoder *encoder)
>  		tmp |=3D RTERM_SELECT(0x6);
>  		intel_de_write(dev_priv, ICL_PORT_TX_DW5_AUX(phy), tmp);
>=20=20
> -		tmp =3D intel_de_read(dev_priv, ICL_PORT_TX_DW2_LN0(phy));
> +		tmp =3D intel_de_read(dev_priv, ICL_PORT_TX_DW2_LN(0, phy));
>  		tmp &=3D ~(SWING_SEL_LOWER_MASK | SWING_SEL_UPPER_MASK |
>  			 RCOMP_SCALAR_MASK);
>  		tmp |=3D SWING_SEL_UPPER(0x2);
> @@ -455,7 +455,7 @@ static void gen11_dsi_config_phy_lanes_sequence(struc=
t intel_encoder *encoder)
>  		tmp &=3D ~FRC_LATENCY_OPTIM_MASK;
>  		tmp |=3D FRC_LATENCY_OPTIM_VAL(0x5);
>  		intel_de_write(dev_priv, ICL_PORT_TX_DW2_AUX(phy), tmp);
> -		tmp =3D intel_de_read(dev_priv, ICL_PORT_TX_DW2_LN0(phy));
> +		tmp =3D intel_de_read(dev_priv, ICL_PORT_TX_DW2_LN(0, phy));
>  		tmp &=3D ~FRC_LATENCY_OPTIM_MASK;
>  		tmp |=3D FRC_LATENCY_OPTIM_VAL(0x5);
>  		intel_de_write(dev_priv, ICL_PORT_TX_DW2_GRP(phy), tmp);
> @@ -470,7 +470,7 @@ static void gen11_dsi_config_phy_lanes_sequence(struc=
t intel_encoder *encoder)
>  				       tmp);
>=20=20
>  			tmp =3D intel_de_read(dev_priv,
> -					    ICL_PORT_PCS_DW1_LN0(phy));
> +					    ICL_PORT_PCS_DW1_LN(0, phy));
>  			tmp &=3D ~LATENCY_OPTIM_MASK;
>  			tmp |=3D LATENCY_OPTIM_VAL(0x1);
>  			intel_de_write(dev_priv, ICL_PORT_PCS_DW1_GRP(phy),
> @@ -489,7 +489,7 @@ static void gen11_dsi_voltage_swing_program_seq(struc=
t intel_encoder *encoder)
>=20=20
>  	/* clear common keeper enable bit */
>  	for_each_dsi_phy(phy, intel_dsi->phys) {
> -		tmp =3D intel_de_read(dev_priv, ICL_PORT_PCS_DW1_LN0(phy));
> +		tmp =3D intel_de_read(dev_priv, ICL_PORT_PCS_DW1_LN(0, phy));
>  		tmp &=3D ~COMMON_KEEPER_EN;
>  		intel_de_write(dev_priv, ICL_PORT_PCS_DW1_GRP(phy), tmp);
>  		tmp =3D intel_de_read(dev_priv, ICL_PORT_PCS_DW1_AUX(phy));
> @@ -510,7 +510,7 @@ static void gen11_dsi_voltage_swing_program_seq(struc=
t intel_encoder *encoder)
>=20=20
>  	/* Clear training enable to change swing values */
>  	for_each_dsi_phy(phy, intel_dsi->phys) {
> -		tmp =3D intel_de_read(dev_priv, ICL_PORT_TX_DW5_LN0(phy));
> +		tmp =3D intel_de_read(dev_priv, ICL_PORT_TX_DW5_LN(0, phy));
>  		tmp &=3D ~TX_TRAINING_EN;
>  		intel_de_write(dev_priv, ICL_PORT_TX_DW5_GRP(phy), tmp);
>  		tmp =3D intel_de_read(dev_priv, ICL_PORT_TX_DW5_AUX(phy));
> @@ -523,7 +523,7 @@ static void gen11_dsi_voltage_swing_program_seq(struc=
t intel_encoder *encoder)
>=20=20
>  	/* Set training enable to trigger update */
>  	for_each_dsi_phy(phy, intel_dsi->phys) {
> -		tmp =3D intel_de_read(dev_priv, ICL_PORT_TX_DW5_LN0(phy));
> +		tmp =3D intel_de_read(dev_priv, ICL_PORT_TX_DW5_LN(0, phy));
>  		tmp |=3D TX_TRAINING_EN;
>  		intel_de_write(dev_priv, ICL_PORT_TX_DW5_GRP(phy), tmp);
>  		tmp =3D intel_de_read(dev_priv, ICL_PORT_TX_DW5_AUX(phy));
> diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu=
/drm/i915/display/intel_combo_phy.c
> index bacdf8a16bcb..634e8d449457 100644
> --- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
> @@ -220,13 +220,13 @@ static bool icl_combo_phy_verify_state(struct drm_i=
915_private *dev_priv,
>  		return false;
>=20=20
>  	if (DISPLAY_VER(dev_priv) >=3D 12) {
> -		ret &=3D check_phy_reg(dev_priv, phy, ICL_PORT_TX_DW8_LN0(phy),
> +		ret &=3D check_phy_reg(dev_priv, phy, ICL_PORT_TX_DW8_LN(0, phy),
>  				     ICL_PORT_TX_DW8_ODCC_CLK_SEL |
>  				     ICL_PORT_TX_DW8_ODCC_CLK_DIV_SEL_MASK,
>  				     ICL_PORT_TX_DW8_ODCC_CLK_SEL |
>  				     ICL_PORT_TX_DW8_ODCC_CLK_DIV_SEL_DIV2);
>=20=20
> -		ret &=3D check_phy_reg(dev_priv, phy, ICL_PORT_PCS_DW1_LN0(phy),
> +		ret &=3D check_phy_reg(dev_priv, phy, ICL_PORT_PCS_DW1_LN(0, phy),
>  				     DCC_MODE_SELECT_MASK,
>  				     DCC_MODE_SELECT_CONTINUOSLY);
>  	}
> @@ -343,13 +343,13 @@ static void icl_combo_phys_init(struct drm_i915_pri=
vate *dev_priv)
>=20=20
>  skip_phy_misc:
>  		if (DISPLAY_VER(dev_priv) >=3D 12) {
> -			val =3D intel_de_read(dev_priv, ICL_PORT_TX_DW8_LN0(phy));
> +			val =3D intel_de_read(dev_priv, ICL_PORT_TX_DW8_LN(0, phy));
>  			val &=3D ~ICL_PORT_TX_DW8_ODCC_CLK_DIV_SEL_MASK;
>  			val |=3D ICL_PORT_TX_DW8_ODCC_CLK_SEL;
>  			val |=3D ICL_PORT_TX_DW8_ODCC_CLK_DIV_SEL_DIV2;
>  			intel_de_write(dev_priv, ICL_PORT_TX_DW8_GRP(phy), val);
>=20=20
> -			val =3D intel_de_read(dev_priv, ICL_PORT_PCS_DW1_LN0(phy));
> +			val =3D intel_de_read(dev_priv, ICL_PORT_PCS_DW1_LN(0, phy));
>  			val &=3D ~DCC_MODE_SELECT_MASK;
>  			val |=3D DCC_MODE_SELECT_CONTINUOSLY;
>  			intel_de_write(dev_priv, ICL_PORT_PCS_DW1_GRP(phy), val);
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index b0bd50383d57..0c9ed705af47 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -1047,7 +1047,7 @@ static void icl_ddi_combo_vswing_program(struct int=
el_encoder *encoder,
>  	}
>=20=20
>  	/* Set PORT_TX_DW5 */
> -	val =3D intel_de_read(dev_priv, ICL_PORT_TX_DW5_LN0(phy));
> +	val =3D intel_de_read(dev_priv, ICL_PORT_TX_DW5_LN(0, phy));
>  	val &=3D ~(SCALING_MODE_SEL_MASK | RTERM_SELECT_MASK |
>  		  TAP2_DISABLE | TAP3_DISABLE);
>  	val |=3D SCALING_MODE_SEL(0x2);
> @@ -1056,7 +1056,7 @@ static void icl_ddi_combo_vswing_program(struct int=
el_encoder *encoder,
>  	intel_de_write(dev_priv, ICL_PORT_TX_DW5_GRP(phy), val);
>=20=20
>  	/* Program PORT_TX_DW2 */
> -	val =3D intel_de_read(dev_priv, ICL_PORT_TX_DW2_LN0(phy));
> +	val =3D intel_de_read(dev_priv, ICL_PORT_TX_DW2_LN(0, phy));
>  	val &=3D ~(SWING_SEL_LOWER_MASK | SWING_SEL_UPPER_MASK |
>  		 RCOMP_SCALAR_MASK);
>  	val |=3D SWING_SEL_UPPER(trans->entries[level].icl.dw2_swing_sel);
> @@ -1078,7 +1078,7 @@ static void icl_ddi_combo_vswing_program(struct int=
el_encoder *encoder,
>  	}
>=20=20
>  	/* Program PORT_TX_DW7 */
> -	val =3D intel_de_read(dev_priv, ICL_PORT_TX_DW7_LN0(phy));
> +	val =3D intel_de_read(dev_priv, ICL_PORT_TX_DW7_LN(0, phy));
>  	val &=3D ~N_SCALAR_MASK;
>  	val |=3D N_SCALAR(trans->entries[level].icl.dw7_n_scalar);
>  	intel_de_write(dev_priv, ICL_PORT_TX_DW7_GRP(phy), val);
> @@ -1100,7 +1100,7 @@ static void icl_combo_phy_set_signal_levels(struct =
intel_encoder *encoder,
>  	 * set PORT_PCS_DW1 cmnkeeper_enable to 1b,
>  	 * else clear to 0b.
>  	 */
> -	val =3D intel_de_read(dev_priv, ICL_PORT_PCS_DW1_LN0(phy));
> +	val =3D intel_de_read(dev_priv, ICL_PORT_PCS_DW1_LN(0, phy));
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
>  		val &=3D ~COMMON_KEEPER_EN;
>  	else
> @@ -1109,7 +1109,7 @@ static void icl_combo_phy_set_signal_levels(struct =
intel_encoder *encoder,
>=20=20
>  	/* 2. Program loadgen select */
>  	/*
> -	 * Program PORT_TX_DW4_LN depending on Bit rate and used lanes
> +	 * Program PORT_TX_DW4 depending on Bit rate and used lanes
>  	 * <=3D 6 GHz and 4 lanes (LN0=3D0, LN1=3D1, LN2=3D1, LN3=3D1)
>  	 * <=3D 6 GHz and 1,2 lanes (LN0=3D0, LN1=3D1, LN2=3D1, LN3=3D0)
>  	 * > 6 GHz (LN0=3D0, LN1=3D0, LN2=3D0, LN3=3D0)
> @@ -1131,7 +1131,7 @@ static void icl_combo_phy_set_signal_levels(struct =
intel_encoder *encoder,
>  	intel_de_write(dev_priv, ICL_PORT_CL_DW5(phy), val);
>=20=20
>  	/* 4. Clear training enable to change swing values */
> -	val =3D intel_de_read(dev_priv, ICL_PORT_TX_DW5_LN0(phy));
> +	val =3D intel_de_read(dev_priv, ICL_PORT_TX_DW5_LN(0, phy));
>  	val &=3D ~TX_TRAINING_EN;
>  	intel_de_write(dev_priv, ICL_PORT_TX_DW5_GRP(phy), val);
>=20=20
> @@ -1139,7 +1139,7 @@ static void icl_combo_phy_set_signal_levels(struct =
intel_encoder *encoder,
>  	icl_ddi_combo_vswing_program(encoder, crtc_state);
>=20=20
>  	/* 6. Set training enable to trigger update */
> -	val =3D intel_de_read(dev_priv, ICL_PORT_TX_DW5_LN0(phy));
> +	val =3D intel_de_read(dev_priv, ICL_PORT_TX_DW5_LN(0, phy));
>  	val |=3D TX_TRAINING_EN;
>  	intel_de_write(dev_priv, ICL_PORT_TX_DW5_GRP(phy), val);
>  }
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index a897f4abea0c..5e7a55e6ef50 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1968,7 +1968,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t r=
eg)
>  					  _ICL_PORT_PCS_LN(ln) + 4 * (dw))
>  #define ICL_PORT_PCS_DW1_AUX(phy)	_MMIO(_ICL_PORT_PCS_DW_AUX(1, phy))
>  #define ICL_PORT_PCS_DW1_GRP(phy)	_MMIO(_ICL_PORT_PCS_DW_GRP(1, phy))
> -#define ICL_PORT_PCS_DW1_LN0(phy)	_MMIO(_ICL_PORT_PCS_DW_LN(1, 0, phy))
> +#define ICL_PORT_PCS_DW1_LN(ln, phy)	_MMIO(_ICL_PORT_PCS_DW_LN(1, ln, ph=
y))
>  #define   DCC_MODE_SELECT_MASK		(0x3 << 20)
>  #define   DCC_MODE_SELECT_CONTINUOSLY	(0x3 << 20)
>  #define   COMMON_KEEPER_EN		(1 << 26)
> @@ -1989,7 +1989,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t r=
eg)
>=20=20
>  #define ICL_PORT_TX_DW2_AUX(phy)	_MMIO(_ICL_PORT_TX_DW_AUX(2, phy))
>  #define ICL_PORT_TX_DW2_GRP(phy)	_MMIO(_ICL_PORT_TX_DW_GRP(2, phy))
> -#define ICL_PORT_TX_DW2_LN0(phy)	_MMIO(_ICL_PORT_TX_DW_LN(2, 0, phy))
> +#define ICL_PORT_TX_DW2_LN(ln, phy)	_MMIO(_ICL_PORT_TX_DW_LN(2, ln, phy))
>  #define   SWING_SEL_UPPER(x)		(((x) >> 3) << 15)
>  #define   SWING_SEL_UPPER_MASK		(1 << 15)
>  #define   SWING_SEL_LOWER(x)		(((x) & 0x7) << 11)
> @@ -2001,7 +2001,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t r=
eg)
>=20=20
>  #define ICL_PORT_TX_DW4_AUX(phy)	_MMIO(_ICL_PORT_TX_DW_AUX(4, phy))
>  #define ICL_PORT_TX_DW4_GRP(phy)	_MMIO(_ICL_PORT_TX_DW_GRP(4, phy))
> -#define ICL_PORT_TX_DW4_LN0(phy)	_MMIO(_ICL_PORT_TX_DW_LN(4, 0, phy))
>  #define ICL_PORT_TX_DW4_LN(ln, phy)	_MMIO(_ICL_PORT_TX_DW_LN(4, ln, phy))
>  #define   LOADGEN_SELECT		(1 << 31)
>  #define   POST_CURSOR_1(x)		((x) << 12)
> @@ -2013,7 +2012,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t r=
eg)
>=20=20
>  #define ICL_PORT_TX_DW5_AUX(phy)	_MMIO(_ICL_PORT_TX_DW_AUX(5, phy))
>  #define ICL_PORT_TX_DW5_GRP(phy)	_MMIO(_ICL_PORT_TX_DW_GRP(5, phy))
> -#define ICL_PORT_TX_DW5_LN0(phy)	_MMIO(_ICL_PORT_TX_DW_LN(5, 0, phy))
> +#define ICL_PORT_TX_DW5_LN(ln, phy)	_MMIO(_ICL_PORT_TX_DW_LN(5, ln, phy))
>  #define   TX_TRAINING_EN		(1 << 31)
>  #define   TAP2_DISABLE			(1 << 30)
>  #define   TAP3_DISABLE			(1 << 29)
> @@ -2024,14 +2023,13 @@ static inline bool i915_mmio_reg_valid(i915_reg_t=
 reg)
>=20=20
>  #define ICL_PORT_TX_DW7_AUX(phy)	_MMIO(_ICL_PORT_TX_DW_AUX(7, phy))
>  #define ICL_PORT_TX_DW7_GRP(phy)	_MMIO(_ICL_PORT_TX_DW_GRP(7, phy))
> -#define ICL_PORT_TX_DW7_LN0(phy)	_MMIO(_ICL_PORT_TX_DW_LN(7, 0, phy))
>  #define ICL_PORT_TX_DW7_LN(ln, phy)	_MMIO(_ICL_PORT_TX_DW_LN(7, ln, phy))
>  #define   N_SCALAR(x)			((x) << 24)
>  #define   N_SCALAR_MASK			(0x7F << 24)
>=20=20
>  #define ICL_PORT_TX_DW8_AUX(phy)		_MMIO(_ICL_PORT_TX_DW_AUX(8, phy))
>  #define ICL_PORT_TX_DW8_GRP(phy)		_MMIO(_ICL_PORT_TX_DW_GRP(8, phy))
> -#define ICL_PORT_TX_DW8_LN0(phy)		_MMIO(_ICL_PORT_TX_DW_LN(8, 0, phy))
> +#define ICL_PORT_TX_DW8_LN(ln, phy)		_MMIO(_ICL_PORT_TX_DW_LN(8, ln, phy=
))
>  #define   ICL_PORT_TX_DW8_ODCC_CLK_SEL		REG_BIT(31)
>  #define   ICL_PORT_TX_DW8_ODCC_CLK_DIV_SEL_MASK	REG_GENMASK(30, 29)
>  #define   ICL_PORT_TX_DW8_ODCC_CLK_DIV_SEL_DIV2	REG_FIELD_PREP(ICL_PORT_=
TX_DW8_ODCC_CLK_DIV_SEL_MASK, 0x1)

--=20
Jani Nikula, Intel Open Source Graphics Center
