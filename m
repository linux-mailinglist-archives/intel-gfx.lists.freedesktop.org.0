Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EDB85A4DB4
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Aug 2022 15:19:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EE7210F299;
	Mon, 29 Aug 2022 13:19:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2D9010F296
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Aug 2022 13:19:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661779157; x=1693315157;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gq17rQHqdCT8w9yqd+bgBlIdEdyB7i5nv3xsxW6PWnE=;
 b=nk7vUXXeHMAl/5tIA1U54tVq1iBFPvVRqA4oOpNmWXNeNQ/UAoNcmFoC
 vm40KATPxz8G65VMB3SExV8Z1e3o29RkjUL0zTiDpBx65XiYKqPLPbgW/
 gkIxymlpu+7xV70OP+pJv4x6LShvZgfQdCDUNBohKmAgwZiG3AqHA+CDc
 kRdEL/2rbBec9dzUPkllBJ/ZTtks0yitXCJnmn/0SfYdsRmL1or31TdEG
 joUmjDF0vJR2P3MeNH3mUQSY4GE1D6wRizqekORcohvOATdnZQoPtKr0C
 wlKHFbU8UaMPGp8pHranh/JznHISbbvpldMHLCUnrxEZPRg1WTN/ys1O0 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10454"; a="277903471"
X-IronPort-AV: E=Sophos;i="5.93,272,1654585200"; d="scan'208";a="277903471"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2022 06:19:17 -0700
X-IronPort-AV: E=Sophos;i="5.93,272,1654585200"; d="scan'208";a="644413672"
Received: from idecesar-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.53.198])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2022 06:19:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Aug 2022 16:18:17 +0300
Message-Id: <b66fe7cf2c6f9e5b7bbfcaff40400492ac706721.1661779055.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1661779055.git.jani.nikula@intel.com>
References: <cover.1661779055.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 10/18] drm/i915: move and group fdi members
 under display.fdi
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move display fdi related members under drm_i915_private display
sub-struct.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c          |  4 ++--
 drivers/gpu/drm/i915/display/intel_display_core.h |  5 +++++
 drivers/gpu/drm/i915/display/intel_fdi.c          | 10 +++++-----
 drivers/gpu/drm/i915/i915_drv.h                   |  3 ---
 4 files changed, 12 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 760b5788eb43..6c555555b7bf 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -1110,8 +1110,8 @@ void intel_crt_init(struct drm_i915_private *dev_priv)
 		u32 fdi_config = FDI_RX_POLARITY_REVERSED_LPT |
 				 FDI_RX_LINK_REVERSAL_OVERRIDE;
 
-		dev_priv->fdi_rx_config = intel_de_read(dev_priv,
-							FDI_RX_CTL(PIPE_A)) & fdi_config;
+		dev_priv->display.fdi.rx_config = intel_de_read(dev_priv,
+								FDI_RX_CTL(PIPE_A)) & fdi_config;
 	}
 
 	intel_crt_reset(&crt->base.base);
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 1f25e22496db..0aeebf169ba6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -299,6 +299,11 @@ struct intel_display {
 		struct work_struct suspend_work;
 	} fbdev;
 
+	struct {
+		unsigned int pll_freq;
+		u32 rx_config;
+	} fdi;
+
 	struct {
 		/*
 		 * Base address of where the gmbus and gpio blocks are located
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index 03ad5f5c8417..f67dd4f05bab 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -210,14 +210,14 @@ void intel_fdi_pll_freq_update(struct drm_i915_private *i915)
 		u32 fdi_pll_clk =
 			intel_de_read(i915, FDI_PLL_BIOS_0) & FDI_PLL_FB_CLOCK_MASK;
 
-		i915->fdi_pll_freq = (fdi_pll_clk + 2) * 10000;
+		i915->display.fdi.pll_freq = (fdi_pll_clk + 2) * 10000;
 	} else if (IS_SANDYBRIDGE(i915) || IS_IVYBRIDGE(i915)) {
-		i915->fdi_pll_freq = 270000;
+		i915->display.fdi.pll_freq = 270000;
 	} else {
 		return;
 	}
 
-	drm_dbg(&i915->drm, "FDI PLL freq=%d\n", i915->fdi_pll_freq);
+	drm_dbg(&i915->drm, "FDI PLL freq=%d\n", i915->display.fdi.pll_freq);
 }
 
 int intel_fdi_link_freq(struct drm_i915_private *i915,
@@ -226,7 +226,7 @@ int intel_fdi_link_freq(struct drm_i915_private *i915,
 	if (HAS_DDI(i915))
 		return pipe_config->port_clock; /* SPLL */
 	else
-		return i915->fdi_pll_freq;
+		return i915->display.fdi.pll_freq;
 }
 
 int ilk_fdi_compute_config(struct intel_crtc *crtc,
@@ -789,7 +789,7 @@ void hsw_fdi_link_train(struct intel_encoder *encoder,
 		       FDI_RX_PWRDN_LANE1_VAL(2) | FDI_RX_PWRDN_LANE0_VAL(2) | FDI_RX_TP1_TO_TP2_48 | FDI_RX_FDI_DELAY_90);
 
 	/* Enable the PCH Receiver FDI PLL */
-	rx_ctl_val = dev_priv->fdi_rx_config | FDI_RX_ENHANCE_FRAME_ENABLE |
+	rx_ctl_val = dev_priv->display.fdi.rx_config | FDI_RX_ENHANCE_FRAME_ENABLE |
 		     FDI_RX_PLL_ENABLE |
 		     FDI_DP_PORT_WIDTH(crtc_state->fdi_lanes);
 	intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), rx_ctl_val);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 074679320056..a03b8e676a22 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -291,7 +291,6 @@ struct drm_i915_private {
 
 	unsigned int max_dotclk_freq;
 	unsigned int hpll_freq;
-	unsigned int fdi_pll_freq;
 	unsigned int czclk_freq;
 
 	struct {
@@ -364,8 +363,6 @@ struct drm_i915_private {
 	struct drm_property *broadcast_rgb_property;
 	struct drm_property *force_audio_property;
 
-	u32 fdi_rx_config;
-
 	/*
 	 * Shadows for CHV DPLL_MD regs to keep the state
 	 * checker somewhat working in the presence hardware
-- 
2.34.1

