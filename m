Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5212A9AFC58
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 10:19:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 984BE10E128;
	Fri, 25 Oct 2024 08:19:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TNMAOaz6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00B6D10E128;
 Fri, 25 Oct 2024 08:19:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729844360; x=1761380360;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Zw5swBHYo/goc5u70ju592xLIVeBTpWAgShsTjRAk2c=;
 b=TNMAOaz6u0Cqkb8U9e3d/dzoZ4NKvaUoHmbsdGS4qq23C/k0r+AurDq5
 2vpTpKZnnKzt398g92g/vm44bCMzqB2NaVUZjlKMyLasTl8FOudxJI19h
 rRsM1hdiu6b8ap1S6UbFCFRicjJk8+XOSUAYAKyo28RwloPTahfxENJfU
 MqfpXWG6txI+kVHlzu3KK/uUvL4NGCAmeCSngg5NAwZVEX71MpZoxEZGM
 hTAdEkmXnSRjpO1CEzQOQbzT7TxrVgGlK2WA6vuuBEFEhe0MXpi32/Pu7
 HnGuWt16LJkK/tiad/CvXrCeH3cH3O8DypbsIt6Kwi0OZ7QIOw2Yr1uN1 Q==;
X-CSE-ConnectionGUID: o/PrBHdrQkicjJWXRfCElw==
X-CSE-MsgGUID: 2YKweeKzQlqagUEoWIrJTQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="46989991"
X-IronPort-AV: E=Sophos;i="6.11,231,1725346800"; d="scan'208";a="46989991"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 01:19:20 -0700
X-CSE-ConnectionGUID: 8Yexn6nGTUKP0TA4DtblzQ==
X-CSE-MsgGUID: 9F8i1A9CTh2XxP43F2jiZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,231,1725346800"; d="scan'208";a="80957977"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 25 Oct 2024 01:19:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 25 Oct 2024 11:19:16 +0300
Date: Fri, 25 Oct 2024 11:19:16 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/display: use x100 version for full version and
 release
Message-ID: <ZxtUhCYU9Fl-Cp_x@intel.com>
References: <20241024171104.2427750-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241024171104.2427750-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
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

On Thu, Oct 24, 2024 at 08:11:04PM +0300, Jani Nikula wrote:
> Use x100, or ver * 100 + rel, versions for full IP version checks,

Have the hardware folks promised to never use minor >= 100?

