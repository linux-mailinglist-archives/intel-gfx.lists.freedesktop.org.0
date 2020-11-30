Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 09AA72C8302
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 12:16:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BF466E479;
	Mon, 30 Nov 2020 11:16:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FFF86E471
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 11:16:46 +0000 (UTC)
IronPort-SDR: knbyGNIDUx+V3aP4M+iafiRHLs2T9EDSOu6634PWDlLNTGUyli6tQgLFc6OMa/UhqJjh6JLpG1
 9HX5EiUXIa8A==
X-IronPort-AV: E=McAfee;i="6000,8403,9820"; a="172718477"
X-IronPort-AV: E=Sophos;i="5.78,381,1599548400"; d="scan'208";a="172718477"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 03:16:45 -0800
IronPort-SDR: 6xmPx2JskIoNykFJtaM17Q3BTKrOEF23pmNXr4vo8HgVTUWx9nfhL95+rvGmFFzIYqTxlj69cb
 xKur4q64zc1A==
X-IronPort-AV: E=Sophos;i="5.78,381,1599548400"; d="scan'208";a="538559661"
Received: from cshanno1-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.44.44])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 03:16:42 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Nov 2020 13:15:59 +0200
Message-Id: <20201130111601.2817-8-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201130111601.2817-1-jani.nikula@intel.com>
References: <20201130111601.2817-1-jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 08/10] drm/i915/irq: replace
 I915_READ()/WRITE() with intel_uncore_read()/write()
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
Cc: jani.nikula@intel.com, chris@chris-wilson.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Arguably some of these should use intel_de_read() or intel_de_write(),
however not all. Prioritize I915_READ() and I915_WRITE() removal in
general over migrating to the pedantically correct replacements right
away.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 336 ++++++++++++++++----------------
 1 file changed, 168 insertions(+), 168 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index c80eeac53952..b245109f73e3 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -309,10 +309,10 @@ i915_hotplug_interrupt_update_locked(struct drm_i915_private *dev_priv,
 	lockdep_assert_held(&dev_priv->irq_lock);
 	drm_WARN_ON(&dev_priv->drm, bits & ~mask);
 
-	val = I915_READ(PORT_HOTPLUG_EN);
+	val = intel_uncore_read(&dev_priv->uncore, PORT_HOTPLUG_EN);
 	val &= ~mask;
 	val |= bits;
-	I915_WRITE(PORT_HOTPLUG_EN, val);
+	intel_uncore_write(&dev_priv->uncore, PORT_HOTPLUG_EN, val);
 }
 
 /**
@@ -358,8 +358,8 @@ void ilk_update_display_irq(struct drm_i915_private *dev_priv,
 	if (new_val != dev_priv->irq_mask &&
 	    !drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv))) {
 		dev_priv->irq_mask = new_val;
-		I915_WRITE(DEIMR, dev_priv->irq_mask);
-		POSTING_READ(DEIMR);
+		intel_uncore_write(&dev_priv->uncore, DEIMR, dev_priv->irq_mask);
+		intel_uncore_posting_read(&dev_priv->uncore, DEIMR);
 	}
 }
 
@@ -383,15 +383,15 @@ static void bdw_update_port_irq(struct drm_i915_private *dev_priv,
 	if (drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv)))
 		return;
 
-	old_val = I915_READ(GEN8_DE_PORT_IMR);
+	old_val = intel_uncore_read(&dev_priv->uncore, GEN8_DE_PORT_IMR);
 
 	new_val = old_val;
 	new_val &= ~interrupt_mask;
 	new_val |= (~enabled_irq_mask & interrupt_mask);
 
 	if (new_val != old_val) {
-		I915_WRITE(GEN8_DE_PORT_IMR, new_val);
-		POSTING_READ(GEN8_DE_PORT_IMR);
+		intel_uncore_write(&dev_priv->uncore, GEN8_DE_PORT_IMR, new_val);
+		intel_uncore_posting_read(&dev_priv->uncore, GEN8_DE_PORT_IMR);
 	}
 }
 
@@ -422,8 +422,8 @@ void bdw_update_pipe_irq(struct drm_i915_private *dev_priv,
 
 	if (new_val != dev_priv->de_irq_mask[pipe]) {
 		dev_priv->de_irq_mask[pipe] = new_val;
-		I915_WRITE(GEN8_DE_PIPE_IMR(pipe), dev_priv->de_irq_mask[pipe]);
-		POSTING_READ(GEN8_DE_PIPE_IMR(pipe));
+		intel_uncore_write(&dev_priv->uncore, GEN8_DE_PIPE_IMR(pipe), dev_priv->de_irq_mask[pipe]);
+		intel_uncore_posting_read(&dev_priv->uncore, GEN8_DE_PIPE_IMR(pipe));
 	}
 }
 
@@ -437,7 +437,7 @@ void ibx_display_interrupt_update(struct drm_i915_private *dev_priv,
 				  u32 interrupt_mask,
 				  u32 enabled_irq_mask)
 {
-	u32 sdeimr = I915_READ(SDEIMR);
+	u32 sdeimr = intel_uncore_read(&dev_priv->uncore, SDEIMR);
 	sdeimr &= ~interrupt_mask;
 	sdeimr |= (~enabled_irq_mask & interrupt_mask);
 
@@ -448,8 +448,8 @@ void ibx_display_interrupt_update(struct drm_i915_private *dev_priv,
 	if (drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv)))
 		return;
 
-	I915_WRITE(SDEIMR, sdeimr);
-	POSTING_READ(SDEIMR);
+	intel_uncore_write(&dev_priv->uncore, SDEIMR, sdeimr);
+	intel_uncore_posting_read(&dev_priv->uncore, SDEIMR);
 }
 
 u32 i915_pipestat_enable_mask(struct drm_i915_private *dev_priv,
@@ -515,8 +515,8 @@ void i915_enable_pipestat(struct drm_i915_private *dev_priv,
 	dev_priv->pipestat_irq_mask[pipe] |= status_mask;
 	enable_mask = i915_pipestat_enable_mask(dev_priv, pipe);
 
-	I915_WRITE(reg, enable_mask | status_mask);
-	POSTING_READ(reg);
+	intel_uncore_write(&dev_priv->uncore, reg, enable_mask | status_mask);
+	intel_uncore_posting_read(&dev_priv->uncore, reg);
 }
 
 void i915_disable_pipestat(struct drm_i915_private *dev_priv,
@@ -538,8 +538,8 @@ void i915_disable_pipestat(struct drm_i915_private *dev_priv,
 	dev_priv->pipestat_irq_mask[pipe] &= ~status_mask;
 	enable_mask = i915_pipestat_enable_mask(dev_priv, pipe);
 
-	I915_WRITE(reg, enable_mask | status_mask);
-	POSTING_READ(reg);
+	intel_uncore_write(&dev_priv->uncore, reg, enable_mask | status_mask);
+	intel_uncore_posting_read(&dev_priv->uncore, reg);
 }
 
 static bool i915_has_asle(struct drm_i915_private *dev_priv)
@@ -697,7 +697,7 @@ u32 g4x_get_vblank_counter(struct drm_crtc *crtc)
 	if (!vblank->max_vblank_count)
 		return 0;
 
-	return I915_READ(PIPE_FRMCOUNT_G4X(pipe));
+	return intel_uncore_read(&dev_priv->uncore, PIPE_FRMCOUNT_G4X(pipe));
 }
 
 /*
@@ -986,9 +986,9 @@ static void ivb_parity_work(struct work_struct *work)
 	if (drm_WARN_ON(&dev_priv->drm, !dev_priv->l3_parity.which_slice))
 		goto out;
 
-	misccpctl = I915_READ(GEN7_MISCCPCTL);
-	I915_WRITE(GEN7_MISCCPCTL, misccpctl & ~GEN7_DOP_CLOCK_GATE_ENABLE);
-	POSTING_READ(GEN7_MISCCPCTL);
+	misccpctl = intel_uncore_read(&dev_priv->uncore, GEN7_MISCCPCTL);
+	intel_uncore_write(&dev_priv->uncore, GEN7_MISCCPCTL, misccpctl & ~GEN7_DOP_CLOCK_GATE_ENABLE);
+	intel_uncore_posting_read(&dev_priv->uncore, GEN7_MISCCPCTL);
 
 	while ((slice = ffs(dev_priv->l3_parity.which_slice)) != 0) {
 		i915_reg_t reg;
@@ -1002,13 +1002,13 @@ static void ivb_parity_work(struct work_struct *work)
 
 		reg = GEN7_L3CDERRST1(slice);
 
-		error_status = I915_READ(reg);
+		error_status = intel_uncore_read(&dev_priv->uncore, reg);
 		row = GEN7_PARITY_ERROR_ROW(error_status);
 		bank = GEN7_PARITY_ERROR_BANK(error_status);
 		subbank = GEN7_PARITY_ERROR_SUBBANK(error_status);
 
-		I915_WRITE(reg, GEN7_PARITY_ERROR_VALID | GEN7_L3CDERRST1_ENABLE);
-		POSTING_READ(reg);
+		intel_uncore_write(&dev_priv->uncore, reg, GEN7_PARITY_ERROR_VALID | GEN7_L3CDERRST1_ENABLE);
+		intel_uncore_posting_read(&dev_priv->uncore, reg);
 
 		parity_event[0] = I915_L3_PARITY_UEVENT "=1";
 		parity_event[1] = kasprintf(GFP_KERNEL, "ROW=%d", row);
@@ -1029,7 +1029,7 @@ static void ivb_parity_work(struct work_struct *work)
 		kfree(parity_event[1]);
 	}
 
-	I915_WRITE(GEN7_MISCCPCTL, misccpctl);
+	intel_uncore_write(&dev_priv->uncore, GEN7_MISCCPCTL, misccpctl);
 
 out:
 	drm_WARN_ON(&dev_priv->drm, dev_priv->l3_parity.which_slice);
@@ -1319,7 +1319,7 @@ static void hsw_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
 				     enum pipe pipe)
 {
 	display_pipe_crc_irq_handler(dev_priv, pipe,
-				     I915_READ(PIPE_CRC_RES_1_IVB(pipe)),
+				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_1_IVB(pipe)),
 				     0, 0, 0, 0);
 }
 
@@ -1327,11 +1327,11 @@ static void ivb_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
 				     enum pipe pipe)
 {
 	display_pipe_crc_irq_handler(dev_priv, pipe,
-				     I915_READ(PIPE_CRC_RES_1_IVB(pipe)),
-				     I915_READ(PIPE_CRC_RES_2_IVB(pipe)),
-				     I915_READ(PIPE_CRC_RES_3_IVB(pipe)),
-				     I915_READ(PIPE_CRC_RES_4_IVB(pipe)),
-				     I915_READ(PIPE_CRC_RES_5_IVB(pipe)));
+				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_1_IVB(pipe)),
+				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_2_IVB(pipe)),
+				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_3_IVB(pipe)),
+				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_4_IVB(pipe)),
+				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_5_IVB(pipe)));
 }
 
 static void i9xx_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
@@ -1340,19 +1340,19 @@ static void i9xx_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
 	u32 res1, res2;
 
 	if (INTEL_GEN(dev_priv) >= 3)
-		res1 = I915_READ(PIPE_CRC_RES_RES1_I915(pipe));
+		res1 = intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_RES1_I915(pipe));
 	else
 		res1 = 0;
 
 	if (INTEL_GEN(dev_priv) >= 5 || IS_G4X(dev_priv))
-		res2 = I915_READ(PIPE_CRC_RES_RES2_G4X(pipe));
+		res2 = intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_RES2_G4X(pipe));
 	else
 		res2 = 0;
 
 	display_pipe_crc_irq_handler(dev_priv, pipe,
-				     I915_READ(PIPE_CRC_RES_RED(pipe)),
-				     I915_READ(PIPE_CRC_RES_GREEN(pipe)),
-				     I915_READ(PIPE_CRC_RES_BLUE(pipe)),
+				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_RED(pipe)),
+				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_GREEN(pipe)),
+				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_BLUE(pipe)),
 				     res1, res2);
 }
 
@@ -1361,7 +1361,7 @@ static void i9xx_pipestat_irq_reset(struct drm_i915_private *dev_priv)
 	enum pipe pipe;
 
 	for_each_pipe(dev_priv, pipe) {
-		I915_WRITE(PIPESTAT(pipe),
+		intel_uncore_write(&dev_priv->uncore, PIPESTAT(pipe),
 			   PIPESTAT_INT_STATUS_MASK |
 			   PIPE_FIFO_UNDERRUN_STATUS);
 
@@ -1415,7 +1415,7 @@ static void i9xx_pipestat_irq_ack(struct drm_i915_private *dev_priv,
 			continue;
 
 		reg = PIPESTAT(pipe);
-		pipe_stats[pipe] = I915_READ(reg) & status_mask;
+		pipe_stats[pipe] = intel_uncore_read(&dev_priv->uncore, reg) & status_mask;
 		enable_mask = i915_pipestat_enable_mask(dev_priv, pipe);
 
 		/*
@@ -1428,8 +1428,8 @@ static void i9xx_pipestat_irq_ack(struct drm_i915_private *dev_priv,
 		 * an interrupt is still pending.
 		 */
 		if (pipe_stats[pipe]) {
-			I915_WRITE(reg, pipe_stats[pipe]);
-			I915_WRITE(reg, enable_mask);
+			intel_uncore_write(&dev_priv->uncore, reg, pipe_stats[pipe]);
+			intel_uncore_write(&dev_priv->uncore, reg, enable_mask);
 		}
 	}
 	spin_unlock(&dev_priv->irq_lock);
