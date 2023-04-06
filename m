Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CDCDE6DA4DF
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Apr 2023 23:47:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A76C10E26F;
	Thu,  6 Apr 2023 21:47:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DA3A10E26F
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Apr 2023 21:47:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680817668; x=1712353668;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=EwhBcpKShIpeWxx1wo0yHeakElDKEKPXhWMyta+FAFo=;
 b=Q5ah+ak8tbLQ30Y2IxOagsUp8yH8oQYY/9h4+u+lCn2NBTcVfRWSW64I
 InKl75FIq5NTyEgzgLX5uBkmQYmDj/Zbxu9ueUcmzboIzNgj6Mp5GqvIo
 ge3eEERqp05xTWlxenASiUCyVI1N2d7scTKojKD2n2gbGrsCgOZIMZ2TE
 PaiGkXfpbmiyVbiLo+H2gfuDqsYIXlQOFasYU3hYYLzZnaY68x9c5goCw
 54Gk58bok4liH1ea2sZFMUuxSK3STtBXhRWmnykv3TJXAjhOEMmuWI2bO
 lQcQfm8K7hMc09ewINPh/8B3kpz3OujvaI0hP2qZ0gdzEWg3LRK9MBC8q Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10672"; a="405665948"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="405665948"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 14:47:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10672"; a="687298982"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="687298982"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 14:47:45 -0700
Date: Fri, 7 Apr 2023 00:47:42 +0300
From: Imre Deak <imre.deak@intel.com>
To: Mika Kahola <mika.kahola@intel.com>
Message-ID: <ZC89/qZk+9slIbT3@ideak-desk.fi.intel.com>
References: <20230406130221.2998457-1-mika.kahola@intel.com>
 <20230406130221.2998457-6-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230406130221.2998457-6-mika.kahola@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 5/8] drm/i915/mtl: Add vswing programming
 for C10 phys
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 06, 2023 at 04:02:18PM +0300, Mika Kahola wrote:
> C10 phys uses direct mapping internally for voltage and pre-emphasis levels.
> Program the levels directly to the fields in the VDR Registers.
> 
> Bspec: 65449
> 
> v2: From table "C10: Tx EQ settings for DP 1.4x" it shows level 1
>     and preemphasis 1 instead of two times of level 1 preemphasis 0.
>     Fix this in the driver code as well.
> v3: VSwing update (Clint)
> 
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Clint Taylor <Clinton.A.Taylor@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 61 +++++++++++++++++--
>  drivers/gpu/drm/i915/display/intel_cx0_phy.h  |  3 +
>  .../gpu/drm/i915/display/intel_cx0_phy_regs.h | 14 +++++
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  4 +-
>  .../drm/i915/display/intel_ddi_buf_trans.c    | 31 +++++++++-
>  .../drm/i915/display/intel_ddi_buf_trans.h    |  6 ++
>  .../i915/display/intel_display_power_map.c    |  1 +
>  7 files changed, 114 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index f3e13edd27ba..81910d55bb63 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -6,6 +6,8 @@
>  #include "i915_reg.h"
>  #include "intel_cx0_phy.h"
>  #include "intel_cx0_phy_regs.h"
> +#include "intel_ddi.h"
> +#include "intel_ddi_buf_trans.h"
>  #include "intel_de.h"
>  #include "intel_display_types.h"
>  #include "intel_dp.h"
> @@ -292,6 +294,57 @@ static void intel_cx0_rmw(struct drm_i915_private *i915, enum port port,
>  		__intel_cx0_rmw(i915, port, lane, addr, clear, set, committed);
>  }
>  
> +void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
> +				     const struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	const struct intel_ddi_buf_trans *trans;
> +	intel_wakeref_t wakeref;
> +	int n_entries, ln;
> +
> +	wakeref = intel_cx0_phy_transaction_begin(encoder);
> +
> +	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
> +	if (drm_WARN_ON_ONCE(&i915->drm, !trans))

Needs intel_cx0_phy_transaction_end().

