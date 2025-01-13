Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD299A0C2B2
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2025 21:43:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48ADB10E0A9;
	Mon, 13 Jan 2025 20:43:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wn8S8EgS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97A9610E0A9;
 Mon, 13 Jan 2025 20:43:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736801025; x=1768337025;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LEmsDaYwXo/mgCqkqBX4VCgTuafB1gjuPgPT6DoMz3s=;
 b=Wn8S8EgS908tM2FOFqydUzMdMK1So9WCVDAEZTAKUxdAdq4mXQ2vkleb
 QXFlX7KtxpcCi2X44BLhhT2mWwCQWsP/h3lDJU0npw5fK/U5ELsT+CDd5
 t+SHiRmPIzPZ9D0Eo7shWqoqjcFduCSBlw6A6NSwEfmpXu++v9y4nlYCE
 /bv2KlNfDec/PFPhfbnc1fPVRKug4ZE7BjUslTKuxzxLAMgWLHhrMJSH1
 Nf05bbTpNrS1aqtPlMzoqD1EfDOLAwOjxJZpwxbfLQTHrr4Cc6/hxhCtR
 vJbBKrBNiyzkOxHNdHwV2c6r70QoFeddAUBoZ+n7LYTtXrEBsCnVDeKjT w==;
X-CSE-ConnectionGUID: UH7slhVeRKWlQyQ1P0wB+w==
X-CSE-MsgGUID: QEoeuSwSSz6CwWeIjkWWLQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="54627150"
X-IronPort-AV: E=Sophos;i="6.12,312,1728975600"; d="scan'208";a="54627150"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 12:43:44 -0800
X-CSE-ConnectionGUID: EtCTeHV+STuwrPdnFPb+gA==
X-CSE-MsgGUID: Exc0ZXdfTbuT1dtzvR7UeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,312,1728975600"; d="scan'208";a="135417662"
Received: from ldmartin-desk2.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.108.25])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 12:43:42 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 1/3] drm/i915/display: Use display MMIO functions in
 intel_display_irq.c
Date: Mon, 13 Jan 2025 17:38:56 -0300
Message-ID: <20250113204306.112266-2-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.48.0
In-Reply-To: <20250113204306.112266-1-gustavo.sousa@intel.com>
References: <20250113204306.112266-1-gustavo.sousa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

Most of MMIO accesses from intel_display_irq.c are currently done via
uncore_*() functions instead of the display-specific ones, namely
intel_de_*(). Because of that, DMC wakelock ends up being ignored and
some invalid MMIO accesses are performed while display is in dynamic DC
states. Thus, update the display IRQ code to use the intel_de_*() MMIO
functions.

After this change, we are left with some IRQ-specific functions that
still use the unwrapped uncore_*() functions (i.e. gen2_irq_init,
gen3_irq_reset and gen2_assert_iir_is_zero). We will deal with them in
an upcoming change.

Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c  | 222 ++++++++++--------
 1 file changed, 121 insertions(+), 101 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 069043f9d894..9662368a651d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -44,6 +44,7 @@ intel_handle_vblank(struct drm_i915_private *dev_priv, enum pipe pipe)
 void ilk_update_display_irq(struct drm_i915_private *dev_priv,
 			    u32 interrupt_mask, u32 enabled_irq_mask)
 {
+	struct intel_display *display = &dev_priv->display;
 	u32 new_val;
 
 	lockdep_assert_held(&dev_priv->irq_lock);
@@ -56,8 +57,8 @@ void ilk_update_display_irq(struct drm_i915_private *dev_priv,
 	if (new_val != dev_priv->irq_mask &&
 	    !drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv))) {
 		dev_priv->irq_mask = new_val;
-		intel_uncore_write(&dev_priv->uncore, DEIMR, dev_priv->irq_mask);
-		intel_uncore_posting_read(&dev_priv->uncore, DEIMR);
+		intel_de_write(display, DEIMR, dev_priv->irq_mask);
+		intel_de_posting_read(display, DEIMR);
 	}
 }
 
@@ -80,6 +81,7 @@ void ilk_disable_display_irq(struct drm_i915_private *i915, u32 bits)
 void bdw_update_port_irq(struct drm_i915_private *dev_priv,
 			 u32 interrupt_mask, u32 enabled_irq_mask)
 {
+	struct intel_display *display = &dev_priv->display;
 	u32 new_val;
 	u32 old_val;
 
@@ -90,15 +92,15 @@ void bdw_update_port_irq(struct drm_i915_private *dev_priv,
 	if (drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv)))
 		return;
 