@@ -1545,18 +1545,18 @@ static u32 i9xx_hpd_irq_ack(struct drm_i915_private *dev_priv)
 	 * bits can itself generate a new hotplug interrupt :(
 	 */
 	for (i = 0; i < 10; i++) {
-		u32 tmp = I915_READ(PORT_HOTPLUG_STAT) & hotplug_status_mask;
+		u32 tmp = intel_uncore_read(&dev_priv->uncore, PORT_HOTPLUG_STAT) & hotplug_status_mask;
 
 		if (tmp == 0)
 			return hotplug_status;
 
 		hotplug_status |= tmp;
-		I915_WRITE(PORT_HOTPLUG_STAT, hotplug_status);
+		intel_uncore_write(&dev_priv->uncore, PORT_HOTPLUG_STAT, hotplug_status);
 	}
 
 	drm_WARN_ONCE(&dev_priv->drm, 1,
 		      "PORT_HOTPLUG_STAT did not clear (0x%08x)\n",
-		      I915_READ(PORT_HOTPLUG_STAT));
+		      intel_uncore_read(&dev_priv->uncore, PORT_HOTPLUG_STAT));
 
 	return hotplug_status;
 }
@@ -1605,9 +1605,9 @@ static irqreturn_t valleyview_irq_handler(int irq, void *arg)
 		u32 hotplug_status = 0;
 		u32 ier = 0;
 
-		gt_iir = I915_READ(GTIIR);
-		pm_iir = I915_READ(GEN6_PMIIR);
-		iir = I915_READ(VLV_IIR);
+		gt_iir = intel_uncore_read(&dev_priv->uncore, GTIIR);
+		pm_iir = intel_uncore_read(&dev_priv->uncore, GEN6_PMIIR);
+		iir = intel_uncore_read(&dev_priv->uncore, VLV_IIR);
 
 		if (gt_iir == 0 && pm_iir == 0 && iir == 0)
 			break;
@@ -1627,14 +1627,14 @@ static irqreturn_t valleyview_irq_handler(int irq, void *arg)
 		 * don't end up clearing all the VLV_IIR, GT_IIR, GEN6_PMIIR
 		 * bits this time around.
 		 */