> similar to what xe driver does:
> 
> - Replace IP_VER(14, 1) inline with 1401, etc.
> 
> - Convert DISPLAY_VER_FULL() to DISPLAY_VERx100()
> 
> - Convert IS_DISPLAY_VER_FULL() to IS_DISPLAY_VERx100()
> 
> - Convert IS_DISPLAY_VER_STEP() to IS_DISPLAY_VERx100_STEP()
> 
> This makes ver.rel versions easier to use, follows the xe driver
> pattern, and drops the dependency on the IP_VER() macro.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c       |  2 +-
>  drivers/gpu/drm/i915/display/intel_cdclk.c    |  6 +++---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  4 ++--
>  .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  2 +-
>  .../drm/i915/display/intel_display_device.h   | 20 +++++++++----------
>  .../drm/i915/display/intel_display_power.c    |  4 ++--
>  drivers/gpu/drm/i915/display/intel_dmc.c      |  6 +++---
>  drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
>  drivers/gpu/drm/i915/display/intel_fbc.c      |  2 +-
>  drivers/gpu/drm/i915/display/intel_hdcp.c     |  6 +++---
>  drivers/gpu/drm/i915/display/intel_pmdemand.c |  2 +-
>  drivers/gpu/drm/i915/display/intel_psr.c      |  8 ++++----
>  drivers/gpu/drm/i915/display/skl_watermark.c  |  2 +-
>  13 files changed, 33 insertions(+), 33 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 47036d4abb33..a52b0ae68b96 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -743,7 +743,7 @@ void intel_bw_init_hw(struct drm_i915_private *dev_priv)
>  	if (!HAS_DISPLAY(dev_priv))
>  		return;
>  
> -	if (DISPLAY_VER_FULL(dev_priv) >= IP_VER(14, 1) && IS_DGFX(dev_priv))
> +	if (DISPLAY_VERx100(dev_priv) >= 1401 && IS_DGFX(dev_priv))
>  		xe2_hpd_get_bw_info(dev_priv, &xe2_hpd_sa_info);
>  	else if (DISPLAY_VER(dev_priv) >= 14)
>  		tgl_get_bw_info(dev_priv, &mtl_sa_info);
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 96523526a2c3..03c4eef3f92a 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2058,8 +2058,8 @@ static bool pll_enable_wa_needed(struct intel_display *display)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  
> -	return (DISPLAY_VER_FULL(display) == IP_VER(20, 0) ||
> -		DISPLAY_VER_FULL(display) == IP_VER(14, 0) ||
> +	return (DISPLAY_VERx100(display) == 2000 ||
> +		DISPLAY_VERx100(display) == 1400 ||
>  		IS_DG2(dev_priv)) &&
>  		display->cdclk.hw.vco > 0;
>  }
> @@ -3852,7 +3852,7 @@ void intel_init_cdclk_hooks(struct intel_display *display)
>  	} else if (DISPLAY_VER(display) >= 20) {
>  		display->funcs.cdclk = &rplu_cdclk_funcs;
>  		display->cdclk.table = xe2lpd_cdclk_table;
> -	} else if (DISPLAY_VER_FULL(display) >= IP_VER(14, 1)) {
> +	} else if (DISPLAY_VERx100(display) >= 1401) {
>  		display->funcs.cdclk = &rplu_cdclk_funcs;
>  		display->cdclk.table = xe2hpd_cdclk_table;
>  	} else if (DISPLAY_VER(display) >= 14) {
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 8bd5a4d1b735..85836751259f 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2260,13 +2260,13 @@ intel_c20_pll_tables_get(struct intel_crtc_state *crtc_state,
>  
>  	if (intel_crtc_has_dp_encoder(crtc_state)) {
>  		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)) {
> -			if (DISPLAY_VER_FULL(i915) == IP_VER(14, 1))
> +			if (DISPLAY_VERx100(i915) == 1401)
>  				return xe2hpd_c20_edp_tables;
>  		}
>  
>  		if (DISPLAY_VER(i915) >= 30)
>  			return xe3lpd_c20_dp_edp_tables;
> -		else if (DISPLAY_VER_FULL(i915) == IP_VER(14, 1))
> +		else if (DISPLAY_VERx100(i915) == 1401)
>  			return xe2hpd_c20_dp_tables;
>  		else
>  			return mtl_c20_dp_tables;
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> index ab3ae110b68f..ead486c59639 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> @@ -273,7 +273,7 @@
>  #define _XE2HPD_C20_A_MPLLB_CFG		0xCCC2
>  #define _XE2HPD_C20_B_MPLLB_CFG		0xCCB6
>  
> -#define _IS_XE2HPD_C20(i915)	(DISPLAY_VER_FULL(i915) == IP_VER(14, 1))
> +#define _IS_XE2HPD_C20(i915)	(DISPLAY_VERx100(i915) == 1401)
>  
>  #define PHY_C20_A_TX_CNTX_CFG(i915, idx) \
>  		((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_A_TX_CNTX_CFG : _MTL_C20_A_TX_CNTX_CFG) - (idx))
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 071a36b51f79..cac47bfaabba 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -168,10 +168,10 @@ enum intel_display_subplatform {
>  #define SUPPORTS_TV(i915)		(DISPLAY_INFO(i915)->supports_tv)
>  
>  /* Check that device has a display IP version within the specific range. */
> -#define IS_DISPLAY_VER_FULL(__i915, from, until) ( \
> -	BUILD_BUG_ON_ZERO((from) < IP_VER(2, 0)) + \
> -	(DISPLAY_VER_FULL(__i915) >= (from) && \
> -	 DISPLAY_VER_FULL(__i915) <= (until)))
> +#define IS_DISPLAY_VERx100(__i915, from, until) ( \
> +	BUILD_BUG_ON_ZERO((from) < 200) + \
> +	(DISPLAY_VERx100(__i915) >= (from) && \
> +	 DISPLAY_VERx100(__i915) <= (until)))
>  
>  /*
>   * Check if a device has a specific IP version as well as a stepping within the
> @@ -182,22 +182,22 @@ enum intel_display_subplatform {
>   * hardware fix is present and the software workaround is no longer necessary.
>   * E.g.,
>   *
> - *    IS_DISPLAY_VER_STEP(i915, IP_VER(14, 0), STEP_A0, STEP_B2)
> - *    IS_DISPLAY_VER_STEP(i915, IP_VER(14, 0), STEP_C0, STEP_FOREVER)
> + *    IS_DISPLAY_VERx100_STEP(i915, 1400, STEP_A0, STEP_B2)
> + *    IS_DISPLAY_VERx100_STEP(i915, 1400, STEP_C0, STEP_FOREVER)
>   *
>   * "STEP_FOREVER" can be passed as "until" for workarounds that have no upper
>   * stepping bound for the specified IP version.
>   */
> -#define IS_DISPLAY_VER_STEP(__i915, ipver, from, until) \
> -	(IS_DISPLAY_VER_FULL((__i915), (ipver), (ipver)) && \
> +#define IS_DISPLAY_VERx100_STEP(__i915, ipver, from, until) \
> +	(IS_DISPLAY_VERx100((__i915), (ipver), (ipver)) && \
>  	 IS_DISPLAY_STEP((__i915), (from), (until)))
>  
>  #define DISPLAY_INFO(i915)		(__to_intel_display(i915)->info.__device_info)
>  #define DISPLAY_RUNTIME_INFO(i915)	(&__to_intel_display(i915)->info.__runtime_info)
>  
>  #define DISPLAY_VER(i915)	(DISPLAY_RUNTIME_INFO(i915)->ip.ver)
> -#define DISPLAY_VER_FULL(i915)	IP_VER(DISPLAY_RUNTIME_INFO(i915)->ip.ver, \
> -				       DISPLAY_RUNTIME_INFO(i915)->ip.rel)
> +#define DISPLAY_VERx100(i915)	(DISPLAY_RUNTIME_INFO(i915)->ip.ver * 100 + \
> +				 DISPLAY_RUNTIME_INFO(i915)->ip.rel)
>  #define IS_DISPLAY_VER(i915, from, until) \
>  	(DISPLAY_VER(i915) >= (from) && DISPLAY_VER(i915) <= (until))
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index c2bc80f5bf6b..d34dd650b839 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1683,14 +1683,14 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
>  		intel_snps_phy_wait_for_calibration(dev_priv);
>  
>  	/* 9. XE2_HPD: Program CHICKEN_MISC_2 before any cursor or planes are enabled */
> -	if (DISPLAY_VER_FULL(dev_priv) == IP_VER(14, 1))
> +	if (DISPLAY_VERx100(dev_priv) == 1401)
>  		intel_de_rmw(dev_priv, CHICKEN_MISC_2, BMG_DARB_HALF_BLK_END_BURST, 1);
>  
>  	if (resume)
>  		intel_dmc_load_program(display);
>  
>  	/* Wa_14011508470:tgl,dg1,rkl,adl-s,adl-p,dg2 */
> -	if (IS_DISPLAY_VER_FULL(dev_priv, IP_VER(12, 0), IP_VER(13, 0)))
> +	if (IS_DISPLAY_VERx100(dev_priv, 1200, 1300))
>  		intel_de_rmw(dev_priv, GEN11_CHICKEN_DCPR_2, 0,
>  			     DCPR_CLEAR_MEMSTAT_DIS | DCPR_SEND_RESP_IMM |
>  			     DCPR_MASK_LPMODE | DCPR_MASK_MAXLATENCY_MEMUP_CLR);
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 48bbbf8f312c..ac122b76cb58 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -168,13 +168,13 @@ static const char *dmc_firmware_default(struct intel_display *display, u32 *size
>  	const char *fw_path = NULL;
>  	u32 max_fw_size = 0;
>  
> -	if (DISPLAY_VER_FULL(display) == IP_VER(20, 0)) {
> +	if (DISPLAY_VERx100(display) == 2000) {
>  		fw_path = XE2LPD_DMC_PATH;
>  		max_fw_size = XE2LPD_DMC_MAX_FW_SIZE;
> -	} else if (DISPLAY_VER_FULL(display) == IP_VER(14, 1)) {
> +	} else if (DISPLAY_VERx100(display) == 1401) {
>  		fw_path = BMG_DMC_PATH;
>  		max_fw_size = XELPDP_DMC_MAX_FW_SIZE;
> -	} else if (DISPLAY_VER_FULL(display) == IP_VER(14, 0)) {
> +	} else if (DISPLAY_VERx100(display) == 1400) {
>  		fw_path = MTL_DMC_PATH;
>  		max_fw_size = XELPDP_DMC_MAX_FW_SIZE;
>  	} else if (IS_DG2(i915)) {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 7e29619ba040..6adeaacb9abb 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -497,7 +497,7 @@ static int mtl_max_source_rate(struct intel_dp *intel_dp)
>  	if (intel_encoder_is_c10phy(encoder))
>  		return 810000;
>  
> -	if (DISPLAY_VER_FULL(to_i915(encoder->base.dev)) == IP_VER(14, 1))
> +	if (DISPLAY_VERx100(to_i915(encoder->base.dev)) == 1401)
>  		return 1350000;
>  
>  	return 2000000;
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 2e0863093cff..df05904bac8a 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1347,7 +1347,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
>  
>  	/* Wa_14016291713 */
>  	if ((IS_DISPLAY_VER(display, 12, 13) ||
> -	     IS_DISPLAY_VER_STEP(i915, IP_VER(14, 0), STEP_A0, STEP_C0)) &&
> +	     IS_DISPLAY_VERx100_STEP(i915, 1400, STEP_A0, STEP_C0)) &&
>  	    crtc_state->has_psr && !crtc_state->has_panel_replay) {
>  		plane_state->no_fbc_reason = "PSR1 enabled (Wa_14016291713)";
>  		return 0;
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index ed6aa87403e2..268deddc5281 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -43,11 +43,11 @@ intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
>  		return;
>  
>  	if (DISPLAY_VER(display) >= 14) {
> -		if (IS_DISPLAY_VER_STEP(display, IP_VER(14, 0), STEP_D0, STEP_FOREVER))
> +		if (IS_DISPLAY_VERx100_STEP(display, 1400, STEP_D0, STEP_FOREVER))
>  			intel_de_rmw(display, MTL_CHICKEN_TRANS(hdcp->cpu_transcoder),
>  				     0, HDCP_LINE_REKEY_DISABLE);
> -		else if (IS_DISPLAY_VER_STEP(display, IP_VER(14, 1), STEP_B0, STEP_FOREVER) ||
> -			 IS_DISPLAY_VER_STEP(display, IP_VER(20, 0), STEP_B0, STEP_FOREVER))
> +		else if (IS_DISPLAY_VERx100_STEP(display, 1401, STEP_B0, STEP_FOREVER) ||
> +			 IS_DISPLAY_VERx100_STEP(display, 2000, STEP_B0, STEP_FOREVER))
>  			intel_de_rmw(display,
>  				     TRANS_DDI_FUNC_CTL(display, hdcp->cpu_transcoder),
>  				     0, TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
> diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
> index ceaf9e3147da..2edd3999fd2c 100644
> --- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
> +++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
> @@ -92,7 +92,7 @@ int intel_pmdemand_init(struct drm_i915_private *i915)
>  				     &pmdemand_state->base,
>  				     &intel_pmdemand_funcs);
>  
> -	if (IS_DISPLAY_VER_STEP(i915, IP_VER(14, 0), STEP_A0, STEP_C0))
> +	if (IS_DISPLAY_VERx100_STEP(i915, 1400, STEP_A0, STEP_C0))
>  		/* Wa_14016740474 */
>  		intel_de_rmw(i915, XELPD_CHICKEN_DCPR_3, 0, DMD_RSP_TIMEOUT_DISABLE);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 4176163ec19a..7b75c5ef6316 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1914,14 +1914,14 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
>  		 * cause issues if non-supported panels are used.
>  		 */
>  		if (!intel_dp->psr.panel_replay_enabled &&
> -		    (IS_DISPLAY_VER_STEP(display, IP_VER(14, 0), STEP_A0, STEP_B0) ||
> +		    (IS_DISPLAY_VERx100_STEP(display, 1400, STEP_A0, STEP_B0) ||
>  		     IS_ALDERLAKE_P(dev_priv)))
>  			intel_de_rmw(display, hsw_chicken_trans_reg(dev_priv, cpu_transcoder),
>  				     0, ADLP_1_BASED_X_GRANULARITY);
>  
>  		/* Wa_16012604467:adlp,mtl[a0,b0] */
>  		if (!intel_dp->psr.panel_replay_enabled &&
> -		    IS_DISPLAY_VER_STEP(display, IP_VER(14, 0), STEP_A0, STEP_B0))
> +		    IS_DISPLAY_VERx100_STEP(display, 1400, STEP_A0, STEP_B0))
>  			intel_de_rmw(display,
>  				     MTL_CLKGATE_DIS_TRANS(display, cpu_transcoder),
>  				     0,
> @@ -2106,7 +2106,7 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
>  	if (intel_dp->psr.sel_update_enabled) {
>  		/* Wa_16012604467:adlp,mtl[a0,b0] */
>  		if (!intel_dp->psr.panel_replay_enabled &&
> -		    IS_DISPLAY_VER_STEP(display, IP_VER(14, 0), STEP_A0, STEP_B0))
> +		    IS_DISPLAY_VERx100_STEP(display, 1400, STEP_A0, STEP_B0))
>  			intel_de_rmw(display,
>  				     MTL_CLKGATE_DIS_TRANS(display, cpu_transcoder),
>  				     MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS, 0);
> @@ -2561,7 +2561,7 @@ intel_psr_apply_su_area_workarounds(struct intel_crtc_state *crtc_state)
>  
>  	/* Wa_14014971492 */
>  	if (!crtc_state->has_panel_replay &&
> -	    ((IS_DISPLAY_VER_STEP(display, IP_VER(14, 0), STEP_A0, STEP_B0) ||
> +	    ((IS_DISPLAY_VERx100_STEP(display, 1400, STEP_A0, STEP_B0) ||
>  	      IS_ALDERLAKE_P(i915) || IS_TIGERLAKE(i915))) &&
>  	    crtc_state->splitter.enable)
>  		crtc_state->psr2_su_area.y1 = 0;
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 31de33e868df..3b0e87edbacf 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -3533,7 +3533,7 @@ static void intel_mbus_dbox_update(struct intel_atomic_state *state)
>  	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, new_dbuf_state->active_pipes) {
>  		u32 pipe_val = val;
>  
> -		if (DISPLAY_VER_FULL(i915) == IP_VER(14, 0)) {
> +		if (DISPLAY_VERx100(i915) == 1400) {
>  			if (xelpdp_is_only_pipe_per_dbuf_bank(crtc->pipe,
>  							      new_dbuf_state->active_pipes))
>  				pipe_val |= MBUS_DBOX_BW_8CREDITS_MTL;
> -- 
> 2.39.5

-- 
Ville Syrjälä
Intel