-	old_val = intel_uncore_read(&dev_priv->uncore, GEN8_DE_PORT_IMR);
+	old_val = intel_de_read(display, GEN8_DE_PORT_IMR);
 
 	new_val = old_val;
 	new_val &= ~interrupt_mask;
 	new_val |= (~enabled_irq_mask & interrupt_mask);
 
 	if (new_val != old_val) {
-		intel_uncore_write(&dev_priv->uncore, GEN8_DE_PORT_IMR, new_val);
-		intel_uncore_posting_read(&dev_priv->uncore, GEN8_DE_PORT_IMR);
+		intel_de_write(display, GEN8_DE_PORT_IMR, new_val);
+		intel_de_posting_read(display, GEN8_DE_PORT_IMR);
 	}
 }
 
@@ -113,6 +115,7 @@ static void bdw_update_pipe_irq(struct drm_i915_private *dev_priv,
 				enum pipe pipe, u32 interrupt_mask,
 				u32 enabled_irq_mask)
 {
+	struct intel_display *display = &dev_priv->display;
 	u32 new_val;
 
 	lockdep_assert_held(&dev_priv->irq_lock);
@@ -128,9 +131,8 @@ static void bdw_update_pipe_irq(struct drm_i915_private *dev_priv,
 
 	if (new_val != dev_priv->display.irq.de_irq_mask[pipe]) {
 		dev_priv->display.irq.de_irq_mask[pipe] = new_val;
-		intel_uncore_write(&dev_priv->uncore, GEN8_DE_PIPE_IMR(pipe),
-				   dev_priv->display.irq.de_irq_mask[pipe]);
-		intel_uncore_posting_read(&dev_priv->uncore, GEN8_DE_PIPE_IMR(pipe));
+		intel_de_write(display, GEN8_DE_PIPE_IMR(pipe), display->irq.de_irq_mask[pipe]);
+		intel_de_posting_read(display, GEN8_DE_PIPE_IMR(pipe));
 	}
 }
 
@@ -156,7 +158,8 @@ void ibx_display_interrupt_update(struct drm_i915_private *dev_priv,
 				  u32 interrupt_mask,
 				  u32 enabled_irq_mask)
 {
-	u32 sdeimr = intel_uncore_read(&dev_priv->uncore, SDEIMR);
+	struct intel_display *display = &dev_priv->display;
+	u32 sdeimr = intel_de_read(display, SDEIMR);
 
 	sdeimr &= ~interrupt_mask;
 	sdeimr |= (~enabled_irq_mask & interrupt_mask);
@@ -168,8 +171,8 @@ void ibx_display_interrupt_update(struct drm_i915_private *dev_priv,
 	if (drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv)))
 		return;
 
-	intel_uncore_write(&dev_priv->uncore, SDEIMR, sdeimr);
-	intel_uncore_posting_read(&dev_priv->uncore, SDEIMR);
+	intel_de_write(display, SDEIMR, sdeimr);
+	intel_de_posting_read(display, SDEIMR);
 }
 
 void ibx_enable_display_interrupt(struct drm_i915_private *i915, u32 bits)