-		I915_WRITE(VLV_MASTER_IER, 0);
-		ier = I915_READ(VLV_IER);
-		I915_WRITE(VLV_IER, 0);
+		intel_uncore_write(&dev_priv->uncore, VLV_MASTER_IER, 0);
+		ier = intel_uncore_read(&dev_priv->uncore, VLV_IER);
+		intel_uncore_write(&dev_priv->uncore, VLV_IER, 0);
 
 		if (gt_iir)
-			I915_WRITE(GTIIR, gt_iir);
+			intel_uncore_write(&dev_priv->uncore, GTIIR, gt_iir);
 		if (pm_iir)
-			I915_WRITE(GEN6_PMIIR, pm_iir);
+			intel_uncore_write(&dev_priv->uncore, GEN6_PMIIR, pm_iir);
 
 		if (iir & I915_DISPLAY_PORT_INTERRUPT)
 			hotplug_status = i9xx_hpd_irq_ack(dev_priv);
@@ -1652,10 +1652,10 @@ static irqreturn_t valleyview_irq_handler(int irq, void *arg)
 		 * from PIPESTAT/PORT_HOTPLUG_STAT, hence clear it last.
 		 */
 		if (iir)
-			I915_WRITE(VLV_IIR, iir);
+			intel_uncore_write(&dev_priv->uncore, VLV_IIR, iir);
 
-		I915_WRITE(VLV_IER, ier);
-		I915_WRITE(VLV_MASTER_IER, MASTER_INTERRUPT_ENABLE);
+		intel_uncore_write(&dev_priv->uncore, VLV_IER, ier);
+		intel_uncore_write(&dev_priv->uncore, VLV_MASTER_IER, MASTER_INTERRUPT_ENABLE);
 
 		if (gt_iir)
 			gen6_gt_irq_handler(&dev_priv->gt, gt_iir);
@@ -1690,8 +1690,8 @@ static irqreturn_t cherryview_irq_handler(int irq, void *arg)
 		u32 hotplug_status = 0;
 		u32 ier = 0;
 
-		master_ctl = I915_READ(GEN8_MASTER_IRQ) & ~GEN8_MASTER_IRQ_CONTROL;
-		iir = I915_READ(VLV_IIR);
+		master_ctl = intel_uncore_read(&dev_priv->uncore, GEN8_MASTER_IRQ) & ~GEN8_MASTER_IRQ_CONTROL;
+		iir = intel_uncore_read(&dev_priv->uncore, VLV_IIR);
 
 		if (master_ctl == 0 && iir == 0)
 			break;
@@ -1711,9 +1711,9 @@ static irqreturn_t cherryview_irq_handler(int irq, void *arg)
 		 * don't end up clearing all the VLV_IIR and GEN8_MASTER_IRQ_CONTROL
 		 * bits this time around.
 		 */
-		I915_WRITE(GEN8_MASTER_IRQ, 0);
-		ier = I915_READ(VLV_IER);
-		I915_WRITE(VLV_IER, 0);
+		intel_uncore_write(&dev_priv->uncore, GEN8_MASTER_IRQ, 0);
+		ier = intel_uncore_read(&dev_priv->uncore, VLV_IER);
+		intel_uncore_write(&dev_priv->uncore, VLV_IER, 0);
 
 		gen8_gt_irq_handler(&dev_priv->gt, master_ctl);
 
@@ -1734,10 +1734,10 @@ static irqreturn_t cherryview_irq_handler(int irq, void *arg)
 		 * from PIPESTAT/PORT_HOTPLUG_STAT, hence clear it last.
 		 */
 		if (iir)
-			I915_WRITE(VLV_IIR, iir);
+			intel_uncore_write(&dev_priv->uncore, VLV_IIR, iir);
 
-		I915_WRITE(VLV_IER, ier);
-		I915_WRITE(GEN8_MASTER_IRQ, GEN8_MASTER_IRQ_CONTROL);
+		intel_uncore_write(&dev_priv->uncore, VLV_IER, ier);
+		intel_uncore_write(&dev_priv->uncore, GEN8_MASTER_IRQ, GEN8_MASTER_IRQ_CONTROL);
 
 		if (hotplug_status)
 			i9xx_hpd_irq_handler(dev_priv, hotplug_status);
@@ -1761,7 +1761,7 @@ static void ibx_hpd_irq_handler(struct drm_i915_private *dev_priv,
 	 * zero. Not acking leads to "The master control interrupt lied (SDE)!"
 	 * errors.
 	 */
-	dig_hotplug_reg = I915_READ(PCH_PORT_HOTPLUG);
+	dig_hotplug_reg = intel_uncore_read(&dev_priv->uncore, PCH_PORT_HOTPLUG);
 	if (!hotplug_trigger) {
 		u32 mask = PORTA_HOTPLUG_STATUS_MASK |
 			PORTD_HOTPLUG_STATUS_MASK |
@@ -1770,7 +1770,7 @@ static void ibx_hpd_irq_handler(struct drm_i915_private *dev_priv,
 		dig_hotplug_reg &= ~mask;
 	}
 
-	I915_WRITE(PCH_PORT_HOTPLUG, dig_hotplug_reg);
+	intel_uncore_write(&dev_priv->uncore, PCH_PORT_HOTPLUG, dig_hotplug_reg);
 	if (!hotplug_trigger)
 		return;
 
@@ -1815,7 +1815,7 @@ static void ibx_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 		for_each_pipe(dev_priv, pipe)
 			drm_dbg(&dev_priv->drm, "  pipe %c FDI IIR: 0x%08x\n",
 				pipe_name(pipe),
-				I915_READ(FDI_RX_IIR(pipe)));
+				intel_uncore_read(&dev_priv->uncore, FDI_RX_IIR(pipe)));
 	}
 
 	if (pch_iir & (SDE_TRANSB_CRC_DONE | SDE_TRANSA_CRC_DONE))
@@ -1834,7 +1834,7 @@ static void ibx_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 
 static void ivb_err_int_handler(struct drm_i915_private *dev_priv)
 {
-	u32 err_int = I915_READ(GEN7_ERR_INT);
+	u32 err_int = intel_uncore_read(&dev_priv->uncore, GEN7_ERR_INT);
 	enum pipe pipe;
 
 	if (err_int & ERR_INT_POISON)
@@ -1852,12 +1852,12 @@ static void ivb_err_int_handler(struct drm_i915_private *dev_priv)
 		}
 	}
 
-	I915_WRITE(GEN7_ERR_INT, err_int);
+	intel_uncore_write(&dev_priv->uncore, GEN7_ERR_INT, err_int);
 }
 
 static void cpt_serr_int_handler(struct drm_i915_private *dev_priv)
 {
-	u32 serr_int = I915_READ(SERR_INT);
+	u32 serr_int = intel_uncore_read(&dev_priv->uncore, SERR_INT);
 	enum pipe pipe;
 
 	if (serr_int & SERR_INT_POISON)
@@ -1867,7 +1867,7 @@ static void cpt_serr_int_handler(struct drm_i915_private *dev_priv)
 		if (serr_int & SERR_INT_TRANS_FIFO_UNDERRUN(pipe))
 			intel_pch_fifo_underrun_irq_handler(dev_priv, pipe);
 
-	I915_WRITE(SERR_INT, serr_int);
+	intel_uncore_write(&dev_priv->uncore, SERR_INT, serr_int);
 }
 
 static void cpt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
@@ -1900,7 +1900,7 @@ static void cpt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 		for_each_pipe(dev_priv, pipe)
 			drm_dbg(&dev_priv->drm, "  pipe %c FDI IIR: 0x%08x\n",
 				pipe_name(pipe),
-				I915_READ(FDI_RX_IIR(pipe)));
+				intel_uncore_read(&dev_priv->uncore, FDI_RX_IIR(pipe)));
 	}
 
 	if (pch_iir & SDE_ERROR_CPT)