> +		return;
> +
> +	intel_cx0_rmw(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CONTROL(1),
> +		      0, C10_VDR_CTRL_MSGBUS_ACCESS,
> +		      MB_WRITE_COMMITTED);

Programming for TX vboost/termination control is still missing here (See
bspec 74103).

> +
> +	for (ln = 0; ln < 4; ln++) {

Should only program crtc_state->lane_count number of lanes.

> +		int level = intel_ddi_level(encoder, crtc_state, ln);
> +		int lane, tx;
> +
> +		lane = ln / 2;
> +		tx = ln % 2 + 1;

I'd make tx 0-based, adjust PHY_CX0_VDR_OVRD_CONTROL accordingly. The
above need to be adjusted based on lane reversal, could be done later if
you added a TODO: comment.

> +
> +		intel_cx0_rmw(i915, encoder->port, lane + 1, PHY_CX0_VDR_OVRD_CONTROL(lane, tx, 0),

I'd use BIT(lane) instead lane + 1.

> +				C10_PHY_OVRD_LEVEL_MASK,
> +				C10_PHY_OVRD_LEVEL(trans->entries[level].snps.pre_cursor),
> +				MB_WRITE_COMMITTED);
> +		intel_cx0_rmw(i915, encoder->port, lane + 1, PHY_CX0_VDR_OVRD_CONTROL(lane, tx, 1),
> +				C10_PHY_OVRD_LEVEL_MASK,
> +				C10_PHY_OVRD_LEVEL(trans->entries[level].snps.vswing),
> +				MB_WRITE_COMMITTED);
> +		intel_cx0_rmw(i915, encoder->port, lane + 1, PHY_CX0_VDR_OVRD_CONTROL(lane, tx, 2),
> +				C10_PHY_OVRD_LEVEL_MASK,
> +				C10_PHY_OVRD_LEVEL(trans->entries[level].snps.post_cursor),
> +				MB_WRITE_COMMITTED);
> +	}
> +
> +	/* Write Override enables in 0xD71 */
> +	intel_cx0_rmw(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_OVRD,
> +			0, PHY_C10_VDR_OVRD_TX1 | PHY_C10_VDR_OVRD_TX2,
> +			MB_WRITE_COMMITTED);
> +
> +	intel_cx0_rmw(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CONTROL(1),
> +		      0, C10_VDR_CTRL_UPDATE_CFG,
> +		      MB_WRITE_COMMITTED);
> +
> +	intel_cx0_phy_transaction_end(encoder, wakeref);
> +}
> +
>  /*
>   * Basic DP link rates with 38.4 MHz reference clock.
>   * Note: The tables below are with SSC. In non-ssc
> @@ -765,10 +818,9 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
>  	val |= crtc_state->cx0pll_state.ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
>  
>  	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
> -		     XELPDP_LANE1_PHY_CLOCK_SELECT |
> -		     XELPDP_FORWARD_CLOCK_UNGATE |
> +		     XELPDP_LANE1_PHY_CLOCK_SELECT | XELPDP_FORWARD_CLOCK_UNGATE |

Looks to be a stray w/s change.

>  		     XELPDP_DDI_CLOCK_SELECT_MASK |
> -		     XELPDP_SSC_ENABLE_PLLB, val);
> +		     XELPDP_SSC_ENABLE_PLLA | XELPDP_SSC_ENABLE_PLLB, val);

This should be added only in the C20 patchset if needed, C10 uses only
PLLB.

>  }
>  
>  static u32 intel_cx0_get_powerdown_update(u8 lane_mask)
> @@ -1143,7 +1195,8 @@ static void intel_c10pll_disable(struct intel_encoder *encoder)
>  
>  	/* 7. Program PORT_CLOCK_CTL register to disable and gate clocks. */
>  	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
> -		     XELPDP_DDI_CLOCK_SELECT_MASK |
> +		     XELPDP_DDI_CLOCK_SELECT_MASK, 0);
> +	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
>  		     XELPDP_FORWARD_CLOCK_UNGATE, 0);
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index 30b1b11b2176..cc4f174947ad 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -40,5 +40,8 @@ int intel_c10mpllb_calc_port_clock(struct intel_encoder *encoder,
>  				   const struct intel_c10mpllb_state *pll_state);
>  void intel_c10mpllb_state_verify(struct intel_atomic_state *state,
>  				 struct intel_crtc_state *new_crtc_state);
> +int intel_c10_phy_check_hdmi_link_rate(int clock);