@@ -229,6 +232,7 @@ u32 i915_pipestat_enable_mask(struct drm_i915_private *dev_priv,
 void i915_enable_pipestat(struct drm_i915_private *dev_priv,
 			  enum pipe pipe, u32 status_mask)
 {
+	struct intel_display *display = &dev_priv->display;
 	i915_reg_t reg = PIPESTAT(dev_priv, pipe);
 	u32 enable_mask;
 
@@ -245,13 +249,14 @@ void i915_enable_pipestat(struct drm_i915_private *dev_priv,
 	dev_priv->display.irq.pipestat_irq_mask[pipe] |= status_mask;
 	enable_mask = i915_pipestat_enable_mask(dev_priv, pipe);
 
-	intel_uncore_write(&dev_priv->uncore, reg, enable_mask | status_mask);
-	intel_uncore_posting_read(&dev_priv->uncore, reg);
+	intel_de_write(display, reg, enable_mask | status_mask);
+	intel_de_posting_read(display, reg);
 }
 
 void i915_disable_pipestat(struct drm_i915_private *dev_priv,
 			   enum pipe pipe, u32 status_mask)
 {
+	struct intel_display *display = &dev_priv->display;
 	i915_reg_t reg = PIPESTAT(dev_priv, pipe);
 	u32 enable_mask;
 
@@ -268,8 +273,8 @@ void i915_disable_pipestat(struct drm_i915_private *dev_priv,
 	dev_priv->display.irq.pipestat_irq_mask[pipe] &= ~status_mask;
 	enable_mask = i915_pipestat_enable_mask(dev_priv, pipe);
 
-	intel_uncore_write(&dev_priv->uncore, reg, enable_mask | status_mask);
-	intel_uncore_posting_read(&dev_priv->uncore, reg);
+	intel_de_write(display, reg, enable_mask | status_mask);
+	intel_de_posting_read(display, reg);
 }
 
 static bool i915_has_legacy_blc_interrupt(struct intel_display *display)
@@ -373,55 +378,58 @@ static void flip_done_handler(struct drm_i915_private *i915,
 static void hsw_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
 				     enum pipe pipe)
 {
+	struct intel_display *display = &dev_priv->display;
+
 	display_pipe_crc_irq_handler(dev_priv, pipe,
-				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_HSW(pipe)),
+				     intel_de_read(display, PIPE_CRC_RES_HSW(pipe)),
 				     0, 0, 0, 0);
 }
 
 static void ivb_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
 				     enum pipe pipe)
 {
+	struct intel_display *display = &dev_priv->display;
+
 	display_pipe_crc_irq_handler(dev_priv, pipe,
-				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_1_IVB(pipe)),
-				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_2_IVB(pipe)),
-				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_3_IVB(pipe)),
-				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_4_IVB(pipe)),
-				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_5_IVB(pipe)));
+				     intel_de_read(display, PIPE_CRC_RES_1_IVB(pipe)),
+				     intel_de_read(display, PIPE_CRC_RES_2_IVB(pipe)),
+				     intel_de_read(display, PIPE_CRC_RES_3_IVB(pipe)),
+				     intel_de_read(display, PIPE_CRC_RES_4_IVB(pipe)),
+				     intel_de_read(display, PIPE_CRC_RES_5_IVB(pipe)));
 }
 
 static void i9xx_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
 				      enum pipe pipe)
 {
+	struct intel_display *display = &dev_priv->display;
 	u32 res1, res2;
 
 	if (DISPLAY_VER(dev_priv) >= 3)
-		res1 = intel_uncore_read(&dev_priv->uncore,
-					 PIPE_CRC_RES_RES1_I915(dev_priv, pipe));
+		res1 = intel_de_read(display, PIPE_CRC_RES_RES1_I915(dev_priv, pipe));
 	else
 		res1 = 0;
 
 	if (DISPLAY_VER(dev_priv) >= 5 || IS_G4X(dev_priv))
-		res2 = intel_uncore_read(&dev_priv->uncore,
-					 PIPE_CRC_RES_RES2_G4X(dev_priv, pipe));
+		res2 = intel_de_read(display, PIPE_CRC_RES_RES2_G4X(dev_priv, pipe));
 	else
 		res2 = 0;
 
 	display_pipe_crc_irq_handler(dev_priv, pipe,
-				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_RED(dev_priv, pipe)),
-				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_GREEN(dev_priv, pipe)),
-				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_BLUE(dev_priv, pipe)),
+				     intel_de_read(display, PIPE_CRC_RES_RED(dev_priv, pipe)),
+				     intel_de_read(display, PIPE_CRC_RES_GREEN(dev_priv, pipe)),
+				     intel_de_read(display, PIPE_CRC_RES_BLUE(dev_priv, pipe)),
 				     res1, res2);
 }
 
 static void i9xx_pipestat_irq_reset(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
 	enum pipe pipe;
 
 	for_each_pipe(dev_priv, pipe) {
-		intel_uncore_write(&dev_priv->uncore,
-				   PIPESTAT(dev_priv, pipe),
-				   PIPESTAT_INT_STATUS_MASK |
-				   PIPE_FIFO_UNDERRUN_STATUS);
+		intel_de_write(display,
+			       PIPESTAT(dev_priv, pipe),
+			       PIPESTAT_INT_STATUS_MASK | PIPE_FIFO_UNDERRUN_STATUS);
 
 		dev_priv->display.irq.pipestat_irq_mask[pipe] = 0;
 	}
@@ -430,6 +438,7 @@ static void i9xx_pipestat_irq_reset(struct drm_i915_private *dev_priv)
 void i9xx_pipestat_irq_ack(struct drm_i915_private *dev_priv,
 			   u32 iir, u32 pipe_stats[I915_MAX_PIPES])
 {
+	struct intel_display *display = &dev_priv->display;
 	enum pipe pipe;
 
 	spin_lock(&dev_priv->irq_lock);
@@ -474,7 +483,7 @@ void i9xx_pipestat_irq_ack(struct drm_i915_private *dev_priv,
 			continue;
 
 		reg = PIPESTAT(dev_priv, pipe);
-		pipe_stats[pipe] = intel_uncore_read(&dev_priv->uncore, reg) & status_mask;
+		pipe_stats[pipe] = intel_de_read(display, reg) & status_mask;
 		enable_mask = i915_pipestat_enable_mask(dev_priv, pipe);
 
 		/*
@@ -487,8 +496,8 @@ void i9xx_pipestat_irq_ack(struct drm_i915_private *dev_priv,
 		 * an interrupt is still pending.
 		 */
 		if (pipe_stats[pipe]) {
-			intel_uncore_write(&dev_priv->uncore, reg, pipe_stats[pipe]);
-			intel_uncore_write(&dev_priv->uncore, reg, enable_mask);
+			intel_de_write(display, reg, pipe_stats[pipe]);
+			intel_de_write(display, reg, enable_mask);
 		}
 	}
 	spin_unlock(&dev_priv->irq_lock);
@@ -605,7 +614,7 @@ static void ibx_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 		for_each_pipe(dev_priv, pipe)
 			drm_dbg(&dev_priv->drm, "  pipe %c FDI IIR: 0x%08x\n",
 				pipe_name(pipe),
-				intel_uncore_read(&dev_priv->uncore, FDI_RX_IIR(pipe)));
+				intel_de_read(display, FDI_RX_IIR(pipe)));
 	}
 
 	if (pch_iir & (SDE_TRANSB_CRC_DONE | SDE_TRANSA_CRC_DONE))