@@ -1916,8 +1916,8 @@ static void icp_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 	if (ddi_hotplug_trigger) {
 		u32 dig_hotplug_reg;
 
-		dig_hotplug_reg = I915_READ(SHOTPLUG_CTL_DDI);
-		I915_WRITE(SHOTPLUG_CTL_DDI, dig_hotplug_reg);
+		dig_hotplug_reg = intel_uncore_read(&dev_priv->uncore, SHOTPLUG_CTL_DDI);
+		intel_uncore_write(&dev_priv->uncore, SHOTPLUG_CTL_DDI, dig_hotplug_reg);
 
 		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 				   ddi_hotplug_trigger, dig_hotplug_reg,
@@ -1928,8 +1928,8 @@ static void icp_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 	if (tc_hotplug_trigger) {
 		u32 dig_hotplug_reg;
 
-		dig_hotplug_reg = I915_READ(SHOTPLUG_CTL_TC);
-		I915_WRITE(SHOTPLUG_CTL_TC, dig_hotplug_reg);
+		dig_hotplug_reg = intel_uncore_read(&dev_priv->uncore, SHOTPLUG_CTL_TC);
+		intel_uncore_write(&dev_priv->uncore, SHOTPLUG_CTL_TC, dig_hotplug_reg);
 
 		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 				   tc_hotplug_trigger, dig_hotplug_reg,
@@ -1954,8 +1954,8 @@ static void spt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 	if (hotplug_trigger) {
 		u32 dig_hotplug_reg;
 
-		dig_hotplug_reg = I915_READ(PCH_PORT_HOTPLUG);
-		I915_WRITE(PCH_PORT_HOTPLUG, dig_hotplug_reg);
+		dig_hotplug_reg = intel_uncore_read(&dev_priv->uncore, PCH_PORT_HOTPLUG);
+		intel_uncore_write(&dev_priv->uncore, PCH_PORT_HOTPLUG, dig_hotplug_reg);
 
 		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 				   hotplug_trigger, dig_hotplug_reg,
@@ -1966,8 +1966,8 @@ static void spt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 	if (hotplug2_trigger) {
 		u32 dig_hotplug_reg;
 
-		dig_hotplug_reg = I915_READ(PCH_PORT_HOTPLUG2);
-		I915_WRITE(PCH_PORT_HOTPLUG2, dig_hotplug_reg);
+		dig_hotplug_reg = intel_uncore_read(&dev_priv->uncore, PCH_PORT_HOTPLUG2);
+		intel_uncore_write(&dev_priv->uncore, PCH_PORT_HOTPLUG2, dig_hotplug_reg);
 
 		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 				   hotplug2_trigger, dig_hotplug_reg,
@@ -1987,8 +1987,8 @@ static void ilk_hpd_irq_handler(struct drm_i915_private *dev_priv,
 {
 	u32 dig_hotplug_reg, pin_mask = 0, long_mask = 0;
 
-	dig_hotplug_reg = I915_READ(DIGITAL_PORT_HOTPLUG_CNTRL);
-	I915_WRITE(DIGITAL_PORT_HOTPLUG_CNTRL, dig_hotplug_reg);
+	dig_hotplug_reg = intel_uncore_read(&dev_priv->uncore, DIGITAL_PORT_HOTPLUG_CNTRL);
+	intel_uncore_write(&dev_priv->uncore, DIGITAL_PORT_HOTPLUG_CNTRL, dig_hotplug_reg);
 
 	intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 			   hotplug_trigger, dig_hotplug_reg,
@@ -2029,7 +2029,7 @@ static void ilk_display_irq_handler(struct drm_i915_private *dev_priv,
 
 	/* check event from PCH */
 	if (de_iir & DE_PCH_EVENT) {
-		u32 pch_iir = I915_READ(SDEIIR);
+		u32 pch_iir = intel_uncore_read(&dev_priv->uncore, SDEIIR);
 
 		if (HAS_PCH_CPT(dev_priv))
 			cpt_irq_handler(dev_priv, pch_iir);
@@ -2037,7 +2037,7 @@ static void ilk_display_irq_handler(struct drm_i915_private *dev_priv,
 			ibx_irq_handler(dev_priv, pch_iir);
 
 		/* should clear PCH hotplug event before clear CPU irq */
-		I915_WRITE(SDEIIR, pch_iir);
+		intel_uncore_write(&dev_priv->uncore, SDEIIR, pch_iir);
 	}
 
 	if (IS_GEN(dev_priv, 5) && de_iir & DE_PCU_EVENT)
@@ -2057,10 +2057,10 @@ static void ivb_display_irq_handler(struct drm_i915_private *dev_priv,
 		ivb_err_int_handler(dev_priv);
 
 	if (de_iir & DE_EDP_PSR_INT_HSW) {
-		u32 psr_iir = I915_READ(EDP_PSR_IIR);
+		u32 psr_iir = intel_uncore_read(&dev_priv->uncore, EDP_PSR_IIR);
 
 		intel_psr_irq_handler(dev_priv, psr_iir);
-		I915_WRITE(EDP_PSR_IIR, psr_iir);
+		intel_uncore_write(&dev_priv->uncore, EDP_PSR_IIR, psr_iir);
 	}
 
 	if (de_iir & DE_AUX_CHANNEL_A_IVB)
@@ -2076,12 +2076,12 @@ static void ivb_display_irq_handler(struct drm_i915_private *dev_priv,
 
 	/* check event from PCH */
 	if (!HAS_PCH_NOP(dev_priv) && (de_iir & DE_PCH_EVENT_IVB)) {
-		u32 pch_iir = I915_READ(SDEIIR);
+		u32 pch_iir = intel_uncore_read(&dev_priv->uncore, SDEIIR);
 
 		cpt_irq_handler(dev_priv, pch_iir);
 
 		/* clear PCH hotplug event before clear CPU irq */
-		I915_WRITE(SDEIIR, pch_iir);
+		intel_uncore_write(&dev_priv->uncore, SDEIIR, pch_iir);
 	}
 }
 
@@ -2166,8 +2166,8 @@ static void bxt_hpd_irq_handler(struct drm_i915_private *dev_priv,
 {
 	u32 dig_hotplug_reg, pin_mask = 0, long_mask = 0;
 
-	dig_hotplug_reg = I915_READ(PCH_PORT_HOTPLUG);
-	I915_WRITE(PCH_PORT_HOTPLUG, dig_hotplug_reg);
+	dig_hotplug_reg = intel_uncore_read(&dev_priv->uncore, PCH_PORT_HOTPLUG);
+	intel_uncore_write(&dev_priv->uncore, PCH_PORT_HOTPLUG, dig_hotplug_reg);
 
 	intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 			   hotplug_trigger, dig_hotplug_reg,
@@ -2186,8 +2186,8 @@ static void gen11_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
 	if (trigger_tc) {
 		u32 dig_hotplug_reg;
 
-		dig_hotplug_reg = I915_READ(GEN11_TC_HOTPLUG_CTL);
-		I915_WRITE(GEN11_TC_HOTPLUG_CTL, dig_hotplug_reg);
+		dig_hotplug_reg = intel_uncore_read(&dev_priv->uncore, GEN11_TC_HOTPLUG_CTL);
+		intel_uncore_write(&dev_priv->uncore, GEN11_TC_HOTPLUG_CTL, dig_hotplug_reg);
 
 		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 				   trigger_tc, dig_hotplug_reg,
@@ -2198,8 +2198,8 @@ static void gen11_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
 	if (trigger_tbt) {
 		u32 dig_hotplug_reg;
 
-		dig_hotplug_reg = I915_READ(GEN11_TBT_HOTPLUG_CTL);
-		I915_WRITE(GEN11_TBT_HOTPLUG_CTL, dig_hotplug_reg);
+		dig_hotplug_reg = intel_uncore_read(&dev_priv->uncore, GEN11_TBT_HOTPLUG_CTL);
+		intel_uncore_write(&dev_priv->uncore, GEN11_TBT_HOTPLUG_CTL, dig_hotplug_reg);
 
 		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 				   trigger_tbt, dig_hotplug_reg,
@@ -2276,8 +2276,8 @@ gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
 		else
 			iir_reg = EDP_PSR_IIR;
 
-		psr_iir = I915_READ(iir_reg);
-		I915_WRITE(iir_reg, psr_iir);
+		psr_iir = intel_uncore_read(&dev_priv->uncore, iir_reg);
+		intel_uncore_write(&dev_priv->uncore, iir_reg, psr_iir);
 
 		if (psr_iir)
 			found = true;
@@ -2301,7 +2301,7 @@ static void gen11_dsi_te_interrupt_handler(struct drm_i915_private *dev_priv,
 	 * Incase of dual link, TE comes from DSI_1
 	 * this is to check if dual link is enabled
 	 */
-	val = I915_READ(TRANS_DDI_FUNC_CTL2(TRANSCODER_DSI_0));
+	val = intel_uncore_read(&dev_priv->uncore, TRANS_DDI_FUNC_CTL2(TRANSCODER_DSI_0));
 	val &= PORT_SYNC_MODE_ENABLE;
 
 	/*
@@ -2313,7 +2313,7 @@ static void gen11_dsi_te_interrupt_handler(struct drm_i915_private *dev_priv,
 	dsi_trans = (port == PORT_A) ? TRANSCODER_DSI_0 : TRANSCODER_DSI_1;
 
 	/* Check if DSI configured in command mode */
-	val = I915_READ(DSI_TRANS_FUNC_CONF(dsi_trans));
+	val = intel_uncore_read(&dev_priv->uncore, DSI_TRANS_FUNC_CONF(dsi_trans));
 	val = val & OP_MODE_MASK;
 
 	if (val != CMD_MODE_NO_GATE && val != CMD_MODE_TE_GATE) {
@@ -2322,7 +2322,7 @@ static void gen11_dsi_te_interrupt_handler(struct drm_i915_private *dev_priv,
 	}
 
 	/* Get PIPE for handling VBLANK event */
-	val = I915_READ(TRANS_DDI_FUNC_CTL(dsi_trans));
+	val = intel_uncore_read(&dev_priv->uncore, TRANS_DDI_FUNC_CTL(dsi_trans));
 	switch (val & TRANS_DDI_EDP_INPUT_MASK) {
 	case TRANS_DDI_EDP_INPUT_A_ON:
 		pipe = PIPE_A;
@@ -2342,8 +2342,8 @@ static void gen11_dsi_te_interrupt_handler(struct drm_i915_private *dev_priv,
 
 	/* clear TE in dsi IIR */
 	port = (te_trigger & DSI1_TE) ? PORT_B : PORT_A;
-	tmp = I915_READ(DSI_INTR_IDENT_REG(port));
-	I915_WRITE(DSI_INTR_IDENT_REG(port), tmp);
+	tmp = intel_uncore_read(&dev_priv->uncore, DSI_INTR_IDENT_REG(port));
+	intel_uncore_write(&dev_priv->uncore, DSI_INTR_IDENT_REG(port), tmp);
 }
 
 static irqreturn_t
@@ -2354,9 +2354,9 @@ gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 	enum pipe pipe;
 
 	if (master_ctl & GEN8_DE_MISC_IRQ) {
-		iir = I915_READ(GEN8_DE_MISC_IIR);
+		iir = intel_uncore_read(&dev_priv->uncore, GEN8_DE_MISC_IIR);
 		if (iir) {
-			I915_WRITE(GEN8_DE_MISC_IIR, iir);
+			intel_uncore_write(&dev_priv->uncore, GEN8_DE_MISC_IIR, iir);
 			ret = IRQ_HANDLED;
 			gen8_de_misc_irq_handler(dev_priv, iir);
 		} else {
@@ -2366,9 +2366,9 @@ gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 	}
 
 	if (INTEL_GEN(dev_priv) >= 11 && (master_ctl & GEN11_DE_HPD_IRQ)) {
-		iir = I915_READ(GEN11_DE_HPD_IIR);
+		iir = intel_uncore_read(&dev_priv->uncore, GEN11_DE_HPD_IIR);
 		if (iir) {
-			I915_WRITE(GEN11_DE_HPD_IIR, iir);
+			intel_uncore_write(&dev_priv->uncore, GEN11_DE_HPD_IIR, iir);
 			ret = IRQ_HANDLED;
 			gen11_hpd_irq_handler(dev_priv, iir);
 		} else {
@@ -2378,11 +2378,11 @@ gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 	}
 
 	if (master_ctl & GEN8_DE_PORT_IRQ) {
-		iir = I915_READ(GEN8_DE_PORT_IIR);
+		iir = intel_uncore_read(&dev_priv->uncore, GEN8_DE_PORT_IIR);
 		if (iir) {
 			bool found = false;
 
-			I915_WRITE(GEN8_DE_PORT_IIR, iir);
+			intel_uncore_write(&dev_priv->uncore, GEN8_DE_PORT_IIR, iir);
 			ret = IRQ_HANDLED;
 
 			if (iir & gen8_de_port_aux_mask(dev_priv)) {
@@ -2435,7 +2435,7 @@ gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 		if (!(master_ctl & GEN8_DE_PIPE_IRQ(pipe)))
 			continue;
 
-		iir = I915_READ(GEN8_DE_PIPE_IIR(pipe));
+		iir = intel_uncore_read(&dev_priv->uncore, GEN8_DE_PIPE_IIR(pipe));
 		if (!iir) {
 			drm_err(&dev_priv->drm,
 				"The master control interrupt lied (DE PIPE)!\n");
@@ -2443,7 +2443,7 @@ gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 		}
 
 		ret = IRQ_HANDLED;
-		I915_WRITE(GEN8_DE_PIPE_IIR(pipe), iir);
+		intel_uncore_write(&dev_priv->uncore, GEN8_DE_PIPE_IIR(pipe), iir);
 
 		if (iir & GEN8_PIPE_VBLANK)
 			intel_handle_vblank(dev_priv, pipe);
@@ -2472,9 +2472,9 @@ gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 		 * scheme also closed the SDE interrupt handling race we've seen
 		 * on older pch-split platforms. But this needs testing.
 		 */
-		iir = I915_READ(SDEIIR);
+		iir = intel_uncore_read(&dev_priv->uncore, SDEIIR);
 		if (iir) {
-			I915_WRITE(SDEIIR, iir);
+			intel_uncore_write(&dev_priv->uncore, SDEIIR, iir);
 			ret = IRQ_HANDLED;
 
 			if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
@@ -2713,7 +2713,7 @@ int i915gm_enable_vblank(struct drm_crtc *crtc)
 	 * only when vblank interrupts are actually enabled.
 	 */
 	if (dev_priv->vblank_enabled++ == 0)
-		I915_WRITE(SCPD0, _MASKED_BIT_ENABLE(CSTATE_RENDER_CLOCK_GATE_DISABLE));
+		intel_uncore_write(&dev_priv->uncore, SCPD0, _MASKED_BIT_ENABLE(CSTATE_RENDER_CLOCK_GATE_DISABLE));
 
 	return i8xx_enable_vblank(crtc);
 }
@@ -2770,16 +2770,16 @@ static bool gen11_dsi_configure_te(struct intel_crtc *intel_crtc,
 	else
 		port = PORT_A;
 
-	tmp =  I915_READ(DSI_INTR_MASK_REG(port));
+	tmp =  intel_uncore_read(&dev_priv->uncore, DSI_INTR_MASK_REG(port));
 	if (enable)
 		tmp &= ~DSI_TE_EVENT;
 	else
 		tmp |= DSI_TE_EVENT;
 
-	I915_WRITE(DSI_INTR_MASK_REG(port), tmp);
+	intel_uncore_write(&dev_priv->uncore, DSI_INTR_MASK_REG(port), tmp);
 
-	tmp = I915_READ(DSI_INTR_IDENT_REG(port));
-	I915_WRITE(DSI_INTR_IDENT_REG(port), tmp);
+	tmp = intel_uncore_read(&dev_priv->uncore, DSI_INTR_IDENT_REG(port));
+	intel_uncore_write(&dev_priv->uncore, DSI_INTR_IDENT_REG(port), tmp);
 
 	return true;
 }
@@ -2841,7 +2841,7 @@ void i915gm_disable_vblank(struct drm_crtc *crtc)
 	i8xx_disable_vblank(crtc);
 
 	if (--dev_priv->vblank_enabled == 0)
-		I915_WRITE(SCPD0, _MASKED_BIT_DISABLE(CSTATE_RENDER_CLOCK_GATE_DISABLE));
+		intel_uncore_write(&dev_priv->uncore, SCPD0, _MASKED_BIT_DISABLE(CSTATE_RENDER_CLOCK_GATE_DISABLE));
 }
 
 void i965_disable_vblank(struct drm_crtc *crtc)
@@ -2907,7 +2907,7 @@ static void ibx_irq_reset(struct drm_i915_private *dev_priv)
 	GEN3_IRQ_RESET(uncore, SDE);
 
 	if (HAS_PCH_CPT(dev_priv) || HAS_PCH_LPT(dev_priv))
-		I915_WRITE(SERR_INT, 0xffffffff);
+		intel_uncore_write(&dev_priv->uncore, SERR_INT, 0xffffffff);
 }
 
 static void vlv_display_irq_reset(struct drm_i915_private *dev_priv)
@@ -2920,7 +2920,7 @@ static void vlv_display_irq_reset(struct drm_i915_private *dev_priv)
 		intel_uncore_write(uncore, DPINVGTT, DPINVGTT_STATUS_MASK);
 
 	i915_hotplug_interrupt_update_locked(dev_priv, 0xffffffff, 0);
-	intel_uncore_write(uncore, PORT_HOTPLUG_STAT, I915_READ(PORT_HOTPLUG_STAT));
+	intel_uncore_write(uncore, PORT_HOTPLUG_STAT, intel_uncore_read(&dev_priv->uncore, PORT_HOTPLUG_STAT));
 
 	i9xx_pipestat_irq_reset(dev_priv);
 
@@ -2983,8 +2983,8 @@ static void ilk_irq_reset(struct drm_i915_private *dev_priv)
 
 static void valleyview_irq_reset(struct drm_i915_private *dev_priv)
 {
-	I915_WRITE(VLV_MASTER_IER, 0);
-	POSTING_READ(VLV_MASTER_IER);
+	intel_uncore_write(&dev_priv->uncore, VLV_MASTER_IER, 0);
+	intel_uncore_posting_read(&dev_priv->uncore, VLV_MASTER_IER);
 
 	gen5_gt_irq_reset(&dev_priv->gt);
 
@@ -3137,8 +3137,8 @@ static void cherryview_irq_reset(struct drm_i915_private *dev_priv)
 {
 	struct intel_uncore *uncore = &dev_priv->uncore;
 
-	I915_WRITE(GEN8_MASTER_IRQ, 0);
-	POSTING_READ(GEN8_MASTER_IRQ);
+	intel_uncore_write(&dev_priv->uncore, GEN8_MASTER_IRQ, 0);
+	intel_uncore_posting_read(&dev_priv->uncore, GEN8_MASTER_IRQ);
 
 	gen8_gt_irq_reset(&dev_priv->gt);
 
@@ -3184,7 +3184,7 @@ static void ibx_hpd_detection_setup(struct drm_i915_private *dev_priv)
 	 * duration to 2ms (which is the minimum in the Display Port spec).
 	 * The pulse duration bits are reserved on LPT+.
 	 */
-	hotplug = I915_READ(PCH_PORT_HOTPLUG);
+	hotplug = intel_uncore_read(&dev_priv->uncore, PCH_PORT_HOTPLUG);
 	hotplug &= ~(PORTA_HOTPLUG_ENABLE |
 		     PORTB_HOTPLUG_ENABLE |
 		     PORTC_HOTPLUG_ENABLE |
@@ -3193,7 +3193,7 @@ static void ibx_hpd_detection_setup(struct drm_i915_private *dev_priv)
 		     PORTC_PULSE_DURATION_MASK |
 		     PORTD_PULSE_DURATION_MASK);
 	hotplug |= intel_hpd_hotplug_enables(dev_priv, ibx_hotplug_enables);
-	I915_WRITE(PCH_PORT_HOTPLUG, hotplug);
+	intel_uncore_write(&dev_priv->uncore, PCH_PORT_HOTPLUG, hotplug);
 }
 
 static void ibx_hpd_irq_setup(struct drm_i915_private *dev_priv)
@@ -3242,20 +3242,20 @@ static void icp_ddi_hpd_detection_setup(struct drm_i915_private *dev_priv)
 {
 	u32 hotplug;
 
-	hotplug = I915_READ(SHOTPLUG_CTL_DDI);
+	hotplug = intel_uncore_read(&dev_priv->uncore, SHOTPLUG_CTL_DDI);
 	hotplug &= ~(SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_A) |
 		     SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_B) |
 		     SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_C) |
 		     SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_D));
 	hotplug |= intel_hpd_hotplug_enables(dev_priv, icp_ddi_hotplug_enables);
-	I915_WRITE(SHOTPLUG_CTL_DDI, hotplug);
+	intel_uncore_write(&dev_priv->uncore, SHOTPLUG_CTL_DDI, hotplug);
 }
 
 static void icp_tc_hpd_detection_setup(struct drm_i915_private *dev_priv)
 {
 	u32 hotplug;
 
-	hotplug = I915_READ(SHOTPLUG_CTL_TC);
+	hotplug = intel_uncore_read(&dev_priv->uncore, SHOTPLUG_CTL_TC);
 	hotplug &= ~(ICP_TC_HPD_ENABLE(HPD_PORT_TC1) |
 		     ICP_TC_HPD_ENABLE(HPD_PORT_TC2) |
 		     ICP_TC_HPD_ENABLE(HPD_PORT_TC3) |
@@ -3263,7 +3263,7 @@ static void icp_tc_hpd_detection_setup(struct drm_i915_private *dev_priv)
 		     ICP_TC_HPD_ENABLE(HPD_PORT_TC5) |
 		     ICP_TC_HPD_ENABLE(HPD_PORT_TC6));
 	hotplug |= intel_hpd_hotplug_enables(dev_priv, icp_tc_hotplug_enables);
-	I915_WRITE(SHOTPLUG_CTL_TC, hotplug);
+	intel_uncore_write(&dev_priv->uncore, SHOTPLUG_CTL_TC, hotplug);
 }
 
 static void icp_hpd_irq_setup(struct drm_i915_private *dev_priv)
@@ -3274,7 +3274,7 @@ static void icp_hpd_irq_setup(struct drm_i915_private *dev_priv)
 	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->hotplug.pch_hpd);
 
 	if (INTEL_PCH_TYPE(dev_priv) <= PCH_TGP)
-		I915_WRITE(SHPD_FILTER_CNT, SHPD_FILTER_CNT_500_ADJ);
+		intel_uncore_write(&dev_priv->uncore, SHPD_FILTER_CNT, SHPD_FILTER_CNT_500_ADJ);
 
 	ibx_display_interrupt_update(dev_priv, hotplug_irqs, enabled_irqs);
 
@@ -3302,12 +3302,12 @@ static void dg1_hpd_irq_setup(struct drm_i915_private *dev_priv)
 {
 	u32 val;
 
-	val = I915_READ(SOUTH_CHICKEN1);
+	val = intel_uncore_read(&dev_priv->uncore, SOUTH_CHICKEN1);
 	val |= (INVERT_DDIA_HPD |
 		INVERT_DDIB_HPD |
 		INVERT_DDIC_HPD |
 		INVERT_DDID_HPD);
-	I915_WRITE(SOUTH_CHICKEN1, val);
+	intel_uncore_write(&dev_priv->uncore, SOUTH_CHICKEN1, val);
 
 	icp_hpd_irq_setup(dev_priv);
 }
@@ -3316,7 +3316,7 @@ static void gen11_tc_hpd_detection_setup(struct drm_i915_private *dev_priv)
 {
 	u32 hotplug;
 
-	hotplug = I915_READ(GEN11_TC_HOTPLUG_CTL);
+	hotplug = intel_uncore_read(&dev_priv->uncore, GEN11_TC_HOTPLUG_CTL);
 	hotplug &= ~(GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC1) |
 		     GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC2) |
 		     GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC3) |
@@ -3324,14 +3324,14 @@ static void gen11_tc_hpd_detection_setup(struct drm_i915_private *dev_priv)
 		     GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC5) |
 		     GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC6));
 	hotplug |= intel_hpd_hotplug_enables(dev_priv, gen11_hotplug_enables);
-	I915_WRITE(GEN11_TC_HOTPLUG_CTL, hotplug);
+	intel_uncore_write(&dev_priv->uncore, GEN11_TC_HOTPLUG_CTL, hotplug);
 }
 
 static void gen11_tbt_hpd_detection_setup(struct drm_i915_private *dev_priv)
 {
 	u32 hotplug;
 
-	hotplug = I915_READ(GEN11_TBT_HOTPLUG_CTL);
+	hotplug = intel_uncore_read(&dev_priv->uncore, GEN11_TBT_HOTPLUG_CTL);
 	hotplug &= ~(GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC1) |
 		     GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC2) |
 		     GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC3) |
@@ -3339,7 +3339,7 @@ static void gen11_tbt_hpd_detection_setup(struct drm_i915_private *dev_priv)
 		     GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC5) |
 		     GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC6));
 	hotplug |= intel_hpd_hotplug_enables(dev_priv, gen11_hotplug_enables);
-	I915_WRITE(GEN11_TBT_HOTPLUG_CTL, hotplug);
+	intel_uncore_write(&dev_priv->uncore, GEN11_TBT_HOTPLUG_CTL, hotplug);
 }
 
 static void gen11_hpd_irq_setup(struct drm_i915_private *dev_priv)
@@ -3350,11 +3350,11 @@ static void gen11_hpd_irq_setup(struct drm_i915_private *dev_priv)
 	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->hotplug.hpd);
 	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->hotplug.hpd);
 
-	val = I915_READ(GEN11_DE_HPD_IMR);
+	val = intel_uncore_read(&dev_priv->uncore, GEN11_DE_HPD_IMR);
 	val &= ~hotplug_irqs;
 	val |= ~enabled_irqs & hotplug_irqs;
-	I915_WRITE(GEN11_DE_HPD_IMR, val);
-	POSTING_READ(GEN11_DE_HPD_IMR);
+	intel_uncore_write(&dev_priv->uncore, GEN11_DE_HPD_IMR, val);
+	intel_uncore_posting_read(&dev_priv->uncore, GEN11_DE_HPD_IMR);
 
 	gen11_tc_hpd_detection_setup(dev_priv);
 	gen11_tbt_hpd_detection_setup(dev_priv);
@@ -3397,25 +3397,25 @@ static void spt_hpd_detection_setup(struct drm_i915_private *dev_priv)
 
 	/* Display WA #1179 WaHardHangonHotPlug: cnp */
 	if (HAS_PCH_CNP(dev_priv)) {
-		val = I915_READ(SOUTH_CHICKEN1);
+		val = intel_uncore_read(&dev_priv->uncore, SOUTH_CHICKEN1);
 		val &= ~CHASSIS_CLK_REQ_DURATION_MASK;
 		val |= CHASSIS_CLK_REQ_DURATION(0xf);
-		I915_WRITE(SOUTH_CHICKEN1, val);
+		intel_uncore_write(&dev_priv->uncore, SOUTH_CHICKEN1, val);
 	}
 
 	/* Enable digital hotplug on the PCH */
-	hotplug = I915_READ(PCH_PORT_HOTPLUG);
+	hotplug = intel_uncore_read(&dev_priv->uncore, PCH_PORT_HOTPLUG);
 	hotplug &= ~(PORTA_HOTPLUG_ENABLE |
 		     PORTB_HOTPLUG_ENABLE |
 		     PORTC_HOTPLUG_ENABLE |
 		     PORTD_HOTPLUG_ENABLE);
 	hotplug |= intel_hpd_hotplug_enables(dev_priv, spt_hotplug_enables);
-	I915_WRITE(PCH_PORT_HOTPLUG, hotplug);
+	intel_uncore_write(&dev_priv->uncore, PCH_PORT_HOTPLUG, hotplug);
 
-	hotplug = I915_READ(PCH_PORT_HOTPLUG2);
+	hotplug = intel_uncore_read(&dev_priv->uncore, PCH_PORT_HOTPLUG2);
 	hotplug &= ~PORTE_HOTPLUG_ENABLE;
 	hotplug |= intel_hpd_hotplug_enables(dev_priv, spt_hotplug2_enables);
-	I915_WRITE(PCH_PORT_HOTPLUG2, hotplug);
+	intel_uncore_write(&dev_priv->uncore, PCH_PORT_HOTPLUG2, hotplug);
 }
 
 static void spt_hpd_irq_setup(struct drm_i915_private *dev_priv)
@@ -3423,7 +3423,7 @@ static void spt_hpd_irq_setup(struct drm_i915_private *dev_priv)
 	u32 hotplug_irqs, enabled_irqs;
 
 	if (INTEL_PCH_TYPE(dev_priv) >= PCH_CNP)
-		I915_WRITE(SHPD_FILTER_CNT, SHPD_FILTER_CNT_500_ADJ);
+		intel_uncore_write(&dev_priv->uncore, SHPD_FILTER_CNT, SHPD_FILTER_CNT_500_ADJ);
 
 	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->hotplug.pch_hpd);
 	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->hotplug.pch_hpd);