This should go to the C10 HDMI patch, the function isn't defined yet.

> +void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
> +				     const struct intel_crtc_state *crtc_state);
>  
>  #endif /* __INTEL_CX0_PHY_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> index 16061a6e52f6..a72f79ea5e6c 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> @@ -158,6 +158,14 @@
>  #define CX0_P4PG_STATE_DISABLE          0xC
>  #define CX0_P2_STATE_RESET              0x2
>  
> +#define PHY_C10_VDR_OVRD		0xD71
> +#define   PHY_C10_VDR_OVRD_TX1		REG_BIT8(0)
> +#define   PHY_C10_VDR_OVRD_TX2		REG_BIT8(2)
> +#define PHY_C10_VDR_PRE_OVRD_TX1	0xD80
> +#define C10_PHY_OVRD_LEVEL_MASK		REG_GENMASK8(5, 0)
> +#define C10_PHY_OVRD_LEVEL(val)		REG_FIELD_PREP8(C10_PHY_OVRD_LEVEL_MASK, val)

The above 2 flags need indent.

> +#define PHY_CX0_VDR_OVRD_CONTROL(lane, tx, control) (PHY_C10_VDR_PRE_OVRD_TX1 + ((lane) ^ ((tx) - 1)) * 0x10 + (control))

Could be better formatted.

> +
>  /* PHY_C10_VDR_PLL0 */
>  #define PLL_C10_MPLL_SSC_EN             REG_BIT8(0)

The above is unused.

>  
> @@ -165,4 +173,10 @@
>  #define PHY_CX0_TX_CONTROL(tx, control)	(0x400 + ((tx) - 1) * 0x200 + (control))
>  #define   CONTROL2_DISABLE_SINGLE_TX	REG_BIT(6)
>  
> +/* C10 Phy VSWING Masks */
> +#define C10_PHY_VSWING_LEVEL_MASK	REG_GENMASK8(2, 0)
> +#define C10_PHY_VSWING_LEVEL(val)	REG_FIELD_PREP8(C10_PHY_VSWING_LEVEL_MASK, val)
> +#define C10_PHY_VSWING_PREEMPH_MASK	REG_GENMASK8(1, 0)
> +#define C10_PHY_VSWING_PREEMPH(val)	REG_FIELD_PREP8(C10_PHY_VSWING_PREEMPH_MASK, val)

The above 4 are unused.