@@ -624,7 +633,8 @@ static void ibx_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 
 static void ivb_err_int_handler(struct drm_i915_private *dev_priv)
 {
-	u32 err_int = intel_uncore_read(&dev_priv->uncore, GEN7_ERR_INT);
+	struct intel_display *display = &dev_priv->display;
+	u32 err_int = intel_de_read(display, GEN7_ERR_INT);
 	enum pipe pipe;
 
 	if (err_int & ERR_INT_POISON)
@@ -642,12 +652,13 @@ static void ivb_err_int_handler(struct drm_i915_private *dev_priv)
 		}
 	}
 
-	intel_uncore_write(&dev_priv->uncore, GEN7_ERR_INT, err_int);
+	intel_de_write(display, GEN7_ERR_INT, err_int);
 }
 
 static void cpt_serr_int_handler(struct drm_i915_private *dev_priv)
 {
-	u32 serr_int = intel_uncore_read(&dev_priv->uncore, SERR_INT);
+	struct intel_display *display = &dev_priv->display;
+	u32 serr_int = intel_de_read(display, SERR_INT);
 	enum pipe pipe;
 
 	if (serr_int & SERR_INT_POISON)
@@ -657,7 +668,7 @@ static void cpt_serr_int_handler(struct drm_i915_private *dev_priv)
 		if (serr_int & SERR_INT_TRANS_FIFO_UNDERRUN(pipe))
 			intel_pch_fifo_underrun_irq_handler(dev_priv, pipe);
 
-	intel_uncore_write(&dev_priv->uncore, SERR_INT, serr_int);
+	intel_de_write(display, SERR_INT, serr_int);
 }
 
 static void cpt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
@@ -691,7 +702,7 @@ static void cpt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 		for_each_pipe(dev_priv, pipe)
 			drm_dbg(&dev_priv->drm, "  pipe %c FDI IIR: 0x%08x\n",
 				pipe_name(pipe),
-				intel_uncore_read(&dev_priv->uncore, FDI_RX_IIR(pipe)));
+				intel_de_read(display, FDI_RX_IIR(pipe)));
 	}
 
 	if (pch_iir & SDE_ERROR_CPT)
@@ -732,7 +743,7 @@ void ilk_display_irq_handler(struct drm_i915_private *dev_priv, u32 de_iir)
 
 	/* check event from PCH */
 	if (de_iir & DE_PCH_EVENT) {
-		u32 pch_iir = intel_uncore_read(&dev_priv->uncore, SDEIIR);
+		u32 pch_iir = intel_de_read(display, SDEIIR);
 
 		if (HAS_PCH_CPT(dev_priv))
 			cpt_irq_handler(dev_priv, pch_iir);
@@ -740,7 +751,7 @@ void ilk_display_irq_handler(struct drm_i915_private *dev_priv, u32 de_iir)
 			ibx_irq_handler(dev_priv, pch_iir);
 
 		/* should clear PCH hotplug event before clear CPU irq */
-		intel_uncore_write(&dev_priv->uncore, SDEIIR, pch_iir);
+		intel_de_write(display, SDEIIR, pch_iir);
 	}
 
 	if (DISPLAY_VER(dev_priv) == 5 && de_iir & DE_PCU_EVENT)
@@ -766,8 +777,7 @@ void ivb_display_irq_handler(struct drm_i915_private *dev_priv, u32 de_iir)
 			struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 			u32 psr_iir;
 
-			psr_iir = intel_uncore_rmw(&dev_priv->uncore,
-						   EDP_PSR_IIR, 0, 0);
+			psr_iir = intel_de_rmw(display, EDP_PSR_IIR, 0, 0);
 			intel_psr_irq_handler(intel_dp, psr_iir);
 			break;
 		}