@@ -3454,11 +3454,11 @@ static void ilk_hpd_detection_setup(struct drm_i915_private *dev_priv)
 	 * duration to 2ms (which is the minimum in the Display Port spec)
 	 * The pulse duration bits are reserved on HSW+.
 	 */
-	hotplug = I915_READ(DIGITAL_PORT_HOTPLUG_CNTRL);
+	hotplug = intel_uncore_read(&dev_priv->uncore, DIGITAL_PORT_HOTPLUG_CNTRL);
 	hotplug &= ~(DIGITAL_PORTA_HOTPLUG_ENABLE |
 		     DIGITAL_PORTA_PULSE_DURATION_MASK);
 	hotplug |= intel_hpd_hotplug_enables(dev_priv, ilk_hotplug_enables);
-	I915_WRITE(DIGITAL_PORT_HOTPLUG_CNTRL, hotplug);
+	intel_uncore_write(&dev_priv->uncore, DIGITAL_PORT_HOTPLUG_CNTRL, hotplug);
 }
 
 static void ilk_hpd_irq_setup(struct drm_i915_private *dev_priv)
@@ -3508,7 +3508,7 @@ static void bxt_hpd_detection_setup(struct drm_i915_private *dev_priv)
 {
 	u32 hotplug;
 
-	hotplug = I915_READ(PCH_PORT_HOTPLUG);
+	hotplug = intel_uncore_read(&dev_priv->uncore, PCH_PORT_HOTPLUG);
 	hotplug &= ~(PORTA_HOTPLUG_ENABLE |
 		     PORTB_HOTPLUG_ENABLE |
 		     PORTC_HOTPLUG_ENABLE |
@@ -3516,7 +3516,7 @@ static void bxt_hpd_detection_setup(struct drm_i915_private *dev_priv)
 		     BXT_DDIB_HPD_INVERT |
 		     BXT_DDIC_HPD_INVERT);
 	hotplug |= intel_hpd_hotplug_enables(dev_priv, bxt_hotplug_enables);
-	I915_WRITE(PCH_PORT_HOTPLUG, hotplug);
+	intel_uncore_write(&dev_priv->uncore, PCH_PORT_HOTPLUG, hotplug);
 }
 
 static void bxt_hpd_irq_setup(struct drm_i915_private *dev_priv)
