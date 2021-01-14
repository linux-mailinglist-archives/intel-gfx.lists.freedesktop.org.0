Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20F352F654C
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 16:59:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 814646E434;
	Thu, 14 Jan 2021 15:59:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6935B6E434
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jan 2021 15:59:49 +0000 (UTC)
IronPort-SDR: NDF8nxApWN5H+W2JhApdgUdyzzo1LIq2v9PQ5sxdyCH9OVCW98+WMq4nQlphaRBYchGxlUSgWB
 7CwLEDw1I+uA==
X-IronPort-AV: E=McAfee;i="6000,8403,9864"; a="239935173"
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="239935173"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2021 07:59:45 -0800
IronPort-SDR: 6v1/JptgwzTWWOrDYLCi5krmvnTGpC8ZCiJyRjSx15i2jU3K3Xe5zUHqYMSp00ayAv80NRg1o8
 yrn7ggG6ZKUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="465289503"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 14 Jan 2021 07:59:43 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 14 Jan 2021 17:59:42 +0200
Date: Thu, 14 Jan 2021 17:59:42 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YABqbhJwVn+Gd4kZ@intel.com>
References: <cover.1610622609.git.jani.nikula@intel.com>
 <42acfc7660491e9cf50879c3b3c20d69e0397cb2.1610622609.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <42acfc7660491e9cf50879c3b3c20d69e0397cb2.1610622609.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 10/11] drm/i915: migrate pll enable/disable
 code to intel_dpll.[ch]
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
Cc: Dave Airlie <airlied@redhat.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 14, 2021 at 01:13:54PM +0200, Jani Nikula wrote:
> From: Dave Airlie <airlied@redhat.com>
> =

> This moves the older i9xx/vlv/chv enable/disable to dpll file.
> =

> !!! FIXME: Dave's s-o-b !!!
> =

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 512 -------------------
>  drivers/gpu/drm/i915/display/intel_display.h |   3 -
>  drivers/gpu/drm/i915/display/intel_dp.c      |   1 +
>  drivers/gpu/drm/i915/display/intel_dpll.c    | 509 ++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dpll.h    |  18 +
>  drivers/gpu/drm/i915/display/intel_pps.c     |   1 +
>  6 files changed, 529 insertions(+), 515 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 7398927e1627..8abd49cf9c2b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -109,10 +109,6 @@ static void i9xx_set_pipeconf(const struct intel_crt=
c_state *crtc_state);
>  static void ilk_set_pipeconf(const struct intel_crtc_state *crtc_state);
>  static void hsw_set_pipeconf(const struct intel_crtc_state *crtc_state);
>  static void bdw_set_pipemisc(const struct intel_crtc_state *crtc_state);
> -static void vlv_prepare_pll(struct intel_crtc *crtc,
> -			    const struct intel_crtc_state *pipe_config);
> -static void chv_prepare_pll(struct intel_crtc *crtc,
> -			    const struct intel_crtc_state *pipe_config);
>  static void ilk_pfit_enable(const struct intel_crtc_state *crtc_state);
>  static void intel_modeset_setup_hw_state(struct drm_device *dev,
>  					 struct drm_modeset_acquire_ctx *ctx);
> @@ -565,224 +561,6 @@ static void assert_pch_ports_disabled(struct drm_i9=
15_private *dev_priv,
>  	assert_pch_hdmi_disabled(dev_priv, pipe, PORT_D, PCH_HDMID);
>  }
>  =

> -static void _vlv_enable_pll(struct intel_crtc *crtc,
> -			    const struct intel_crtc_state *pipe_config)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -	enum pipe pipe =3D crtc->pipe;
> -
> -	intel_de_write(dev_priv, DPLL(pipe), pipe_config->dpll_hw_state.dpll);
> -	intel_de_posting_read(dev_priv, DPLL(pipe));
> -	udelay(150);
> -
> -	if (intel_de_wait_for_set(dev_priv, DPLL(pipe), DPLL_LOCK_VLV, 1))
> -		drm_err(&dev_priv->drm, "DPLL %d failed to lock\n", pipe);
> -}
> -
> -static void vlv_enable_pll(struct intel_crtc *crtc,
> -			   const struct intel_crtc_state *pipe_config)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -	enum pipe pipe =3D crtc->pipe;
> -
> -	assert_pipe_disabled(dev_priv, pipe_config->cpu_transcoder);
> -
> -	/* PLL is protected by panel, make sure we can write it */
> -	assert_panel_unlocked(dev_priv, pipe);
> -
> -	if (pipe_config->dpll_hw_state.dpll & DPLL_VCO_ENABLE)
> -		_vlv_enable_pll(crtc, pipe_config);
> -
> -	intel_de_write(dev_priv, DPLL_MD(pipe),
> -		       pipe_config->dpll_hw_state.dpll_md);
> -	intel_de_posting_read(dev_priv, DPLL_MD(pipe));
> -}
> -
> -
> -static void _chv_enable_pll(struct intel_crtc *crtc,
> -			    const struct intel_crtc_state *pipe_config)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -	enum pipe pipe =3D crtc->pipe;
> -	enum dpio_channel port =3D vlv_pipe_to_channel(pipe);
> -	u32 tmp;
> -
> -	vlv_dpio_get(dev_priv);
> -
> -	/* Enable back the 10bit clock to display controller */
> -	tmp =3D vlv_dpio_read(dev_priv, pipe, CHV_CMN_DW14(port));
> -	tmp |=3D DPIO_DCLKP_EN;
> -	vlv_dpio_write(dev_priv, pipe, CHV_CMN_DW14(port), tmp);
> -
> -	vlv_dpio_put(dev_priv);
> -
> -	/*
> -	 * Need to wait > 100ns between dclkp clock enable bit and PLL enable.
> -	 */
> -	udelay(1);
> -
> -	/* Enable PLL */
> -	intel_de_write(dev_priv, DPLL(pipe), pipe_config->dpll_hw_state.dpll);
> -
> -	/* Check PLL is locked */
> -	if (intel_de_wait_for_set(dev_priv, DPLL(pipe), DPLL_LOCK_VLV, 1))
> -		drm_err(&dev_priv->drm, "PLL %d failed to lock\n", pipe);
> -}
> -
> -static void chv_enable_pll(struct intel_crtc *crtc,
> -			   const struct intel_crtc_state *pipe_config)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -	enum pipe pipe =3D crtc->pipe;
> -
> -	assert_pipe_disabled(dev_priv, pipe_config->cpu_transcoder);
> -
> -	/* PLL is protected by panel, make sure we can write it */
> -	assert_panel_unlocked(dev_priv, pipe);
> -
> -	if (pipe_config->dpll_hw_state.dpll & DPLL_VCO_ENABLE)
> -		_chv_enable_pll(crtc, pipe_config);
> -
> -	if (pipe !=3D PIPE_A) {
> -		/*
> -		 * WaPixelRepeatModeFixForC0:chv
> -		 *
> -		 * DPLLCMD is AWOL. Use chicken bits to propagate
> -		 * the value from DPLLBMD to either pipe B or C.
> -		 */
> -		intel_de_write(dev_priv, CBR4_VLV, CBR_DPLLBMD_PIPE(pipe));
> -		intel_de_write(dev_priv, DPLL_MD(PIPE_B),
> -			       pipe_config->dpll_hw_state.dpll_md);
> -		intel_de_write(dev_priv, CBR4_VLV, 0);
> -		dev_priv->chv_dpll_md[pipe] =3D pipe_config->dpll_hw_state.dpll_md;
> -
> -		/*
> -		 * DPLLB VGA mode also seems to cause problems.
> -		 * We should always have it disabled.
> -		 */
> -		drm_WARN_ON(&dev_priv->drm,
> -			    (intel_de_read(dev_priv, DPLL(PIPE_B)) &
> -			     DPLL_VGA_MODE_DIS) =3D=3D 0);
> -	} else {
> -		intel_de_write(dev_priv, DPLL_MD(pipe),
> -			       pipe_config->dpll_hw_state.dpll_md);
> -		intel_de_posting_read(dev_priv, DPLL_MD(pipe));
> -	}
> -}
> -
> -static bool i9xx_has_pps(struct drm_i915_private *dev_priv)
> -{
> -	if (IS_I830(dev_priv))
> -		return false;
> -
> -	return IS_PINEVIEW(dev_priv) || IS_MOBILE(dev_priv);
> -}
> -
> -static void i9xx_enable_pll(struct intel_crtc *crtc,
> -			    const struct intel_crtc_state *crtc_state)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -	i915_reg_t reg =3D DPLL(crtc->pipe);
> -	u32 dpll =3D crtc_state->dpll_hw_state.dpll;
> -	int i;
> -
> -	assert_pipe_disabled(dev_priv, crtc_state->cpu_transcoder);
> -
> -	/* PLL is protected by panel, make sure we can write it */
> -	if (i9xx_has_pps(dev_priv))
> -		assert_panel_unlocked(dev_priv, crtc->pipe);
> -
> -	/*
> -	 * Apparently we need to have VGA mode enabled prior to changing
> -	 * the P1/P2 dividers. Otherwise the DPLL will keep using the old
> -	 * dividers, even though the register value does change.
> -	 */
> -	intel_de_write(dev_priv, reg, dpll & ~DPLL_VGA_MODE_DIS);
> -	intel_de_write(dev_priv, reg, dpll);
> -
> -	/* Wait for the clocks to stabilize. */
> -	intel_de_posting_read(dev_priv, reg);
> -	udelay(150);
> -
> -	if (INTEL_GEN(dev_priv) >=3D 4) {
> -		intel_de_write(dev_priv, DPLL_MD(crtc->pipe),
> -			       crtc_state->dpll_hw_state.dpll_md);
> -	} else {
> -		/* The pixel multiplier can only be updated once the
> -		 * DPLL is enabled and the clocks are stable.
> -		 *
> -		 * So write it again.
> -		 */
> -		intel_de_write(dev_priv, reg, dpll);
> -	}
> -
> -	/* We do this three times for luck */
> -	for (i =3D 0; i < 3; i++) {
> -		intel_de_write(dev_priv, reg, dpll);
> -		intel_de_posting_read(dev_priv, reg);
> -		udelay(150); /* wait for warmup */
> -	}
> -}
> -
> -static void i9xx_disable_pll(const struct intel_crtc_state *crtc_state)
> -{
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -	enum pipe pipe =3D crtc->pipe;
> -
> -	/* Don't disable pipe or pipe PLLs if needed */
> -	if (IS_I830(dev_priv))
> -		return;
> -
> -	/* Make sure the pipe isn't still relying on us */
> -	assert_pipe_disabled(dev_priv, crtc_state->cpu_transcoder);
> -
> -	intel_de_write(dev_priv, DPLL(pipe), DPLL_VGA_MODE_DIS);
> -	intel_de_posting_read(dev_priv, DPLL(pipe));
> -}
> -
> -static void vlv_disable_pll(struct drm_i915_private *dev_priv, enum pipe=
 pipe)
