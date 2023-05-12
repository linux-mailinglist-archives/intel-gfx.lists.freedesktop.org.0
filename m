Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2541F7009FB
	for <lists+intel-gfx@lfdr.de>; Fri, 12 May 2023 16:11:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 318AC10E6CA;
	Fri, 12 May 2023 14:10:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EB4A10E6CA
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 May 2023 14:10:54 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 71BC360EF2;
 Fri, 12 May 2023 14:10:53 +0000 (UTC)
Received: from rdvivi-mobl4 (unknown [192.55.55.57])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by smtp.kernel.org (Postfix) with ESMTPSA id 7AF55C4339B;
 Fri, 12 May 2023 14:10:50 +0000 (UTC)
Date: Fri, 12 May 2023 10:10:48 -0400
From: Rodrigo Vivi <rodrigo.vivi@kernel.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZF5I6NKPQMqMSPpA@rdvivi-mobl4>
References: <20230512110444.1448231-1-jani.nikula@intel.com>
 <20230512110444.1448231-4-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230512110444.1448231-4-jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/display: add i915 parameter to
 I915_STATE_WARN()
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

On Fri, May 12, 2023 at 02:04:44PM +0300, Jani Nikula wrote:
> Add i915 parameter to I915_STATE_WARN() and use device based logging.
> 
> Done using cocci + hand edited where there was no i915 local variable
> ready.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

