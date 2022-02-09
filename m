Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 014A04AF45B
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 15:46:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D4FB10E288;
	Wed,  9 Feb 2022 14:46:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D14A10E288
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Feb 2022 14:46:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644418004; x=1675954004;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=h+CkBbwJE56ZzhTNSMhejoFHg69rr+YQby+69ub/MOs=;
 b=NwNWmxinH+vjo9umny+VKmxscsTwQU55LXu3ENe8fqTFp3athDtw/7+2
 9x/O+JcW3tvOE7Mj+gk8tr/oiNdvS7suC/+gP1zBcV+abAZ806TFom93n
 G1VadFx3TMQ15xm/y6xCaj3OhoSEdMTn0D+RlniufuVcx9Sq/KRwKfGLy
 /E/t7MhY3fKu8GNqYzBnqyGSeP8jGCWl9Xcin3AavvU9qYRmqVNmSP4uk
 EsHsvetiDP+x6dvBN+rpSyo02CH5hejpxTe73S7/GPxStJkitXYzRbC5v
 9J6S9Kv8ybQdhIw4NSuTMTgcOSH1t3kM512JIWQ0XtSYPOiKV+uPUQqw8 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="273754869"
X-IronPort-AV: E=Sophos;i="5.88,356,1635231600"; d="scan'208";a="273754869"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 06:46:43 -0800
X-IronPort-AV: E=Sophos;i="5.88,356,1635231600"; d="scan'208";a="541123790"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 06:46:42 -0800
Date: Wed, 9 Feb 2022 16:46:38 +0200
From: Imre Deak <imre.deak@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20220209144638.GA424945@ideak-desk.fi.intel.com>
References: <20220208213548.244829-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220208213548.244829-1-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/tgl+: Implement new PLL
 programming step
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 08, 2022 at 01:35:48PM -0800, Jos� Roberto de Souza wrote:
> A new programming step was added to combo and TC PLL sequences.
> If override_AFC_startup is set in VBT, driver should overwrite
> AFC_startup value to 0x7 in PLL's div0 register.
> 
> The current understating is that only TGL needs this and all display
> 12 and newer platforms will have a older VBT or a newer VBT with
> override_AFC_startup set to 0 but in any case there is a
> drm_warn_on_once() to let us know if this is not true.
> 
> BSpec: 49204
> BSpec: 20122 (pending aproval, check working copies)
> BSpec: 49968
> BSpec: 71360
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Jos� Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c     |  4 ++
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 38 +++++++++++++------
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  6 ++-
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h |  8 ++++
>  drivers/gpu/drm/i915/i915_drv.h               |  1 +
>  drivers/gpu/drm/i915/i915_reg.h               | 13 +++++++
>  6 files changed, 57 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index aec0efd5350ef..a4134b63f2d49 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -596,6 +596,10 @@ parse_general_features(struct drm_i915_private *i915,
>  	} else {
>  		i915->vbt.orientation = DRM_MODE_PANEL_ORIENTATION_UNKNOWN;
>  	}
> +
> +	if (bdb->version >= 249)
> +		i915->vbt.override_afc_startup_bit = general->override_afc_startup_bit;
> +
>  	drm_dbg_kms(&i915->drm,
>  		    "BDB_GENERAL_FEATURES int_tv_support %d int_crt_support %d lvds_use_ssc %d lvds_ssc_freq %d display_clock_mode %d fdi_rx_polarity_inverted %d\n",
>  		    i915->vbt.int_tv_support,
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 6723c3de5a80c..a60917b926de9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -2748,6 +2748,9 @@ static void icl_calc_dpll_state(struct drm_i915_private *i915,
>  		pll_state->cfgcr1 |= TGL_DPLL_CFGCR1_CFSELOVRD_NORMAL_XTAL;
>  	else
>  		pll_state->cfgcr1 |= DPLL_CFGCR1_CENTRAL_FREQ_8400;
> +
> +	if (i915->vbt.override_afc_startup_bit)
> +		pll_state->div0 = TGL_DPLL0_DIV0_AFC_STARTUP(TGL_DPLL0_DIV0_AFC_STARTUP_OVERRIDE_VAL);
>  }
>  
>  static bool icl_mg_pll_find_divisors(int clock_khz, bool is_dp, bool use_ssc,
> @@ -2949,6 +2952,8 @@ static bool icl_calc_mg_pll_state(struct intel_crtc_state *crtc_state,
>  					 DKL_PLL_DIV0_PROP_COEFF(prop_coeff) |
>  					 DKL_PLL_DIV0_FBPREDIV(m1div) |
>  					 DKL_PLL_DIV0_FBDIV_INT(m2div_int);
> +		if (dev_priv->vbt.override_afc_startup_bit)
> +			pll_state->mg_pll_div0 |= DKL_PLL_DIV0_AFC_STARTUP(TGL_DPLL0_DIV0_AFC_STARTUP_OVERRIDE_VAL);
>  
>  		pll_state->mg_pll_div1 = DKL_PLL_DIV1_IREF_TRIM(iref_trim) |
>  					 DKL_PLL_DIV1_TDC_TARGET_CNT(tdc_targetcnt);
> @@ -3448,10 +3453,10 @@ static bool dkl_pll_get_hw_state(struct drm_i915_private *dev_priv,
>  		MG_CLKTOP2_CORECLKCTL1_A_DIVRATIO_MASK;
>  
>  	hw_state->mg_pll_div0 = intel_de_read(dev_priv, DKL_PLL_DIV0(tc_port));
> -	hw_state->mg_pll_div0 &= (DKL_PLL_DIV0_INTEG_COEFF_MASK |
> -				  DKL_PLL_DIV0_PROP_COEFF_MASK |
> -				  DKL_PLL_DIV0_FBPREDIV_MASK |
> -				  DKL_PLL_DIV0_FBDIV_INT_MASK);
> +	val = DKL_PLL_DIV0_MASK;
> +	if (dev_priv->vbt.override_afc_startup_bit)
> +		val |= DKL_PLL_DIV0_AFC_STARTUP_MASK;
> +	hw_state->mg_pll_div0 &= val;
>  
>  	hw_state->mg_pll_div1 = intel_de_read(dev_priv, DKL_PLL_DIV1(tc_port));
>  	hw_state->mg_pll_div1 &= (DKL_PLL_DIV1_IREF_TRIM_MASK |
> @@ -3513,6 +3518,10 @@ static bool icl_pll_get_hw_state(struct drm_i915_private *dev_priv,
>  						 TGL_DPLL_CFGCR0(id));
>  		hw_state->cfgcr1 = intel_de_read(dev_priv,
>  						 TGL_DPLL_CFGCR1(id));
> +		if (dev_priv->vbt.override_afc_startup_bit) {
> +			hw_state->div0 = intel_de_read(dev_priv, TGL_DPLL0_DIV0(id));
> +			hw_state->div0 &= TGL_DPLL0_DIV0_AFC_STARTUP_MASK;
> +		}
>  	} else {
>  		if (IS_JSL_EHL(dev_priv) && id == DPLL_ID_EHL_DPLL4) {
>  			hw_state->cfgcr0 = intel_de_read(dev_priv,
> @@ -3554,7 +3563,7 @@ static void icl_dpll_write(struct drm_i915_private *dev_priv,
>  {
>  	struct intel_dpll_hw_state *hw_state = &pll->state.hw_state;
>  	const enum intel_dpll_id id = pll->info->id;
> -	i915_reg_t cfgcr0_reg, cfgcr1_reg;
> +	i915_reg_t cfgcr0_reg, cfgcr1_reg, div0_reg = INVALID_MMIO_REG;
>  
>  	if (IS_ALDERLAKE_S(dev_priv)) {
>  		cfgcr0_reg = ADLS_DPLL_CFGCR0(id);
> @@ -3568,6 +3577,7 @@ static void icl_dpll_write(struct drm_i915_private *dev_priv,
>  	} else if (DISPLAY_VER(dev_priv) >= 12) {
>  		cfgcr0_reg = TGL_DPLL_CFGCR0(id);
>  		cfgcr1_reg = TGL_DPLL_CFGCR1(id);
> +		div0_reg = TGL_DPLL0_DIV0(id);
>  	} else {
>  		if (IS_JSL_EHL(dev_priv) && id == DPLL_ID_EHL_DPLL4) {
>  			cfgcr0_reg = ICL_DPLL_CFGCR0(4);
> @@ -3580,6 +3590,12 @@ static void icl_dpll_write(struct drm_i915_private *dev_priv,
>  
>  	intel_de_write(dev_priv, cfgcr0_reg, hw_state->cfgcr0);
>  	intel_de_write(dev_priv, cfgcr1_reg, hw_state->cfgcr1);
> +	drm_WARN_ON_ONCE(&dev_priv->drm, dev_priv->vbt.override_afc_startup_bit &&
> +			 !i915_mmio_reg_valid(div0_reg));
> +	if (dev_priv->vbt.override_afc_startup_bit &&
> +	    i915_mmio_reg_valid(div0_reg))

Could be simplified to if (override_bit && !warn(!reg_valid))

> +		intel_de_rmw(dev_priv, div0_reg, TGL_DPLL0_DIV0_AFC_STARTUP_MASK,
> +			     hw_state->div0);
>  	intel_de_posting_read(dev_priv, cfgcr1_reg);
>  }
>  
> @@ -3667,13 +3683,11 @@ static void dkl_pll_write(struct drm_i915_private *dev_priv,
>  	val |= hw_state->mg_clktop2_hsclkctl;
>  	intel_de_write(dev_priv, DKL_CLKTOP2_HSCLKCTL(tc_port), val);
>  
> -	val = intel_de_read(dev_priv, DKL_PLL_DIV0(tc_port));
> -	val &= ~(DKL_PLL_DIV0_INTEG_COEFF_MASK |
> -		 DKL_PLL_DIV0_PROP_COEFF_MASK |
> -		 DKL_PLL_DIV0_FBPREDIV_MASK |
> -		 DKL_PLL_DIV0_FBDIV_INT_MASK);
> -	val |= hw_state->mg_pll_div0;
> -	intel_de_write(dev_priv, DKL_PLL_DIV0(tc_port), val);
> +	val = DKL_PLL_DIV0_MASK;
> +	if (dev_priv->vbt.override_afc_startup_bit)
> +		val |= DKL_PLL_DIV0_AFC_STARTUP_MASK;
> +	intel_de_rmw(dev_priv, DKL_PLL_DIV0(tc_port), val,
> +		     hw_state->mg_pll_div0);
>  
>  	val = intel_de_read(dev_priv, DKL_PLL_DIV1(tc_port));
>  	val &= ~(DKL_PLL_DIV1_IREF_TRIM_MASK |
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> index 91fe181462b2e..4125d7ab54438 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> @@ -218,7 +218,11 @@ struct intel_dpll_hw_state {
>  	u32 mg_refclkin_ctl;
>  	u32 mg_clktop2_coreclkctl1;
>  	u32 mg_clktop2_hsclkctl;
> -	u32 mg_pll_div0;
> +	/* tgl+ */
> +	union {
> +		u32 div0;
> +		u32 mg_pll_div0;
> +	};

Imo, all the different overlapping pll states should be in some union;
for now I'd just add div0 for tgl (intel_pipe_config_compare() would
also need to be updated then).

>  	u32 mg_pll_div1;
>  	u32 mg_pll_lf;
>  	u32 mg_pll_frac_lock;
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> index a39d6cfea87aa..a813ebedcae81 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -162,6 +162,14 @@ struct bdb_general_features {
>  	u8 dp_ssc_freq:1;	/* SSC freq for PCH attached eDP */
>  	u8 dp_ssc_dongle_supported:1;
>  	u8 rsvd11:2; /* finish byte */
> +
> +	/* byte 6 */

Following the above comments this would be called "bits 6".

> +	u8 tc_hpd_retry_timeout:7; /* 242 */
> +	u8 rsvd12:1;
> +
> +	/* byte 7 */
> +	u8 override_afc_startup_bit:1;/* 249 */
> +	u8 rsvd13:7;
>  } __packed;
>  
>  /*
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 8c1706fd81f9e..c04312a8dd520 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -532,6 +532,7 @@ struct intel_vbt_data {
>  	int lvds_ssc_freq;
>  	unsigned int bios_lvds_val; /* initial [PCH_]LVDS reg val in VBIOS */
>  	enum drm_panel_orientation orientation;
> +	bool override_afc_startup_bit;
>  
>  	enum drrs_support_type drrs_type;
>  
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 87c92314ee269..d51bdc1105037 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -7986,6 +7986,13 @@ enum skl_power_gate {
>  #define RKL_DPLL_CFGCR0(pll)		_MMIO_PLL(pll, _TGL_DPLL0_CFGCR0, \
>  						  _TGL_DPLL1_CFGCR0)
>  
> +#define _TGL_DPLL0_DIV0					0x164B00
> +#define _TGL_DPLL1_DIV0					0x164C00
> +#define TGL_DPLL0_DIV0(pll)				_MMIO_PLL(pll, _TGL_DPLL0_DIV0, _TGL_DPLL1_DIV0)
> +#define   TGL_DPLL0_DIV0_AFC_STARTUP_MASK		REG_GENMASK(27, 25)
> +#define   TGL_DPLL0_DIV0_AFC_STARTUP(val)		REG_FIELD_PREP(TGL_DPLL0_DIV0_AFC_STARTUP_MASK, (val))
> +#define   TGL_DPLL0_DIV0_AFC_STARTUP_OVERRIDE_VAL	(0x7)

The parens are not needed and the flag could be named after the value
it encodes, so AFC_STARTUP_383.

Regardless of the above nits, the patch looks ok:
Reviewed-by: Imre Deak <imre.deak@intel.com>

> +
>  #define _TGL_DPLL0_CFGCR1		0x164288
>  #define _TGL_DPLL1_CFGCR1		0x164290
>  #define _TGL_TBTPLL_CFGCR1		0x1642A0
> @@ -8033,6 +8040,8 @@ enum skl_power_gate {
>  
>  /* DEKEL PHY MMIO Address = Phy base + (internal address & ~index_mask) */
>  #define _DKL_PLL_DIV0			0x200
> +#define   DKL_PLL_DIV0_AFC_STARTUP_MASK	REG_GENMASK(27, 25)
> +#define   DKL_PLL_DIV0_AFC_STARTUP(val)	REG_FIELD_PREP(DKL_PLL_DIV0_AFC_STARTUP_MASK, (val))
>  #define   DKL_PLL_DIV0_INTEG_COEFF(x)	((x) << 16)
>  #define   DKL_PLL_DIV0_INTEG_COEFF_MASK	(0x1F << 16)
>  #define   DKL_PLL_DIV0_PROP_COEFF(x)	((x) << 12)
> @@ -8042,6 +8051,10 @@ enum skl_power_gate {
>  #define   DKL_PLL_DIV0_FBPREDIV_MASK	(0xF << DKL_PLL_DIV0_FBPREDIV_SHIFT)
>  #define   DKL_PLL_DIV0_FBDIV_INT(x)	((x) << 0)
>  #define   DKL_PLL_DIV0_FBDIV_INT_MASK	(0xFF << 0)
> +#define   DKL_PLL_DIV0_MASK		(DKL_PLL_DIV0_INTEG_COEFF_MASK | \
> +					 DKL_PLL_DIV0_PROP_COEFF_MASK | \
> +					 DKL_PLL_DIV0_FBPREDIV_MASK | \
> +					 DKL_PLL_DIV0_FBDIV_INT_MASK)
>  #define DKL_PLL_DIV0(tc_port)		_MMIO(_PORT(tc_port, _DKL_PHY1_BASE, \
>  						    _DKL_PHY2_BASE) + \
>  						    _DKL_PLL_DIV0)
> -- 
> 2.35.1
> 