> -{
> -	u32 val;
> -
> -	/* Make sure the pipe isn't still relying on us */
> -	assert_pipe_disabled(dev_priv, (enum transcoder)pipe);
> -
> -	val =3D DPLL_INTEGRATED_REF_CLK_VLV |
> -		DPLL_REF_CLK_ENABLE_VLV | DPLL_VGA_MODE_DIS;
> -	if (pipe !=3D PIPE_A)
> -		val |=3D DPLL_INTEGRATED_CRI_CLK_VLV;
> -
> -	intel_de_write(dev_priv, DPLL(pipe), val);
> -	intel_de_posting_read(dev_priv, DPLL(pipe));
> -}
> -
> -static void chv_disable_pll(struct drm_i915_private *dev_priv, enum pipe=
 pipe)
> -{
> -	enum dpio_channel port =3D vlv_pipe_to_channel(pipe);
> -	u32 val;
> -
> -	/* Make sure the pipe isn't still relying on us */
> -	assert_pipe_disabled(dev_priv, (enum transcoder)pipe);
> -
> -	val =3D DPLL_SSC_REF_CLK_CHV |
> -		DPLL_REF_CLK_ENABLE_VLV | DPLL_VGA_MODE_DIS;
> -	if (pipe !=3D PIPE_A)
> -		val |=3D DPLL_INTEGRATED_CRI_CLK_VLV;
> -
> -	intel_de_write(dev_priv, DPLL(pipe), val);
> -	intel_de_posting_read(dev_priv, DPLL(pipe));
> -
> -	vlv_dpio_get(dev_priv);
> -
> -	/* Disable 10bit clock to display controller */
> -	val =3D vlv_dpio_read(dev_priv, pipe, CHV_CMN_DW14(port));
> -	val &=3D ~DPIO_DCLKP_EN;
> -	vlv_dpio_write(dev_priv, pipe, CHV_CMN_DW14(port), val);
> -
> -	vlv_dpio_put(dev_priv);
> -}
> -
>  void vlv_wait_port_ready(struct drm_i915_private *dev_priv,
>  			 struct intel_digital_port *dig_port,
>  			 unsigned int expected_mask)
> @@ -5709,35 +5487,6 @@ static void intel_panel_sanitize_ssc(struct drm_i9=
15_private *dev_priv)
>  	}
>  }
>  =