with a bit of trust in coccinelle + compiler (for dev_priv vs i915 checks):

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/g4x_dp.c         |  4 +-
>  drivers/gpu/drm/i915/display/intel_crtc.c     |  4 +-
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 10 ++---
>  drivers/gpu/drm/i915/display/intel_display.c  |  9 +++--
>  drivers/gpu/drm/i915/display/intel_display.h  |  7 ++--
>  .../drm/i915/display/intel_display_power.c    | 37 ++++++++++++-------
>  drivers/gpu/drm/i915/display/intel_dpll.c     |  2 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 30 ++++++++-------
>  drivers/gpu/drm/i915/display/intel_fdi.c      |  9 +++--
>  .../drm/i915/display/intel_modeset_verify.c   | 35 ++++++++++--------
>  .../gpu/drm/i915/display/intel_pch_display.c  | 20 +++++-----
>  drivers/gpu/drm/i915/display/intel_pps.c      |  7 ++--
>  drivers/gpu/drm/i915/display/intel_snps_phy.c |  2 +-
>  drivers/gpu/drm/i915/display/vlv_dsi_pll.c    |  2 +-
>  14 files changed, 100 insertions(+), 78 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
> index 920d570f7594..112d91d81fdc 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -169,7 +169,7 @@ static void assert_dp_port(struct intel_dp *intel_dp, bool state)
>  	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
>  	bool cur_state = intel_de_read(dev_priv, intel_dp->output_reg) & DP_PORT_EN;
>  
> -	I915_STATE_WARN(cur_state != state,
> +	I915_STATE_WARN(dev_priv, cur_state != state,
>  			"[ENCODER:%d:%s] state assertion failure (expected %s, current %s)\n",
>  			dig_port->base.base.base.id, dig_port->base.base.name,
>  			str_on_off(state), str_on_off(cur_state));
> @@ -180,7 +180,7 @@ static void assert_edp_pll(struct drm_i915_private *dev_priv, bool state)
>  {
>  	bool cur_state = intel_de_read(dev_priv, DP_A) & DP_PLL_ENABLE;
>  
> -	I915_STATE_WARN(cur_state != state,
> +	I915_STATE_WARN(dev_priv, cur_state != state,
>  			"eDP PLL state assertion failure (expected %s, current %s)\n",
>  			str_on_off(state), str_on_off(cur_state));
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
> index 1e3f88d00609..ecae9bf05269 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -35,7 +35,9 @@
>  
>  static void assert_vblank_disabled(struct drm_crtc *crtc)
>  {
> -	if (I915_STATE_WARN(drm_crtc_vblank_get(crtc) == 0,
> +	struct drm_i915_private *i915 = to_i915(crtc->dev);
> +
> +	if (I915_STATE_WARN(i915, drm_crtc_vblank_get(crtc) == 0,
>  			    "[CRTC:%d:%s] vblank assertion failure (expected off, current on)\n",
>  			    crtc->base.id, crtc->name))
>  		drm_crtc_vblank_put(crtc);
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index d94127e7448b..ef0615cdc8a0 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2945,18 +2945,18 @@ void intel_c10pll_state_verify(struct intel_atomic_state *state,
>  	for (i = 0; i < ARRAY_SIZE(mpllb_sw_state->pll); i++) {
>  		u8 expected = mpllb_sw_state->pll[i];
>  
> -		I915_STATE_WARN(mpllb_hw_state.pll[i] != expected,
> +		I915_STATE_WARN(i915, mpllb_hw_state.pll[i] != expected,
>  				"[CRTC:%d:%s] mismatch in C10MPLLB: Register[%d] (expected 0x%02x, found 0x%02x)",
> -				crtc->base.base.id, crtc->base.name,
> -				i, expected, mpllb_hw_state.pll[i]);
> +				crtc->base.base.id, crtc->base.name, i,
> +				expected, mpllb_hw_state.pll[i]);
>  	}
>  
> -	I915_STATE_WARN(mpllb_hw_state.tx != mpllb_sw_state->tx,
> +	I915_STATE_WARN(i915, mpllb_hw_state.tx != mpllb_sw_state->tx,
>  			"[CRTC:%d:%s] mismatch in C10MPLLB: Register TX0 (expected 0x%02x, found 0x%02x)",
>  			crtc->base.base.id, crtc->base.name,
>  			mpllb_sw_state->tx, mpllb_hw_state.tx);
>  
> -	I915_STATE_WARN(mpllb_hw_state.cmn != mpllb_sw_state->cmn,
> +	I915_STATE_WARN(i915, mpllb_hw_state.cmn != mpllb_sw_state->cmn,
>  			"[CRTC:%d:%s] mismatch in C10MPLLB: Register CMN0 (expected 0x%02x, found 0x%02x)",
>  			crtc->base.base.id, crtc->base.name,
>  			mpllb_sw_state->cmn, mpllb_hw_state.cmn);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 1d5d42a40803..4b70b389e0cb 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -322,20 +322,21 @@ void assert_transcoder(struct drm_i915_private *dev_priv,
>  		cur_state = false;
>  	}
>  
> -	I915_STATE_WARN(cur_state != state,
> +	I915_STATE_WARN(dev_priv, cur_state != state,
>  			"transcoder %s assertion failure (expected %s, current %s)\n",
> -			transcoder_name(cpu_transcoder),
> -			str_on_off(state), str_on_off(cur_state));
> +			transcoder_name(cpu_transcoder), str_on_off(state),
> +			str_on_off(cur_state));
>  }
>  
>  static void assert_plane(struct intel_plane *plane, bool state)
>  {
> +	struct drm_i915_private *i915 = to_i915(plane->base.dev);
>  	enum pipe pipe;
>  	bool cur_state;
>  
>  	cur_state = plane->get_hw_state(plane, &pipe);
>  
> -	I915_STATE_WARN(cur_state != state,
> +	I915_STATE_WARN(i915, cur_state != state,
>  			"%s assertion failure (expected %s, current %s)\n",
>  			plane->base.name, str_on_off(state),
>  			str_on_off(cur_state));
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index 8f451aaf5760..ee3def6e14a8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -545,11 +545,12 @@ void assert_transcoder(struct drm_i915_private *dev_priv,
>   * verbose_state_checks module param, to enable distros and users to tailor
>   * their preferred amount of i915 abrt spam.
>   */
> -#define I915_STATE_WARN(condition, format...) ({			\
> +#define I915_STATE_WARN(__i915, condition, format...) ({		\
> +	struct drm_device *drm = &(__i915)->drm;			\
>  	int __ret_warn_on = !!(condition);				\
>  	if (unlikely(__ret_warn_on))					\
> -		if (!WARN(i915_modparams.verbose_state_checks, format))	\
> -			DRM_ERROR(format);				\
> +		if (!drm_WARN(drm, i915_modparams.verbose_state_checks, format)) \
> +			drm_err(drm, format);				\
>  	unlikely(__ret_warn_on);					\
>  })
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 5150069f3f82..6ed2ece89c3f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1165,31 +1165,39 @@ static void assert_can_disable_lcpll(struct drm_i915_private *dev_priv)
>  	struct intel_crtc *crtc;
>  
>  	for_each_intel_crtc(&dev_priv->drm, crtc)
> -		I915_STATE_WARN(crtc->active, "CRTC for pipe %c enabled\n",
> +		I915_STATE_WARN(dev_priv, crtc->active,
> +				"CRTC for pipe %c enabled\n",
>  				pipe_name(crtc->pipe));
>  
> -	I915_STATE_WARN(intel_de_read(dev_priv, HSW_PWR_WELL_CTL2),
> +	I915_STATE_WARN(dev_priv, intel_de_read(dev_priv, HSW_PWR_WELL_CTL2),
>  			"Display power well on\n");
> -	I915_STATE_WARN(intel_de_read(dev_priv, SPLL_CTL) & SPLL_PLL_ENABLE,
> +	I915_STATE_WARN(dev_priv,
> +			intel_de_read(dev_priv, SPLL_CTL) & SPLL_PLL_ENABLE,
>  			"SPLL enabled\n");
> -	I915_STATE_WARN(intel_de_read(dev_priv, WRPLL_CTL(0)) & WRPLL_PLL_ENABLE,
> +	I915_STATE_WARN(dev_priv,
> +			intel_de_read(dev_priv, WRPLL_CTL(0)) & WRPLL_PLL_ENABLE,
>  			"WRPLL1 enabled\n");
> -	I915_STATE_WARN(intel_de_read(dev_priv, WRPLL_CTL(1)) & WRPLL_PLL_ENABLE,
> +	I915_STATE_WARN(dev_priv,
> +			intel_de_read(dev_priv, WRPLL_CTL(1)) & WRPLL_PLL_ENABLE,
>  			"WRPLL2 enabled\n");
> -	I915_STATE_WARN(intel_de_read(dev_priv, PP_STATUS(0)) & PP_ON,
> +	I915_STATE_WARN(dev_priv,
> +			intel_de_read(dev_priv, PP_STATUS(0)) & PP_ON,
>  			"Panel power on\n");
> -	I915_STATE_WARN(intel_de_read(dev_priv, BLC_PWM_CPU_CTL2) & BLM_PWM_ENABLE,
> +	I915_STATE_WARN(dev_priv,
> +			intel_de_read(dev_priv, BLC_PWM_CPU_CTL2) & BLM_PWM_ENABLE,
>  			"CPU PWM1 enabled\n");
>  	if (IS_HASWELL(dev_priv))
> -		I915_STATE_WARN(intel_de_read(dev_priv, HSW_BLC_PWM2_CTL) & BLM_PWM_ENABLE,
> +		I915_STATE_WARN(dev_priv,
> +				intel_de_read(dev_priv, HSW_BLC_PWM2_CTL) & BLM_PWM_ENABLE,
>  				"CPU PWM2 enabled\n");
> -	I915_STATE_WARN(intel_de_read(dev_priv, BLC_PWM_PCH_CTL1) & BLM_PCH_PWM_ENABLE,
> +	I915_STATE_WARN(dev_priv,
> +			intel_de_read(dev_priv, BLC_PWM_PCH_CTL1) & BLM_PCH_PWM_ENABLE,
>  			"PCH PWM1 enabled\n");
> -	I915_STATE_WARN((intel_de_read(dev_priv, UTIL_PIN_CTL) &
> -			 (UTIL_PIN_ENABLE | UTIL_PIN_MODE_MASK)) ==
> -			(UTIL_PIN_ENABLE | UTIL_PIN_MODE_PWM),
> +	I915_STATE_WARN(dev_priv,
> +			(intel_de_read(dev_priv, UTIL_PIN_CTL) & (UTIL_PIN_ENABLE | UTIL_PIN_MODE_MASK)) == (UTIL_PIN_ENABLE | UTIL_PIN_MODE_PWM),
>  			"Utility pin enabled in PWM mode\n");
> -	I915_STATE_WARN(intel_de_read(dev_priv, PCH_GTC_CTL) & PCH_GTC_ENABLE,
> +	I915_STATE_WARN(dev_priv,
> +			intel_de_read(dev_priv, PCH_GTC_CTL) & PCH_GTC_ENABLE,
>  			"PCH GTC enabled\n");
>  
>  	/*
> @@ -1198,7 +1206,8 @@ static void assert_can_disable_lcpll(struct drm_i915_private *dev_priv)
>  	 * gen-specific and since we only disable LCPLL after we fully disable
>  	 * the interrupts, the check below should be enough.
>  	 */
> -	I915_STATE_WARN(intel_irqs_enabled(dev_priv), "IRQs enabled\n");
> +	I915_STATE_WARN(dev_priv, intel_irqs_enabled(dev_priv),
> +			"IRQs enabled\n");
>  }
>  
>  static u32 hsw_read_dcomp(struct drm_i915_private *dev_priv)
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
> index ca0f362a40e3..824be7f03724 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -2080,7 +2080,7 @@ static void assert_pll(struct drm_i915_private *dev_priv,
>  	bool cur_state;
>  
>  	cur_state = intel_de_read(dev_priv, DPLL(pipe)) & DPLL_VCO_ENABLE;
> -	I915_STATE_WARN(cur_state != state,
> +	I915_STATE_WARN(dev_priv, cur_state != state,
>  			"PLL state assertion failure (expected %s, current %s)\n",
>  			str_on_off(state), str_on_off(cur_state));
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 936b8de9e439..ee55ab309568 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -169,8 +169,8 @@ void assert_shared_dpll(struct drm_i915_private *dev_priv,
>  		return;
>  
>  	cur_state = intel_dpll_get_hw_state(dev_priv, pll, &hw_state);
> -	I915_STATE_WARN(cur_state != state,
> -	     "%s assertion failure (expected %s, current %s)\n",
> +	I915_STATE_WARN(dev_priv, cur_state != state,
> +			"%s assertion failure (expected %s, current %s)\n",
>  			pll->info->name, str_on_off(state),
>  			str_on_off(cur_state));
>  }
> @@ -467,7 +467,8 @@ static void ibx_assert_pch_refclk_enabled(struct drm_i915_private *dev_priv)
>  	val = intel_de_read(dev_priv, PCH_DREF_CONTROL);
>  	enabled = !!(val & (DREF_SSC_SOURCE_MASK | DREF_NONSPREAD_SOURCE_MASK |
>  			    DREF_SUPERSPREAD_SOURCE_MASK));
> -	I915_STATE_WARN(!enabled, "PCH refclk assertion failure, should be active but is disabled\n");
> +	I915_STATE_WARN(dev_priv, !enabled,
> +			"PCH refclk assertion failure, should be active but is disabled\n");
>  }
>  
>  static void ibx_pch_dpll_enable(struct drm_i915_private *dev_priv,
> @@ -4405,17 +4406,18 @@ verify_single_dpll_state(struct drm_i915_private *dev_priv,
>  	active = intel_dpll_get_hw_state(dev_priv, pll, &dpll_hw_state);
>  
>  	if (!(pll->info->flags & INTEL_DPLL_ALWAYS_ON)) {
> -		I915_STATE_WARN(!pll->on && pll->active_mask,
> +		I915_STATE_WARN(dev_priv, !pll->on && pll->active_mask,
>  				"pll in active use but not on in sw tracking\n");
> -		I915_STATE_WARN(pll->on && !pll->active_mask,
> +		I915_STATE_WARN(dev_priv, pll->on && !pll->active_mask,
>  				"pll is on but not used by any active pipe\n");
> -		I915_STATE_WARN(pll->on != active,
> +		I915_STATE_WARN(dev_priv, pll->on != active,
>  				"pll on state mismatch (expected %i, found %i)\n",
>  				pll->on, active);
>  	}
>  
>  	if (!crtc) {
> -		I915_STATE_WARN(pll->active_mask & ~pll->state.pipe_mask,
> +		I915_STATE_WARN(dev_priv,
> +				pll->active_mask & ~pll->state.pipe_mask,
>  				"more active pll users than references: 0x%x vs 0x%x\n",
>  				pll->active_mask, pll->state.pipe_mask);
>  
> @@ -4425,20 +4427,20 @@ verify_single_dpll_state(struct drm_i915_private *dev_priv,
>  	pipe_mask = BIT(crtc->pipe);
>  
>  	if (new_crtc_state->hw.active)
> -		I915_STATE_WARN(!(pll->active_mask & pipe_mask),
> +		I915_STATE_WARN(dev_priv, !(pll->active_mask & pipe_mask),
>  				"pll active mismatch (expected pipe %c in active mask 0x%x)\n",
>  				pipe_name(crtc->pipe), pll->active_mask);
>  	else
> -		I915_STATE_WARN(pll->active_mask & pipe_mask,
> +		I915_STATE_WARN(dev_priv, pll->active_mask & pipe_mask,
>  				"pll active mismatch (didn't expect pipe %c in active mask 0x%x)\n",
>  				pipe_name(crtc->pipe), pll->active_mask);
>  
> -	I915_STATE_WARN(!(pll->state.pipe_mask & pipe_mask),
> +	I915_STATE_WARN(dev_priv, !(pll->state.pipe_mask & pipe_mask),
>  			"pll enabled crtcs mismatch (expected 0x%x in 0x%x)\n",
>  			pipe_mask, pll->state.pipe_mask);
>  
> -	I915_STATE_WARN(pll->on && memcmp(&pll->state.hw_state,
> -					  &dpll_hw_state,
> +	I915_STATE_WARN(dev_priv,
> +			pll->on && memcmp(&pll->state.hw_state, &dpll_hw_state,
>  					  sizeof(dpll_hw_state)),
>  			"pll hw state mismatch\n");
>  }
> @@ -4458,10 +4460,10 @@ void intel_shared_dpll_state_verify(struct intel_crtc *crtc,
>  		u8 pipe_mask = BIT(crtc->pipe);
>  		struct intel_shared_dpll *pll = old_crtc_state->shared_dpll;
>  
> -		I915_STATE_WARN(pll->active_mask & pipe_mask,
> +		I915_STATE_WARN(dev_priv, pll->active_mask & pipe_mask,
>  				"pll active mismatch (didn't expect pipe %c in active mask (0x%x))\n",
>  				pipe_name(crtc->pipe), pll->active_mask);
> -		I915_STATE_WARN(pll->state.pipe_mask & pipe_mask,
> +		I915_STATE_WARN(dev_priv, pll->state.pipe_mask & pipe_mask,
>  				"pll enabled crtcs mismatch (found %x in enabled mask (0x%x))\n",
>  				pipe_name(crtc->pipe), pll->state.pipe_mask);
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
> index 55283677c45a..e12b46a84fa1 100644
> --- a/drivers/gpu/drm/i915/display/intel_fdi.c
> +++ b/drivers/gpu/drm/i915/display/intel_fdi.c
> @@ -36,7 +36,7 @@ static void assert_fdi_tx(struct drm_i915_private *dev_priv,
>  	} else {
>  		cur_state = intel_de_read(dev_priv, FDI_TX_CTL(pipe)) & FDI_TX_ENABLE;
>  	}
> -	I915_STATE_WARN(cur_state != state,
> +	I915_STATE_WARN(dev_priv, cur_state != state,
>  			"FDI TX state assertion failure (expected %s, current %s)\n",
>  			str_on_off(state), str_on_off(cur_state));
>  }
> @@ -57,7 +57,7 @@ static void assert_fdi_rx(struct drm_i915_private *dev_priv,
>  	bool cur_state;
>  
>  	cur_state = intel_de_read(dev_priv, FDI_RX_CTL(pipe)) & FDI_RX_ENABLE;
> -	I915_STATE_WARN(cur_state != state,
> +	I915_STATE_WARN(dev_priv, cur_state != state,
>  			"FDI RX state assertion failure (expected %s, current %s)\n",
>  			str_on_off(state), str_on_off(cur_state));
>  }
> @@ -86,7 +86,8 @@ void assert_fdi_tx_pll_enabled(struct drm_i915_private *i915,
>  		return;
>  
>  	cur_state = intel_de_read(i915, FDI_TX_CTL(pipe)) & FDI_TX_PLL_ENABLE;
> -	I915_STATE_WARN(!cur_state, "FDI TX PLL assertion failure, should be active but is disabled\n");
> +	I915_STATE_WARN(i915, !cur_state,
> +			"FDI TX PLL assertion failure, should be active but is disabled\n");
>  }
>  
>  static void assert_fdi_rx_pll(struct drm_i915_private *i915,
> @@ -95,7 +96,7 @@ static void assert_fdi_rx_pll(struct drm_i915_private *i915,
>  	bool cur_state;
>  
>  	cur_state = intel_de_read(i915, FDI_RX_CTL(pipe)) & FDI_RX_PLL_ENABLE;
> -	I915_STATE_WARN(cur_state != state,
> +	I915_STATE_WARN(i915, cur_state != state,
>  			"FDI RX PLL assertion failure (expected %s, current %s)\n",
>  			str_on_off(state), str_on_off(cur_state));
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> index 5e0ec15d9fd5..7718e632991e 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> @@ -35,27 +35,28 @@ static void intel_connector_verify_state(struct intel_crtc_state *crtc_state,
>  	if (connector->get_hw_state(connector)) {
>  		struct intel_encoder *encoder = intel_attached_encoder(connector);
>  
> -		I915_STATE_WARN(!crtc_state,
> +		I915_STATE_WARN(i915, !crtc_state,
>  				"connector enabled without attached crtc\n");
>  
>  		if (!crtc_state)
>  			return;
>  
> -		I915_STATE_WARN(!crtc_state->hw.active,
> +		I915_STATE_WARN(i915, !crtc_state->hw.active,
>  				"connector is active, but attached crtc isn't\n");
>  
>  		if (!encoder || encoder->type == INTEL_OUTPUT_DP_MST)
>  			return;
>  
> -		I915_STATE_WARN(conn_state->best_encoder != &encoder->base,
> +		I915_STATE_WARN(i915,
> +				conn_state->best_encoder != &encoder->base,
>  				"atomic encoder doesn't match attached encoder\n");
>  
> -		I915_STATE_WARN(conn_state->crtc != encoder->base.crtc,
> +		I915_STATE_WARN(i915, conn_state->crtc != encoder->base.crtc,
>  				"attached encoder crtc differs from connector crtc\n");
>  	} else {
> -		I915_STATE_WARN(crtc_state && crtc_state->hw.active,
> +		I915_STATE_WARN(i915, crtc_state && crtc_state->hw.active,
>  				"attached crtc is active, but connector isn't\n");
> -		I915_STATE_WARN(!crtc_state && conn_state->best_encoder,
> +		I915_STATE_WARN(i915, !crtc_state && conn_state->best_encoder,
>  				"best encoder set without crtc!\n");
>  	}
>  }
> @@ -64,6 +65,7 @@ static void
>  verify_connector_state(struct intel_atomic_state *state,
>  		       struct intel_crtc *crtc)
>  {
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>  	struct drm_connector *connector;
>  	struct drm_connector_state *new_conn_state;
>  	int i;
> @@ -80,7 +82,7 @@ verify_connector_state(struct intel_atomic_state *state,
>  
>  		intel_connector_verify_state(crtc_state, new_conn_state);
>  
> -		I915_STATE_WARN(new_conn_state->best_encoder != encoder,
> +		I915_STATE_WARN(i915, new_conn_state->best_encoder != encoder,
>  				"connector's atomic encoder doesn't match legacy encoder\n");
>  	}
>  }
> @@ -131,15 +133,15 @@ verify_encoder_state(struct drm_i915_private *dev_priv, struct intel_atomic_stat
>  			found = true;
>  			enabled = true;
>  
> -			I915_STATE_WARN(new_conn_state->crtc !=
> -					encoder->base.crtc,
> +			I915_STATE_WARN(dev_priv,
> +					new_conn_state->crtc != encoder->base.crtc,
>  					"connector's crtc doesn't match encoder crtc\n");
>  		}
>  
>  		if (!found)
>  			continue;
>  
> -		I915_STATE_WARN(!!encoder->base.crtc != enabled,
> +		I915_STATE_WARN(dev_priv, !!encoder->base.crtc != enabled,
>  				"encoder's enabled state mismatch (expected %i, found %i)\n",
>  				!!encoder->base.crtc, enabled);
>  
> @@ -147,7 +149,7 @@ verify_encoder_state(struct drm_i915_private *dev_priv, struct intel_atomic_stat
>  			bool active;
>  
>  			active = encoder->get_hw_state(encoder, &pipe);
> -			I915_STATE_WARN(active,
> +			I915_STATE_WARN(dev_priv, active,
>  					"encoder detached but still enabled on pipe %c.\n",
>  					pipe_name(pipe));
>  		}
> @@ -182,11 +184,12 @@ verify_crtc_state(struct intel_crtc *crtc,
>  	if (IS_I830(dev_priv) && pipe_config->hw.active)
>  		pipe_config->hw.active = new_crtc_state->hw.active;
>  
> -	I915_STATE_WARN(new_crtc_state->hw.active != pipe_config->hw.active,
> +	I915_STATE_WARN(dev_priv,
> +			new_crtc_state->hw.active != pipe_config->hw.active,
>  			"crtc active state doesn't match with hw state (expected %i, found %i)\n",
>  			new_crtc_state->hw.active, pipe_config->hw.active);
>  
> -	I915_STATE_WARN(crtc->active != new_crtc_state->hw.active,
> +	I915_STATE_WARN(dev_priv, crtc->active != new_crtc_state->hw.active,
>  			"transitional active state does not match atomic hw state (expected %i, found %i)\n",
>  			new_crtc_state->hw.active, crtc->active);
>  
> @@ -197,12 +200,12 @@ verify_crtc_state(struct intel_crtc *crtc,
>  		bool active;
>  
>  		active = encoder->get_hw_state(encoder, &pipe);
> -		I915_STATE_WARN(active != new_crtc_state->hw.active,
> +		I915_STATE_WARN(dev_priv, active != new_crtc_state->hw.active,
>  				"[ENCODER:%i] active %i with crtc active %i\n",
>  				encoder->base.base.id, active,
>  				new_crtc_state->hw.active);
>  
> -		I915_STATE_WARN(active && master_crtc->pipe != pipe,
> +		I915_STATE_WARN(dev_priv, active && master_crtc->pipe != pipe,
>  				"Encoder connected to wrong pipe %c\n",
>  				pipe_name(pipe));
>  
> @@ -217,7 +220,7 @@ verify_crtc_state(struct intel_crtc *crtc,
>  
>  	if (!intel_pipe_config_compare(new_crtc_state,
>  				       pipe_config, false)) {
> -		I915_STATE_WARN(1, "pipe state doesn't match!\n");
> +		I915_STATE_WARN(dev_priv, 1, "pipe state doesn't match!\n");
>  		intel_crtc_state_dump(pipe_config, NULL, "hw state");
>  		intel_crtc_state_dump(new_crtc_state, NULL, "sw state");
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
> index 2411fe4dee8b..866786e6b32f 100644
> --- a/drivers/gpu/drm/i915/display/intel_pch_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
> @@ -43,11 +43,12 @@ static void assert_pch_dp_disabled(struct drm_i915_private *dev_priv,
>  
>  	state = g4x_dp_port_enabled(dev_priv, dp_reg, port, &port_pipe);
>  
> -	I915_STATE_WARN(state && port_pipe == pipe,
> +	I915_STATE_WARN(dev_priv, state && port_pipe == pipe,
>  			"PCH DP %c enabled on transcoder %c, should be disabled\n",
>  			port_name(port), pipe_name(pipe));
>  
> -	I915_STATE_WARN(HAS_PCH_IBX(dev_priv) && !state && port_pipe == PIPE_B,
> +	I915_STATE_WARN(dev_priv,
> +			HAS_PCH_IBX(dev_priv) && !state && port_pipe == PIPE_B,
>  			"IBX PCH DP %c still using transcoder B\n",
>  			port_name(port));
>  }
> @@ -61,11 +62,12 @@ static void assert_pch_hdmi_disabled(struct drm_i915_private *dev_priv,
>  
>  	state = intel_sdvo_port_enabled(dev_priv, hdmi_reg, &port_pipe);
>  
> -	I915_STATE_WARN(state && port_pipe == pipe,
> +	I915_STATE_WARN(dev_priv, state && port_pipe == pipe,
>  			"PCH HDMI %c enabled on transcoder %c, should be disabled\n",
>  			port_name(port), pipe_name(pipe));
>  
> -	I915_STATE_WARN(HAS_PCH_IBX(dev_priv) && !state && port_pipe == PIPE_B,
> +	I915_STATE_WARN(dev_priv,
> +			HAS_PCH_IBX(dev_priv) && !state && port_pipe == PIPE_B,
>  			"IBX PCH HDMI %c still using transcoder B\n",
>  			port_name(port));
>  }
> @@ -79,13 +81,13 @@ static void assert_pch_ports_disabled(struct drm_i915_private *dev_priv,
>  	assert_pch_dp_disabled(dev_priv, pipe, PORT_C, PCH_DP_C);
>  	assert_pch_dp_disabled(dev_priv, pipe, PORT_D, PCH_DP_D);
>  
> -	I915_STATE_WARN(intel_crt_port_enabled(dev_priv, PCH_ADPA, &port_pipe) &&
> -			port_pipe == pipe,
> +	I915_STATE_WARN(dev_priv,
> +			intel_crt_port_enabled(dev_priv, PCH_ADPA, &port_pipe) && port_pipe == pipe,
>  			"PCH VGA enabled on transcoder %c, should be disabled\n",
>  			pipe_name(pipe));
>  
> -	I915_STATE_WARN(intel_lvds_port_enabled(dev_priv, PCH_LVDS, &port_pipe) &&
> -			port_pipe == pipe,
> +	I915_STATE_WARN(dev_priv,
> +			intel_lvds_port_enabled(dev_priv, PCH_LVDS, &port_pipe) && port_pipe == pipe,
>  			"PCH LVDS enabled on transcoder %c, should be disabled\n",
>  			pipe_name(pipe));
>  
> @@ -103,7 +105,7 @@ static void assert_pch_transcoder_disabled(struct drm_i915_private *dev_priv,
>  
>  	val = intel_de_read(dev_priv, PCH_TRANSCONF(pipe));
>  	enabled = !!(val & TRANS_ENABLE);
> -	I915_STATE_WARN(enabled,
> +	I915_STATE_WARN(dev_priv, enabled,
>  			"transcoder assertion failed, should be off on pipe %c but is still active\n",
>  			pipe_name(pipe));
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index 4f0b0cca03cc..5e7ba594e7e7 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -787,7 +787,7 @@ void intel_pps_vdd_on(struct intel_dp *intel_dp)
>  	vdd = false;
>  	with_intel_pps_lock(intel_dp, wakeref)
>  		vdd = intel_pps_vdd_on_unlocked(intel_dp);
> -	I915_STATE_WARN(!vdd, "[ENCODER:%d:%s] %s VDD already requested on\n",
> +	I915_STATE_WARN(i915, !vdd, "[ENCODER:%d:%s] %s VDD already requested on\n",
>  			dp_to_dig_port(intel_dp)->base.base.base.id,
>  			dp_to_dig_port(intel_dp)->base.base.name,
>  			pps_name(i915, &intel_dp->pps));
> @@ -899,7 +899,8 @@ void intel_pps_vdd_off_unlocked(struct intel_dp *intel_dp, bool sync)
>  	if (!intel_dp_is_edp(intel_dp))
>  		return;
>  
> -	I915_STATE_WARN(!intel_dp->pps.want_panel_vdd, "[ENCODER:%d:%s] %s VDD not forced on",
> +	I915_STATE_WARN(dev_priv, !intel_dp->pps.want_panel_vdd,
> +			"[ENCODER:%d:%s] %s VDD not forced on",
>  			dp_to_dig_port(intel_dp)->base.base.base.id,
>  			dp_to_dig_port(intel_dp)->base.base.name,
>  			pps_name(dev_priv, &intel_dp->pps));
> @@ -1721,7 +1722,7 @@ void assert_pps_unlocked(struct drm_i915_private *dev_priv, enum pipe pipe)
>  	    ((val & PANEL_UNLOCK_MASK) == PANEL_UNLOCK_REGS))
>  		locked = false;
>  
> -	I915_STATE_WARN(panel_pipe == pipe && locked,
> +	I915_STATE_WARN(dev_priv, panel_pipe == pipe && locked,
>  			"panel assertion failure, pipe %c regs locked\n",
>  			pipe_name(pipe));
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> index a72677bf617b..88ef56b6e0fd 100644
> --- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> @@ -2016,7 +2016,7 @@ void intel_mpllb_state_verify(struct intel_atomic_state *state,
>  	intel_mpllb_readout_hw_state(encoder, &mpllb_hw_state);
>  
>  #define MPLLB_CHECK(__name)						\
> -	I915_STATE_WARN(mpllb_sw_state->__name != mpllb_hw_state.__name,	\
> +	I915_STATE_WARN(i915, mpllb_sw_state->__name != mpllb_hw_state.__name, \
>  			"[CRTC:%d:%s] mismatch in MPLLB: %s (expected 0x%08x, found 0x%08x)", \
>  			crtc->base.base.id, crtc->base.name,		\
>  			__stringify(__name),				\
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
> index b697badbbe71..ae0a0b11bae3 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
> @@ -598,7 +598,7 @@ static void assert_dsi_pll(struct drm_i915_private *i915, bool state)
>  	cur_state = vlv_cck_read(i915, CCK_REG_DSI_PLL_CONTROL) & DSI_PLL_VCO_EN;
>  	vlv_cck_put(i915);
>  
> -	I915_STATE_WARN(cur_state != state,
> +	I915_STATE_WARN(i915, cur_state != state,
>  			"DSI PLL state assertion failure (expected %s, current %s)\n",
>  			str_on_off(state), str_on_off(cur_state));
>  }
> -- 
> 2.39.2
> 
