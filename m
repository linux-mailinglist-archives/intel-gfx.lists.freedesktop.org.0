Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 425343CBE07
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jul 2021 22:52:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 832226E9D7;
	Fri, 16 Jul 2021 20:52:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34D706E9D7
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Jul 2021 20:52:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10047"; a="207763200"
X-IronPort-AV: E=Sophos;i="5.84,245,1620716400"; d="scan'208";a="207763200"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2021 13:52:02 -0700
X-IronPort-AV: E=Sophos;i="5.84,245,1620716400"; d="scan'208";a="574428326"
Received: from hnilles-mobl.amr.corp.intel.com (HELO msatwood-mobl)
 ([10.209.29.217])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2021 13:52:02 -0700
Date: Fri, 16 Jul 2021 13:52:00 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>;,
	intel-gfx@lists.freedesktop.org
Message-ID: <20210716205200.GB19458@msatwood-mobl>
References: <20210714031540.3539704-1-matthew.d.roper@intel.com>
 <20210714031540.3539704-47-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210714031540.3539704-47-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 46/50] drm/i915/dg2: Wait for SNPS PHY
 calibration during display init
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jul 13, 2021 at 08:15:36PM -0700, Matt Roper wrote:
> Initialization of the PHY is handled by the hardware/firmware, but the
> driver should wait up to 25ms for the PHY to report that its calibration
> has completed.
> 
> Bspec: 49189
> Bspec: 50107
> Cc: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_power.c    |  5 +++++
>  drivers/gpu/drm/i915/display/intel_snps_phy.c     | 15 +++++++++++++++
>  drivers/gpu/drm/i915/display/intel_snps_phy.h     |  3 +++
>  drivers/gpu/drm/i915/i915_reg.h                   |  1 +
>  4 files changed, 24 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 9593c517a321..2fb178a27327 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -18,6 +18,7 @@
>  #include "intel_pm.h"
>  #include "intel_pps.h"
>  #include "intel_sideband.h"
> +#include "intel_snps_phy.h"
>  #include "intel_tc.h"
>  #include "intel_vga.h"
>  
> @@ -5900,6 +5901,10 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
>  	if (DISPLAY_VER(dev_priv) >= 12)
>  		tgl_bw_buddy_init(dev_priv);
>  
> +	/* 8. Ensure PHYs have completed calibration and adaptation */
> +	if (IS_DG2(dev_priv))
> +		intel_snps_phy_wait_for_calibration(dev_priv);
> +
>  	if (resume && intel_dmc_has_payload(dev_priv))
>  		intel_dmc_load_program(dev_priv);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> index 77759bda98a4..f0c30d3d2dfb 100644
> --- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> @@ -21,6 +21,21 @@
>   * since it is not handled by the shared DPLL framework as on other platforms.
>   */
>  
> +void intel_snps_phy_wait_for_calibration(struct drm_i915_private *dev_priv)
> +{
> +	enum phy phy;
> +
> +	for_each_phy_masked(phy, ~0) {
> +		if (!intel_phy_is_snps(dev_priv, phy))
> +			continue;
> +
> +		if (intel_de_wait_for_clear(dev_priv, ICL_PHY_MISC(phy),
> +					    DG2_PHY_DP_TX_ACK_MASK, 25))
> +			DRM_ERROR("SNPS PHY %c failed to calibrate after 25ms.\n",
> +				  phy);
> +	}
> +}
> +
>  static const u32 dg2_ddi_translations[] = {
>  	/* VS 0, pre-emph 0 */
>  	REG_FIELD_PREP(SNPS_PHY_TX_EQ_MAIN, 26),
> diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.h b/drivers/gpu/drm/i915/display/intel_snps_phy.h
> index 3ce92d424f66..6aa33ff729ec 100644
> --- a/drivers/gpu/drm/i915/display/intel_snps_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_snps_phy.h
> @@ -8,10 +8,13 @@
>  
>  #include <linux/types.h>
>  
> +struct drm_i915_private;
>  struct intel_encoder;
>  struct intel_crtc_state;
>  struct intel_mpllb_state;
>  
> +void intel_snps_phy_wait_for_calibration(struct drm_i915_private *dev_priv);
> +
>  int intel_mpllb_calc_state(struct intel_crtc_state *crtc_state,
>  			   struct intel_encoder *encoder);
>  void intel_mpllb_enable(struct intel_encoder *encoder,
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index c44031dcdcb4..9c7dc812317e 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -12454,6 +12454,7 @@ enum skl_power_gate {
>  						 _ICL_PHY_MISC_B)
>  #define  ICL_PHY_MISC_MUX_DDID			(1 << 28)
>  #define  ICL_PHY_MISC_DE_IO_COMP_PWR_DOWN	(1 << 23)
> +#define  DG2_PHY_DP_TX_ACK_MASK			REG_GENMASK(23, 20)
>  
>  /* Icelake Display Stream Compression Registers */
>  #define DSCA_PICTURE_PARAMETER_SET_0		_MMIO(0x6B200)
> -- 
> 2.25.4
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