> -static void vlv_pllb_recal_opamp(struct drm_i915_private *dev_priv, enum=
 pipe
> -		pipe)
> -{
> -	u32 reg_val;
> -
> -	/*
> -	 * PLLB opamp always calibrates to max value of 0x3f, force enable it
> -	 * and set it to a reasonable value instead.
> -	 */
> -	reg_val =3D vlv_dpio_read(dev_priv, pipe, VLV_PLL_DW9(1));
> -	reg_val &=3D 0xffffff00;
> -	reg_val |=3D 0x00000030;
> -	vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW9(1), reg_val);
> -
> -	reg_val =3D vlv_dpio_read(dev_priv, pipe, VLV_REF_DW13);
> -	reg_val &=3D 0x00ffffff;
> -	reg_val |=3D 0x8c000000;
> -	vlv_dpio_write(dev_priv, pipe, VLV_REF_DW13, reg_val);
> -
> -	reg_val =3D vlv_dpio_read(dev_priv, pipe, VLV_PLL_DW9(1));
> -	reg_val &=3D 0xffffff00;
> -	vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW9(1), reg_val);
> -
> -	reg_val =3D vlv_dpio_read(dev_priv, pipe, VLV_REF_DW13);
> -	reg_val &=3D 0x00ffffff;
> -	reg_val |=3D 0xb0000000;
> -	vlv_dpio_write(dev_priv, pipe, VLV_REF_DW13, reg_val);
> -}
> -
>  static void intel_pch_transcoder_set_m_n(const struct intel_crtc_state *=
crtc_state,
>  					 const struct intel_link_m_n *m_n)
>  {
> @@ -5833,267 +5582,6 @@ void intel_dp_set_m_n(const struct intel_crtc_sta=
te *crtc_state, enum link_m_n_s
>  		intel_cpu_transcoder_set_m_n(crtc_state, dp_m_n, dp_m2_n2);
>  }
>  =

> -static void vlv_prepare_pll(struct intel_crtc *crtc,
> -			    const struct intel_crtc_state *pipe_config)
> -{
> -	struct drm_device *dev =3D crtc->base.dev;
> -	struct drm_i915_private *dev_priv =3D to_i915(dev);
> -	enum pipe pipe =3D crtc->pipe;
> -	u32 mdiv;
> -	u32 bestn, bestm1, bestm2, bestp1, bestp2;
> -	u32 coreclk, reg_val;
> -
> -	/* Enable Refclk */
> -	intel_de_write(dev_priv, DPLL(pipe),
> -		       pipe_config->dpll_hw_state.dpll & ~(DPLL_VCO_ENABLE | DPLL_EXT_=
BUFFER_ENABLE_VLV));
> -
> -	/* No need to actually set up the DPLL with DSI */
> -	if ((pipe_config->dpll_hw_state.dpll & DPLL_VCO_ENABLE) =3D=3D 0)
> -		return;
> -
> -	vlv_dpio_get(dev_priv);
> -
> -	bestn =3D pipe_config->dpll.n;
> -	bestm1 =3D pipe_config->dpll.m1;
> -	bestm2 =3D pipe_config->dpll.m2;
> -	bestp1 =3D pipe_config->dpll.p1;
> -	bestp2 =3D pipe_config->dpll.p2;
> -
> -	/* See eDP HDMI DPIO driver vbios notes doc */
> -
> -	/* PLL B needs special handling */
> -	if (pipe =3D=3D PIPE_B)
> -		vlv_pllb_recal_opamp(dev_priv, pipe);
> -
> -	/* Set up Tx target for periodic Rcomp update */
> -	vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW9_BCAST, 0x0100000f);
> -
> -	/* Disable target IRef on PLL */
> -	reg_val =3D vlv_dpio_read(dev_priv, pipe, VLV_PLL_DW8(pipe));
> -	reg_val &=3D 0x00ffffff;
> -	vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW8(pipe), reg_val);
> -
> -	/* Disable fast lock */
> -	vlv_dpio_write(dev_priv, pipe, VLV_CMN_DW0, 0x610);
> -
> -	/* Set idtafcrecal before PLL is enabled */
> -	mdiv =3D ((bestm1 << DPIO_M1DIV_SHIFT) | (bestm2 & DPIO_M2DIV_MASK));
> -	mdiv |=3D ((bestp1 << DPIO_P1_SHIFT) | (bestp2 << DPIO_P2_SHIFT));
> -	mdiv |=3D ((bestn << DPIO_N_SHIFT));
> -	mdiv |=3D (1 << DPIO_K_SHIFT);
> -
> -	/*
> -	 * Post divider depends on pixel clock rate, DAC vs digital (and LVDS,
> -	 * but we don't support that).
> -	 * Note: don't use the DAC post divider as it seems unstable.
> -	 */
> -	mdiv |=3D (DPIO_POST_DIV_HDMIDP << DPIO_POST_DIV_SHIFT);
> -	vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW3(pipe), mdiv);
> -
> -	mdiv |=3D DPIO_ENABLE_CALIBRATION;
> -	vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW3(pipe), mdiv);
> -
> -	/* Set HBR and RBR LPF coefficients */
> -	if (pipe_config->port_clock =3D=3D 162000 ||
> -	    intel_crtc_has_type(pipe_config, INTEL_OUTPUT_ANALOG) ||
> -	    intel_crtc_has_type(pipe_config, INTEL_OUTPUT_HDMI))
> -		vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW10(pipe),
> -				 0x009f0003);
> -	else
> -		vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW10(pipe),
> -				 0x00d0000f);
> -
> -	if (intel_crtc_has_dp_encoder(pipe_config)) {
> -		/* Use SSC source */
> -		if (pipe =3D=3D PIPE_A)
> -			vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW5(pipe),
> -					 0x0df40000);
> -		else
> -			vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW5(pipe),
> -					 0x0df70000);
> -	} else { /* HDMI or VGA */
> -		/* Use bend source */
> -		if (pipe =3D=3D PIPE_A)
> -			vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW5(pipe),
> -					 0x0df70000);
> -		else
> -			vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW5(pipe),
> -					 0x0df40000);
> -	}
> -
> -	coreclk =3D vlv_dpio_read(dev_priv, pipe, VLV_PLL_DW7(pipe));
> -	coreclk =3D (coreclk & 0x0000ff00) | 0x01c00000;
> -	if (intel_crtc_has_dp_encoder(pipe_config))
> -		coreclk |=3D 0x01000000;
> -	vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW7(pipe), coreclk);
> -
> -	vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW11(pipe), 0x87871000);
> -
> -	vlv_dpio_put(dev_priv);
> -}
> -
> -static void chv_prepare_pll(struct intel_crtc *crtc,
> -			    const struct intel_crtc_state *pipe_config)
> -{
> -	struct drm_device *dev =3D crtc->base.dev;
> -	struct drm_i915_private *dev_priv =3D to_i915(dev);
> -	enum pipe pipe =3D crtc->pipe;
> -	enum dpio_channel port =3D vlv_pipe_to_channel(pipe);
> -	u32 loopfilter, tribuf_calcntr;
> -	u32 bestn, bestm1, bestm2, bestp1, bestp2, bestm2_frac;
> -	u32 dpio_val;
> -	int vco;
> -
> -	/* Enable Refclk and SSC */
> -	intel_de_write(dev_priv, DPLL(pipe),
> -		       pipe_config->dpll_hw_state.dpll & ~DPLL_VCO_ENABLE);
> -
> -	/* No need to actually set up the DPLL with DSI */
> -	if ((pipe_config->dpll_hw_state.dpll & DPLL_VCO_ENABLE) =3D=3D 0)
> -		return;
> -
> -	bestn =3D pipe_config->dpll.n;
> -	bestm2_frac =3D pipe_config->dpll.m2 & 0x3fffff;
> -	bestm1 =3D pipe_config->dpll.m1;
> -	bestm2 =3D pipe_config->dpll.m2 >> 22;
> -	bestp1 =3D pipe_config->dpll.p1;
> -	bestp2 =3D pipe_config->dpll.p2;
> -	vco =3D pipe_config->dpll.vco;
> -	dpio_val =3D 0;
> -	loopfilter =3D 0;
> -
> -	vlv_dpio_get(dev_priv);
> -
> -	/* p1 and p2 divider */
> -	vlv_dpio_write(dev_priv, pipe, CHV_CMN_DW13(port),
> -			5 << DPIO_CHV_S1_DIV_SHIFT |
> -			bestp1 << DPIO_CHV_P1_DIV_SHIFT |
> -			bestp2 << DPIO_CHV_P2_DIV_SHIFT |
> -			1 << DPIO_CHV_K_DIV_SHIFT);
> -
> -	/* Feedback post-divider - m2 */
> -	vlv_dpio_write(dev_priv, pipe, CHV_PLL_DW0(port), bestm2);
> -
> -	/* Feedback refclk divider - n and m1 */
> -	vlv_dpio_write(dev_priv, pipe, CHV_PLL_DW1(port),
> -			DPIO_CHV_M1_DIV_BY_2 |
> -			1 << DPIO_CHV_N_DIV_SHIFT);
> -
> -	/* M2 fraction division */
> -	vlv_dpio_write(dev_priv, pipe, CHV_PLL_DW2(port), bestm2_frac);
> -
> -	/* M2 fraction division enable */
> -	dpio_val =3D vlv_dpio_read(dev_priv, pipe, CHV_PLL_DW3(port));
> -	dpio_val &=3D ~(DPIO_CHV_FEEDFWD_GAIN_MASK | DPIO_CHV_FRAC_DIV_EN);
> -	dpio_val |=3D (2 << DPIO_CHV_FEEDFWD_GAIN_SHIFT);
> -	if (bestm2_frac)
> -		dpio_val |=3D DPIO_CHV_FRAC_DIV_EN;
> -	vlv_dpio_write(dev_priv, pipe, CHV_PLL_DW3(port), dpio_val);
> -
> -	/* Program digital lock detect threshold */
> -	dpio_val =3D vlv_dpio_read(dev_priv, pipe, CHV_PLL_DW9(port));
> -	dpio_val &=3D ~(DPIO_CHV_INT_LOCK_THRESHOLD_MASK |
> -					DPIO_CHV_INT_LOCK_THRESHOLD_SEL_COARSE);
> -	dpio_val |=3D (0x5 << DPIO_CHV_INT_LOCK_THRESHOLD_SHIFT);
> -	if (!bestm2_frac)
> -		dpio_val |=3D DPIO_CHV_INT_LOCK_THRESHOLD_SEL_COARSE;
> -	vlv_dpio_write(dev_priv, pipe, CHV_PLL_DW9(port), dpio_val);
> -
> -	/* Loop filter */
> -	if (vco =3D=3D 5400000) {
> -		loopfilter |=3D (0x3 << DPIO_CHV_PROP_COEFF_SHIFT);
> -		loopfilter |=3D (0x8 << DPIO_CHV_INT_COEFF_SHIFT);
> -		loopfilter |=3D (0x1 << DPIO_CHV_GAIN_CTRL_SHIFT);
> -		tribuf_calcntr =3D 0x9;
> -	} else if (vco <=3D 6200000) {
> -		loopfilter |=3D (0x5 << DPIO_CHV_PROP_COEFF_SHIFT);
> -		loopfilter |=3D (0xB << DPIO_CHV_INT_COEFF_SHIFT);
> -		loopfilter |=3D (0x3 << DPIO_CHV_GAIN_CTRL_SHIFT);
> -		tribuf_calcntr =3D 0x9;
> -	} else if (vco <=3D 6480000) {
> -		loopfilter |=3D (0x4 << DPIO_CHV_PROP_COEFF_SHIFT);
> -		loopfilter |=3D (0x9 << DPIO_CHV_INT_COEFF_SHIFT);
> -		loopfilter |=3D (0x3 << DPIO_CHV_GAIN_CTRL_SHIFT);
> -		tribuf_calcntr =3D 0x8;
> -	} else {
> -		/* Not supported. Apply the same limits as in the max case */
> -		loopfilter |=3D (0x4 << DPIO_CHV_PROP_COEFF_SHIFT);
> -		loopfilter |=3D (0x9 << DPIO_CHV_INT_COEFF_SHIFT);
> -		loopfilter |=3D (0x3 << DPIO_CHV_GAIN_CTRL_SHIFT);
> -		tribuf_calcntr =3D 0;
> -	}
> -	vlv_dpio_write(dev_priv, pipe, CHV_PLL_DW6(port), loopfilter);
> -
> -	dpio_val =3D vlv_dpio_read(dev_priv, pipe, CHV_PLL_DW8(port));
> -	dpio_val &=3D ~DPIO_CHV_TDC_TARGET_CNT_MASK;
> -	dpio_val |=3D (tribuf_calcntr << DPIO_CHV_TDC_TARGET_CNT_SHIFT);
> -	vlv_dpio_write(dev_priv, pipe, CHV_PLL_DW8(port), dpio_val);
> -
> -	/* AFC Recal */
> -	vlv_dpio_write(dev_priv, pipe, CHV_CMN_DW14(port),
> -			vlv_dpio_read(dev_priv, pipe, CHV_CMN_DW14(port)) |
> -			DPIO_AFC_RECAL);
> -
> -	vlv_dpio_put(dev_priv);
> -}
> -
> -/**
> - * vlv_force_pll_on - forcibly enable just the PLL
> - * @dev_priv: i915 private structure
> - * @pipe: pipe PLL to enable
> - * @dpll: PLL configuration
> - *
> - * Enable the PLL for @pipe using the supplied @dpll config. To be used
> - * in cases where we need the PLL enabled even when @pipe is not going to
> - * be enabled.
> - */
> -int vlv_force_pll_on(struct drm_i915_private *dev_priv, enum pipe pipe,
> -		     const struct dpll *dpll)
> -{
> -	struct intel_crtc *crtc =3D intel_get_crtc_for_pipe(dev_priv, pipe);
> -	struct intel_crtc_state *pipe_config;
> -
> -	pipe_config =3D intel_crtc_state_alloc(crtc);
> -	if (!pipe_config)
> -		return -ENOMEM;
> -
> -	pipe_config->cpu_transcoder =3D (enum transcoder)pipe;
> -	pipe_config->pixel_multiplier =3D 1;
> -	pipe_config->dpll =3D *dpll;
> -
> -	if (IS_CHERRYVIEW(dev_priv)) {
> -		chv_compute_dpll(crtc, pipe_config);
> -		chv_prepare_pll(crtc, pipe_config);
> -		chv_enable_pll(crtc, pipe_config);
> -	} else {
> -		vlv_compute_dpll(crtc, pipe_config);
> -		vlv_prepare_pll(crtc, pipe_config);
> -		vlv_enable_pll(crtc, pipe_config);
> -	}
> -
> -	kfree(pipe_config);
> -
> -	return 0;
> -}
> -
> -/**
> - * vlv_force_pll_off - forcibly disable just the PLL
> - * @dev_priv: i915 private structure
> - * @pipe: pipe PLL to disable
> - *
> - * Disable the PLL for @pipe. To be used in cases where we need
> - * the PLL enabled even when @pipe is not going to be enabled.
> - */
> -void vlv_force_pll_off(struct drm_i915_private *dev_priv, enum pipe pipe)
> -{
> -	if (IS_CHERRYVIEW(dev_priv))
> -		chv_disable_pll(dev_priv, pipe);
> -	else
> -		vlv_disable_pll(dev_priv, pipe);
> -}
> -
> -
> -
>  static void intel_set_transcoder_timings(const struct intel_crtc_state *=
crtc_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index f4214e161a9d..1cc1073a8f64 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -586,9 +586,6 @@ void intel_cleanup_plane_fb(struct drm_plane *plane,
>  void assert_pch_transcoder_disabled(struct drm_i915_private *dev_priv,
>  				    enum pipe pipe);
>  =

> -int vlv_force_pll_on(struct drm_i915_private *dev_priv, enum pipe pipe,
> -		     const struct dpll *dpll);
> -void vlv_force_pll_off(struct drm_i915_private *dev_priv, enum pipe pipe=
);
>  int lpt_get_iclkip(struct drm_i915_private *dev_priv);
>  bool intel_fuzzy_clock_check(int clock1, int clock2);
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index ec94ebdaf7b8..edb038cc7cd1 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -50,6 +50,7 @@
>  #include "intel_dp.h"
>  #include "intel_dp_link_training.h"
>  #include "intel_dp_mst.h"
> +#include "intel_dpll.h"
>  #include "intel_dpio_phy.h"
>  #include "intel_fifo_underrun.h"
>  #include "intel_hdcp.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/=
i915/display/intel_dpll.c
> index 7ba7f315aaee..166e9a3a8c09 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -3,11 +3,13 @@
>   * Copyright =A9 2020 Intel Corporation
>   */
>  #include <linux/kernel.h>
> +#include "intel_crtc.h"
>  #include "intel_display_types.h"
>  #include "intel_display.h"
>  #include "intel_dpll.h"
>  #include "intel_lvds.h"
>  #include "intel_panel.h"
> +#include "intel_sideband.h"
>  =

>  struct intel_limit {
>  	struct {
> @@ -1361,3 +1363,510 @@ intel_dpll_init_clock_hook(struct drm_i915_privat=
e *dev_priv)
>  	else
>  		dev_priv->display.crtc_compute_clock =3D i8xx_crtc_compute_clock;
>  }
> +
> +static bool i9xx_has_pps(struct drm_i915_private *dev_priv)
> +{
> +	if (IS_I830(dev_priv))
> +		return false;
> +
> +	return IS_PINEVIEW(dev_priv) || IS_MOBILE(dev_priv);
> +}
> +
> +void i9xx_enable_pll(struct intel_crtc *crtc,
> +		     const struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	i915_reg_t reg =3D DPLL(crtc->pipe);
> +	u32 dpll =3D crtc_state->dpll_hw_state.dpll;
> +	int i;
> +
> +	assert_pipe_disabled(dev_priv, crtc_state->cpu_transcoder);
> +
> +	/* PLL is protected by panel, make sure we can write it */
> +	if (i9xx_has_pps(dev_priv))
> +		assert_panel_unlocked(dev_priv, crtc->pipe);
> +
> +	/*
> +	 * Apparently we need to have VGA mode enabled prior to changing
> +	 * the P1/P2 dividers. Otherwise the DPLL will keep using the old
> +	 * dividers, even though the register value does change.
> +	 */
> +	intel_de_write(dev_priv, reg, dpll & ~DPLL_VGA_MODE_DIS);
> +	intel_de_write(dev_priv, reg, dpll);
> +
> +	/* Wait for the clocks to stabilize. */
> +	intel_de_posting_read(dev_priv, reg);
> +	udelay(150);
> +
> +	if (INTEL_GEN(dev_priv) >=3D 4) {
> +		intel_de_write(dev_priv, DPLL_MD(crtc->pipe),
> +			       crtc_state->dpll_hw_state.dpll_md);
> +	} else {
> +		/* The pixel multiplier can only be updated once the
> +		 * DPLL is enabled and the clocks are stable.
> +		 *
> +		 * So write it again.
> +		 */
> +		intel_de_write(dev_priv, reg, dpll);
> +	}
> +
> +	/* We do this three times for luck */
> +	for (i =3D 0; i < 3; i++) {
> +		intel_de_write(dev_priv, reg, dpll);
> +		intel_de_posting_read(dev_priv, reg);
> +		udelay(150); /* wait for warmup */
> +	}
> +}
> +
> +static void vlv_pllb_recal_opamp(struct drm_i915_private *dev_priv,
> +				 enum pipe pipe)
> +{
> +	u32 reg_val;
> +
> +	/*
> +	 * PLLB opamp always calibrates to max value of 0x3f, force enable it
> +	 * and set it to a reasonable value instead.
> +	 */
> +	reg_val =3D vlv_dpio_read(dev_priv, pipe, VLV_PLL_DW9(1));
> +	reg_val &=3D 0xffffff00;
> +	reg_val |=3D 0x00000030;
> +	vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW9(1), reg_val);
> +
> +	reg_val =3D vlv_dpio_read(dev_priv, pipe, VLV_REF_DW13);
> +	reg_val &=3D 0x00ffffff;
> +	reg_val |=3D 0x8c000000;
> +	vlv_dpio_write(dev_priv, pipe, VLV_REF_DW13, reg_val);
> +
> +	reg_val =3D vlv_dpio_read(dev_priv, pipe, VLV_PLL_DW9(1));
> +	reg_val &=3D 0xffffff00;
> +	vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW9(1), reg_val);
> +
> +	reg_val =3D vlv_dpio_read(dev_priv, pipe, VLV_REF_DW13);
> +	reg_val &=3D 0x00ffffff;
> +	reg_val |=3D 0xb0000000;
> +	vlv_dpio_write(dev_priv, pipe, VLV_REF_DW13, reg_val);
> +}
> +
> +static void _vlv_enable_pll(struct intel_crtc *crtc,
> +			    const struct intel_crtc_state *pipe_config)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	enum pipe pipe =3D crtc->pipe;
> +
> +	intel_de_write(dev_priv, DPLL(pipe), pipe_config->dpll_hw_state.dpll);
> +	intel_de_posting_read(dev_priv, DPLL(pipe));
> +	udelay(150);
> +
> +	if (intel_de_wait_for_set(dev_priv, DPLL(pipe), DPLL_LOCK_VLV, 1))
> +		drm_err(&dev_priv->drm, "DPLL %d failed to lock\n", pipe);
> +}
> +
> +void vlv_enable_pll(struct intel_crtc *crtc,
> +		    const struct intel_crtc_state *pipe_config)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	enum pipe pipe =3D crtc->pipe;
> +
> +	assert_pipe_disabled(dev_priv, pipe_config->cpu_transcoder);
> +
> +	/* PLL is protected by panel, make sure we can write it */
> +	assert_panel_unlocked(dev_priv, pipe);
> +
> +	if (pipe_config->dpll_hw_state.dpll & DPLL_VCO_ENABLE)
> +		_vlv_enable_pll(crtc, pipe_config);
> +
> +	intel_de_write(dev_priv, DPLL_MD(pipe),
> +		       pipe_config->dpll_hw_state.dpll_md);
> +	intel_de_posting_read(dev_priv, DPLL_MD(pipe));
> +}
> +
> +
> +static void _chv_enable_pll(struct intel_crtc *crtc,
> +			    const struct intel_crtc_state *pipe_config)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	enum pipe pipe =3D crtc->pipe;
> +	enum dpio_channel port =3D vlv_pipe_to_channel(pipe);
> +	u32 tmp;
> +
> +	vlv_dpio_get(dev_priv);
> +
> +	/* Enable back the 10bit clock to display controller */
> +	tmp =3D vlv_dpio_read(dev_priv, pipe, CHV_CMN_DW14(port));
> +	tmp |=3D DPIO_DCLKP_EN;
> +	vlv_dpio_write(dev_priv, pipe, CHV_CMN_DW14(port), tmp);
> +
> +	vlv_dpio_put(dev_priv);
> +
> +	/*
> +	 * Need to wait > 100ns between dclkp clock enable bit and PLL enable.
> +	 */
> +	udelay(1);
> +
> +	/* Enable PLL */
> +	intel_de_write(dev_priv, DPLL(pipe), pipe_config->dpll_hw_state.dpll);
> +
> +	/* Check PLL is locked */
> +	if (intel_de_wait_for_set(dev_priv, DPLL(pipe), DPLL_LOCK_VLV, 1))
> +		drm_err(&dev_priv->drm, "PLL %d failed to lock\n", pipe);
> +}
> +
> +void chv_enable_pll(struct intel_crtc *crtc,
> +		    const struct intel_crtc_state *pipe_config)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	enum pipe pipe =3D crtc->pipe;
> +
> +	assert_pipe_disabled(dev_priv, pipe_config->cpu_transcoder);
> +
> +	/* PLL is protected by panel, make sure we can write it */
> +	assert_panel_unlocked(dev_priv, pipe);
> +
> +	if (pipe_config->dpll_hw_state.dpll & DPLL_VCO_ENABLE)
> +		_chv_enable_pll(crtc, pipe_config);
> +
> +	if (pipe !=3D PIPE_A) {
> +		/*
> +		 * WaPixelRepeatModeFixForC0:chv
> +		 *
> +		 * DPLLCMD is AWOL. Use chicken bits to propagate
> +		 * the value from DPLLBMD to either pipe B or C.
> +		 */
> +		intel_de_write(dev_priv, CBR4_VLV, CBR_DPLLBMD_PIPE(pipe));
> +		intel_de_write(dev_priv, DPLL_MD(PIPE_B),
> +			       pipe_config->dpll_hw_state.dpll_md);
> +		intel_de_write(dev_priv, CBR4_VLV, 0);
> +		dev_priv->chv_dpll_md[pipe] =3D pipe_config->dpll_hw_state.dpll_md;
> +
> +		/*
> +		 * DPLLB VGA mode also seems to cause problems.
> +		 * We should always have it disabled.
> +		 */
> +		drm_WARN_ON(&dev_priv->drm,
> +			    (intel_de_read(dev_priv, DPLL(PIPE_B)) &
> +			     DPLL_VGA_MODE_DIS) =3D=3D 0);
> +	} else {
> +		intel_de_write(dev_priv, DPLL_MD(pipe),
> +			       pipe_config->dpll_hw_state.dpll_md);
> +		intel_de_posting_read(dev_priv, DPLL_MD(pipe));
> +	}
> +}
> +
> +void vlv_prepare_pll(struct intel_crtc *crtc,
> +		     const struct intel_crtc_state *pipe_config)
> +{
> +	struct drm_device *dev =3D crtc->base.dev;
> +	struct drm_i915_private *dev_priv =3D to_i915(dev);
> +	enum pipe pipe =3D crtc->pipe;
> +	u32 mdiv;
> +	u32 bestn, bestm1, bestm2, bestp1, bestp2;
> +	u32 coreclk, reg_val;
> +
> +	/* Enable Refclk */
> +	intel_de_write(dev_priv, DPLL(pipe),
> +		       pipe_config->dpll_hw_state.dpll & ~(DPLL_VCO_ENABLE | DPLL_EXT_=
BUFFER_ENABLE_VLV));
> +
> +	/* No need to actually set up the DPLL with DSI */
> +	if ((pipe_config->dpll_hw_state.dpll & DPLL_VCO_ENABLE) =3D=3D 0)
> +		return;
> +
> +	vlv_dpio_get(dev_priv);
> +
> +	bestn =3D pipe_config->dpll.n;
> +	bestm1 =3D pipe_config->dpll.m1;
> +	bestm2 =3D pipe_config->dpll.m2;
> +	bestp1 =3D pipe_config->dpll.p1;
> +	bestp2 =3D pipe_config->dpll.p2;
> +
> +	/* See eDP HDMI DPIO driver vbios notes doc */
> +
> +	/* PLL B needs special handling */
> +	if (pipe =3D=3D PIPE_B)
> +		vlv_pllb_recal_opamp(dev_priv, pipe);
> +
> +	/* Set up Tx target for periodic Rcomp update */
> +	vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW9_BCAST, 0x0100000f);
> +
> +	/* Disable target IRef on PLL */
> +	reg_val =3D vlv_dpio_read(dev_priv, pipe, VLV_PLL_DW8(pipe));
> +	reg_val &=3D 0x00ffffff;
> +	vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW8(pipe), reg_val);
> +
> +	/* Disable fast lock */
> +	vlv_dpio_write(dev_priv, pipe, VLV_CMN_DW0, 0x610);
> +
> +	/* Set idtafcrecal before PLL is enabled */
> +	mdiv =3D ((bestm1 << DPIO_M1DIV_SHIFT) | (bestm2 & DPIO_M2DIV_MASK));
> +	mdiv |=3D ((bestp1 << DPIO_P1_SHIFT) | (bestp2 << DPIO_P2_SHIFT));
> +	mdiv |=3D ((bestn << DPIO_N_SHIFT));
> +	mdiv |=3D (1 << DPIO_K_SHIFT);
> +
> +	/*
> +	 * Post divider depends on pixel clock rate, DAC vs digital (and LVDS,
> +	 * but we don't support that).
> +	 * Note: don't use the DAC post divider as it seems unstable.
> +	 */
> +	mdiv |=3D (DPIO_POST_DIV_HDMIDP << DPIO_POST_DIV_SHIFT);
> +	vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW3(pipe), mdiv);
> +
> +	mdiv |=3D DPIO_ENABLE_CALIBRATION;
> +	vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW3(pipe), mdiv);
> +
> +	/* Set HBR and RBR LPF coefficients */
> +	if (pipe_config->port_clock =3D=3D 162000 ||
> +	    intel_crtc_has_type(pipe_config, INTEL_OUTPUT_ANALOG) ||
> +	    intel_crtc_has_type(pipe_config, INTEL_OUTPUT_HDMI))
> +		vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW10(pipe),
> +				 0x009f0003);
> +	else
> +		vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW10(pipe),
> +				 0x00d0000f);
> +
> +	if (intel_crtc_has_dp_encoder(pipe_config)) {
> +		/* Use SSC source */
> +		if (pipe =3D=3D PIPE_A)
> +			vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW5(pipe),
> +					 0x0df40000);
> +		else
> +			vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW5(pipe),
> +					 0x0df70000);
> +	} else { /* HDMI or VGA */
> +		/* Use bend source */
> +		if (pipe =3D=3D PIPE_A)
> +			vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW5(pipe),
> +					 0x0df70000);
> +		else
> +			vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW5(pipe),
> +					 0x0df40000);
> +	}
> +
> +	coreclk =3D vlv_dpio_read(dev_priv, pipe, VLV_PLL_DW7(pipe));
> +	coreclk =3D (coreclk & 0x0000ff00) | 0x01c00000;
> +	if (intel_crtc_has_dp_encoder(pipe_config))
> +		coreclk |=3D 0x01000000;
> +	vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW7(pipe), coreclk);
> +
> +	vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW11(pipe), 0x87871000);
> +
> +	vlv_dpio_put(dev_priv);
> +}
> +
> +void chv_prepare_pll(struct intel_crtc *crtc,
> +		     const struct intel_crtc_state *pipe_config)
> +{
> +	struct drm_device *dev =3D crtc->base.dev;
> +	struct drm_i915_private *dev_priv =3D to_i915(dev);
> +	enum pipe pipe =3D crtc->pipe;
> +	enum dpio_channel port =3D vlv_pipe_to_channel(pipe);
> +	u32 loopfilter, tribuf_calcntr;
> +	u32 bestn, bestm1, bestm2, bestp1, bestp2, bestm2_frac;
> +	u32 dpio_val;
> +	int vco;
> +
> +	/* Enable Refclk and SSC */
> +	intel_de_write(dev_priv, DPLL(pipe),
> +		       pipe_config->dpll_hw_state.dpll & ~DPLL_VCO_ENABLE);
> +
> +	/* No need to actually set up the DPLL with DSI */
> +	if ((pipe_config->dpll_hw_state.dpll & DPLL_VCO_ENABLE) =3D=3D 0)
> +		return;
> +
> +	bestn =3D pipe_config->dpll.n;
> +	bestm2_frac =3D pipe_config->dpll.m2 & 0x3fffff;
> +	bestm1 =3D pipe_config->dpll.m1;
> +	bestm2 =3D pipe_config->dpll.m2 >> 22;
> +	bestp1 =3D pipe_config->dpll.p1;
> +	bestp2 =3D pipe_config->dpll.p2;
> +	vco =3D pipe_config->dpll.vco;
> +	dpio_val =3D 0;
> +	loopfilter =3D 0;
> +
> +	vlv_dpio_get(dev_priv);
> +
> +	/* p1 and p2 divider */
> +	vlv_dpio_write(dev_priv, pipe, CHV_CMN_DW13(port),
> +			5 << DPIO_CHV_S1_DIV_SHIFT |
> +			bestp1 << DPIO_CHV_P1_DIV_SHIFT |
> +			bestp2 << DPIO_CHV_P2_DIV_SHIFT |
> +			1 << DPIO_CHV_K_DIV_SHIFT);
> +
> +	/* Feedback post-divider - m2 */
> +	vlv_dpio_write(dev_priv, pipe, CHV_PLL_DW0(port), bestm2);
> +
> +	/* Feedback refclk divider - n and m1 */
> +	vlv_dpio_write(dev_priv, pipe, CHV_PLL_DW1(port),
> +			DPIO_CHV_M1_DIV_BY_2 |
> +			1 << DPIO_CHV_N_DIV_SHIFT);
> +
> +	/* M2 fraction division */
> +	vlv_dpio_write(dev_priv, pipe, CHV_PLL_DW2(port), bestm2_frac);
> +
> +	/* M2 fraction division enable */
> +	dpio_val =3D vlv_dpio_read(dev_priv, pipe, CHV_PLL_DW3(port));
> +	dpio_val &=3D ~(DPIO_CHV_FEEDFWD_GAIN_MASK | DPIO_CHV_FRAC_DIV_EN);
> +	dpio_val |=3D (2 << DPIO_CHV_FEEDFWD_GAIN_SHIFT);
> +	if (bestm2_frac)
> +		dpio_val |=3D DPIO_CHV_FRAC_DIV_EN;
> +	vlv_dpio_write(dev_priv, pipe, CHV_PLL_DW3(port), dpio_val);
> +
> +	/* Program digital lock detect threshold */
> +	dpio_val =3D vlv_dpio_read(dev_priv, pipe, CHV_PLL_DW9(port));
> +	dpio_val &=3D ~(DPIO_CHV_INT_LOCK_THRESHOLD_MASK |
> +					DPIO_CHV_INT_LOCK_THRESHOLD_SEL_COARSE);
> +	dpio_val |=3D (0x5 << DPIO_CHV_INT_LOCK_THRESHOLD_SHIFT);
> +	if (!bestm2_frac)
> +		dpio_val |=3D DPIO_CHV_INT_LOCK_THRESHOLD_SEL_COARSE;
> +	vlv_dpio_write(dev_priv, pipe, CHV_PLL_DW9(port), dpio_val);
> +
> +	/* Loop filter */
> +	if (vco =3D=3D 5400000) {
> +		loopfilter |=3D (0x3 << DPIO_CHV_PROP_COEFF_SHIFT);
> +		loopfilter |=3D (0x8 << DPIO_CHV_INT_COEFF_SHIFT);
> +		loopfilter |=3D (0x1 << DPIO_CHV_GAIN_CTRL_SHIFT);
> +		tribuf_calcntr =3D 0x9;
> +	} else if (vco <=3D 6200000) {
> +		loopfilter |=3D (0x5 << DPIO_CHV_PROP_COEFF_SHIFT);
> +		loopfilter |=3D (0xB << DPIO_CHV_INT_COEFF_SHIFT);
> +		loopfilter |=3D (0x3 << DPIO_CHV_GAIN_CTRL_SHIFT);
> +		tribuf_calcntr =3D 0x9;
> +	} else if (vco <=3D 6480000) {
> +		loopfilter |=3D (0x4 << DPIO_CHV_PROP_COEFF_SHIFT);
> +		loopfilter |=3D (0x9 << DPIO_CHV_INT_COEFF_SHIFT);
> +		loopfilter |=3D (0x3 << DPIO_CHV_GAIN_CTRL_SHIFT);
> +		tribuf_calcntr =3D 0x8;
> +	} else {
> +		/* Not supported. Apply the same limits as in the max case */
> +		loopfilter |=3D (0x4 << DPIO_CHV_PROP_COEFF_SHIFT);
> +		loopfilter |=3D (0x9 << DPIO_CHV_INT_COEFF_SHIFT);
> +		loopfilter |=3D (0x3 << DPIO_CHV_GAIN_CTRL_SHIFT);
> +		tribuf_calcntr =3D 0;
> +	}
> +	vlv_dpio_write(dev_priv, pipe, CHV_PLL_DW6(port), loopfilter);
> +
> +	dpio_val =3D vlv_dpio_read(dev_priv, pipe, CHV_PLL_DW8(port));
> +	dpio_val &=3D ~DPIO_CHV_TDC_TARGET_CNT_MASK;
> +	dpio_val |=3D (tribuf_calcntr << DPIO_CHV_TDC_TARGET_CNT_SHIFT);
> +	vlv_dpio_write(dev_priv, pipe, CHV_PLL_DW8(port), dpio_val);
> +
> +	/* AFC Recal */
> +	vlv_dpio_write(dev_priv, pipe, CHV_CMN_DW14(port),
> +			vlv_dpio_read(dev_priv, pipe, CHV_CMN_DW14(port)) |
> +			DPIO_AFC_RECAL);
> +
> +	vlv_dpio_put(dev_priv);
> +}
> +
> +/**
> + * vlv_force_pll_on - forcibly enable just the PLL
> + * @dev_priv: i915 private structure
> + * @pipe: pipe PLL to enable
> + * @dpll: PLL configuration
> + *
> + * Enable the PLL for @pipe using the supplied @dpll config. To be used
> + * in cases where we need the PLL enabled even when @pipe is not going to
> + * be enabled.
> + */
> +int vlv_force_pll_on(struct drm_i915_private *dev_priv, enum pipe pipe,
> +		     const struct dpll *dpll)
> +{
> +	struct intel_crtc *crtc =3D intel_get_crtc_for_pipe(dev_priv, pipe);
> +	struct intel_crtc_state *pipe_config;
> +
> +	pipe_config =3D intel_crtc_state_alloc(crtc);
> +	if (!pipe_config)
> +		return -ENOMEM;
> +
> +	pipe_config->cpu_transcoder =3D (enum transcoder)pipe;
> +	pipe_config->pixel_multiplier =3D 1;
> +	pipe_config->dpll =3D *dpll;
> +
> +	if (IS_CHERRYVIEW(dev_priv)) {
> +		chv_compute_dpll(crtc, pipe_config);
> +		chv_prepare_pll(crtc, pipe_config);
> +		chv_enable_pll(crtc, pipe_config);
> +	} else {
> +		vlv_compute_dpll(crtc, pipe_config);
> +		vlv_prepare_pll(crtc, pipe_config);
> +		vlv_enable_pll(crtc, pipe_config);
> +	}
> +
> +	kfree(pipe_config);
> +
> +	return 0;
> +}
> +
> +void vlv_disable_pll(struct drm_i915_private *dev_priv, enum pipe pipe)
> +{
> +	u32 val;
> +
> +	/* Make sure the pipe isn't still relying on us */
> +	assert_pipe_disabled(dev_priv, (enum transcoder)pipe);
> +
> +	val =3D DPLL_INTEGRATED_REF_CLK_VLV |
> +		DPLL_REF_CLK_ENABLE_VLV | DPLL_VGA_MODE_DIS;
> +	if (pipe !=3D PIPE_A)
> +		val |=3D DPLL_INTEGRATED_CRI_CLK_VLV;
> +
> +	intel_de_write(dev_priv, DPLL(pipe), val);
> +	intel_de_posting_read(dev_priv, DPLL(pipe));
> +}
> +
> +void chv_disable_pll(struct drm_i915_private *dev_priv, enum pipe pipe)
> +{
> +	enum dpio_channel port =3D vlv_pipe_to_channel(pipe);
> +	u32 val;
> +
> +	/* Make sure the pipe isn't still relying on us */
> +	assert_pipe_disabled(dev_priv, (enum transcoder)pipe);
> +
> +	val =3D DPLL_SSC_REF_CLK_CHV |
> +		DPLL_REF_CLK_ENABLE_VLV | DPLL_VGA_MODE_DIS;
> +	if (pipe !=3D PIPE_A)
> +		val |=3D DPLL_INTEGRATED_CRI_CLK_VLV;
> +
> +	intel_de_write(dev_priv, DPLL(pipe), val);
> +	intel_de_posting_read(dev_priv, DPLL(pipe));
> +
> +	vlv_dpio_get(dev_priv);
> +
> +	/* Disable 10bit clock to display controller */
> +	val =3D vlv_dpio_read(dev_priv, pipe, CHV_CMN_DW14(port));
> +	val &=3D ~DPIO_DCLKP_EN;
> +	vlv_dpio_write(dev_priv, pipe, CHV_CMN_DW14(port), val);
> +
> +	vlv_dpio_put(dev_priv);
> +}
> +
> +void i9xx_disable_pll(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	enum pipe pipe =3D crtc->pipe;
> +
> +	/* Don't disable pipe or pipe PLLs if needed */
> +	if (IS_I830(dev_priv))
> +		return;
> +
> +	/* Make sure the pipe isn't still relying on us */
> +	assert_pipe_disabled(dev_priv, crtc_state->cpu_transcoder);
> +
> +	intel_de_write(dev_priv, DPLL(pipe), DPLL_VGA_MODE_DIS);
> +	intel_de_posting_read(dev_priv, DPLL(pipe));
> +}
> +
> +
> +/**
> + * vlv_force_pll_off - forcibly disable just the PLL
> + * @dev_priv: i915 private structure
> + * @pipe: pipe PLL to disable
> + *
> + * Disable the PLL for @pipe. To be used in cases where we need
> + * the PLL enabled even when @pipe is not going to be enabled.
> + */
> +void vlv_force_pll_off(struct drm_i915_private *dev_priv, enum pipe pipe)
> +{
> +	if (IS_CHERRYVIEW(dev_priv))
> +		chv_disable_pll(dev_priv, pipe);
> +	else
> +		vlv_disable_pll(dev_priv, pipe);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.h b/drivers/gpu/drm/=
i915/display/intel_dpll.h
> index caf4615092e1..7ff4b0d29ed1 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.h
> @@ -10,6 +10,7 @@ struct dpll;
>  struct drm_i915_private;
>  struct intel_crtc;
>  struct intel_crtc_state;
> +enum pipe;
>  =

>  void intel_dpll_init_clock_hook(struct drm_i915_private *dev_priv);
>  int vlv_calc_dpll_params(int refclk, struct dpll *clock);
> @@ -20,4 +21,21 @@ void vlv_compute_dpll(struct intel_crtc *crtc,
>  void chv_compute_dpll(struct intel_crtc *crtc,
>  		      struct intel_crtc_state *pipe_config);
>  =

> +int vlv_force_pll_on(struct drm_i915_private *dev_priv, enum pipe pipe,
> +		     const struct dpll *dpll);
> +void vlv_force_pll_off(struct drm_i915_private *dev_priv, enum pipe pipe=
);
> +void i9xx_enable_pll(struct intel_crtc *crtc,
> +		     const struct intel_crtc_state *crtc_state);
> +void vlv_enable_pll(struct intel_crtc *crtc,
> +		    const struct intel_crtc_state *pipe_config);
> +void chv_enable_pll(struct intel_crtc *crtc,
> +		    const struct intel_crtc_state *pipe_config);
> +void vlv_disable_pll(struct drm_i915_private *dev_priv, enum pipe pipe);
> +void chv_disable_pll(struct drm_i915_private *dev_priv, enum pipe pipe);
> +void i9xx_disable_pll(const struct intel_crtc_state *crtc_state);
> +void vlv_prepare_pll(struct intel_crtc *crtc,
> +		     const struct intel_crtc_state *pipe_config);
> +void chv_prepare_pll(struct intel_crtc *crtc,
> +		     const struct intel_crtc_state *pipe_config);
> +
>  #endif
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i=
915/display/intel_pps.c
> index 58eff6289d12..0a9b2abf290e 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -6,6 +6,7 @@
>  #include "i915_drv.h"
>  #include "intel_display_types.h"
>  #include "intel_dp.h"
> +#include "intel_dpll.h"
>  #include "intel_pps.h"
>  =

>  static void vlv_steal_power_sequencer(struct drm_i915_private *dev_priv,
> -- =

> 2.20.1
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