@@ -789,12 +799,12 @@ void ivb_display_irq_handler(struct drm_i915_private *dev_priv, u32 de_iir)
 
 	/* check event from PCH */
 	if (!HAS_PCH_NOP(dev_priv) && (de_iir & DE_PCH_EVENT_IVB)) {
-		u32 pch_iir = intel_uncore_read(&dev_priv->uncore, SDEIIR);
+		u32 pch_iir = intel_de_read(display, SDEIIR);
 
 		cpt_irq_handler(dev_priv, pch_iir);
 
 		/* clear PCH hotplug event before clear CPU irq */
-		intel_uncore_write(&dev_priv->uncore, SDEIIR, pch_iir);
+		intel_de_write(display, SDEIIR, pch_iir);
 	}
 }
 
@@ -925,8 +935,7 @@ gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
 		}
 
 		if (iir & XELPDP_RM_TIMEOUT) {
-			u32 val = intel_uncore_read(&dev_priv->uncore,
-						    RM_TIMEOUT_REG_CAPTURE);
+			u32 val = intel_de_read(display, RM_TIMEOUT_REG_CAPTURE);
 			drm_warn(&dev_priv->drm, "Register Access Timeout = 0x%x\n", val);
 			found = true;
 		}
@@ -949,7 +958,7 @@ gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
 			else
 				iir_reg = EDP_PSR_IIR;
 
-			psr_iir = intel_uncore_rmw(&dev_priv->uncore, iir_reg, 0, 0);
+			psr_iir = intel_de_rmw(display, iir_reg, 0, 0);
 
 			if (psr_iir)
 				found = true;