@@ -3636,8 +3636,8 @@ static void valleyview_irq_postinstall(struct drm_i915_private *dev_priv)
 		vlv_display_irq_postinstall(dev_priv);
 	spin_unlock_irq(&dev_priv->irq_lock);
 
-	I915_WRITE(VLV_MASTER_IER, MASTER_INTERRUPT_ENABLE);
-	POSTING_READ(VLV_MASTER_IER);
+	intel_uncore_write(&dev_priv->uncore, VLV_MASTER_IER, MASTER_INTERRUPT_ENABLE);
+	intel_uncore_posting_read(&dev_priv->uncore, VLV_MASTER_IER);
 }
 
 static void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
@@ -3750,14 +3750,14 @@ static void gen11_irq_postinstall(struct drm_i915_private *dev_priv)
 
 	GEN3_IRQ_INIT(uncore, GEN11_GU_MISC_, ~gu_misc_masked, gu_misc_masked);
 
-	I915_WRITE(GEN11_DISPLAY_INT_CTL, GEN11_DISPLAY_IRQ_ENABLE);
+	intel_uncore_write(&dev_priv->uncore, GEN11_DISPLAY_INT_CTL, GEN11_DISPLAY_IRQ_ENABLE);
 
 	if (HAS_MASTER_UNIT_IRQ(dev_priv)) {
 		dg1_master_intr_enable(uncore->regs);
-		POSTING_READ(DG1_MSTR_UNIT_INTR);
+		intel_uncore_posting_read(&dev_priv->uncore, DG1_MSTR_UNIT_INTR);
 	} else {
 		gen11_master_intr_enable(uncore->regs);
-		POSTING_READ(GEN11_GFX_MSTR_IRQ);
+		intel_uncore_posting_read(&dev_priv->uncore, GEN11_GFX_MSTR_IRQ);
 	}
 }
 
