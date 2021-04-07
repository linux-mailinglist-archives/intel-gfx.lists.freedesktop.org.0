Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A4E43577F6
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Apr 2021 00:50:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B35389D66;
	Wed,  7 Apr 2021 22:50:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16C5689D66
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Apr 2021 22:49:59 +0000 (UTC)
IronPort-SDR: O1TlTdT0YEUZgxVwB1KcoGl2uPKVOfuMjU1+rB8F0//mlYh4PLjMhGds9Oyh87jy0IWrJHNaQU
 M1FK9IJOJ9MQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9947"; a="180955222"
X-IronPort-AV: E=Sophos;i="5.82,204,1613462400"; d="scan'208";a="180955222"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2021 15:49:58 -0700
IronPort-SDR: f2IMZ9j/7rWLItkYGWTfo7EH6gOE90N/OpK7/tINYZq7zIxqX9nUGc7rdeeSMMajD1NqcetVnS
 mSJYxcu7vVBA==
X-IronPort-AV: E=Sophos;i="5.82,204,1613462400"; d="scan'208";a="598534594"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2021 15:49:57 -0700
Date: Wed, 7 Apr 2021 15:49:56 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
Message-ID: <20210407224956.GB898041@mdroper-desk1.amr.corp.intel.com>
References: <20210326021718.486622-1-matthew.d.roper@intel.com>
 <20210329185416.604826-1-matthew.d.roper@intel.com>
 <fefb8ec0d7784faeb240007fceb8761c@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fefb8ec0d7784faeb240007fceb8761c@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Eliminate IS_GEN9_{BC,
 LP}
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 07, 2021 at 01:13:35PM -0700, Sripada, Radhakrishna wrote:
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of =
Matt
> > Roper
> > Sent: Monday, March 29, 2021 11:54 AM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: De Marchi, Lucas <lucas.demarchi@intel.com>
> > Subject: [Intel-gfx] [PATCH v2] drm/i915/display: Eliminate IS_GEN9_{BC=
, LP}
> > =

> > Now that we've eliminated INTEL_GEN(), IS_GEN_RANGE(), etc. from the
> > display code, we should also kill off our use of the IS_GEN9_* macros
> > too.  We'll do the conversion manually this time instead of using
> > Coccinelle since the most logical substitution can depend heavily on the
> > code context, and sometimes we can keep the code simpler if we make
> > additional adjustments such as swapping the order of if/else arms.
> > =

> > v2:
> >  - Restore a lost negation in intel_pll_is_valid().
> > =

> Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

Applied to din, thanks for the review.


Matt

> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_bios.c     |  7 +--
> >  drivers/gpu/drm/i915/display/intel_cdclk.c    | 34 +++++++-------
> >  drivers/gpu/drm/i915/display/intel_csr.c      |  2 +-
> >  drivers/gpu/drm/i915/display/intel_ddi.c      | 37 ++++++++-------
> >  .../drm/i915/display/intel_ddi_buf_trans.c    |  8 ++--
> >  drivers/gpu/drm/i915/display/intel_display.c  | 11 +++--
> >  .../drm/i915/display/intel_display_debugfs.c  |  2 +-
> >  .../drm/i915/display/intel_display_power.c    | 43 +++++++++--------
> >  drivers/gpu/drm/i915/display/intel_dp.c       |  4 +-
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c   |  2 +-
> >  drivers/gpu/drm/i915/display/intel_dpll.c     |  6 +--
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  6 +--
> >  drivers/gpu/drm/i915/display/intel_fbc.c      |  7 +--
> >  drivers/gpu/drm/i915/display/intel_gmbus.c    | 12 ++---
> >  drivers/gpu/drm/i915/display/intel_hdcp.c     |  9 ++--
> >  drivers/gpu/drm/i915/display/intel_hdmi.c     |  7 +--
> >  drivers/gpu/drm/i915/display/intel_panel.c    |  2 +-
> >  drivers/gpu/drm/i915/display/intel_pps.c      | 14 +++---
> >  drivers/gpu/drm/i915/display/vlv_dsi.c        | 46 ++++++++++---------
> >  drivers/gpu/drm/i915/i915_irq.c               | 13 +++---
> >  drivers/gpu/drm/i915/intel_pm.c               |  8 ++--
> >  21 files changed, 146 insertions(+), 134 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c
> > b/drivers/gpu/drm/i915/display/intel_bios.c
> > index 3d0c035b5e38..ea4837d485a1 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> > @@ -917,7 +917,7 @@ parse_psr(struct drm_i915_private *i915, const stru=
ct
> > bdb_header *bdb)
> >  	 * Old decimal value is wake up time in multiples of 100 us.
> >  	 */
> >  	if (bdb->version >=3D 205 &&
> > -	    (IS_GEN9_BC(i915) || DISPLAY_VER(i915) >=3D 10)) {
> > +	    (DISPLAY_VER(i915) >=3D 9 && !IS_BROXTON(i915))) {
> >  		switch (psr_table->tp1_wakeup_time) {
> >  		case 0:
> >  			i915->vbt.psr.tp1_wakeup_time_us =3D 500;
> > @@ -1659,7 +1659,7 @@ static u8 map_ddc_pin(struct drm_i915_private *i9=
15,
> > u8 vbt_pin)
> >  	} else if (IS_ROCKETLAKE(i915) && INTEL_PCH_TYPE(i915) =3D=3D PCH_TGP)
> > {
> >  		ddc_pin_map =3D rkl_pch_tgp_ddc_pin_map;
> >  		n_entries =3D ARRAY_SIZE(rkl_pch_tgp_ddc_pin_map);
> > -	} else if (HAS_PCH_TGP(i915) && IS_GEN9_BC(i915)) {
> > +	} else if (HAS_PCH_TGP(i915) && IS_DISPLAY_VER(i915, 9)) {
> >  		ddc_pin_map =3D gen9bc_tgp_ddc_pin_map;
> >  		n_entries =3D ARRAY_SIZE(gen9bc_tgp_ddc_pin_map);
> >  	} else if (INTEL_PCH_TYPE(i915) >=3D PCH_ICP) {
> > @@ -2770,7 +2770,8 @@ intel_bios_is_port_hpd_inverted(const struct
> > drm_i915_private *i915,
> >  	const struct intel_bios_encoder_data *devdata =3D
> >  		i915->vbt.ddi_port_info[port].devdata;
> > =

> > -	if (drm_WARN_ON_ONCE(&i915->drm, !IS_GEN9_LP(i915)))
> > +	if (drm_WARN_ON_ONCE(&i915->drm,
> > +			     !IS_GEMINILAKE(i915) && !IS_BROXTON(i915)))
> >  		return false;
> > =

> >  	return devdata && devdata->child.hpd_invert;
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index 3f43ad4d7362..489acf6b5cf1 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -1631,7 +1631,8 @@ static void bxt_set_cdclk(struct drm_i915_private
> > *dev_priv,
> >  	 * Disable SSA Precharge when CD clock frequency < 500 MHz,
> >  	 * enable otherwise.
> >  	 */
> > -	if (IS_GEN9_LP(dev_priv) && cdclk >=3D 500000)
> > +	if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) &&
> > +	    cdclk >=3D 500000)
> >  		val |=3D BXT_CDCLK_SSA_PRECHARGE_ENABLE;
> >  	intel_de_write(dev_priv, CDCLK_CTL, val);
> > =

> > @@ -1732,7 +1733,8 @@ static void bxt_sanitize_cdclk(struct drm_i915_pr=
ivate
> > *dev_priv)
> >  	 * Disable SSA Precharge when CD clock frequency < 500 MHz,
> >  	 * enable otherwise.
> >  	 */
> > -	if (IS_GEN9_LP(dev_priv) && dev_priv->cdclk.hw.cdclk >=3D 500000)
> > +	if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) &&
> > +	    dev_priv->cdclk.hw.cdclk >=3D 500000)
> >  		expected |=3D BXT_CDCLK_SSA_PRECHARGE_ENABLE;
> > =

> >  	if (cdctl =3D=3D expected)
> > @@ -1797,9 +1799,9 @@ static void bxt_cdclk_uninit_hw(struct
> > drm_i915_private *dev_priv)
> >   */
> >  void intel_cdclk_init_hw(struct drm_i915_private *i915)
> >  {
> > -	if (IS_GEN9_LP(i915) || DISPLAY_VER(i915) >=3D 10)
> > +	if (DISPLAY_VER(i915) >=3D 10 || IS_BROXTON(i915))
> >  		bxt_cdclk_init_hw(i915);
> > -	else if (IS_GEN9_BC(i915))
> > +	else if (IS_DISPLAY_VER(i915, 9))
> >  		skl_cdclk_init_hw(i915);
> >  }
> > =

> > @@ -1812,9 +1814,9 @@ void intel_cdclk_init_hw(struct drm_i915_private
> > *i915)
> >   */
> >  void intel_cdclk_uninit_hw(struct drm_i915_private *i915)
> >  {
> > -	if (DISPLAY_VER(i915) >=3D 10 || IS_GEN9_LP(i915))
> > +	if (DISPLAY_VER(i915) >=3D 10 || IS_BROXTON(i915))
> >  		bxt_cdclk_uninit_hw(i915);
> > -	else if (IS_GEN9_BC(i915))
> > +	else if (IS_DISPLAY_VER(i915, 9))
> >  		skl_cdclk_uninit_hw(i915);
> >  }
> > =