@@ -969,6 +978,7 @@ gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
 static void gen11_dsi_te_interrupt_handler(struct drm_i915_private *dev_priv,
 					   u32 te_trigger)
 {
+	struct intel_display *display = &dev_priv->display;
 	enum pipe pipe = INVALID_PIPE;
 	enum transcoder dsi_trans;
 	enum port port;
@@ -978,8 +988,7 @@ static void gen11_dsi_te_interrupt_handler(struct drm_i915_private *dev_priv,
 	 * Incase of dual link, TE comes from DSI_1
 	 * this is to check if dual link is enabled
 	 */
-	val = intel_uncore_read(&dev_priv->uncore,
-				TRANS_DDI_FUNC_CTL2(dev_priv, TRANSCODER_DSI_0));
+	val = intel_de_read(display, TRANS_DDI_FUNC_CTL2(dev_priv, TRANSCODER_DSI_0));
 	val &= PORT_SYNC_MODE_ENABLE;
 
 	/*
@@ -991,7 +1000,7 @@ static void gen11_dsi_te_interrupt_handler(struct drm_i915_private *dev_priv,
 	dsi_trans = (port == PORT_A) ? TRANSCODER_DSI_0 : TRANSCODER_DSI_1;
 
 	/* Check if DSI configured in command mode */
-	val = intel_uncore_read(&dev_priv->uncore, DSI_TRANS_FUNC_CONF(dsi_trans));
+	val = intel_de_read(display, DSI_TRANS_FUNC_CONF(dsi_trans));
 	val = val & OP_MODE_MASK;
 
 	if (val != CMD_MODE_NO_GATE && val != CMD_MODE_TE_GATE) {
@@ -1000,8 +1009,7 @@ static void gen11_dsi_te_interrupt_handler(struct drm_i915_private *dev_priv,
 	}
 
 	/* Get PIPE for handling VBLANK event */
-	val = intel_uncore_read(&dev_priv->uncore,
-				TRANS_DDI_FUNC_CTL(dev_priv, dsi_trans));
+	val = intel_de_read(display, TRANS_DDI_FUNC_CTL(dev_priv, dsi_trans));
 	switch (val & TRANS_DDI_EDP_INPUT_MASK) {
 	case TRANS_DDI_EDP_INPUT_A_ON:
 		pipe = PIPE_A;
@@ -1021,7 +1029,7 @@ static void gen11_dsi_te_interrupt_handler(struct drm_i915_private *dev_priv,
 
 	/* clear TE in dsi IIR */
 	port = (te_trigger & DSI1_TE) ? PORT_B : PORT_A;
-	intel_uncore_rmw(&dev_priv->uncore, DSI_INTR_IDENT_REG(port), 0, 0);
+	intel_de_rmw(display, DSI_INTR_IDENT_REG(port), 0, 0);
 }
 
 static u32 gen8_de_pipe_flip_done_mask(struct drm_i915_private *i915)
@@ -1034,10 +1042,11 @@ static u32 gen8_de_pipe_flip_done_mask(struct drm_i915_private *i915)
 
 static void gen8_read_and_ack_pch_irqs(struct drm_i915_private *i915, u32 *pch_iir, u32 *pica_iir)
 {
+	struct intel_display *display = &i915->display;
 	u32 pica_ier = 0;
 
 	*pica_iir = 0;
-	*pch_iir = intel_de_read(i915, SDEIIR);
+	*pch_iir = intel_de_read(display, SDEIIR);
 	if (!*pch_iir)
 		return;
 
@@ -1049,15 +1058,15 @@ static void gen8_read_and_ack_pch_irqs(struct drm_i915_private *i915, u32 *pch_i
 	if (*pch_iir & SDE_PICAINTERRUPT) {
 		drm_WARN_ON(&i915->drm, INTEL_PCH_TYPE(i915) < PCH_MTL);
 
-		pica_ier = intel_de_rmw(i915, PICAINTERRUPT_IER, ~0, 0);
-		*pica_iir = intel_de_read(i915, PICAINTERRUPT_IIR);
-		intel_de_write(i915, PICAINTERRUPT_IIR, *pica_iir);
+		pica_ier = intel_de_rmw(display, PICAINTERRUPT_IER, ~0, 0);
+		*pica_iir = intel_de_read(display, PICAINTERRUPT_IIR);
+		intel_de_write(display, PICAINTERRUPT_IIR, *pica_iir);
 	}
 
-	intel_de_write(i915, SDEIIR, *pch_iir);
+	intel_de_write(display, SDEIIR, *pch_iir);
 
 	if (pica_ier)
-		intel_de_write(i915, PICAINTERRUPT_IER, pica_ier);
+		intel_de_write(display, PICAINTERRUPT_IER, pica_ier);
 }
 
 void gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
@@ -1069,9 +1078,9 @@ void gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 	drm_WARN_ON_ONCE(&dev_priv->drm, !HAS_DISPLAY(dev_priv));
 
 	if (master_ctl & GEN8_DE_MISC_IRQ) {
-		iir = intel_uncore_read(&dev_priv->uncore, GEN8_DE_MISC_IIR);
+		iir = intel_de_read(display, GEN8_DE_MISC_IIR);
 		if (iir) {
-			intel_uncore_write(&dev_priv->uncore, GEN8_DE_MISC_IIR, iir);
+			intel_de_write(display, GEN8_DE_MISC_IIR, iir);
 			gen8_de_misc_irq_handler(dev_priv, iir);
 		} else {
 			drm_err_ratelimited(&dev_priv->drm,
@@ -1080,9 +1089,9 @@ void gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 	}
 
 	if (DISPLAY_VER(dev_priv) >= 11 && (master_ctl & GEN11_DE_HPD_IRQ)) {
-		iir = intel_uncore_read(&dev_priv->uncore, GEN11_DE_HPD_IIR);
+		iir = intel_de_read(display, GEN11_DE_HPD_IIR);
 		if (iir) {
-			intel_uncore_write(&dev_priv->uncore, GEN11_DE_HPD_IIR, iir);
+			intel_de_write(display, GEN11_DE_HPD_IIR, iir);
 			gen11_hpd_irq_handler(dev_priv, iir);
 		} else {
 			drm_err_ratelimited(&dev_priv->drm,
@@ -1091,11 +1100,11 @@ void gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 	}
 
 	if (master_ctl & GEN8_DE_PORT_IRQ) {
-		iir = intel_uncore_read(&dev_priv->uncore, GEN8_DE_PORT_IIR);
+		iir = intel_de_read(display, GEN8_DE_PORT_IIR);
 		if (iir) {
 			bool found = false;
 
-			intel_uncore_write(&dev_priv->uncore, GEN8_DE_PORT_IIR, iir);
+			intel_de_write(display, GEN8_DE_PORT_IIR, iir);
 
 			if (iir & gen8_de_port_aux_mask(dev_priv)) {
 				intel_dp_aux_irq_handler(display);
@@ -1148,14 +1157,14 @@ void gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 		if (!(master_ctl & GEN8_DE_PIPE_IRQ(pipe)))
 			continue;
 
-		iir = intel_uncore_read(&dev_priv->uncore, GEN8_DE_PIPE_IIR(pipe));
+		iir = intel_de_read(display, GEN8_DE_PIPE_IIR(pipe));
 		if (!iir) {
 			drm_err_ratelimited(&dev_priv->drm,
 					    "The master control interrupt lied (DE PIPE)!\n");
 			continue;
 		}
 
-		intel_uncore_write(&dev_priv->uncore, GEN8_DE_PIPE_IIR(pipe), iir);
+		intel_de_write(display, GEN8_DE_PIPE_IIR(pipe), iir);
 
 		if (iir & GEN8_PIPE_VBLANK)
 			intel_handle_vblank(dev_priv, pipe);
@@ -1221,14 +1230,15 @@ void gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 
 u32 gen11_gu_misc_irq_ack(struct drm_i915_private *i915, const u32 master_ctl)
 {
+	struct intel_display *display = &i915->display;
 	u32 iir;
 
 	if (!(master_ctl & GEN11_GU_MISC_IRQ))
 		return 0;
 
-	iir = intel_de_read(i915, GEN11_GU_MISC_IIR);
+	iir = intel_de_read(display, GEN11_GU_MISC_IIR);
 	if (likely(iir))
-		intel_de_write(i915, GEN11_GU_MISC_IIR, iir);
+		intel_de_write(display, GEN11_GU_MISC_IIR, iir);
 
 	return iir;
 }
@@ -1243,6 +1253,7 @@ void gen11_gu_misc_irq_handler(struct drm_i915_private *i915, const u32 iir)
 
 void gen11_display_irq_handler(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
 	u32 disp_ctl;
 
 	disable_rpm_wakeref_asserts(&i915->runtime_pm);
@@ -1250,17 +1261,18 @@ void gen11_display_irq_handler(struct drm_i915_private *i915)
 	 * GEN11_DISPLAY_INT_CTL has same format as GEN8_MASTER_IRQ
 	 * for the display related bits.
 	 */
-	disp_ctl = intel_de_read(i915, GEN11_DISPLAY_INT_CTL);
+	disp_ctl = intel_de_read(display, GEN11_DISPLAY_INT_CTL);
 
-	intel_de_write(i915, GEN11_DISPLAY_INT_CTL, 0);
+	intel_de_write(display, GEN11_DISPLAY_INT_CTL, 0);
 	gen8_de_irq_handler(i915, disp_ctl);
-	intel_de_write(i915, GEN11_DISPLAY_INT_CTL, GEN11_DISPLAY_IRQ_ENABLE);
+	intel_de_write(display, GEN11_DISPLAY_INT_CTL, GEN11_DISPLAY_IRQ_ENABLE);
 
 	enable_rpm_wakeref_asserts(&i915->runtime_pm);
 }
 
 static void i915gm_irq_cstate_wa_enable(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
 	lockdep_assert_held(&i915->drm.vblank_time_lock);
 
 	/*
@@ -1270,15 +1282,18 @@ static void i915gm_irq_cstate_wa_enable(struct drm_i915_private *i915)
 	 * only when vblank/CRC interrupts are actually enabled.
 	 */
 	if (i915->display.irq.vblank_enabled++ == 0)
-		intel_uncore_write(&i915->uncore, SCPD0, _MASKED_BIT_ENABLE(CSTATE_RENDER_CLOCK_GATE_DISABLE));
+		intel_de_write(display, SCPD0,
+			       _MASKED_BIT_ENABLE(CSTATE_RENDER_CLOCK_GATE_DISABLE));
 }
 
 static void i915gm_irq_cstate_wa_disable(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
 	lockdep_assert_held(&i915->drm.vblank_time_lock);
 
 	if (--i915->display.irq.vblank_enabled == 0)
-		intel_uncore_write(&i915->uncore, SCPD0, _MASKED_BIT_DISABLE(CSTATE_RENDER_CLOCK_GATE_DISABLE));
+		intel_de_write(display, SCPD0,
+			       _MASKED_BIT_DISABLE(CSTATE_RENDER_CLOCK_GATE_DISABLE));
 }
 
 void i915gm_irq_cstate_wa(struct drm_i915_private *i915, bool enable)
@@ -1398,7 +1413,7 @@ void ilk_disable_vblank(struct drm_crtc *crtc)
 static bool gen11_dsi_configure_te(struct intel_crtc *intel_crtc,
 				   bool enable)
 {
-	struct drm_i915_private *dev_priv = to_i915(intel_crtc->base.dev);
+	struct intel_display *display = to_intel_display(intel_crtc);
 	enum port port;
 
 	if (!(intel_crtc->mode_flags &
@@ -1411,10 +1426,9 @@ static bool gen11_dsi_configure_te(struct intel_crtc *intel_crtc,
 	else
 		port = PORT_A;
 
-	intel_uncore_rmw(&dev_priv->uncore, DSI_INTR_MASK_REG(port), DSI_TE_EVENT,
-			 enable ? 0 : DSI_TE_EVENT);
+	intel_de_rmw(display, DSI_INTR_MASK_REG(port), DSI_TE_EVENT, enable ? 0 : DSI_TE_EVENT);
 
-	intel_uncore_rmw(&dev_priv->uncore, DSI_INTR_IDENT_REG(port), 0, 0);
+	intel_de_rmw(display, DSI_INTR_IDENT_REG(port), 0, 0);
 
 	return true;
 }
@@ -1483,15 +1497,16 @@ void bdw_disable_vblank(struct drm_crtc *_crtc)
 
 static void _vlv_display_irq_reset(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct intel_uncore *uncore = &dev_priv->uncore;
 
 	if (IS_CHERRYVIEW(dev_priv))
-		intel_uncore_write(uncore, DPINVGTT, DPINVGTT_STATUS_MASK_CHV);
+		intel_de_write(display, DPINVGTT, DPINVGTT_STATUS_MASK_CHV);
 	else
-		intel_uncore_write(uncore, DPINVGTT, DPINVGTT_STATUS_MASK_VLV);
+		intel_de_write(display, DPINVGTT, DPINVGTT_STATUS_MASK_VLV);
 
 	i915_hotplug_interrupt_update_locked(dev_priv, 0xffffffff, 0);
-	intel_uncore_rmw(uncore, PORT_HOTPLUG_STAT(dev_priv), 0, 0);
+	intel_de_rmw(display, PORT_HOTPLUG_STAT(dev_priv), 0, 0);
 
 	i9xx_pipestat_irq_reset(dev_priv);
 
@@ -1507,10 +1522,11 @@ void vlv_display_irq_reset(struct drm_i915_private *dev_priv)
 
 void i9xx_display_irq_reset(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
+
 	if (I915_HAS_HOTPLUG(i915)) {
 		i915_hotplug_interrupt_update(i915, 0xffffffff, 0);
-		intel_uncore_rmw(&i915->uncore,
-				 PORT_HOTPLUG_STAT(i915), 0, 0);
+		intel_de_rmw(display, PORT_HOTPLUG_STAT(i915), 0, 0);
 	}
 
 	i9xx_pipestat_irq_reset(i915);
@@ -1552,14 +1568,15 @@ void vlv_display_irq_postinstall(struct drm_i915_private *dev_priv)
 
 void gen8_display_irq_reset(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct intel_uncore *uncore = &dev_priv->uncore;
 	enum pipe pipe;
 
 	if (!HAS_DISPLAY(dev_priv))
 		return;
 
-	intel_uncore_write(uncore, EDP_PSR_IMR, 0xffffffff);
-	intel_uncore_write(uncore, EDP_PSR_IIR, 0xffffffff);
+	intel_de_write(display, EDP_PSR_IMR, 0xffffffff);
+	intel_de_write(display, EDP_PSR_IIR, 0xffffffff);
 
 	for_each_pipe(dev_priv, pipe)
 		if (intel_display_power_is_enabled(dev_priv,
@@ -1572,6 +1589,7 @@ void gen8_display_irq_reset(struct drm_i915_private *dev_priv)
 
 void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct intel_uncore *uncore = &dev_priv->uncore;
 	enum pipe pipe;
 	u32 trans_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
@@ -1580,7 +1598,7 @@ void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
 	if (!HAS_DISPLAY(dev_priv))
 		return;
 
-	intel_uncore_write(uncore, GEN11_DISPLAY_INT_CTL, 0);
+	intel_de_write(display, GEN11_DISPLAY_INT_CTL, 0);
 
 	if (DISPLAY_VER(dev_priv) >= 12) {
 		enum transcoder trans;
@@ -1592,16 +1610,16 @@ void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
 			if (!intel_display_power_is_enabled(dev_priv, domain))
 				continue;
 
-			intel_uncore_write(uncore,
-				           TRANS_PSR_IMR(dev_priv, trans),
-				           0xffffffff);
-			intel_uncore_write(uncore,
-				           TRANS_PSR_IIR(dev_priv, trans),
-				           0xffffffff);
+			intel_de_write(display,
+				       TRANS_PSR_IMR(dev_priv, trans),
+				       0xffffffff);
+			intel_de_write(display,
+				       TRANS_PSR_IIR(dev_priv, trans),
+				       0xffffffff);
 		}
 	} else {
-		intel_uncore_write(uncore, EDP_PSR_IMR, 0xffffffff);
-		intel_uncore_write(uncore, EDP_PSR_IIR, 0xffffffff);
+		intel_de_write(display, EDP_PSR_IMR, 0xffffffff);
+		intel_de_write(display, EDP_PSR_IIR, 0xffffffff);
 	}
 
 	for_each_pipe(dev_priv, pipe)
@@ -1890,23 +1908,25 @@ static void icp_irq_postinstall(struct drm_i915_private *dev_priv)
 
 void gen11_de_irq_postinstall(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
+
 	if (!HAS_DISPLAY(dev_priv))
 		return;
 
 	gen8_de_irq_postinstall(dev_priv);
 
-	intel_uncore_write(&dev_priv->uncore, GEN11_DISPLAY_INT_CTL,
-			   GEN11_DISPLAY_IRQ_ENABLE);
+	intel_de_write(display, GEN11_DISPLAY_INT_CTL, GEN11_DISPLAY_IRQ_ENABLE);
 }
 
 void dg1_de_irq_postinstall(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
+
 	if (!HAS_DISPLAY(i915))
 		return;
 
 	gen8_de_irq_postinstall(i915);
-	intel_uncore_write(&i915->uncore, GEN11_DISPLAY_INT_CTL,
-			   GEN11_DISPLAY_IRQ_ENABLE);
+	intel_de_write(display, GEN11_DISPLAY_INT_CTL, GEN11_DISPLAY_IRQ_ENABLE);
 }
 
 void intel_display_irq_init(struct drm_i915_private *i915)
-- 
2.48.0

