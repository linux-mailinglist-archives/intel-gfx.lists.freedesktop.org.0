Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3493559FB35
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 15:23:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27FB8B56A6;
	Wed, 24 Aug 2022 13:22:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E474AB527E
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Aug 2022 13:19:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661347170; x=1692883170;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7vq40WMQEfpp9ziIDM3EfAVGPpQ/FSywXDeC47zT1MY=;
 b=i+PNWq8/nw5MWWm6kGwr+fiTbM5+VGf8cMxXeeANXZVzVk9Lpf0ym5Wi
 qYUQLhHaLfup8K35Q1SkVkl+lUG1DuFHLSDPyr3tRWAD3rIT2yh4I5uGx
 GikNmBlAfV7/uRDzdaAunSoutVH5QxyHuYzU9lupIn1BwtCgwdBAjyau0
 iJb9Ra3KcbcwT8xx6a4zHwzF3LyU3yryOYsdialNK47jxiLemY0GFuRI/
 CJ5ng9RwVVlQTZRH2JHjig4qclLqBjUnXfUILl84lCdTialtsi1L8KRrT
 f+J6UYM8HtPvXazHZ0v5tf9KVAPtxolC9r7LcThN8Tt/3q6MGwC2faB2C g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="274350797"
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="274350797"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 06:18:12 -0700
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="639116028"
Received: from zlim2-mobl.gar.corp.intel.com (HELO localhost) ([10.252.52.23])
 by orsmga008-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Aug 2022 06:18:11 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Aug 2022 16:15:54 +0300
Message-Id: <4cab8f374ff58c286966c5b6b9be61c2ac18bdea.1661346845.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1661346845.git.jani.nikula@intel.com>
References: <cover.1661346845.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 28/38] drm/i915: move and group fdi members
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
index bc5506ad2ad6..8544ca84fed4 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -290,7 +290,6 @@ struct drm_i915_private {
 
 	unsigned int max_dotclk_freq;
 	unsigned int hpll_freq;
-	unsigned int fdi_pll_freq;
 	unsigned int czclk_freq;
 
 	struct {
@@ -362,8 +361,6 @@ struct drm_i915_private {
 	struct drm_property *broadcast_rgb_property;
 	struct drm_property *force_audio_property;
 
-	u32 fdi_rx_config;
-
 	/*
 	 * Shadows for CHV DPLL_MD regs to keep the state
 	 * checker somewhat working in the presence hardware
-- 
2.34.1