> > @@ -1852,7 +1854,7 @@ static bool intel_cdclk_can_cd2x_update(struct
> > drm_i915_private *dev_priv,
> >  					const struct intel_cdclk_config *b)
> >  {
> >  	/* Older hw doesn't have the capability */
> > -	if (DISPLAY_VER(dev_priv) < 10 && !IS_GEN9_LP(dev_priv))
> > +	if (DISPLAY_VER(dev_priv) < 10 && !IS_BROXTON(dev_priv))
> >  		return false;
> > =

> >  	return a->cdclk !=3D b->cdclk &&
> > @@ -2625,7 +2627,11 @@ void intel_update_max_cdclk(struct
> > drm_i915_private *dev_priv)
> >  			dev_priv->max_cdclk_freq =3D 652800;
> >  	} else if (IS_CANNONLAKE(dev_priv)) {
> >  		dev_priv->max_cdclk_freq =3D 528000;
> > -	} else if (IS_GEN9_BC(dev_priv)) {
> > +	} else if (IS_GEMINILAKE(dev_priv)) {
> > +		dev_priv->max_cdclk_freq =3D 316800;
> > +	} else if (IS_BROXTON(dev_priv)) {
> > +		dev_priv->max_cdclk_freq =3D 624000;
> > +	} else if (IS_DISPLAY_VER(dev_priv, 9)) {
> >  		u32 limit =3D intel_de_read(dev_priv, SKL_DFSM) &
> > SKL_DFSM_CDCLK_LIMIT_MASK;
> >  		int max_cdclk, vco;
> > =

> > @@ -2647,10 +2653,6 @@ void intel_update_max_cdclk(struct
> > drm_i915_private *dev_priv)
> >  			max_cdclk =3D 308571;
> > =

> >  		dev_priv->max_cdclk_freq =3D skl_calc_cdclk(max_cdclk, vco);
> > -	} else if (IS_GEMINILAKE(dev_priv)) {
> > -		dev_priv->max_cdclk_freq =3D 316800;
> > -	} else if (IS_BROXTON(dev_priv)) {
> > -		dev_priv->max_cdclk_freq =3D 624000;
> >  	} else if (IS_BROADWELL(dev_priv))  {
> >  		/*
> >  		 * FIXME with extra cooling we can allow
> > @@ -2878,7 +2880,7 @@ void intel_init_cdclk_hooks(struct drm_i915_priva=
te
> > *dev_priv)
> >  		dev_priv->display.modeset_calc_cdclk =3D
> > bxt_modeset_calc_cdclk;
> >  		dev_priv->display.calc_voltage_level =3D cnl_calc_voltage_level;
> >  		dev_priv->cdclk.table =3D cnl_cdclk_table;
> > -	} else if (IS_GEN9_LP(dev_priv)) {
> > +	} else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
> >  		dev_priv->display.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk;
> >  		dev_priv->display.set_cdclk =3D bxt_set_cdclk;
> >  		dev_priv->display.modeset_calc_cdclk =3D
> > bxt_modeset_calc_cdclk;
> > @@ -2887,7 +2889,7 @@ void intel_init_cdclk_hooks(struct drm_i915_priva=
te
> > *dev_priv)
> >  			dev_priv->cdclk.table =3D glk_cdclk_table;
> >  		else
> >  			dev_priv->cdclk.table =3D bxt_cdclk_table;
> > -	} else if (IS_GEN9_BC(dev_priv)) {
> > +	} else if (IS_DISPLAY_VER(dev_priv, 9)) {
> >  		dev_priv->display.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk;
> >  		dev_priv->display.set_cdclk =3D skl_set_cdclk;
> >  		dev_priv->display.modeset_calc_cdclk =3D
> > skl_modeset_calc_cdclk;
> > @@ -2908,9 +2910,9 @@ void intel_init_cdclk_hooks(struct drm_i915_priva=
te
> > *dev_priv)
> >  		dev_priv->display.modeset_calc_cdclk =3D
> > fixed_modeset_calc_cdclk;
> >  	}
> > =

> > -	if (DISPLAY_VER(dev_priv) >=3D 10 || IS_GEN9_LP(dev_priv))
> > +	if (DISPLAY_VER(dev_priv) >=3D 10 || IS_BROXTON(dev_priv))
> >  		dev_priv->display.get_cdclk =3D bxt_get_cdclk;
> > -	else if (IS_GEN9_BC(dev_priv))
> > +	else if (IS_DISPLAY_VER(dev_priv, 9))
> >  		dev_priv->display.get_cdclk =3D skl_get_cdclk;
> >  	else if (IS_BROADWELL(dev_priv))
> >  		dev_priv->display.get_cdclk =3D bdw_get_cdclk;
> > diff --git a/drivers/gpu/drm/i915/display/intel_csr.c
> > b/drivers/gpu/drm/i915/display/intel_csr.c
> > index 794efcc3ca08..e54521d7b931 100644
> > --- a/drivers/gpu/drm/i915/display/intel_csr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_csr.c
> > @@ -284,7 +284,7 @@ static void gen9_set_dc_state_debugmask(struct
> > drm_i915_private *dev_priv)
> > =

> >  	mask =3D DC_STATE_DEBUG_MASK_MEMORY_UP;
> > =

> > -	if (IS_GEN9_LP(dev_priv))
> > +	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> >  		mask |=3D DC_STATE_DEBUG_MASK_CORES;
> > =

> >  	/* The below bit doesn't need to be cleared ever afterwards */
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 953de42e277c..deef24da00b5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -113,7 +113,8 @@ void intel_prepare_dp_ddi_buffers(struct intel_enco=
der
> > *encoder,
> >  							      &n_entries);
> > =

> >  	/* If we're boosting the current, set bit 31 of trans1 */
> > -	if (IS_GEN9_BC(dev_priv) &&
> > intel_bios_encoder_dp_boost_level(encoder->devdata))
> > +	if (IS_DISPLAY_VER(dev_priv, 9) && !IS_BROXTON(dev_priv) &&
> > +	    intel_bios_encoder_dp_boost_level(encoder->devdata))
> >  		iboost_bit =3D DDI_BUF_BALANCE_LEG_ENABLE;
> > =

> >  	for (i =3D 0; i < n_entries; i++) {
> > @@ -146,7 +147,8 @@ static void intel_prepare_hdmi_ddi_buffers(struct
> > intel_encoder *encoder,
> >  		level =3D n_entries - 1;
> > =

> >  	/* If we're boosting the current, set bit 31 of trans1 */
> > -	if (IS_GEN9_BC(dev_priv) &&
> > intel_bios_encoder_hdmi_boost_level(encoder->devdata))
> > +	if (IS_DISPLAY_VER(dev_priv, 9) && !IS_BROXTON(dev_priv) &&
> > +	    intel_bios_encoder_hdmi_boost_level(encoder->devdata))
> >  		iboost_bit =3D DDI_BUF_BALANCE_LEG_ENABLE;
> > =

> >  	/* Entry 9 is for HDMI: */
> > @@ -759,7 +761,7 @@ static void intel_ddi_get_encoder_pipes(struct
> > intel_encoder *encoder,
> >  		*is_dp_mst =3D mst_pipe_mask;
> > =

> >  out:
> > -	if (*pipe_mask && IS_GEN9_LP(dev_priv)) {
> > +	if (*pipe_mask && (IS_GEMINILAKE(dev_priv) ||
> > IS_BROXTON(dev_priv))) {
> >  		tmp =3D intel_de_read(dev_priv, BXT_PHY_CTL(port));
> >  		if ((tmp & (BXT_PHY_CMNLANE_POWERDOWN_ACK |
> >  			    BXT_PHY_LANE_POWERDOWN_ACK |
> > @@ -987,7 +989,7 @@ static u8 intel_ddi_dp_voltage_max(struct intel_dp
> > *intel_dp,
> >  			icl_get_mg_buf_trans(encoder, crtc_state, &n_entries);
> >  	} else if (IS_CANNONLAKE(dev_priv)) {
> >  		cnl_get_buf_trans(encoder, crtc_state, &n_entries);
> > -	} else if (IS_GEN9_LP(dev_priv)) {
> > +	} else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
> >  		bxt_get_buf_trans(encoder, crtc_state, &n_entries);
> >  	} else {
> >  		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
> > @@ -1555,7 +1557,7 @@ hsw_set_signal_levels(struct intel_dp *intel_dp,
> >  	intel_dp->DP &=3D ~DDI_BUF_EMP_MASK;
> >  	intel_dp->DP |=3D signal_levels;
> > =

> > -	if (IS_GEN9_BC(dev_priv))
> > +	if (IS_DISPLAY_VER(dev_priv, 9) && !IS_BROXTON(dev_priv))
> >  		skl_ddi_set_iboost(encoder, crtc_state, level);
> > =

> >  	intel_de_write(dev_priv, DDI_BUF_CTL(port), intel_dp->DP);
> > @@ -2648,7 +2650,7 @@ static void hsw_ddi_pre_enable_dp(struct
> > intel_atomic_state *state,
> >  		icl_ddi_vswing_sequence(encoder, crtc_state, level);
> >  	else if (IS_CANNONLAKE(dev_priv))
> >  		cnl_ddi_vswing_sequence(encoder, crtc_state, level);
> > -	else if (IS_GEN9_LP(dev_priv))
> > +	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> >  		bxt_ddi_vswing_sequence(encoder, crtc_state, level);
> >  	else
> >  		intel_prepare_dp_ddi_buffers(encoder, crtc_state);
> > @@ -3096,16 +3098,16 @@ static void intel_enable_ddi_hdmi(struct
> > intel_atomic_state *state,
> >  		icl_ddi_vswing_sequence(encoder, crtc_state, level);
> >  	else if (IS_CANNONLAKE(dev_priv))
> >  		cnl_ddi_vswing_sequence(encoder, crtc_state, level);
> > -	else if (IS_GEN9_LP(dev_priv))
> > +	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> >  		bxt_ddi_vswing_sequence(encoder, crtc_state, level);
> >  	else
> >  		intel_prepare_hdmi_ddi_buffers(encoder, level);
> > =

> > -	if (IS_GEN9_BC(dev_priv))
> > +	if (IS_DISPLAY_VER(dev_priv, 9) && !IS_BROXTON(dev_priv))
> >  		skl_ddi_set_iboost(encoder, crtc_state, level);
> > =

> >  	/* Display WA #1143: skl,kbl,cfl */
> > -	if (IS_GEN9_BC(dev_priv)) {
> > +	if (IS_DISPLAY_VER(dev_priv, 9) && !IS_BROXTON(dev_priv)) {
> >  		/*
> >  		 * For some reason these chicken bits have been
> >  		 * stuffed into a transcoder register, event though
> > @@ -3321,7 +3323,7 @@ intel_ddi_pre_pll_enable(struct intel_atomic_state
> > *state,
> >  		 * Type-C ports.  Skip this step for TBT.
> >  		 */
> >  		intel_tc_port_set_fia_lane_count(dig_port, crtc_state-
> > >lane_count);
> > -	else if (IS_GEN9_LP(dev_priv))
> > +	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> >  		bxt_ddi_phy_set_lane_optim_mask(encoder,
> >  						crtc_state-
> > >lane_lat_optim_mask);
> >  }
> > @@ -3679,7 +3681,7 @@ static void intel_ddi_get_config(struct intel_enc=
oder
> > *encoder,
> >  	if (!pipe_config->bigjoiner_slave)
> >  		ddi_dotclock_get(pipe_config);
> > =

> > -	if (IS_GEN9_LP(dev_priv))
> > +	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> >  		pipe_config->lane_lat_optim_mask =3D
> >  			bxt_ddi_phy_get_lane_lat_optim_mask(encoder);
> > =

> > @@ -3885,7 +3887,7 @@ static int intel_ddi_compute_config(struct
> > intel_encoder *encoder,
> >  			pipe_config->pch_pfit.enabled ||
> >  			pipe_config->crc_enabled;
> > =

> > -	if (IS_GEN9_LP(dev_priv))
> > +	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> >  		pipe_config->lane_lat_optim_mask =3D
> >  			bxt_ddi_phy_calc_lane_lat_optim_mask(pipe_config-
> > >lane_count);
> > =

> > @@ -4053,7 +4055,7 @@ intel_ddi_init_dp_connector(struct intel_digital_=
port
> > *dig_port)
> >  		dig_port->dp.set_signal_levels =3D icl_set_signal_levels;
> >  	else if (IS_CANNONLAKE(dev_priv))
> >  		dig_port->dp.set_signal_levels =3D cnl_set_signal_levels;
> > -	else if (IS_GEN9_LP(dev_priv))
> > +	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> >  		dig_port->dp.set_signal_levels =3D bxt_set_signal_levels;
> >  	else
> >  		dig_port->dp.set_signal_levels =3D hsw_set_signal_levels;
> > @@ -4296,7 +4298,7 @@ static bool intel_ddi_a_force_4_lanes(struct
> > intel_digital_port *dig_port)
> >  	/* Broxton/Geminilake: Bspec says that DDI_A_4_LANES is the only
> >  	 *                     supported configuration
> >  	 */
> > -	if (IS_GEN9_LP(dev_priv))
> > +	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> >  		return true;
> > =

> >  	/* Cannonlake: Most of SKUs don't support DDI_E, and the only
> > @@ -4585,10 +4587,10 @@ void intel_ddi_init(struct drm_i915_private
> > *dev_priv, enum port port)
> >  		encoder->disable_clock =3D cnl_ddi_disable_clock;
> >  		encoder->is_clock_enabled =3D cnl_ddi_is_clock_enabled;
> >  		encoder->get_config =3D cnl_ddi_get_config;
> > -	} else if (IS_GEN9_LP(dev_priv)) {
> > +	} else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
> >  		/* BXT/GLK have fixed PLL->port mapping */
> >  		encoder->get_config =3D bxt_ddi_get_config;
> > -	} else if (IS_GEN9_BC(dev_priv)) {
> > +	} else if (IS_DISPLAY_VER(dev_priv, 9)) {
> >  		encoder->enable_clock =3D skl_ddi_enable_clock;
> >  		encoder->disable_clock =3D skl_ddi_disable_clock;
> >  		encoder->is_clock_enabled =3D skl_ddi_is_clock_enabled;
> > @@ -4672,7 +4674,8 @@ void intel_ddi_init(struct drm_i915_private *dev_=
priv,
> > enum port port)
> >  		else
> >  			dig_port->connected =3D lpt_digital_port_connected;
> >  	} else if (DISPLAY_VER(dev_priv) >=3D 8) {
> > -		if (port =3D=3D PORT_A || IS_GEN9_LP(dev_priv))
> > +		if (port =3D=3D PORT_A || IS_GEMINILAKE(dev_priv) ||
> > +		    IS_BROXTON(dev_priv))
> >  			dig_port->connected =3D bdw_digital_port_connected;
> >  		else
> >  			dig_port->connected =3D lpt_digital_port_connected;
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> > b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> > index 5d9ce6042e87..fdd25861edd5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> > @@ -881,7 +881,7 @@ intel_ddi_get_buf_trans_edp(struct intel_encoder
> > *encoder, int *n_entries)
> >  {
> >  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> > =

> > -	if (IS_GEN9_BC(dev_priv)) {
> > +	if (IS_DISPLAY_VER(dev_priv, 9) && !IS_BROXTON(dev_priv)) {
> >  		const struct ddi_buf_trans *ddi_translations =3D
> >  			skl_get_buf_trans_edp(encoder, n_entries);
> >  		*n_entries =3D skl_buf_trans_num_entries(encoder->port,
> > *n_entries);
> > @@ -919,7 +919,7 @@ intel_ddi_get_buf_trans_hdmi(struct intel_encoder
> > *encoder,
> >  {
> >  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> > =

> > -	if (IS_GEN9_BC(dev_priv)) {
> > +	if (IS_DISPLAY_VER(dev_priv, 9) && !IS_BROXTON(dev_priv)) {
> >  		return skl_get_buf_trans_hdmi(dev_priv, n_entries);
> >  	} else if (IS_BROADWELL(dev_priv)) {
> >  		*n_entries =3D ARRAY_SIZE(bdw_ddi_translations_hdmi);
> > @@ -1370,10 +1370,10 @@ int intel_ddi_hdmi_num_entries(struct
> > intel_encoder *encoder,
> >  	} else if (IS_CANNONLAKE(dev_priv)) {
> >  		cnl_get_buf_trans_hdmi(encoder, &n_entries);
> >  		*default_entry =3D n_entries - 1;
> > -	} else if (IS_GEN9_LP(dev_priv)) {
> > +	} else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
> >  		bxt_get_buf_trans_hdmi(encoder, &n_entries);
> >  		*default_entry =3D n_entries - 1;
> > -	} else if (IS_GEN9_BC(dev_priv)) {
> > +	} else if (IS_DISPLAY_VER(dev_priv, 9)) {
> >  		intel_ddi_get_buf_trans_hdmi(encoder, &n_entries);
> >  		*default_entry =3D 8;
> >  	} else if (IS_BROADWELL(dev_priv)) {
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 2300d58ba47f..d0c08c12f86b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -6772,7 +6772,7 @@ static bool hsw_get_pipe_config(struct intel_crtc
> > *crtc,
> > =

> >  	active =3D hsw_get_transcoder_state(crtc, pipe_config,
> > &power_domain_set);
> > =

> > -	if (IS_GEN9_LP(dev_priv) &&
> > +	if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) &&
> >  	    bxt_get_dsi_transcoder_state(crtc, pipe_config,
> > &power_domain_set)) {
> >  		drm_WARN_ON(&dev_priv->drm, active);
> >  		active =3D true;
> > @@ -7692,7 +7692,8 @@ static u16 skl_linetime_wm(const struct
> > intel_crtc_state *crtc_state)
> >  				   crtc_state->pixel_rate);
> > =

> >  	/* Display WA #1135: BXT:ALL GLK:ALL */
> > -	if (IS_GEN9_LP(dev_priv) && dev_priv->ipc_enabled)
> > +	if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) &&
> > +	    dev_priv->ipc_enabled)
> >  		linetime_wm /=3D 2;
> > =

> >  	return min(linetime_wm, 0x1ff);
> > @@ -11694,7 +11695,7 @@ static void intel_setup_outputs(struct
> > drm_i915_private *dev_priv)
> >  			intel_ddi_init(dev_priv, PORT_F);
> > =

> >  		icl_dsi_init(dev_priv);
> > -	} else if (IS_GEN9_LP(dev_priv)) {
> > +	} else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
> >  		/*
> >  		 * FIXME: Broxton doesn't support port detection via the
> >  		 * DDI_BUF_CTL_A or SFUSE_STRAP registers, find another way
> > to
> > @@ -11719,7 +11720,7 @@ static void intel_setup_outputs(struct
> > drm_i915_private *dev_priv)
> >  		 */
> >  		found =3D intel_de_read(dev_priv, DDI_BUF_CTL(PORT_A)) &
> > DDI_INIT_DISPLAY_DETECTED;
> >  		/* WaIgnoreDDIAStrap: skl */
> > -		if (found || IS_GEN9_BC(dev_priv))
> > +		if (found || IS_DISPLAY_VER(dev_priv, 9))
> >  			intel_ddi_init(dev_priv, PORT_A);
> > =

> >  		/* DDI B, C, D, and F detection is indicated by the SFUSE_STRAP
> > @@ -11744,7 +11745,7 @@ static void intel_setup_outputs(struct
> > drm_i915_private *dev_priv)
> >  		/*
> >  		 * On SKL we don't have a way to detect DDI-E so we rely on
> > VBT.
> >  		 */
> > -		if (IS_GEN9_BC(dev_priv) &&
> > +		if (IS_DISPLAY_VER(dev_priv, 9) &&
> >  		    intel_bios_is_port_present(dev_priv, PORT_E))
> >  			intel_ddi_init(dev_priv, PORT_E);
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > index 564509a4e666..183c414d554a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > @@ -569,7 +569,7 @@ static int i915_dmc_info(struct seq_file *m, void
> > *unused)
> >  	} else {
> >  		dc5_reg =3D IS_BROXTON(dev_priv) ? BXT_CSR_DC3_DC5_COUNT
> > :
> >  						 SKL_CSR_DC3_DC5_COUNT;
> > -		if (!IS_GEN9_LP(dev_priv))
> > +		if (!IS_GEMINILAKE(dev_priv) && !IS_BROXTON(dev_priv))
> >  			dc6_reg =3D SKL_CSR_DC5_DC6_COUNT;
> >  	}
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> > b/drivers/gpu/drm/i915/display/intel_display_power.c
> > index 99126caf5747..9419ae8c6111 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > @@ -709,7 +709,7 @@ static bool hsw_power_well_enabled(struct
> > drm_i915_private *dev_priv,
> >  	 * BIOS's own request bits, which are forced-on for these power wells
> >  	 * when exiting DC5/6.
> >  	 */
> > -	if (IS_DISPLAY_VER(dev_priv, 9) && !IS_GEN9_LP(dev_priv) &&
> > +	if (IS_DISPLAY_VER(dev_priv, 9) && !IS_BROXTON(dev_priv) &&
> >  	    (id =3D=3D SKL_DISP_PW_1 || id =3D=3D SKL_DISP_PW_MISC_IO))
> >  		val |=3D intel_de_read(dev_priv, regs->bios);
> > =

> > @@ -809,7 +809,7 @@ static u32 gen9_dc_mask(struct drm_i915_private
> > *dev_priv)
> >  					  | DC_STATE_EN_DC9;
> >  	else if (IS_DISPLAY_VER(dev_priv, 11))
> >  		mask |=3D DC_STATE_EN_UPTO_DC6 | DC_STATE_EN_DC9;
> > -	else if (IS_GEN9_LP(dev_priv))
> > +	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> >  		mask |=3D DC_STATE_EN_DC9;
> >  	else
> >  		mask |=3D DC_STATE_EN_UPTO_DC6;
> > @@ -1060,7 +1060,7 @@ static void gen9_enable_dc5(struct drm_i915_priva=
te
> > *dev_priv)
> >  	drm_dbg_kms(&dev_priv->drm, "Enabling DC5\n");
> > =

> >  	/* Wa Display #1183: skl,kbl,cfl */
> > -	if (IS_GEN9_BC(dev_priv))
> > +	if (IS_DISPLAY_VER(dev_priv, 9) && !IS_BROXTON(dev_priv))
> >  		intel_de_write(dev_priv, GEN8_CHICKEN_DCPR_1,
> >  			       intel_de_read(dev_priv, GEN8_CHICKEN_DCPR_1) |
> > SKL_SELECT_ALTERNATE_DC_EXIT);
> > =

> > @@ -1087,7 +1087,7 @@ static void skl_enable_dc6(struct drm_i915_private
> > *dev_priv)
> >  	drm_dbg_kms(&dev_priv->drm, "Enabling DC6\n");
> > =

> >  	/* Wa Display #1183: skl,kbl,cfl */
> > -	if (IS_GEN9_BC(dev_priv))
> > +	if (IS_DISPLAY_VER(dev_priv, 9) && !IS_BROXTON(dev_priv))
> >  		intel_de_write(dev_priv, GEN8_CHICKEN_DCPR_1,
> >  			       intel_de_read(dev_priv, GEN8_CHICKEN_DCPR_1) |
> > SKL_SELECT_ALTERNATE_DC_EXIT);
> > =

> > @@ -1189,7 +1189,7 @@ static void gen9_disable_dc_states(struct
> > drm_i915_private *dev_priv)
> > =

> >  	gen9_assert_dbuf_enabled(dev_priv);
> > =

> > -	if (IS_GEN9_LP(dev_priv))
> > +	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> >  		bxt_verify_ddi_phy_power_wells(dev_priv);
> > =

> >  	if (DISPLAY_VER(dev_priv) >=3D 11)
> > @@ -4537,10 +4537,10 @@ static u32 get_allowed_dc_mask(const struct
> > drm_i915_private *dev_priv,
> >  		max_dc =3D 3;
> >  	else if (DISPLAY_VER(dev_priv) >=3D 12)
> >  		max_dc =3D 4;
> > -	else if (DISPLAY_VER(dev_priv) >=3D 11 || IS_CANNONLAKE(dev_priv) ||
> > IS_GEN9_BC(dev_priv))
> > -		max_dc =3D 2;
> > -	else if (IS_GEN9_LP(dev_priv))
> > +	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> >  		max_dc =3D 1;
> > +	else if (DISPLAY_VER(dev_priv) >=3D 9)
> > +		max_dc =3D 2;
> >  	else
> >  		max_dc =3D 0;
> > =

> > @@ -4549,7 +4549,8 @@ static u32 get_allowed_dc_mask(const struct
> > drm_i915_private *dev_priv,
> >  	 * not depending on the DMC firmware. It's needed by system
> >  	 * suspend/resume, so allow it unconditionally.
> >  	 */
> > -	mask =3D IS_GEN9_LP(dev_priv) || DISPLAY_VER(dev_priv) >=3D 11 ?
> > +	mask =3D IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv) ||
> > +		DISPLAY_VER(dev_priv) >=3D 11 ?
> >  	       DC_STATE_EN_DC9 : 0;
> > =

> >  	if (!dev_priv->params.disable_power_well)
> > @@ -4692,7 +4693,7 @@ int intel_power_domains_init(struct
> > drm_i915_private *dev_priv)
> >  		err =3D set_power_wells(power_domains, glk_power_wells);
> >  	} else if (IS_BROXTON(dev_priv)) {
> >  		err =3D set_power_wells(power_domains, bxt_power_wells);
> > -	} else if (IS_GEN9_BC(dev_priv)) {
> > +	} else if (IS_DISPLAY_VER(dev_priv, 9)) {
> >  		err =3D set_power_wells(power_domains, skl_power_wells);
> >  	} else if (IS_CHERRYVIEW(dev_priv)) {
> >  		err =3D set_power_wells(power_domains, chv_power_wells);
> > @@ -5623,10 +5624,10 @@ void intel_power_domains_init_hw(struct
> > drm_i915_private *i915, bool resume)
> >  		icl_display_core_init(i915, resume);
> >  	} else if (IS_CANNONLAKE(i915)) {
> >  		cnl_display_core_init(i915, resume);
> > -	} else if (IS_GEN9_BC(i915)) {
> > -		skl_display_core_init(i915, resume);
> > -	} else if (IS_GEN9_LP(i915)) {
> > +	} else if (IS_GEMINILAKE(i915) || IS_BROXTON(i915)) {
> >  		bxt_display_core_init(i915, resume);
> > +	} else if (IS_DISPLAY_VER(i915, 9)) {
> > +		skl_display_core_init(i915, resume);
> >  	} else if (IS_CHERRYVIEW(i915)) {
> >  		mutex_lock(&power_domains->lock);
> >  		chv_phy_control_init(i915);
> > @@ -5784,10 +5785,10 @@ void intel_power_domains_suspend(struct
> > drm_i915_private *i915,
> >  		icl_display_core_uninit(i915);
> >  	else if (IS_CANNONLAKE(i915))
> >  		cnl_display_core_uninit(i915);
> > -	else if (IS_GEN9_BC(i915))
> > -		skl_display_core_uninit(i915);
> > -	else if (IS_GEN9_LP(i915))
> > +	else if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
> >  		bxt_display_core_uninit(i915);
> > +	else if (IS_DISPLAY_VER(i915, 9))
> > +		skl_display_core_uninit(i915);
> > =

> >  	power_domains->display_core_suspended =3D true;
> >  }
> > @@ -5908,7 +5909,8 @@ static void intel_power_domains_verify_state(stru=
ct
> > drm_i915_private *i915)
> > =

> >  void intel_display_power_suspend_late(struct drm_i915_private *i915)
> >  {
> > -	if (DISPLAY_VER(i915) >=3D 11 || IS_GEN9_LP(i915)) {
> > +	if (DISPLAY_VER(i915) >=3D 11 || IS_GEMINILAKE(i915) ||
> > +	    IS_BROXTON(i915)) {
> >  		bxt_enable_dc9(i915);
> >  		/* Tweaked Wa_14010685332:icp,jsp,mcc */
> >  		if (INTEL_PCH_TYPE(i915) >=3D PCH_ICP &&
> > INTEL_PCH_TYPE(i915) <=3D PCH_MCC)
> > @@ -5921,7 +5923,8 @@ void intel_display_power_suspend_late(struct
> > drm_i915_private *i915)
> > =

> >  void intel_display_power_resume_early(struct drm_i915_private *i915)
> >  {
> > -	if (DISPLAY_VER(i915) >=3D 11 || IS_GEN9_LP(i915)) {
> > +	if (DISPLAY_VER(i915) >=3D 11 || IS_GEMINILAKE(i915) ||
> > +	    IS_BROXTON(i915)) {
> >  		gen9_sanitize_dc_state(i915);
> >  		bxt_disable_dc9(i915);
> >  		/* Tweaked Wa_14010685332:icp,jsp,mcc */
> > @@ -5938,7 +5941,7 @@ void intel_display_power_suspend(struct
> > drm_i915_private *i915)
> >  	if (DISPLAY_VER(i915) >=3D 11) {
> >  		icl_display_core_uninit(i915);
> >  		bxt_enable_dc9(i915);
> > -	} else if (IS_GEN9_LP(i915)) {
> > +	} else if (IS_GEMINILAKE(i915) || IS_BROXTON(i915)) {
> >  		bxt_display_core_uninit(i915);
> >  		bxt_enable_dc9(i915);
> >  	} else if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
> > @@ -5959,7 +5962,7 @@ void intel_display_power_resume(struct
> > drm_i915_private *i915)
> >  				 DC_STATE_EN_UPTO_DC5)
> >  				gen9_enable_dc5(i915);
> >  		}
> > -	} else if (IS_GEN9_LP(i915)) {
> > +	} else if (IS_GEMINILAKE(i915) || IS_BROXTON(i915)) {
> >  		bxt_disable_dc9(i915);
> >  		bxt_display_core_init(i915, true);
> >  		if (i915->csr.dmc_payload &&
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index d81b8d238163..6194a70924db 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -301,10 +301,10 @@ intel_dp_set_source_rates(struct intel_dp *intel_=
dp)
> >  			max_rate =3D ehl_max_source_rate(intel_dp);
> >  		else
> >  			max_rate =3D icl_max_source_rate(intel_dp);
> > -	} else if (IS_GEN9_LP(dev_priv)) {
> > +	} else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
> >  		source_rates =3D bxt_rates;
> >  		size =3D ARRAY_SIZE(bxt_rates);
> > -	} else if (IS_GEN9_BC(dev_priv)) {
> > +	} else if (IS_DISPLAY_VER(dev_priv, 9)) {
> >  		source_rates =3D skl_rates;
> >  		size =3D ARRAY_SIZE(skl_rates);
> >  	} else if ((IS_HASWELL(dev_priv) && !IS_HSW_ULX(dev_priv)) ||
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index 2daa3f67791e..180f97cd74cb 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -154,7 +154,7 @@ static int intel_dp_mst_compute_config(struct
> > intel_encoder *encoder,
> >  	pipe_config->limited_color_range =3D
> >  		intel_dp_limited_color_range(pipe_config, conn_state);
> > =

> > -	if (IS_GEN9_LP(dev_priv))
> > +	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> >  		pipe_config->lane_lat_optim_mask =3D
> >  			bxt_ddi_phy_calc_lane_lat_optim_mask(pipe_config-
> > >lane_count);
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c
> > b/drivers/gpu/drm/i915/display/intel_dpll.c
> > index 3e3c5eed1600..158f271299a4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> > @@ -366,13 +366,11 @@ static bool intel_pll_is_valid(struct drm_i915_pr=
ivate
> > *dev_priv,
> >  	if (clock->m1 < limit->m1.min || limit->m1.max < clock->m1)
> >  		return false;
> > =

> > -	if (!IS_PINEVIEW(dev_priv) && !IS_VALLEYVIEW(dev_priv) &&
> > -	    !IS_CHERRYVIEW(dev_priv) && !IS_GEN9_LP(dev_priv))
> > +	if (!IS_PINEVIEW(dev_priv) && !IS_LP(dev_priv))
> >  		if (clock->m1 <=3D clock->m2)
> >  			return false;
> > =

> > -	if (!IS_VALLEYVIEW(dev_priv) && !IS_CHERRYVIEW(dev_priv) &&
> > -	    !IS_GEN9_LP(dev_priv)) {
> > +	if (!IS_LP(dev_priv)) {
> >  		if (clock->p < limit->p.min || limit->p.max < clock->p)
> >  			return false;
> >  		if (clock->m < limit->m.min || limit->m.max < clock->m)
> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > index 1ae158d12c07..e32de7c848e9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > @@ -4441,10 +4441,10 @@ void intel_shared_dpll_init(struct drm_device *=
dev)
> >  		dpll_mgr =3D &icl_pll_mgr;
> >  	else if (IS_CANNONLAKE(dev_priv))
> >  		dpll_mgr =3D &cnl_pll_mgr;
> > -	else if (IS_GEN9_BC(dev_priv))
> > -		dpll_mgr =3D &skl_pll_mgr;
> > -	else if (IS_GEN9_LP(dev_priv))
> > +	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> >  		dpll_mgr =3D &bxt_pll_mgr;
> > +	else if (IS_DISPLAY_VER(dev_priv, 9))
> > +		dpll_mgr =3D &skl_pll_mgr;
> >  	else if (HAS_DDI(dev_priv))
> >  		dpll_mgr =3D &hsw_pll_mgr;
> >  	else if (HAS_PCH_IBX(dev_priv) || HAS_PCH_CPT(dev_priv))
> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c
> > b/drivers/gpu/drm/i915/display/intel_fbc.c
> > index 88e02ee3a631..5be6b07ca854 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > @@ -302,7 +302,7 @@ static void gen7_fbc_activate(struct drm_i915_priva=
te
> > *dev_priv)
> >  	int threshold =3D dev_priv->fbc.threshold;
> > =

> >  	/* Display WA #0529: skl, kbl, bxt. */
> > -	if (IS_GEN9_BC(dev_priv) || IS_BROXTON(dev_priv)) {
> > +	if (IS_DISPLAY_VER(dev_priv, 9)) {
> >  		u32 val =3D intel_de_read(dev_priv, CHICKEN_MISC_4);
> > =

> >  		val &=3D ~(FBC_STRIDE_OVERRIDE | FBC_STRIDE_MASK);
> > @@ -445,7 +445,8 @@ static int find_compression_threshold(struct
> > drm_i915_private *dev_priv,
> >  	 * reserved range size, so it always assumes the maximum (8mb) is use=
d.
> >  	 * If we enable FBC using a CFB on that memory range we'll get FIFO
> >  	 * underruns, even if that range is not reserved by the BIOS. */
> > -	if (IS_BROADWELL(dev_priv) || IS_GEN9_BC(dev_priv))
> > +	if (IS_BROADWELL(dev_priv) || (IS_DISPLAY_VER(dev_priv, 9) &&
> > +				       !IS_BROXTON(dev_priv)))
> >  		end =3D resource_size(&dev_priv->dsm) - 8 * 1024 * 1024;
> >  	else
> >  		end =3D U64_MAX;
> > @@ -759,7 +760,7 @@ static u16 intel_fbc_gen9_wa_cfb_stride(struct
> > drm_i915_private *dev_priv)
> >  	struct intel_fbc *fbc =3D &dev_priv->fbc;
> >  	struct intel_fbc_state_cache *cache =3D &fbc->state_cache;
> > =

> > -	if ((IS_GEN9_BC(dev_priv) || IS_BROXTON(dev_priv)) &&
> > +	if ((IS_DISPLAY_VER(dev_priv, 9)) &&
> >  	    cache->fb.modifier !=3D I915_FORMAT_MOD_X_TILED)
> >  		return DIV_ROUND_UP(cache->plane.src_w, 32 * fbc-
> > >threshold) * 8;
> >  	else
> > diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c
> > b/drivers/gpu/drm/i915/display/intel_gmbus.c
> > index 8ddc20daef64..13ba280d0228 100644
> > --- a/drivers/gpu/drm/i915/display/intel_gmbus.c
> > +++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
> > @@ -107,9 +107,9 @@ static const struct gmbus_pin *get_gmbus_pin(struct
> > drm_i915_private *dev_priv,
> >  		return &gmbus_pins_icp[pin];
> >  	else if (HAS_PCH_CNP(dev_priv))
> >  		return &gmbus_pins_cnp[pin];
> > -	else if (IS_GEN9_LP(dev_priv))
> > +	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> >  		return &gmbus_pins_bxt[pin];
> > -	else if (IS_GEN9_BC(dev_priv))
> > +	else if (IS_DISPLAY_VER(dev_priv, 9))
> >  		return &gmbus_pins_skl[pin];
> >  	else if (IS_BROADWELL(dev_priv))
> >  		return &gmbus_pins_bdw[pin];
> > @@ -128,9 +128,9 @@ bool intel_gmbus_is_valid_pin(struct drm_i915_priva=
te
> > *dev_priv,
> >  		size =3D ARRAY_SIZE(gmbus_pins_icp);
> >  	else if (HAS_PCH_CNP(dev_priv))
> >  		size =3D ARRAY_SIZE(gmbus_pins_cnp);
> > -	else if (IS_GEN9_LP(dev_priv))
> > +	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> >  		size =3D ARRAY_SIZE(gmbus_pins_bxt);
> > -	else if (IS_GEN9_BC(dev_priv))
> > +	else if (IS_DISPLAY_VER(dev_priv, 9))
> >  		size =3D ARRAY_SIZE(gmbus_pins_skl);
> >  	else if (IS_BROADWELL(dev_priv))
> >  		size =3D ARRAY_SIZE(gmbus_pins_bdw);
> > @@ -600,7 +600,7 @@ do_gmbus_xfer(struct i2c_adapter *adapter, struct
> > i2c_msg *msgs, int num,
> >  	int ret =3D 0;
> > =

> >  	/* Display WA #0868: skl,bxt,kbl,cfl,glk,cnl */
> > -	if (IS_GEN9_LP(dev_priv))
> > +	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> >  		bxt_gmbus_clock_gating(dev_priv, false);
> >  	else if (HAS_PCH_SPT(dev_priv) || HAS_PCH_CNP(dev_priv))
> >  		pch_gmbus_clock_gating(dev_priv, false);
> > @@ -713,7 +713,7 @@ do_gmbus_xfer(struct i2c_adapter *adapter, struct
> > i2c_msg *msgs, int num,
> > =

> >  out:
> >  	/* Display WA #0868: skl,bxt,kbl,cfl,glk,cnl */
> > -	if (IS_GEN9_LP(dev_priv))
> > +	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> >  		bxt_gmbus_clock_gating(dev_priv, true);
> >  	else if (HAS_PCH_SPT(dev_priv) || HAS_PCH_CNP(dev_priv))
> >  		pch_gmbus_clock_gating(dev_priv, true);
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > index d8570e14fe60..75050a040577 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > @@ -286,11 +286,12 @@ static int intel_hdcp_load_keys(struct
> > drm_i915_private *dev_priv)
> >  	/*
> >  	 * Initiate loading the HDCP key from fuses.
> >  	 *
> > -	 * BXT+ platforms, HDCP key needs to be loaded by SW. Only Gen 9
> > -	 * platforms except BXT and GLK, differ in the key load trigger proce=
ss
> > -	 * from other platforms. So GEN9_BC uses the GT Driver Mailbox i/f.
> > +	 * BXT+ platforms, HDCP key needs to be loaded by SW. Only display
> > +	 * version 9 platforms (minus BXT) differ in the key load trigger
> > +	 * process from other platforms. These platforms use the GT Driver
> > +	 * Mailbox interface.
> >  	 */
> > -	if (IS_GEN9_BC(dev_priv)) {
> > +	if (IS_DISPLAY_VER(dev_priv, 9) && !IS_BROXTON(dev_priv)) {
> >  		ret =3D sandybridge_pcode_write(dev_priv,
> >  					      SKL_PCODE_LOAD_HDCP_KEYS, 1);
> >  		if (ret) {
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > index d69f0a6dc26d..f2d1fef8bd9d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > @@ -1841,7 +1841,8 @@ hdmi_port_clock_valid(struct intel_hdmi *hdmi,
> >  		return MODE_CLOCK_RANGE;
> > =

> >  	/* BXT/GLK DPLL can't generate 223-240 MHz */
> > -	if (IS_GEN9_LP(dev_priv) && clock > 223333 && clock < 240000)
> > +	if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) &&
> > +	    clock > 223333 && clock < 240000)
> >  		return MODE_CLOCK_RANGE;
> > =

> >  	/* CHV DPLL can't generate 216-240 MHz */
> > @@ -2714,7 +2715,7 @@ static u8 intel_hdmi_ddc_pin(struct intel_encoder
> > *encoder)
> >  		ddc_pin =3D dg1_port_to_ddc_pin(dev_priv, port);
> >  	else if (IS_ROCKETLAKE(dev_priv))
> >  		ddc_pin =3D rkl_port_to_ddc_pin(dev_priv, port);
> > -	else if (IS_GEN9_BC(dev_priv) && HAS_PCH_TGP(dev_priv))
> > +	else if (IS_DISPLAY_VER(dev_priv, 9) && HAS_PCH_TGP(dev_priv))
> >  		ddc_pin =3D gen9bc_tgp_port_to_ddc_pin(dev_priv, port);
> >  	else if (HAS_PCH_MCC(dev_priv))
> >  		ddc_pin =3D mcc_port_to_ddc_pin(dev_priv, port);
> > @@ -2722,7 +2723,7 @@ static u8 intel_hdmi_ddc_pin(struct intel_encoder
> > *encoder)
> >  		ddc_pin =3D icl_port_to_ddc_pin(dev_priv, port);
> >  	else if (HAS_PCH_CNP(dev_priv))
> >  		ddc_pin =3D cnp_port_to_ddc_pin(dev_priv, port);
> > -	else if (IS_GEN9_LP(dev_priv))
> > +	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> >  		ddc_pin =3D bxt_port_to_ddc_pin(dev_priv, port);
> >  	else if (IS_CHERRYVIEW(dev_priv))
> >  		ddc_pin =3D chv_port_to_ddc_pin(dev_priv, port);
> > diff --git a/drivers/gpu/drm/i915/display/intel_panel.c
> > b/drivers/gpu/drm/i915/display/intel_panel.c
> > index 10022d1575e1..2fcbb2ba2d78 100644
> > --- a/drivers/gpu/drm/i915/display/intel_panel.c
> > +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> > @@ -2161,7 +2161,7 @@ intel_panel_init_backlight_funcs(struct intel_pan=
el
> > *panel)
> >  	    intel_dsi_dcs_init_backlight_funcs(connector) =3D=3D 0)
> >  		return;
> > =

> > -	if (IS_GEN9_LP(dev_priv)) {
> > +	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
> >  		panel->backlight.pwm_funcs =3D &bxt_pwm_funcs;
> >  	} else if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_CNP) {
> >  		panel->backlight.pwm_funcs =3D &cnp_pwm_funcs;
> > diff --git a/drivers/gpu/drm/i915/display/intel_pps.c
> > b/drivers/gpu/drm/i915/display/intel_pps.c
> > index c55da130773b..3a0985f1f531 100644
> > --- a/drivers/gpu/drm/i915/display/intel_pps.c
> > +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> > @@ -313,10 +313,7 @@ void intel_pps_reset_all(struct drm_i915_private
> > *dev_priv)
> >  {
> >  	struct intel_encoder *encoder;
> > =

> > -	if (drm_WARN_ON(&dev_priv->drm,
> > -			!(IS_VALLEYVIEW(dev_priv) ||
> > -			  IS_CHERRYVIEW(dev_priv) ||
> > -			  IS_GEN9_LP(dev_priv))))
> > +	if (drm_WARN_ON(&dev_priv->drm, !IS_LP(dev_priv)))
> >  		return;
> > =

> >  	/*
> > @@ -338,7 +335,7 @@ void intel_pps_reset_all(struct drm_i915_private
> > *dev_priv)
> >  		if (encoder->type !=3D INTEL_OUTPUT_EDP)
> >  			continue;
> > =

> > -		if (IS_GEN9_LP(dev_priv))
> > +		if (DISPLAY_VER(dev_priv) >=3D 9)
> >  			intel_dp->pps.pps_reset =3D true;
> >  		else
> >  			intel_dp->pps.pps_pipe =3D INVALID_PIPE;
> > @@ -361,7 +358,7 @@ static void intel_pps_get_registers(struct intel_dp
> > *intel_dp,
> > =

> >  	memset(regs, 0, sizeof(*regs));
> > =

> > -	if (IS_GEN9_LP(dev_priv))
> > +	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> >  		pps_idx =3D bxt_power_sequencer_idx(intel_dp);
> >  	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> >  		pps_idx =3D vlv_power_sequencer_pipe(intel_dp);
> > @@ -372,7 +369,8 @@ static void intel_pps_get_registers(struct intel_dp
> > *intel_dp,
> >  	regs->pp_off =3D PP_OFF_DELAYS(pps_idx);
> > =

> >  	/* Cycle delay moved from PP_DIVISOR to PP_CONTROL */
> > -	if (IS_GEN9_LP(dev_priv) || INTEL_PCH_TYPE(dev_priv) >=3D PCH_CNP)
> > +	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv) ||
> > +	    INTEL_PCH_TYPE(dev_priv) >=3D PCH_CNP)
> >  		regs->pp_div =3D INVALID_MMIO_REG;
> >  	else
> >  		regs->pp_div =3D PP_DIVISOR(pps_idx);
> > @@ -1399,7 +1397,7 @@ void intel_pps_unlock_regs_wa(struct
> > drm_i915_private *dev_priv)
> > =

> >  void intel_pps_setup(struct drm_i915_private *i915)
> >  {
> > -	if (HAS_PCH_SPLIT(i915) || IS_GEN9_LP(i915))
> > +	if (HAS_PCH_SPLIT(i915) || IS_GEMINILAKE(i915) || IS_BROXTON(i915))
> >  		i915->pps_mmio_base =3D PCH_PPS_BASE;
> >  	else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
> >  		i915->pps_mmio_base =3D VLV_PPS_BASE;
> > diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c
> > b/drivers/gpu/drm/i915/display/vlv_dsi.c
> > index 1059a26c1f58..b1bb78976309 100644
> > --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> > +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> > @@ -297,7 +297,7 @@ static int intel_dsi_compute_config(struct intel_en=
coder
> > *encoder,
> >  	else
> >  		pipe_config->pipe_bpp =3D 18;
> > =

> > -	if (IS_GEN9_LP(dev_priv)) {
> > +	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
> >  		/* Enable Frame time stamp based scanline reporting */
> >  		pipe_config->mode_flags |=3D
> > =

> > 	I915_MODE_FLAG_GET_SCANLINE_FROM_TIMESTAMP;
> > @@ -522,7 +522,7 @@ static void intel_dsi_device_ready(struct intel_enc=
oder
> > *encoder)
> > =

> >  	if (IS_GEMINILAKE(dev_priv))
> >  		glk_dsi_device_ready(encoder);
> > -	else if (IS_GEN9_LP(dev_priv))
> > +	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> >  		bxt_dsi_device_ready(encoder);
> >  	else
> >  		vlv_dsi_device_ready(encoder);
> > @@ -601,7 +601,7 @@ static void vlv_dsi_clear_device_ready(struct
> > intel_encoder *encoder)
> >  	drm_dbg_kms(&dev_priv->drm, "\n");
> >  	for_each_dsi_port(port, intel_dsi->ports) {
> >  		/* Common bit for both MIPI Port A & MIPI Port C on VLV/CHV
> > */
> > -		i915_reg_t port_ctrl =3D IS_GEN9_LP(dev_priv) ?
> > +		i915_reg_t port_ctrl =3D IS_GEMINILAKE(dev_priv) ||
> > IS_BROXTON(dev_priv) ?
> >  			BXT_MIPI_PORT_CTRL(port) :
> > MIPI_PORT_CTRL(PORT_A);
> >  		u32 val;
> > =

> > @@ -621,7 +621,7 @@ static void vlv_dsi_clear_device_ready(struct
> > intel_encoder *encoder)
> >  		 * On VLV/CHV, wait till Clock lanes are in LP-00 state for MIPI
> >  		 * Port A only. MIPI Port C has no similar bit for checking.
> >  		 */
> > -		if ((IS_GEN9_LP(dev_priv) || port =3D=3D PORT_A) &&
> > +		if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv) || port
> > =3D=3D PORT_A) &&
> >  		    intel_de_wait_for_clear(dev_priv, port_ctrl,
> >  					    AFE_LATCHOUT, 30))
> >  			drm_err(&dev_priv->drm, "DSI LP not going Low\n");
> > @@ -646,7 +646,7 @@ static void intel_dsi_port_enable(struct intel_enco=
der
> > *encoder,
> > =

> >  	if (intel_dsi->dual_link =3D=3D DSI_DUAL_LINK_FRONT_BACK) {
> >  		u32 temp;
> > -		if (IS_GEN9_LP(dev_priv)) {
> > +		if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
> >  			for_each_dsi_port(port, intel_dsi->ports) {
> >  				temp =3D intel_de_read(dev_priv,
> >  						     MIPI_CTRL(port));
> > @@ -666,7 +666,7 @@ static void intel_dsi_port_enable(struct intel_enco=
der
> > *encoder,
> >  	}
> > =

> >  	for_each_dsi_port(port, intel_dsi->ports) {
> > -		i915_reg_t port_ctrl =3D IS_GEN9_LP(dev_priv) ?
> > +		i915_reg_t port_ctrl =3D IS_GEMINILAKE(dev_priv) ||
> > IS_BROXTON(dev_priv) ?
> >  			BXT_MIPI_PORT_CTRL(port) : MIPI_PORT_CTRL(port);
> >  		u32 temp;
> > =

> > @@ -703,7 +703,7 @@ static void intel_dsi_port_disable(struct intel_enc=
oder
> > *encoder)
> >  	enum port port;
> > =

> >  	for_each_dsi_port(port, intel_dsi->ports) {
> > -		i915_reg_t port_ctrl =3D IS_GEN9_LP(dev_priv) ?
> > +		i915_reg_t port_ctrl =3D IS_GEMINILAKE(dev_priv) ||
> > IS_BROXTON(dev_priv) ?
> >  			BXT_MIPI_PORT_CTRL(port) : MIPI_PORT_CTRL(port);
> >  		u32 temp;
> > =

> > @@ -781,7 +781,7 @@ static void intel_dsi_pre_enable(struct
> > intel_atomic_state *state,
> >  	 * The BIOS may leave the PLL in a wonky state where it doesn't
> >  	 * lock. It needs to be fully powered down to fix it.
> >  	 */
> > -	if (IS_GEN9_LP(dev_priv)) {
> > +	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
> >  		bxt_dsi_pll_disable(encoder);
> >  		bxt_dsi_pll_enable(encoder, pipe_config);
> >  	} else {
> > @@ -932,7 +932,7 @@ static void intel_dsi_post_disable(struct
> > intel_atomic_state *state,
> > =

> >  	drm_dbg_kms(&dev_priv->drm, "\n");
> > =

> > -	if (IS_GEN9_LP(dev_priv)) {
> > +	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
> >  		intel_crtc_vblank_off(old_crtc_state);
> > =

> >  		skl_scaler_disable(old_crtc_state);
> > @@ -971,7 +971,7 @@ static void intel_dsi_post_disable(struct
> > intel_atomic_state *state,
> >  			       val & ~MIPIO_RST_CTRL);
> >  	}
> > =

> > -	if (IS_GEN9_LP(dev_priv)) {
> > +	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
> >  		bxt_dsi_pll_disable(encoder);
> >  	} else {
> >  		u32 val;
> > @@ -1024,12 +1024,13 @@ static bool intel_dsi_get_hw_state(struct
> > intel_encoder *encoder,
> >  	 * configuration, otherwise accessing DSI registers will hang the
> >  	 * machine. See BSpec North Display Engine registers/MIPI[BXT].
> >  	 */
> > -	if (IS_GEN9_LP(dev_priv) && !bxt_dsi_pll_is_enabled(dev_priv))
> > +	if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) &&
> > +	    !bxt_dsi_pll_is_enabled(dev_priv))
> >  		goto out_put_power;
> > =

> >  	/* XXX: this only works for one DSI output */
> >  	for_each_dsi_port(port, intel_dsi->ports) {
> > -		i915_reg_t ctrl_reg =3D IS_GEN9_LP(dev_priv) ?
> > +		i915_reg_t ctrl_reg =3D IS_GEMINILAKE(dev_priv) ||
> > IS_BROXTON(dev_priv) ?
> >  			BXT_MIPI_PORT_CTRL(port) : MIPI_PORT_CTRL(port);
> >  		bool enabled =3D intel_de_read(dev_priv, ctrl_reg) & DPI_ENABLE;
> > =

> > @@ -1055,7 +1056,7 @@ static bool intel_dsi_get_hw_state(struct
> > intel_encoder *encoder,
> >  		if (!(intel_de_read(dev_priv, MIPI_DEVICE_READY(port)) &
> > DEVICE_READY))
> >  			continue;
> > =

> > -		if (IS_GEN9_LP(dev_priv)) {
> > +		if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
> >  			u32 tmp =3D intel_de_read(dev_priv, MIPI_CTRL(port));
> >  			tmp &=3D BXT_PIPE_SELECT_MASK;
> >  			tmp >>=3D BXT_PIPE_SELECT_SHIFT;
> > @@ -1251,7 +1252,7 @@ static void intel_dsi_get_config(struct intel_enc=
oder
> > *encoder,
> > =

> >  	pipe_config->output_types |=3D BIT(INTEL_OUTPUT_DSI);
> > =

> > -	if (IS_GEN9_LP(dev_priv)) {
> > +	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
> >  		bxt_dsi_get_pipe_config(encoder, pipe_config);
> >  		pclk =3D bxt_dsi_get_pclk(encoder, pipe_config);
> >  	} else {
> > @@ -1317,7 +1318,7 @@ static void set_dsi_timings(struct drm_encoder
> > *encoder,
> >  	hbp =3D txbyteclkhs(hbp, bpp, lane_count, intel_dsi->burst_mode_ratio=
);
> > =

> >  	for_each_dsi_port(port, intel_dsi->ports) {
> > -		if (IS_GEN9_LP(dev_priv)) {
> > +		if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
> >  			/*
> >  			 * Program hdisplay and vdisplay on MIPI transcoder.
> >  			 * This is different from calculated hactive and
> > @@ -1407,7 +1408,7 @@ static void intel_dsi_prepare(struct intel_encoder
> > *intel_encoder,
> >  			tmp &=3D ~READ_REQUEST_PRIORITY_MASK;
> >  			intel_de_write(dev_priv, MIPI_CTRL(port),
> >  				       tmp | READ_REQUEST_PRIORITY_HIGH);
> > -		} else if (IS_GEN9_LP(dev_priv)) {
> > +		} else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
> >  			enum pipe pipe =3D intel_crtc->pipe;
> > =

> >  			tmp =3D intel_de_read(dev_priv, MIPI_CTRL(port));
> > @@ -1445,7 +1446,7 @@ static void intel_dsi_prepare(struct intel_encoder
> > *intel_encoder,
> >  	if (intel_dsi->clock_stop)
> >  		tmp |=3D CLOCKSTOP;
> > =

> > -	if (IS_GEN9_LP(dev_priv)) {
> > +	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
> >  		tmp |=3D BXT_DPHY_DEFEATURE_EN;
> >  		if (!is_cmd_mode(intel_dsi))
> >  			tmp |=3D BXT_DEFEATURE_DPI_FIFO_CTR;
> > @@ -1492,7 +1493,8 @@ static void intel_dsi_prepare(struct intel_encoder
> > *intel_encoder,
> >  		intel_de_write(dev_priv, MIPI_INIT_COUNT(port),
> >  			       txclkesc(intel_dsi->escape_clk_div, 100));
> > =

> > -		if (IS_GEN9_LP(dev_priv) && (!intel_dsi->dual_link)) {
> > +		if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) &&
> > +		    (!intel_dsi->dual_link)) {
> >  			/*
> >  			 * BXT spec says write MIPI_INIT_COUNT for
> >  			 * both the ports, even if only one is
> > @@ -1570,7 +1572,7 @@ static void intel_dsi_unprepare(struct intel_enco=
der
> > *encoder)
> >  		/* Panel commands can be sent when clock is in LP11 */
> >  		intel_de_write(dev_priv, MIPI_DEVICE_READY(port), 0x0);
> > =

> > -		if (IS_GEN9_LP(dev_priv))
> > +		if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> >  			bxt_dsi_reset_clocks(encoder, port);
> >  		else
> >  			vlv_dsi_reset_clocks(encoder, port);
> > @@ -1828,7 +1830,7 @@ void vlv_dsi_init(struct drm_i915_private *dev_pr=
iv)
> >  	if (!intel_bios_is_dsi_present(dev_priv, &port))
> >  		return;
> > =

> > -	if (IS_GEN9_LP(dev_priv))
> > +	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> >  		dev_priv->mipi_mmio_base =3D BXT_MIPI_BASE;
> >  	else
> >  		dev_priv->mipi_mmio_base =3D VLV_MIPI_BASE;
> > @@ -1854,7 +1856,7 @@ void vlv_dsi_init(struct drm_i915_private *dev_pr=
iv)
> > =

> >  	intel_encoder->compute_config =3D intel_dsi_compute_config;
> >  	intel_encoder->pre_enable =3D intel_dsi_pre_enable;
> > -	if (IS_GEN9_LP(dev_priv))
> > +	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> >  		intel_encoder->enable =3D bxt_dsi_enable;
> >  	intel_encoder->disable =3D intel_dsi_disable;
> >  	intel_encoder->post_disable =3D intel_dsi_post_disable;
> > @@ -1874,7 +1876,7 @@ void vlv_dsi_init(struct drm_i915_private *dev_pr=
iv)
> >  	 * On BYT/CHV, pipe A maps to MIPI DSI port A, pipe B maps to MIPI DSI
> >  	 * port C. BXT isn't limited like this.
> >  	 */
> > -	if (IS_GEN9_LP(dev_priv))
> > +	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> >  		intel_encoder->pipe_mask =3D ~0;
> >  	else if (port =3D=3D PORT_A)
> >  		intel_encoder->pipe_mask =3D BIT(PIPE_A);
> > diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i91=
5_irq.c
> > index 7eefbdec25a2..9aff790817c0 100644
> > --- a/drivers/gpu/drm/i915/i915_irq.c
> > +++ b/drivers/gpu/drm/i915/i915_irq.c
> > @@ -194,7 +194,7 @@ static void intel_hpd_init_pins(struct drm_i915_pri=
vate
> > *dev_priv)
> > =

> >  	if (DISPLAY_VER(dev_priv) >=3D 11)
> >  		hpd->hpd =3D hpd_gen11;
> > -	else if (IS_GEN9_LP(dev_priv))
> > +	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> >  		hpd->hpd =3D hpd_bxt;
> >  	else if (DISPLAY_VER(dev_priv) >=3D 8)
> >  		hpd->hpd =3D hpd_bdw;
> > @@ -2458,7 +2458,7 @@ gen8_de_irq_handler(struct drm_i915_private
> > *dev_priv, u32 master_ctl)
> >  				found =3D true;
> >  			}
> > =

> > -			if (IS_GEN9_LP(dev_priv)) {
> > +			if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> > {
> >  				u32 hotplug_trigger =3D iir &
> > BXT_DE_PORT_HOTPLUG_MASK;
> > =

> >  				if (hotplug_trigger) {
> > @@ -2474,7 +2474,8 @@ gen8_de_irq_handler(struct drm_i915_private
> > *dev_priv, u32 master_ctl)
> >  				}
> >  			}
> > =

> > -			if (IS_GEN9_LP(dev_priv) && (iir &
> > BXT_DE_PORT_GMBUS)) {
> > +			if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> > &&
> > +			    (iir & BXT_DE_PORT_GMBUS)) {
> >  				gmbus_irq_handler(dev_priv);
> >  				found =3D true;
> >  			}
> > @@ -3717,7 +3718,7 @@ static void gen8_de_irq_postinstall(struct
> > drm_i915_private *dev_priv)
> >  	if (DISPLAY_VER(dev_priv) <=3D 10)
> >  		de_misc_masked |=3D GEN8_DE_MISC_GSE;
> > =

> > -	if (IS_GEN9_LP(dev_priv))
> > +	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> >  		de_port_masked |=3D BXT_DE_PORT_GMBUS;
> > =

> >  	if (DISPLAY_VER(dev_priv) >=3D 11) {
> > @@ -3732,7 +3733,7 @@ static void gen8_de_irq_postinstall(struct
> > drm_i915_private *dev_priv)
> >  		gen8_de_pipe_flip_done_mask(dev_priv);
> > =

> >  	de_port_enables =3D de_port_masked;
> > -	if (IS_GEN9_LP(dev_priv))
> > +	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> >  		de_port_enables |=3D BXT_DE_PORT_HOTPLUG_MASK;
> >  	else if (IS_BROADWELL(dev_priv))
> >  		de_port_enables |=3D BDW_DE_PORT_HOTPLUG_MASK;
> > @@ -4317,7 +4318,7 @@ void intel_irq_init(struct drm_i915_private *dev_=
priv)
> >  			dev_priv->display.hpd_irq_setup =3D dg1_hpd_irq_setup;
> >  		else if (DISPLAY_VER(dev_priv) >=3D 11)
> >  			dev_priv->display.hpd_irq_setup =3D
> > gen11_hpd_irq_setup;
> > -		else if (IS_GEN9_LP(dev_priv))
> > +		else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> >  			dev_priv->display.hpd_irq_setup =3D bxt_hpd_irq_setup;
> >  		else if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP)
> >  			dev_priv->display.hpd_irq_setup =3D icp_hpd_irq_setup;
> > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/int=
el_pm.c
> > index 066abaa73a06..32f301ca3ab0 100644
> > --- a/drivers/gpu/drm/i915/intel_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > @@ -3654,13 +3654,13 @@ u8 intel_enabled_dbuf_slices_mask(struct
> > drm_i915_private *dev_priv)
> >   */
> >  static bool skl_needs_memory_bw_wa(struct drm_i915_private *dev_priv)
> >  {
> > -	return IS_GEN9_BC(dev_priv) || IS_BROXTON(dev_priv);
> > +	return IS_DISPLAY_VER(dev_priv, 9);
> >  }
> > =

> >  static bool
> >  intel_has_sagv(struct drm_i915_private *dev_priv)
> >  {
> > -	return (IS_GEN9_BC(dev_priv) || DISPLAY_VER(dev_priv) >=3D 11 ||
> > IS_CANNONLAKE(dev_priv)) &&
> > +	return DISPLAY_VER(dev_priv) >=3D 9 && !IS_LP(dev_priv) &&
> >  		dev_priv->sagv_status !=3D I915_SAGV_NOT_CONTROLLED;
> >  }
> > =

> > @@ -5258,7 +5258,7 @@ static void skl_compute_plane_wm(const struct
> > intel_crtc_state *crtc_state,
> >  	lines =3D div_round_up_fixed16(selected_result,
> >  				     wp->plane_blocks_per_line);
> > =

> > -	if (IS_GEN9_BC(dev_priv) || IS_BROXTON(dev_priv)) {
> > +	if (IS_DISPLAY_VER(dev_priv, 9)) {
> >  		/* Display WA #1125: skl,bxt,kbl */
> >  		if (level =3D=3D 0 && wp->rc_surface)
> >  			blocks +=3D fixed16_to_u32_round_up(wp-
> > >y_tile_minimum);
> > @@ -5375,7 +5375,7 @@ static void skl_compute_transition_wm(struct
> > drm_i915_private *dev_priv,
> >  	 * WaDisableTWM:skl,kbl,cfl,bxt
> >  	 * Transition WM are not recommended by HW team for GEN9
> >  	 */
> > -	if (IS_GEN9_BC(dev_priv) || IS_BROXTON(dev_priv))
> > +	if (IS_DISPLAY_VER(dev_priv, 9))
> >  		return;
> > =

> >  	if (DISPLAY_VER(dev_priv) >=3D 11)
> > --
> > 2.25.4
> > =

> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx

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