> +
>  #endif /* __INTEL_CX0_REG_DEFS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 089854f70cac..e97d7627d9d1 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4480,7 +4480,9 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
>  		encoder->get_config = hsw_ddi_get_config;
>  	}
>  
> -	if (IS_DG2(dev_priv)) {
> +	if (DISPLAY_VER(dev_priv) >= 14) {
> +		encoder->set_signal_levels = intel_cx0_phy_set_signal_levels;
> +	} else if (IS_DG2(dev_priv)) {
>  		encoder->set_signal_levels = intel_snps_phy_set_signal_levels;
>  	} else if (DISPLAY_VER(dev_priv) >= 12) {
>  		if (intel_phy_is_combo(dev_priv, phy))
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> index 006a2e979000..cd4becbae098 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> @@ -1035,6 +1035,25 @@ static const struct intel_ddi_buf_trans dg2_snps_trans_uhbr = {
>  	.num_entries = ARRAY_SIZE(_dg2_snps_trans_uhbr),
>  };
>  
> +static const union intel_ddi_buf_trans_entry _mtl_c10_trans_dp14[] = {
> +	{ .snps = { 26, 0, 0  } },      /* preset 0 */
> +	{ .snps = { 33, 0, 6  } },      /* preset 1 */
> +	{ .snps = { 38, 0, 11 } },      /* preset 2 */
> +	{ .snps = { 43, 0, 19 } },      /* preset 3 */
> +	{ .snps = { 39, 0, 0  } },      /* preset 4 */
> +	{ .snps = { 45, 0, 7  } },      /* preset 5 */
> +	{ .snps = { 46, 0, 13 } },      /* preset 6 */
> +	{ .snps = { 46, 0, 0  } },      /* preset 7 */
> +	{ .snps = { 55, 0, 7  } },      /* preset 8 */
> +	{ .snps = { 62, 0, 0  } },      /* preset 9 */
> +};
> +
> +static const struct intel_ddi_buf_trans mtl_cx0c10_trans = {
> +	.entries = _mtl_c10_trans_dp14,
> +	.num_entries = ARRAY_SIZE(_mtl_c10_trans_dp14),
> +	.hdmi_default_entry = ARRAY_SIZE(_mtl_c10_trans_dp14) - 1,
> +};
> +
>  bool is_hobl_buf_trans(const struct intel_ddi_buf_trans *table)
>  {
>  	return table == &tgl_combo_phy_trans_edp_hbr2_hobl;
> @@ -1606,12 +1625,22 @@ dg2_get_snps_buf_trans(struct intel_encoder *encoder,
>  		return intel_get_buf_trans(&dg2_snps_trans, n_entries);
>  }
>  
> +static const struct intel_ddi_buf_trans *
> +mtl_get_cx0_buf_trans(struct intel_encoder *encoder,
> +		      const struct intel_crtc_state *crtc_state,
> +		      int *n_entries)
> +{
> +	return intel_get_buf_trans(&mtl_cx0c10_trans, n_entries);
> +}
> +
>  void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
>  {
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  	enum phy phy = intel_port_to_phy(i915, encoder->port);
>  
> -	if (IS_DG2(i915)) {
> +	if (DISPLAY_VER(i915) >= 14) {
> +		encoder->get_buf_trans = mtl_get_cx0_buf_trans;
> +	} else if (IS_DG2(i915)) {
>  		encoder->get_buf_trans = dg2_get_snps_buf_trans;
>  	} else if (IS_ALDERLAKE_P(i915)) {
>  		if (intel_phy_is_combo(i915, phy))
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
> index 2133984a572b..e4a857b9829d 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
> @@ -51,6 +51,11 @@ struct dg2_snps_phy_buf_trans {
>  	u8 post_cursor;
>  };
>  
> +struct direct_phy_buf_trans {
> +	u8 level;
> +	u8 preemph;
> +};
> +
>  union intel_ddi_buf_trans_entry {
>  	struct hsw_ddi_buf_trans hsw;
>  	struct bxt_ddi_buf_trans bxt;
> @@ -58,6 +63,7 @@ union intel_ddi_buf_trans_entry {
>  	struct icl_mg_phy_ddi_buf_trans mg;
>  	struct tgl_dkl_phy_ddi_buf_trans dkl;
>  	struct dg2_snps_phy_buf_trans snps;
> +	struct direct_phy_buf_trans direct;

I don't see this entry or the struct being used, maybe it was for an
older vswing programming scheme?

>  };
>  
>  struct intel_ddi_buf_trans {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> index 6645eb1911d8..5ec2b9a109ae 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> @@ -1427,6 +1427,7 @@ I915_DECL_PW_DOMAINS(xelpdp_pwdoms_dc_off,
>  	XELPDP_PW_2_POWER_DOMAINS,
>  	POWER_DOMAIN_AUDIO_MMIO,
>  	POWER_DOMAIN_MODESET,
> +	POWER_DOMAIN_DC_OFF,

This is added already to the domain list.

With the tx_vboost/term programming added in
intel_cx0_phy_set_signal_levels(), the patch looks ok:

Reviewed-by: Imre Deak <imre.deak@intel.com>

>  	POWER_DOMAIN_AUX_A,
>  	POWER_DOMAIN_AUX_B,
>  	POWER_DOMAIN_DC_OFF,
> -- 
> 2.34.1
> 
