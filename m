Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B03B58FEFF
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Aug 2022 17:15:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9561AB3DEA;
	Thu, 11 Aug 2022 15:14:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 093ADB3DB5
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Aug 2022 15:13:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660230826; x=1691766826;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YEzHHOxm8knGQ6JsqKfv7L4aKDBZJRuv6zY34i5S7u4=;
 b=BNlSoSAYVaNiRlMUxwYGXTQ+EN2Al/oEqlL9TcFShFI3uI564gz5wc2G
 UuqGR6Na/2Z4hUujeaOfhT0ljbcikzZ5klODzNcH/2641D8mlcmtk1D09
 S8r7fidFI/XpQs0p1Y3BmvVRBoxF7G4z98HBCqFa888oFi7D+hpaYG3ON
 ICry0OZrJHPP1FqMFkYfcDON1U32PtxbrvIZlWVUWsd/0HAOL0eFeipN/
 ZFWPKKWiv2mG7L7XFn6ZViL9BCaHLyWxJCn97wGqIXJTyowpEqt5/S9R/
 idz3U1Tv+Yi9rdSoIaAi1y7Y8CATg4WaRavoaPoPGtNI6LYZlkw+/aPwf w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="274428524"
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="274428524"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:10:12 -0700
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="708646797"
Received: from gdogaru-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.102])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:10:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Aug 2022 18:07:40 +0300
Message-Id: <b47c18fe79693d03d8d5c75b53f98578123f5be0.1660230121.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1660230121.git.jani.nikula@intel.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 29/39] drm/i915: move and group fdi members
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move display related members under drm_i915_private display sub-struct.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c          |  2 +-
 drivers/gpu/drm/i915/display/intel_display_core.h |  5 +++++
 drivers/gpu/drm/i915/display/intel_fdi.c          | 10 +++++-----
 drivers/gpu/drm/i915/i915_drv.h                   |  3 ---
 4 files changed, 11 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 760b5788eb43..85c2fa632c7a 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -1110,7 +1110,7 @@ void intel_crt_init(struct drm_i915_private *dev_priv)
 		u32 fdi_config = FDI_RX_POLARITY_REVERSED_LPT |
 				 FDI_RX_LINK_REVERSAL_OVERRIDE;
 
-		dev_priv->fdi_rx_config = intel_de_read(dev_priv,
+		dev_priv->display.fdi.rx_config = intel_de_read(dev_priv,
 							FDI_RX_CTL(PIPE_A)) & fdi_config;
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 19abdd05d413..714fb1a6bda3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -301,6 +301,11 @@ struct intel_display {
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
index bd15bb1efac5..5833affe263d 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -289,7 +289,6 @@ struct drm_i915_private {
 
 	unsigned int max_dotclk_freq;
 	unsigned int hpll_freq;
-	unsigned int fdi_pll_freq;
 	unsigned int czclk_freq;
 
 	struct {
@@ -358,8 +357,6 @@ struct drm_i915_private {
 	struct drm_property *broadcast_rgb_property;
 	struct drm_property *force_audio_property;
 
-	u32 fdi_rx_config;
-
 	/*
 	 * Shadows for CHV DPLL_MD regs to keep the state
 	 * checker somewhat working in the presence hardware
-- 
2.34.1