@@ -3770,8 +3770,8 @@ static void cherryview_irq_postinstall(struct drm_i915_private *dev_priv)
 		vlv_display_irq_postinstall(dev_priv);
 	spin_unlock_irq(&dev_priv->irq_lock);
 
-	I915_WRITE(GEN8_MASTER_IRQ, GEN8_MASTER_IRQ_CONTROL);
-	POSTING_READ(GEN8_MASTER_IRQ);
+	intel_uncore_write(&dev_priv->uncore, GEN8_MASTER_IRQ, GEN8_MASTER_IRQ_CONTROL);
+	intel_uncore_posting_read(&dev_priv->uncore, GEN8_MASTER_IRQ);
 }
 
 static void i8xx_irq_reset(struct drm_i915_private *dev_priv)
@@ -3861,11 +3861,11 @@ static void i9xx_error_irq_ack(struct drm_i915_private *dev_priv,
 {
 	u32 emr;
 
-	*eir = I915_READ(EIR);
+	*eir = intel_uncore_read(&dev_priv->uncore, EIR);
 
-	I915_WRITE(EIR, *eir);
+	intel_uncore_write(&dev_priv->uncore, EIR, *eir);
 
-	*eir_stuck = I915_READ(EIR);
+	*eir_stuck = intel_uncore_read(&dev_priv->uncore, EIR);
 	if (*eir_stuck == 0)
 		return;
 
@@ -3879,9 +3879,9 @@ static void i9xx_error_irq_ack(struct drm_i915_private *dev_priv,
 	 * (or by a GPU reset) so we mask any bit that
 	 * remains set.
 	 */
-	emr = I915_READ(EMR);
-	I915_WRITE(EMR, 0xffffffff);
-	I915_WRITE(EMR, emr | *eir_stuck);
+	emr = intel_uncore_read(&dev_priv->uncore, EMR);
+	intel_uncore_write(&dev_priv->uncore, EMR, 0xffffffff);
+	intel_uncore_write(&dev_priv->uncore, EMR, emr | *eir_stuck);
 }
 
 static void i9xx_error_irq_handler(struct drm_i915_private *dev_priv,
@@ -3945,7 +3945,7 @@ static void i915_irq_reset(struct drm_i915_private *dev_priv)
 
 	if (I915_HAS_HOTPLUG(dev_priv)) {
 		i915_hotplug_interrupt_update(dev_priv, 0xffffffff, 0);
-		I915_WRITE(PORT_HOTPLUG_STAT, I915_READ(PORT_HOTPLUG_STAT));
+		intel_uncore_write(&dev_priv->uncore, PORT_HOTPLUG_STAT, intel_uncore_read(&dev_priv->uncore, PORT_HOTPLUG_STAT));
 	}
 
 	i9xx_pipestat_irq_reset(dev_priv);
@@ -3959,7 +3959,7 @@ static void i915_irq_postinstall(struct drm_i915_private *dev_priv)
 	struct intel_uncore *uncore = &dev_priv->uncore;
 	u32 enable_mask;
 
-	I915_WRITE(EMR, ~(I915_ERROR_PAGE_TABLE |
+	intel_uncore_write(&dev_priv->uncore, EMR, ~(I915_ERROR_PAGE_TABLE |
 			  I915_ERROR_MEMORY_REFRESH));
 
 	/* Unmask the interrupts that we always want on. */
@@ -4012,7 +4012,7 @@ static irqreturn_t i915_irq_handler(int irq, void *arg)
 		u32 hotplug_status = 0;
 		u32 iir;
 
-		iir = I915_READ(GEN2_IIR);
+		iir = intel_uncore_read(&dev_priv->uncore, GEN2_IIR);
 		if (iir == 0)
 			break;
 
@@ -4029,7 +4029,7 @@ static irqreturn_t i915_irq_handler(int irq, void *arg)
 		if (iir & I915_MASTER_ERROR_INTERRUPT)
 			i9xx_error_irq_ack(dev_priv, &eir, &eir_stuck);
 
-		I915_WRITE(GEN2_IIR, iir);
+		intel_uncore_write(&dev_priv->uncore, GEN2_IIR, iir);
 
 		if (iir & I915_USER_INTERRUPT)
 			intel_engine_signal_breadcrumbs(dev_priv->gt.engine[RCS0]);
@@ -4053,7 +4053,7 @@ static void i965_irq_reset(struct drm_i915_private *dev_priv)
 	struct intel_uncore *uncore = &dev_priv->uncore;
 
 	i915_hotplug_interrupt_update(dev_priv, 0xffffffff, 0);
-	I915_WRITE(PORT_HOTPLUG_STAT, I915_READ(PORT_HOTPLUG_STAT));
+	intel_uncore_write(&dev_priv->uncore, PORT_HOTPLUG_STAT, intel_uncore_read(&dev_priv->uncore, PORT_HOTPLUG_STAT));
 
 	i9xx_pipestat_irq_reset(dev_priv);
 
@@ -4080,7 +4080,7 @@ static void i965_irq_postinstall(struct drm_i915_private *dev_priv)
 		error_mask = ~(I915_ERROR_PAGE_TABLE |
 			       I915_ERROR_MEMORY_REFRESH);
 	}
-	I915_WRITE(EMR, error_mask);
+	intel_uncore_write(&dev_priv->uncore, EMR, error_mask);
 
 	/* Unmask the interrupts that we always want on. */
 	dev_priv->irq_mask =
@@ -4156,7 +4156,7 @@ static irqreturn_t i965_irq_handler(int irq, void *arg)
 		u32 hotplug_status = 0;
 		u32 iir;
 
-		iir = I915_READ(GEN2_IIR);
+		iir = intel_uncore_read(&dev_priv->uncore, GEN2_IIR);
 		if (iir == 0)
 			break;
 
@@ -4172,7 +4172,7 @@ static irqreturn_t i965_irq_handler(int irq, void *arg)
 		if (iir & I915_MASTER_ERROR_INTERRUPT)
 			i9xx_error_irq_ack(dev_priv, &eir, &eir_stuck);
 
-		I915_WRITE(GEN2_IIR, iir);
+		intel_uncore_write(&dev_priv->uncore, GEN2_IIR, iir);
 
 		if (iir & I915_USER_INTERRUPT)
 			intel_engine_signal_breadcrumbs(dev_priv->gt.engine[RCS0]);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
