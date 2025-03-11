Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FBC5A5CD0D
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 19:02:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17C8810E640;
	Tue, 11 Mar 2025 18:01:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="clDxk14y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94AC810E640;
 Tue, 11 Mar 2025 18:01:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741716107; x=1773252107;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Rsr+7iVW5BtPvoTSzpKnu90xKexCWXZ2eqi/KXtbuN4=;
 b=clDxk14yxHoezaaYNFzTjx9sR3THNsCgKLTuXuEb5YeZaGE2xboYoCbf
 AaR/HvqBYnfe21XazLhfQ5OkipKwWXJsYOGhZRsts8ljYTNJmOuRUGJmT
 gc2LubDn3jwdAPiQQ96jSZbs456MPJ17/uds7MUIDC9/cAN85CwXozKMa
 sbuYqTXH8QaqDsS8zfM27OTDdxczqeAENWv2k4xg8GWTSU/DIcmJeUGr9
 /q4DTb5Q9QQceZfO456mui5obo3I6eTlaamdwWmyUMjw0tSqTfqwNgXrZ
 PxAU6T/+XHgXO+Jnibv9sHQFJD6pGy4pKd8+yuhJ0CVfh2r8f5richSbQ A==;
X-CSE-ConnectionGUID: iqqILgIcQVGajXN1IyTC8w==
X-CSE-MsgGUID: QxTTW4+OSJWyoM8XL6Qlnw==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="53763170"
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="53763170"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 11:01:29 -0700
X-CSE-ConnectionGUID: nFB4POa8RnqOy2WpYLbaDA==
X-CSE-MsgGUID: jlHCO+S2Qa6Kdd/6sPCnaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="120342766"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.184])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 11:01:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 8/9] drm/i915/irq: convert rest of intel_display_irq.[ch] to
 struct intel_display
Date: Tue, 11 Mar 2025 20:00:42 +0200
Message-Id: <237b2a4c5c514dae7fabc86360ae17d5c33d80f4.1741715981.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1741715981.git.jani.nikula@intel.com>
References: <cover.1741715981.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Going forward, struct intel_display is the main display device data
pointer. Convert as much as possible of intel_display_irq.[ch] to struct
intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c  | 527 ++++++++----------
 1 file changed, 247 insertions(+), 280 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 68f903c35978..6f78fe6de06a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -115,9 +115,8 @@ static void intel_pipe_fault_irq_handler(struct intel_display *display,
 }
 
 static void
-intel_handle_vblank(struct drm_i915_private *dev_priv, enum pipe pipe)
+intel_handle_vblank(struct intel_display *display, enum pipe pipe)
 {
-	struct intel_display *display = &dev_priv->display;
 	struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
 
 	drm_crtc_handle_vblank(&crtc->base);
@@ -136,14 +135,14 @@ void ilk_update_display_irq(struct intel_display *display,
 	u32 new_val;
 
 	lockdep_assert_held(&dev_priv->irq_lock);
-	drm_WARN_ON(&dev_priv->drm, enabled_irq_mask & ~interrupt_mask);
+	drm_WARN_ON(display->drm, enabled_irq_mask & ~interrupt_mask);
 
 	new_val = dev_priv->irq_mask;
 	new_val &= ~interrupt_mask;
 	new_val |= (~enabled_irq_mask & interrupt_mask);
 
 	if (new_val != dev_priv->irq_mask &&
-	    !drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv))) {
+	    !drm_WARN_ON(display->drm, !intel_irqs_enabled(dev_priv))) {
 		dev_priv->irq_mask = new_val;
 		intel_de_write(display, DEIMR, dev_priv->irq_mask);
 		intel_de_posting_read(display, DEIMR);
@@ -175,9 +174,9 @@ void bdw_update_port_irq(struct intel_display *display,
 
 	lockdep_assert_held(&dev_priv->irq_lock);
 
-	drm_WARN_ON(&dev_priv->drm, enabled_irq_mask & ~interrupt_mask);
+	drm_WARN_ON(display->drm, enabled_irq_mask & ~interrupt_mask);
 
-	if (drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv)))
+	if (drm_WARN_ON(display->drm, !intel_irqs_enabled(dev_priv)))
 		return;
 
 	old_val = intel_de_read(display, GEN8_DE_PORT_IMR);
@@ -208,17 +207,17 @@ static void bdw_update_pipe_irq(struct intel_display *display,
 
 	lockdep_assert_held(&dev_priv->irq_lock);
 
-	drm_WARN_ON(&dev_priv->drm, enabled_irq_mask & ~interrupt_mask);
+	drm_WARN_ON(display->drm, enabled_irq_mask & ~interrupt_mask);
 
-	if (drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv)))
+	if (drm_WARN_ON(display->drm, !intel_irqs_enabled(dev_priv)))
 		return;
 
-	new_val = dev_priv->display.irq.de_irq_mask[pipe];
+	new_val = display->irq.de_irq_mask[pipe];
 	new_val &= ~interrupt_mask;
 	new_val |= (~enabled_irq_mask & interrupt_mask);
 
-	if (new_val != dev_priv->display.irq.de_irq_mask[pipe]) {
-		dev_priv->display.irq.de_irq_mask[pipe] = new_val;
+	if (new_val != display->irq.de_irq_mask[pipe]) {
+		display->irq.de_irq_mask[pipe] = new_val;
 		intel_de_write(display, GEN8_DE_PIPE_IMR(pipe), display->irq.de_irq_mask[pipe]);
 		intel_de_posting_read(display, GEN8_DE_PIPE_IMR(pipe));
 	}
@@ -252,11 +251,11 @@ void ibx_display_interrupt_update(struct intel_display *display,
 	sdeimr &= ~interrupt_mask;
 	sdeimr |= (~enabled_irq_mask & interrupt_mask);
 
-	drm_WARN_ON(&dev_priv->drm, enabled_irq_mask & ~interrupt_mask);
+	drm_WARN_ON(display->drm, enabled_irq_mask & ~interrupt_mask);
 
 	lockdep_assert_held(&dev_priv->irq_lock);
 
-	if (drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv)))
+	if (drm_WARN_ON(display->drm, !intel_irqs_enabled(dev_priv)))
 		return;
 
 	intel_de_write(display, SDEIMR, sdeimr);
@@ -322,20 +321,20 @@ void i915_enable_pipestat(struct intel_display *display,
 			  enum pipe pipe, u32 status_mask)
 {
 	struct drm_i915_private *dev_priv = to_i915(display->drm);
-	i915_reg_t reg = PIPESTAT(dev_priv, pipe);
+	i915_reg_t reg = PIPESTAT(display, pipe);
 	u32 enable_mask;
 
-	drm_WARN_ONCE(&dev_priv->drm, status_mask & ~PIPESTAT_INT_STATUS_MASK,
+	drm_WARN_ONCE(display->drm, status_mask & ~PIPESTAT_INT_STATUS_MASK,
 		      "pipe %c: status_mask=0x%x\n",
 		      pipe_name(pipe), status_mask);
 
 	lockdep_assert_held(&dev_priv->irq_lock);
-	drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv));
+	drm_WARN_ON(display->drm, !intel_irqs_enabled(dev_priv));
 
-	if ((dev_priv->display.irq.pipestat_irq_mask[pipe] & status_mask) == status_mask)
+	if ((display->irq.pipestat_irq_mask[pipe] & status_mask) == status_mask)
 		return;
 
-	dev_priv->display.irq.pipestat_irq_mask[pipe] |= status_mask;
+	display->irq.pipestat_irq_mask[pipe] |= status_mask;
 	enable_mask = i915_pipestat_enable_mask(display, pipe);
 
 	intel_de_write(display, reg, enable_mask | status_mask);
@@ -346,20 +345,20 @@ void i915_disable_pipestat(struct intel_display *display,
 			   enum pipe pipe, u32 status_mask)
 {
 	struct drm_i915_private *dev_priv = to_i915(display->drm);
-	i915_reg_t reg = PIPESTAT(dev_priv, pipe);
+	i915_reg_t reg = PIPESTAT(display, pipe);
 	u32 enable_mask;
 
-	drm_WARN_ONCE(&dev_priv->drm, status_mask & ~PIPESTAT_INT_STATUS_MASK,
+	drm_WARN_ONCE(display->drm, status_mask & ~PIPESTAT_INT_STATUS_MASK,
 		      "pipe %c: status_mask=0x%x\n",
 		      pipe_name(pipe), status_mask);
 
 	lockdep_assert_held(&dev_priv->irq_lock);
-	drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv));
+	drm_WARN_ON(display->drm, !intel_irqs_enabled(dev_priv));
 
-	if ((dev_priv->display.irq.pipestat_irq_mask[pipe] & status_mask) == 0)
+	if ((display->irq.pipestat_irq_mask[pipe] & status_mask) == 0)
 		return;
 
-	dev_priv->display.irq.pipestat_irq_mask[pipe] &= ~status_mask;
+	display->irq.pipestat_irq_mask[pipe] &= ~status_mask;
 	enable_mask = i915_pipestat_enable_mask(display, pipe);
 
 	intel_de_write(display, reg, enable_mask | status_mask);
@@ -368,15 +367,13 @@ void i915_disable_pipestat(struct intel_display *display,
 
 static bool i915_has_legacy_blc_interrupt(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
-	if (IS_I85X(i915))
+	if (display->platform.i85x)
 		return true;
 
-	if (IS_PINEVIEW(i915))
+	if (display->platform.pineview)
 		return true;
 
-	return IS_DISPLAY_VER(display, 3, 4) && IS_MOBILE(i915);
+	return IS_DISPLAY_VER(display, 3, 4) && display->platform.mobile;
 }
 
 /**
@@ -396,7 +393,7 @@ void i915_enable_asle_pipestat(struct intel_display *display)
 	spin_lock_irq(&dev_priv->irq_lock);
 
 	i915_enable_pipestat(display, PIPE_B, PIPE_LEGACY_BLC_EVENT_STATUS);
-	if (DISPLAY_VER(dev_priv) >= 4)
+	if (DISPLAY_VER(display) >= 4)
 		i915_enable_pipestat(display, PIPE_A,
 				     PIPE_LEGACY_BLC_EVENT_STATUS);
 
@@ -404,13 +401,12 @@ void i915_enable_asle_pipestat(struct intel_display *display)
 }
 
 #if IS_ENABLED(CONFIG_DEBUG_FS)
-static void display_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
+static void display_pipe_crc_irq_handler(struct intel_display *display,
 					 enum pipe pipe,
 					 u32 crc0, u32 crc1,
 					 u32 crc2, u32 crc3,
 					 u32 crc4)
 {
-	struct intel_display *display = &dev_priv->display;
 	struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
 	struct intel_pipe_crc *pipe_crc = &crtc->pipe_crc;
 	u32 crcs[5] = { crc0, crc1, crc2, crc3, crc4 };
@@ -427,7 +423,7 @@ static void display_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
 	 * don't trust that one either.
 	 */
 	if (pipe_crc->skipped <= 0 ||
-	    (DISPLAY_VER(dev_priv) >= 8 && pipe_crc->skipped == 1)) {
+	    (DISPLAY_VER(display) >= 8 && pipe_crc->skipped == 1)) {
 		pipe_crc->skipped++;
 		spin_unlock(&pipe_crc->lock);
 		return;
@@ -440,20 +436,19 @@ static void display_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
 }
 #else
 static inline void
-display_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
+display_pipe_crc_irq_handler(struct intel_display *display,
 			     enum pipe pipe,
 			     u32 crc0, u32 crc1,
 			     u32 crc2, u32 crc3,
 			     u32 crc4) {}
 #endif
 
-static void flip_done_handler(struct drm_i915_private *i915,
+static void flip_done_handler(struct intel_display *display,
 			      enum pipe pipe)
 {
-	struct intel_display *display = &i915->display;
 	struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
 
-	spin_lock(&i915->drm.event_lock);
+	spin_lock(&display->drm->event_lock);
 
 	if (crtc->flip_done_event) {
 		trace_intel_crtc_flip_done(crtc);
@@ -461,25 +456,21 @@ static void flip_done_handler(struct drm_i915_private *i915,
 		crtc->flip_done_event = NULL;
 	}
 
-	spin_unlock(&i915->drm.event_lock);
+	spin_unlock(&display->drm->event_lock);
 }
 
-static void hsw_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
+static void hsw_pipe_crc_irq_handler(struct intel_display *display,
 				     enum pipe pipe)
 {
-	struct intel_display *display = &dev_priv->display;
-
-	display_pipe_crc_irq_handler(dev_priv, pipe,
+	display_pipe_crc_irq_handler(display, pipe,
 				     intel_de_read(display, PIPE_CRC_RES_HSW(pipe)),
 				     0, 0, 0, 0);
 }
 
-static void ivb_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
+static void ivb_pipe_crc_irq_handler(struct intel_display *display,
 				     enum pipe pipe)
 {
-	struct intel_display *display = &dev_priv->display;
-
-	display_pipe_crc_irq_handler(dev_priv, pipe,
+	display_pipe_crc_irq_handler(display, pipe,
 				     intel_de_read(display, PIPE_CRC_RES_1_IVB(pipe)),
 				     intel_de_read(display, PIPE_CRC_RES_2_IVB(pipe)),
 				     intel_de_read(display, PIPE_CRC_RES_3_IVB(pipe)),
@@ -487,40 +478,38 @@ static void ivb_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
 				     intel_de_read(display, PIPE_CRC_RES_5_IVB(pipe)));
 }
 
-static void i9xx_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
+static void i9xx_pipe_crc_irq_handler(struct intel_display *display,
 				      enum pipe pipe)
 {
-	struct intel_display *display = &dev_priv->display;
 	u32 res1, res2;
 
-	if (DISPLAY_VER(dev_priv) >= 3)
-		res1 = intel_de_read(display, PIPE_CRC_RES_RES1_I915(dev_priv, pipe));
+	if (DISPLAY_VER(display) >= 3)
+		res1 = intel_de_read(display, PIPE_CRC_RES_RES1_I915(display, pipe));
 	else
 		res1 = 0;
 
-	if (DISPLAY_VER(dev_priv) >= 5 || IS_G4X(dev_priv))
-		res2 = intel_de_read(display, PIPE_CRC_RES_RES2_G4X(dev_priv, pipe));
+	if (DISPLAY_VER(display) >= 5 || display->platform.g4x)
+		res2 = intel_de_read(display, PIPE_CRC_RES_RES2_G4X(display, pipe));
 	else
 		res2 = 0;
 
-	display_pipe_crc_irq_handler(dev_priv, pipe,
-				     intel_de_read(display, PIPE_CRC_RES_RED(dev_priv, pipe)),
-				     intel_de_read(display, PIPE_CRC_RES_GREEN(dev_priv, pipe)),
-				     intel_de_read(display, PIPE_CRC_RES_BLUE(dev_priv, pipe)),
+	display_pipe_crc_irq_handler(display, pipe,
+				     intel_de_read(display, PIPE_CRC_RES_RED(display, pipe)),
+				     intel_de_read(display, PIPE_CRC_RES_GREEN(display, pipe)),
+				     intel_de_read(display, PIPE_CRC_RES_BLUE(display, pipe)),
 				     res1, res2);
 }
 
-static void i9xx_pipestat_irq_reset(struct drm_i915_private *dev_priv)
+static void i9xx_pipestat_irq_reset(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
 	enum pipe pipe;
 
-	for_each_pipe(dev_priv, pipe) {
+	for_each_pipe(display, pipe) {
 		intel_de_write(display,
-			       PIPESTAT(dev_priv, pipe),
+			       PIPESTAT(display, pipe),
 			       PIPESTAT_INT_STATUS_MASK | PIPE_FIFO_UNDERRUN_STATUS);
 
-		dev_priv->display.irq.pipestat_irq_mask[pipe] = 0;
+		display->irq.pipestat_irq_mask[pipe] = 0;
 	}
 }
 
@@ -532,13 +521,13 @@ void i9xx_pipestat_irq_ack(struct intel_display *display,
 
 	spin_lock(&dev_priv->irq_lock);
 
-	if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
-	    !dev_priv->display.irq.vlv_display_irqs_enabled) {
+	if ((display->platform.valleyview || display->platform.cherryview) &&
+	    !display->irq.vlv_display_irqs_enabled) {
 		spin_unlock(&dev_priv->irq_lock);
 		return;
 	}
 
-	for_each_pipe(dev_priv, pipe) {
+	for_each_pipe(display, pipe) {
 		i915_reg_t reg;
 		u32 status_mask, enable_mask, iir_bit = 0;
 
@@ -566,12 +555,12 @@ void i9xx_pipestat_irq_ack(struct intel_display *display,
 			break;
 		}
 		if (iir & iir_bit)
-			status_mask |= dev_priv->display.irq.pipestat_irq_mask[pipe];
+			status_mask |= display->irq.pipestat_irq_mask[pipe];
 
 		if (!status_mask)
 			continue;
 
-		reg = PIPESTAT(dev_priv, pipe);
+		reg = PIPESTAT(display, pipe);
 		pipe_stats[pipe] = intel_de_read(display, reg) & status_mask;
 		enable_mask = i915_pipestat_enable_mask(display, pipe);
 
@@ -595,19 +584,18 @@ void i9xx_pipestat_irq_ack(struct intel_display *display,
 void i915_pipestat_irq_handler(struct intel_display *display,
 			       u32 iir, u32 pipe_stats[I915_MAX_PIPES])
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	bool blc_event = false;
 	enum pipe pipe;
 
-	for_each_pipe(dev_priv, pipe) {
+	for_each_pipe(display, pipe) {
 		if (pipe_stats[pipe] & PIPE_VBLANK_INTERRUPT_STATUS)
-			intel_handle_vblank(dev_priv, pipe);
+			intel_handle_vblank(display, pipe);
 
 		if (pipe_stats[pipe] & PIPE_LEGACY_BLC_EVENT_STATUS)
 			blc_event = true;
 
 		if (pipe_stats[pipe] & PIPE_CRC_DONE_INTERRUPT_STATUS)
-			i9xx_pipe_crc_irq_handler(dev_priv, pipe);
+			i9xx_pipe_crc_irq_handler(display, pipe);
 
 		if (pipe_stats[pipe] & PIPE_FIFO_UNDERRUN_STATUS)
 			intel_cpu_fifo_underrun_irq_handler(display, pipe);
@@ -620,19 +608,18 @@ void i915_pipestat_irq_handler(struct intel_display *display,
 void i965_pipestat_irq_handler(struct intel_display *display,
 			       u32 iir, u32 pipe_stats[I915_MAX_PIPES])
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	bool blc_event = false;
 	enum pipe pipe;
 
-	for_each_pipe(dev_priv, pipe) {
+	for_each_pipe(display, pipe) {
 		if (pipe_stats[pipe] & PIPE_START_VBLANK_INTERRUPT_STATUS)
-			intel_handle_vblank(dev_priv, pipe);
+			intel_handle_vblank(display, pipe);
 
 		if (pipe_stats[pipe] & PIPE_LEGACY_BLC_EVENT_STATUS)
 			blc_event = true;
 
 		if (pipe_stats[pipe] & PIPE_CRC_DONE_INTERRUPT_STATUS)
-			i9xx_pipe_crc_irq_handler(dev_priv, pipe);
+			i9xx_pipe_crc_irq_handler(display, pipe);
 
 		if (pipe_stats[pipe] & PIPE_FIFO_UNDERRUN_STATUS)
 			intel_cpu_fifo_underrun_irq_handler(display, pipe);
@@ -648,18 +635,17 @@ void i965_pipestat_irq_handler(struct intel_display *display,
 void valleyview_pipestat_irq_handler(struct intel_display *display,
 				     u32 pipe_stats[I915_MAX_PIPES])
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum pipe pipe;
 
-	for_each_pipe(dev_priv, pipe) {
+	for_each_pipe(display, pipe) {
 		if (pipe_stats[pipe] & PIPE_START_VBLANK_INTERRUPT_STATUS)
-			intel_handle_vblank(dev_priv, pipe);
+			intel_handle_vblank(display, pipe);
 
 		if (pipe_stats[pipe] & PLANE_FLIP_DONE_INT_STATUS_VLV)
-			flip_done_handler(dev_priv, pipe);
+			flip_done_handler(display, pipe);
 
 		if (pipe_stats[pipe] & PIPE_CRC_DONE_INTERRUPT_STATUS)
-			i9xx_pipe_crc_irq_handler(dev_priv, pipe);
+			i9xx_pipe_crc_irq_handler(display, pipe);
 
 		if (pipe_stats[pipe] & PIPE_FIFO_UNDERRUN_STATUS)
 			intel_cpu_fifo_underrun_irq_handler(display, pipe);
@@ -669,9 +655,8 @@ void valleyview_pipestat_irq_handler(struct intel_display *display,
 		intel_gmbus_irq_handler(display);
 }
 
-static void ibx_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
+static void ibx_irq_handler(struct intel_display *display, u32 pch_iir)
 {
-	struct intel_display *display = &dev_priv->display;
 	enum pipe pipe;
 	u32 hotplug_trigger = pch_iir & SDE_HOTPLUG_MASK;
 
@@ -680,7 +665,7 @@ static void ibx_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 	if (pch_iir & SDE_AUDIO_POWER_MASK) {
 		int port = ffs((pch_iir & SDE_AUDIO_POWER_MASK) >>
 			       SDE_AUDIO_POWER_SHIFT);
-		drm_dbg(&dev_priv->drm, "PCH audio power change on port %d\n",
+		drm_dbg(display->drm, "PCH audio power change on port %d\n",
 			port_name(port));
 	}
 
@@ -691,26 +676,26 @@ static void ibx_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 		intel_gmbus_irq_handler(display);
 
 	if (pch_iir & SDE_AUDIO_HDCP_MASK)
-		drm_dbg(&dev_priv->drm, "PCH HDCP audio interrupt\n");
+		drm_dbg(display->drm, "PCH HDCP audio interrupt\n");
 
 	if (pch_iir & SDE_AUDIO_TRANS_MASK)
-		drm_dbg(&dev_priv->drm, "PCH transcoder audio interrupt\n");
+		drm_dbg(display->drm, "PCH transcoder audio interrupt\n");
 
 	if (pch_iir & SDE_POISON)
-		drm_err(&dev_priv->drm, "PCH poison interrupt\n");
+		drm_err(display->drm, "PCH poison interrupt\n");
 
 	if (pch_iir & SDE_FDI_MASK) {
-		for_each_pipe(dev_priv, pipe)
-			drm_dbg(&dev_priv->drm, "  pipe %c FDI IIR: 0x%08x\n",
+		for_each_pipe(display, pipe)
+			drm_dbg(display->drm, "  pipe %c FDI IIR: 0x%08x\n",
 				pipe_name(pipe),
 				intel_de_read(display, FDI_RX_IIR(pipe)));
 	}
 
 	if (pch_iir & (SDE_TRANSB_CRC_DONE | SDE_TRANSA_CRC_DONE))
-		drm_dbg(&dev_priv->drm, "PCH transcoder CRC done interrupt\n");
+		drm_dbg(display->drm, "PCH transcoder CRC done interrupt\n");
 
 	if (pch_iir & (SDE_TRANSB_CRC_ERR | SDE_TRANSA_CRC_ERR))
-		drm_dbg(&dev_priv->drm,
+		drm_dbg(display->drm,
 			"PCH transcoder CRC error interrupt\n");
 
 	if (pch_iir & SDE_TRANSA_FIFO_UNDER)
@@ -753,14 +738,13 @@ static const struct pipe_fault_handler ivb_pipe_fault_handlers[] = {
 	{}
 };
 
-static void ivb_err_int_handler(struct drm_i915_private *dev_priv)
+static void ivb_err_int_handler(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
 	u32 err_int = intel_de_read(display, GEN7_ERR_INT);
 	enum pipe pipe;
 
 	if (err_int & ERR_INT_POISON)
-		drm_err(&dev_priv->drm, "Poison interrupt\n");
+		drm_err(display->drm, "Poison interrupt\n");
 
 	if (err_int & ERR_INT_INVALID_GTT_PTE)
 		drm_err_ratelimited(display->drm, "Invalid GTT PTE\n");
@@ -768,17 +752,17 @@ static void ivb_err_int_handler(struct drm_i915_private *dev_priv)
 	if (err_int & ERR_INT_INVALID_PTE_DATA)
 		drm_err_ratelimited(display->drm, "Invalid PTE data\n");
 
-	for_each_pipe(dev_priv, pipe) {
+	for_each_pipe(display, pipe) {
 		u32 fault_errors;
 
 		if (err_int & ERR_INT_FIFO_UNDERRUN(pipe))
 			intel_cpu_fifo_underrun_irq_handler(display, pipe);
 
 		if (err_int & ERR_INT_PIPE_CRC_DONE(pipe)) {
-			if (IS_IVYBRIDGE(dev_priv))
-				ivb_pipe_crc_irq_handler(dev_priv, pipe);
+			if (display->platform.ivybridge)
+				ivb_pipe_crc_irq_handler(display, pipe);
 			else
-				hsw_pipe_crc_irq_handler(dev_priv, pipe);
+				hsw_pipe_crc_irq_handler(display, pipe);
 		}
 
 		fault_errors = err_int & ivb_err_int_pipe_fault_mask(pipe);
@@ -790,25 +774,23 @@ static void ivb_err_int_handler(struct drm_i915_private *dev_priv)
 	intel_de_write(display, GEN7_ERR_INT, err_int);
 }
 
-static void cpt_serr_int_handler(struct drm_i915_private *dev_priv)
+static void cpt_serr_int_handler(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
 	u32 serr_int = intel_de_read(display, SERR_INT);
 	enum pipe pipe;
 
 	if (serr_int & SERR_INT_POISON)
-		drm_err(&dev_priv->drm, "PCH poison interrupt\n");
+		drm_err(display->drm, "PCH poison interrupt\n");
 
-	for_each_pipe(dev_priv, pipe)
+	for_each_pipe(display, pipe)
 		if (serr_int & SERR_INT_TRANS_FIFO_UNDERRUN(pipe))
 			intel_pch_fifo_underrun_irq_handler(display, pipe);
 
 	intel_de_write(display, SERR_INT, serr_int);
 }
 
-static void cpt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
+static void cpt_irq_handler(struct intel_display *display, u32 pch_iir)
 {
-	struct intel_display *display = &dev_priv->display;
 	enum pipe pipe;
 	u32 hotplug_trigger = pch_iir & SDE_HOTPLUG_MASK_CPT;
 
@@ -817,7 +799,7 @@ static void cpt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 	if (pch_iir & SDE_AUDIO_POWER_MASK_CPT) {
 		int port = ffs((pch_iir & SDE_AUDIO_POWER_MASK_CPT) >>
 			       SDE_AUDIO_POWER_SHIFT_CPT);
-		drm_dbg(&dev_priv->drm, "PCH audio power change on port %c\n",
+		drm_dbg(display->drm, "PCH audio power change on port %c\n",
 			port_name(port));
 	}
 
@@ -828,20 +810,20 @@ static void cpt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 		intel_gmbus_irq_handler(display);
 
 	if (pch_iir & SDE_AUDIO_CP_REQ_CPT)
-		drm_dbg(&dev_priv->drm, "Audio CP request interrupt\n");
+		drm_dbg(display->drm, "Audio CP request interrupt\n");
 
 	if (pch_iir & SDE_AUDIO_CP_CHG_CPT)
-		drm_dbg(&dev_priv->drm, "Audio CP change interrupt\n");
+		drm_dbg(display->drm, "Audio CP change interrupt\n");
 
 	if (pch_iir & SDE_FDI_MASK_CPT) {
-		for_each_pipe(dev_priv, pipe)
-			drm_dbg(&dev_priv->drm, "  pipe %c FDI IIR: 0x%08x\n",
+		for_each_pipe(display, pipe)
+			drm_dbg(display->drm, "  pipe %c FDI IIR: 0x%08x\n",
 				pipe_name(pipe),
 				intel_de_read(display, FDI_RX_IIR(pipe)));
 	}
 
 	if (pch_iir & SDE_ERROR_CPT)
-		cpt_serr_int_handler(dev_priv);
+		cpt_serr_int_handler(display);
 }
 
 static u32 ilk_gtt_fault_pipe_fault_mask(enum pipe pipe)
@@ -910,23 +892,23 @@ void ilk_display_irq_handler(struct intel_display *display, u32 de_iir)
 		intel_opregion_asle_intr(display);
 
 	if (de_iir & DE_POISON)
-		drm_err(&dev_priv->drm, "Poison interrupt\n");
+		drm_err(display->drm, "Poison interrupt\n");
 
 	if (de_iir & DE_GTT_FAULT)
 		ilk_gtt_fault_irq_handler(display);
 
-	for_each_pipe(dev_priv, pipe) {
+	for_each_pipe(display, pipe) {
 		if (de_iir & DE_PIPE_VBLANK(pipe))
-			intel_handle_vblank(dev_priv, pipe);
+			intel_handle_vblank(display, pipe);
 
 		if (de_iir & DE_PLANE_FLIP_DONE(pipe))
-			flip_done_handler(dev_priv, pipe);
+			flip_done_handler(display, pipe);
 
 		if (de_iir & DE_PIPE_FIFO_UNDERRUN(pipe))
 			intel_cpu_fifo_underrun_irq_handler(display, pipe);
 
 		if (de_iir & DE_PIPE_CRC_DONE(pipe))
-			i9xx_pipe_crc_irq_handler(dev_priv, pipe);
+			i9xx_pipe_crc_irq_handler(display, pipe);
 	}
 
 	/* check event from PCH */
@@ -934,15 +916,15 @@ void ilk_display_irq_handler(struct intel_display *display, u32 de_iir)
 		u32 pch_iir = intel_de_read(display, SDEIIR);
 
 		if (HAS_PCH_CPT(dev_priv))
-			cpt_irq_handler(dev_priv, pch_iir);
+			cpt_irq_handler(display, pch_iir);
 		else
-			ibx_irq_handler(dev_priv, pch_iir);
+			ibx_irq_handler(display, pch_iir);
 
 		/* should clear PCH hotplug event before clear CPU irq */
 		intel_de_write(display, SDEIIR, pch_iir);
 	}
 
-	if (DISPLAY_VER(dev_priv) == 5 && de_iir & DE_PCU_EVENT)
+	if (DISPLAY_VER(display) == 5 && de_iir & DE_PCU_EVENT)
 		gen5_rps_irq_handler(&to_gt(dev_priv)->rps);
 }
 
@@ -956,12 +938,12 @@ void ivb_display_irq_handler(struct intel_display *display, u32 de_iir)
 		ilk_hpd_irq_handler(display, hotplug_trigger);
 
 	if (de_iir & DE_ERR_INT_IVB)
-		ivb_err_int_handler(dev_priv);
+		ivb_err_int_handler(display);
 
 	if (de_iir & DE_EDP_PSR_INT_HSW) {
 		struct intel_encoder *encoder;
 
-		for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
+		for_each_intel_encoder_with_psr(display->drm, encoder) {
 			struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 			u32 psr_iir;
 
@@ -977,35 +959,35 @@ void ivb_display_irq_handler(struct intel_display *display, u32 de_iir)
 	if (de_iir & DE_GSE_IVB)
 		intel_opregion_asle_intr(display);
 
-	for_each_pipe(dev_priv, pipe) {
+	for_each_pipe(display, pipe) {
 		if (de_iir & DE_PIPE_VBLANK_IVB(pipe))
-			intel_handle_vblank(dev_priv, pipe);
+			intel_handle_vblank(display, pipe);
 
 		if (de_iir & DE_PLANE_FLIP_DONE_IVB(pipe))
-			flip_done_handler(dev_priv, pipe);
+			flip_done_handler(display, pipe);
 	}
 
 	/* check event from PCH */
 	if (!HAS_PCH_NOP(dev_priv) && (de_iir & DE_PCH_EVENT_IVB)) {
 		u32 pch_iir = intel_de_read(display, SDEIIR);
 
-		cpt_irq_handler(dev_priv, pch_iir);
+		cpt_irq_handler(display, pch_iir);
 
 		/* clear PCH hotplug event before clear CPU irq */
 		intel_de_write(display, SDEIIR, pch_iir);
 	}
 }
 
-static u32 gen8_de_port_aux_mask(struct drm_i915_private *dev_priv)
+static u32 gen8_de_port_aux_mask(struct intel_display *display)
 {
 	u32 mask;
 
-	if (DISPLAY_VER(dev_priv) >= 20)
+	if (DISPLAY_VER(display) >= 20)
 		return 0;
-	else if (DISPLAY_VER(dev_priv) >= 14)
+	else if (DISPLAY_VER(display) >= 14)
 		return TGL_DE_PORT_AUX_DDIA |
 			TGL_DE_PORT_AUX_DDIB;
-	else if (DISPLAY_VER(dev_priv) >= 13)
+	else if (DISPLAY_VER(display) >= 13)
 		return TGL_DE_PORT_AUX_DDIA |
 			TGL_DE_PORT_AUX_DDIB |
 			TGL_DE_PORT_AUX_DDIC |
@@ -1015,7 +997,7 @@ static u32 gen8_de_port_aux_mask(struct drm_i915_private *dev_priv)
 			TGL_DE_PORT_AUX_USBC2 |
 			TGL_DE_PORT_AUX_USBC3 |
 			TGL_DE_PORT_AUX_USBC4;
-	else if (DISPLAY_VER(dev_priv) >= 12)
+	else if (DISPLAY_VER(display) >= 12)
 		return TGL_DE_PORT_AUX_DDIA |
 			TGL_DE_PORT_AUX_DDIB |
 			TGL_DE_PORT_AUX_DDIC |
@@ -1027,12 +1009,12 @@ static u32 gen8_de_port_aux_mask(struct drm_i915_private *dev_priv)
 			TGL_DE_PORT_AUX_USBC6;
 
 	mask = GEN8_AUX_CHANNEL_A;
-	if (DISPLAY_VER(dev_priv) >= 9)
+	if (DISPLAY_VER(display) >= 9)
 		mask |= GEN9_AUX_CHANNEL_B |
 			GEN9_AUX_CHANNEL_C |
 			GEN9_AUX_CHANNEL_D;
 
-	if (DISPLAY_VER(dev_priv) == 11) {
+	if (DISPLAY_VER(display) == 11) {
 		mask |= ICL_AUX_CHANNEL_F;
 		mask |= ICL_AUX_CHANNEL_E;
 	}
@@ -1040,10 +1022,8 @@ static u32 gen8_de_port_aux_mask(struct drm_i915_private *dev_priv)
 	return mask;
 }
 
-static u32 gen8_de_pipe_fault_mask(struct drm_i915_private *dev_priv)
+static u32 gen8_de_pipe_fault_mask(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
-
 	if (DISPLAY_VER(display) >= 14)
 		return MTL_PIPEDMC_ATS_FAULT |
 			MTL_PLANE_ATS_FAULT |
@@ -1195,15 +1175,14 @@ gen8_pipe_fault_handlers(struct intel_display *display)
 		return bdw_pipe_fault_handlers;
 }
 
-static void intel_pmdemand_irq_handler(struct drm_i915_private *dev_priv)
+static void intel_pmdemand_irq_handler(struct intel_display *display)
 {
-	wake_up_all(&dev_priv->display.pmdemand.waitqueue);
+	wake_up_all(&display->pmdemand.waitqueue);
 }
 
 static void
-gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
+gen8_de_misc_irq_handler(struct intel_display *display, u32 iir)
 {
-	struct intel_display *display = &dev_priv->display;
 	bool found = false;
 
 	if (HAS_DBUF_OVERLAP_DETECTION(display)) {
@@ -1213,20 +1192,20 @@ gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
 		}
 	}
 
-	if (DISPLAY_VER(dev_priv) >= 14) {
+	if (DISPLAY_VER(display) >= 14) {
 		if (iir & (XELPDP_PMDEMAND_RSP |
 			   XELPDP_PMDEMAND_RSPTOUT_ERR)) {
 			if (iir & XELPDP_PMDEMAND_RSPTOUT_ERR)
-				drm_dbg(&dev_priv->drm,
+				drm_dbg(display->drm,
 					"Error waiting for Punit PM Demand Response\n");
 
-			intel_pmdemand_irq_handler(dev_priv);
+			intel_pmdemand_irq_handler(display);
 			found = true;
 		}
 
 		if (iir & XELPDP_RM_TIMEOUT) {
 			u32 val = intel_de_read(display, RM_TIMEOUT_REG_CAPTURE);
-			drm_warn(&dev_priv->drm, "Register Access Timeout = 0x%x\n", val);
+			drm_warn(display->drm, "Register Access Timeout = 0x%x\n", val);
 			found = true;
 		}
 	} else if (iir & GEN8_DE_MISC_GSE) {
@@ -1239,12 +1218,12 @@ gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
 		u32 psr_iir;
 		i915_reg_t iir_reg;
 
-		for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
+		for_each_intel_encoder_with_psr(display->drm, encoder) {
 			struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
-			if (DISPLAY_VER(dev_priv) >= 12)
-				iir_reg = TRANS_PSR_IIR(dev_priv,
-						        intel_dp->psr.transcoder);
+			if (DISPLAY_VER(display) >= 12)
+				iir_reg = TRANS_PSR_IIR(display,
+							intel_dp->psr.transcoder);
 			else
 				iir_reg = EDP_PSR_IIR;
 
@@ -1256,19 +1235,18 @@ gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
 			intel_psr_irq_handler(intel_dp, psr_iir);
 
 			/* prior GEN12 only have one EDP PSR */
-			if (DISPLAY_VER(dev_priv) < 12)
+			if (DISPLAY_VER(display) < 12)
 				break;
 		}
 	}
 
 	if (!found)
-		drm_err(&dev_priv->drm, "Unexpected DE Misc interrupt: 0x%08x\n", iir);
+		drm_err(display->drm, "Unexpected DE Misc interrupt: 0x%08x\n", iir);
 }
 
-static void gen11_dsi_te_interrupt_handler(struct drm_i915_private *dev_priv,
+static void gen11_dsi_te_interrupt_handler(struct intel_display *display,
 					   u32 te_trigger)
 {
-	struct intel_display *display = &dev_priv->display;
 	enum pipe pipe = INVALID_PIPE;
 	enum transcoder dsi_trans;
 	enum port port;
@@ -1278,7 +1256,7 @@ static void gen11_dsi_te_interrupt_handler(struct drm_i915_private *dev_priv,
 	 * Incase of dual link, TE comes from DSI_1
 	 * this is to check if dual link is enabled
 	 */
-	val = intel_de_read(display, TRANS_DDI_FUNC_CTL2(dev_priv, TRANSCODER_DSI_0));
+	val = intel_de_read(display, TRANS_DDI_FUNC_CTL2(display, TRANSCODER_DSI_0));
 	val &= PORT_SYNC_MODE_ENABLE;
 
 	/*
@@ -1294,12 +1272,12 @@ static void gen11_dsi_te_interrupt_handler(struct drm_i915_private *dev_priv,
 	val = val & OP_MODE_MASK;
 
 	if (val != CMD_MODE_NO_GATE && val != CMD_MODE_TE_GATE) {
-		drm_err(&dev_priv->drm, "DSI trancoder not configured in command mode\n");
+		drm_err(display->drm, "DSI trancoder not configured in command mode\n");
 		return;
 	}
 
 	/* Get PIPE for handling VBLANK event */
-	val = intel_de_read(display, TRANS_DDI_FUNC_CTL(dev_priv, dsi_trans));
+	val = intel_de_read(display, TRANS_DDI_FUNC_CTL(display, dsi_trans));
 	switch (val & TRANS_DDI_EDP_INPUT_MASK) {
 	case TRANS_DDI_EDP_INPUT_A_ON:
 		pipe = PIPE_A;
@@ -1311,28 +1289,28 @@ static void gen11_dsi_te_interrupt_handler(struct drm_i915_private *dev_priv,
 		pipe = PIPE_C;
 		break;
 	default:
-		drm_err(&dev_priv->drm, "Invalid PIPE\n");
+		drm_err(display->drm, "Invalid PIPE\n");
 		return;
 	}
 
-	intel_handle_vblank(dev_priv, pipe);
+	intel_handle_vblank(display, pipe);
 
 	/* clear TE in dsi IIR */
 	port = (te_trigger & DSI1_TE) ? PORT_B : PORT_A;
 	intel_de_rmw(display, DSI_INTR_IDENT_REG(port), 0, 0);
 }
 
-static u32 gen8_de_pipe_flip_done_mask(struct drm_i915_private *i915)
+static u32 gen8_de_pipe_flip_done_mask(struct intel_display *display)
 {
-	if (DISPLAY_VER(i915) >= 9)
+	if (DISPLAY_VER(display) >= 9)
 		return GEN9_PIPE_PLANE1_FLIP_DONE;
 	else
 		return GEN8_PIPE_PRIMARY_FLIP_DONE;
 }
 
-static void gen8_read_and_ack_pch_irqs(struct drm_i915_private *i915, u32 *pch_iir, u32 *pica_iir)
+static void gen8_read_and_ack_pch_irqs(struct intel_display *display, u32 *pch_iir, u32 *pica_iir)
 {
-	struct intel_display *display = &i915->display;
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	u32 pica_ier = 0;
 
 	*pica_iir = 0;
@@ -1346,7 +1324,7 @@ static void gen8_read_and_ack_pch_irqs(struct drm_i915_private *i915, u32 *pch_i
 	 * their flags both in the PICA and SDE IIR.
 	 */
 	if (*pch_iir & SDE_PICAINTERRUPT) {
-		drm_WARN_ON(&i915->drm, INTEL_PCH_TYPE(i915) < PCH_MTL);
+		drm_WARN_ON(display->drm, INTEL_PCH_TYPE(i915) < PCH_MTL);
 
 		pica_ier = intel_de_rmw(display, PICAINTERRUPT_IER, ~0, 0);
 		*pica_iir = intel_de_read(display, PICAINTERRUPT_IIR);
@@ -1365,26 +1343,26 @@ void gen8_de_irq_handler(struct intel_display *display, u32 master_ctl)
 	u32 iir;
 	enum pipe pipe;
 
-	drm_WARN_ON_ONCE(&dev_priv->drm, !HAS_DISPLAY(dev_priv));
+	drm_WARN_ON_ONCE(display->drm, !HAS_DISPLAY(display));
 
 	if (master_ctl & GEN8_DE_MISC_IRQ) {
 		iir = intel_de_read(display, GEN8_DE_MISC_IIR);
 		if (iir) {
 			intel_de_write(display, GEN8_DE_MISC_IIR, iir);
-			gen8_de_misc_irq_handler(dev_priv, iir);
+			gen8_de_misc_irq_handler(display, iir);
 		} else {
-			drm_err_ratelimited(&dev_priv->drm,
+			drm_err_ratelimited(display->drm,
 					    "The master control interrupt lied (DE MISC)!\n");
 		}
 	}
 
-	if (DISPLAY_VER(dev_priv) >= 11 && (master_ctl & GEN11_DE_HPD_IRQ)) {
+	if (DISPLAY_VER(display) >= 11 && (master_ctl & GEN11_DE_HPD_IRQ)) {
 		iir = intel_de_read(display, GEN11_DE_HPD_IIR);
 		if (iir) {
 			intel_de_write(display, GEN11_DE_HPD_IIR, iir);
 			gen11_hpd_irq_handler(display, iir);
 		} else {
-			drm_err_ratelimited(&dev_priv->drm,
+			drm_err_ratelimited(display->drm,
 					    "The master control interrupt lied, (DE HPD)!\n");
 		}
 	}
@@ -1396,19 +1374,19 @@ void gen8_de_irq_handler(struct intel_display *display, u32 master_ctl)
 
 			intel_de_write(display, GEN8_DE_PORT_IIR, iir);
 
-			if (iir & gen8_de_port_aux_mask(dev_priv)) {
+			if (iir & gen8_de_port_aux_mask(display)) {
 				intel_dp_aux_irq_handler(display);
 				found = true;
 			}
 
-			if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
+			if (display->platform.geminilake || display->platform.broxton) {
 				u32 hotplug_trigger = iir & BXT_DE_PORT_HOTPLUG_MASK;
 
 				if (hotplug_trigger) {
 					bxt_hpd_irq_handler(display, hotplug_trigger);
 					found = true;
 				}
-			} else if (IS_BROADWELL(dev_priv)) {
+			} else if (display->platform.broadwell) {
 				u32 hotplug_trigger = iir & BDW_DE_PORT_HOTPLUG_MASK;
 
 				if (hotplug_trigger) {
@@ -1417,31 +1395,31 @@ void gen8_de_irq_handler(struct intel_display *display, u32 master_ctl)
 				}
 			}
 
-			if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) &&
+			if ((display->platform.geminilake || display->platform.broxton) &&
 			    (iir & BXT_DE_PORT_GMBUS)) {
 				intel_gmbus_irq_handler(display);
 				found = true;
 			}
 
-			if (DISPLAY_VER(dev_priv) >= 11) {
+			if (DISPLAY_VER(display) >= 11) {
 				u32 te_trigger = iir & (DSI0_TE | DSI1_TE);
 
 				if (te_trigger) {
-					gen11_dsi_te_interrupt_handler(dev_priv, te_trigger);
+					gen11_dsi_te_interrupt_handler(display, te_trigger);
 					found = true;
 				}
 			}
 
 			if (!found)
-				drm_err_ratelimited(&dev_priv->drm,
+				drm_err_ratelimited(display->drm,
 						    "Unexpected DE Port interrupt\n");
 		} else {
-			drm_err_ratelimited(&dev_priv->drm,
+			drm_err_ratelimited(display->drm,
 					    "The master control interrupt lied (DE PORT)!\n");
 		}
 	}
 
-	for_each_pipe(dev_priv, pipe) {
+	for_each_pipe(display, pipe) {
 		u32 fault_errors;
 
 		if (!(master_ctl & GEN8_DE_PIPE_IRQ(pipe)))
@@ -1449,7 +1427,7 @@ void gen8_de_irq_handler(struct intel_display *display, u32 master_ctl)
 
 		iir = intel_de_read(display, GEN8_DE_PIPE_IIR(pipe));
 		if (!iir) {
-			drm_err_ratelimited(&dev_priv->drm,
+			drm_err_ratelimited(display->drm,
 					    "The master control interrupt lied (DE PIPE)!\n");
 			continue;
 		}
@@ -1457,29 +1435,29 @@ void gen8_de_irq_handler(struct intel_display *display, u32 master_ctl)
 		intel_de_write(display, GEN8_DE_PIPE_IIR(pipe), iir);
 
 		if (iir & GEN8_PIPE_VBLANK)
-			intel_handle_vblank(dev_priv, pipe);
+			intel_handle_vblank(display, pipe);
 
-		if (iir & gen8_de_pipe_flip_done_mask(dev_priv))
-			flip_done_handler(dev_priv, pipe);
+		if (iir & gen8_de_pipe_flip_done_mask(display))
+			flip_done_handler(display, pipe);
 
-		if (HAS_DSB(dev_priv)) {
+		if (HAS_DSB(display)) {
 			if (iir & GEN12_DSB_INT(INTEL_DSB_0))
-				intel_dsb_irq_handler(&dev_priv->display, pipe, INTEL_DSB_0);
+				intel_dsb_irq_handler(display, pipe, INTEL_DSB_0);
 
 			if (iir & GEN12_DSB_INT(INTEL_DSB_1))
-				intel_dsb_irq_handler(&dev_priv->display, pipe, INTEL_DSB_1);
+				intel_dsb_irq_handler(display, pipe, INTEL_DSB_1);
 
 			if (iir & GEN12_DSB_INT(INTEL_DSB_2))
-				intel_dsb_irq_handler(&dev_priv->display, pipe, INTEL_DSB_2);
+				intel_dsb_irq_handler(display, pipe, INTEL_DSB_2);
 		}
 
 		if (iir & GEN8_PIPE_CDCLK_CRC_DONE)
-			hsw_pipe_crc_irq_handler(dev_priv, pipe);
+			hsw_pipe_crc_irq_handler(display, pipe);
 
 		if (iir & GEN8_PIPE_FIFO_UNDERRUN)
 			intel_cpu_fifo_underrun_irq_handler(display, pipe);
 
-		fault_errors = iir & gen8_de_pipe_fault_mask(dev_priv);
+		fault_errors = iir & gen8_de_pipe_fault_mask(display);
 		if (fault_errors)
 			intel_pipe_fault_irq_handler(display,
 						     gen8_pipe_fault_handlers(display),
@@ -1495,7 +1473,7 @@ void gen8_de_irq_handler(struct intel_display *display, u32 master_ctl)
 		 * scheme also closed the SDE interrupt handling race we've seen
 		 * on older pch-split platforms. But this needs testing.
 		 */
-		gen8_read_and_ack_pch_irqs(dev_priv, &iir, &pica_iir);
+		gen8_read_and_ack_pch_irqs(display, &iir, &pica_iir);
 		if (iir) {
 			if (pica_iir)
 				xelpdp_pica_irq_handler(display, pica_iir);
@@ -1505,13 +1483,13 @@ void gen8_de_irq_handler(struct intel_display *display, u32 master_ctl)
 			else if (INTEL_PCH_TYPE(dev_priv) >= PCH_SPT)
 				spt_irq_handler(display, iir);
 			else
-				cpt_irq_handler(dev_priv, iir);
+				cpt_irq_handler(display, iir);
 		} else {
 			/*
 			 * Like on previous PCH there seems to be something
 			 * fishy going on with forwarding PCH interrupts.
 			 */
-			drm_dbg(&dev_priv->drm,
+			drm_dbg(display->drm,
 				"The master control interrupt lied (SDE)!\n");
 		}
 	}
@@ -1556,10 +1534,9 @@ void gen11_display_irq_handler(struct intel_display *display)
 	enable_rpm_wakeref_asserts(&i915->runtime_pm);
 }
 
-static void i915gm_irq_cstate_wa_enable(struct drm_i915_private *i915)
+static void i915gm_irq_cstate_wa_enable(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
-	lockdep_assert_held(&i915->drm.vblank_time_lock);
+	lockdep_assert_held(&display->drm->vblank_time_lock);
 
 	/*
 	 * Vblank/CRC interrupts fail to wake the device up from C2+.
@@ -1567,33 +1544,30 @@ static void i915gm_irq_cstate_wa_enable(struct drm_i915_private *i915)
 	 * the problem. There is a small power cost so we do this
 	 * only when vblank/CRC interrupts are actually enabled.
 	 */
-	if (i915->display.irq.vblank_enabled++ == 0)
+	if (display->irq.vblank_enabled++ == 0)
 		intel_de_write(display, SCPD0,
 			       _MASKED_BIT_ENABLE(CSTATE_RENDER_CLOCK_GATE_DISABLE));
 }
 
-static void i915gm_irq_cstate_wa_disable(struct drm_i915_private *i915)
+static void i915gm_irq_cstate_wa_disable(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
-	lockdep_assert_held(&i915->drm.vblank_time_lock);
+	lockdep_assert_held(&display->drm->vblank_time_lock);
 
-	if (--i915->display.irq.vblank_enabled == 0)
+	if (--display->irq.vblank_enabled == 0)
 		intel_de_write(display, SCPD0,
 			       _MASKED_BIT_DISABLE(CSTATE_RENDER_CLOCK_GATE_DISABLE));
 }
 
 void i915gm_irq_cstate_wa(struct intel_display *display, bool enable)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
-	spin_lock_irq(&i915->drm.vblank_time_lock);
+	spin_lock_irq(&display->drm->vblank_time_lock);
 
 	if (enable)
-		i915gm_irq_cstate_wa_enable(i915);
+		i915gm_irq_cstate_wa_enable(display);
 	else
-		i915gm_irq_cstate_wa_disable(i915);
+		i915gm_irq_cstate_wa_disable(display);
 
-	spin_unlock_irq(&i915->drm.vblank_time_lock);
+	spin_unlock_irq(&display->drm->vblank_time_lock);
 }
 
 int i8xx_enable_vblank(struct drm_crtc *crtc)
@@ -1624,20 +1598,20 @@ void i8xx_disable_vblank(struct drm_crtc *crtc)
 
 int i915gm_enable_vblank(struct drm_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->dev);
+	struct intel_display *display = to_intel_display(crtc->dev);
 
-	i915gm_irq_cstate_wa_enable(i915);
+	i915gm_irq_cstate_wa_enable(display);
 
 	return i8xx_enable_vblank(crtc);
 }
 
 void i915gm_disable_vblank(struct drm_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->dev);
+	struct intel_display *display = to_intel_display(crtc->dev);
 
 	i8xx_disable_vblank(crtc);
 
-	i915gm_irq_cstate_wa_disable(i915);
+	i915gm_irq_cstate_wa_disable(display);
 }
 
 int i965_enable_vblank(struct drm_crtc *crtc)
@@ -1674,7 +1648,7 @@ int ilk_enable_vblank(struct drm_crtc *crtc)
 	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
 	enum pipe pipe = to_intel_crtc(crtc)->pipe;
 	unsigned long irqflags;
-	u32 bit = DISPLAY_VER(dev_priv) >= 7 ?
+	u32 bit = DISPLAY_VER(display) >= 7 ?
 		DE_PIPE_VBLANK_IVB(pipe) : DE_PIPE_VBLANK(pipe);
 
 	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
@@ -1684,7 +1658,7 @@ int ilk_enable_vblank(struct drm_crtc *crtc)
 	/* Even though there is no DMC, frame counter can get stuck when
 	 * PSR is active as no frames are generated.
 	 */
-	if (HAS_PSR(dev_priv))
+	if (HAS_PSR(display))
 		drm_crtc_vblank_restore(crtc);
 
 	return 0;
@@ -1696,7 +1670,7 @@ void ilk_disable_vblank(struct drm_crtc *crtc)
 	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
 	enum pipe pipe = to_intel_crtc(crtc)->pipe;
 	unsigned long irqflags;
-	u32 bit = DISPLAY_VER(dev_priv) >= 7 ?
+	u32 bit = DISPLAY_VER(display) >= 7 ?
 		DE_PIPE_VBLANK_IVB(pipe) : DE_PIPE_VBLANK(pipe);
 
 	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
@@ -1764,7 +1738,7 @@ int bdw_enable_vblank(struct drm_crtc *_crtc)
 	/* Even if there is no DMC, frame counter can get stuck when
 	 * PSR is active as no frames are generated, so check only for PSR.
 	 */
-	if (HAS_PSR(dev_priv))
+	if (HAS_PSR(display))
 		drm_crtc_vblank_restore(&crtc->base);
 
 	return 0;
@@ -1897,11 +1871,11 @@ void vlv_display_error_irq_handler(struct intel_display *display,
 		vlv_page_table_error_irq_handler(display, dpinvgtt);
 }
 
-static void _vlv_display_irq_reset(struct drm_i915_private *dev_priv)
+static void _vlv_display_irq_reset(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 
-	if (IS_CHERRYVIEW(dev_priv))
+	if (display->platform.cherryview)
 		intel_de_write(display, DPINVGTT, DPINVGTT_STATUS_MASK_CHV);
 	else
 		intel_de_write(display, DPINVGTT, DPINVGTT_STATUS_MASK_VLV);
@@ -1910,9 +1884,9 @@ static void _vlv_display_irq_reset(struct drm_i915_private *dev_priv)
 			 VLV_ERROR_REGS);
 
 	i915_hotplug_interrupt_update_locked(display, 0xffffffff, 0);
-	intel_de_rmw(display, PORT_HOTPLUG_STAT(dev_priv), 0, 0);
+	intel_de_rmw(display, PORT_HOTPLUG_STAT(display), 0, 0);
 
-	i9xx_pipestat_irq_reset(dev_priv);
+	i9xx_pipestat_irq_reset(display);
 
 	intel_display_irq_regs_reset(display, VLV_IRQ_REGS);
 	dev_priv->irq_mask = ~0u;
@@ -1920,22 +1894,18 @@ static void _vlv_display_irq_reset(struct drm_i915_private *dev_priv)
 
 void vlv_display_irq_reset(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
-
-	if (dev_priv->display.irq.vlv_display_irqs_enabled)
-		_vlv_display_irq_reset(dev_priv);
+	if (display->irq.vlv_display_irqs_enabled)
+		_vlv_display_irq_reset(display);
 }
 
 void i9xx_display_irq_reset(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
-	if (I915_HAS_HOTPLUG(i915)) {
+	if (I915_HAS_HOTPLUG(display)) {
 		i915_hotplug_interrupt_update(display, 0xffffffff, 0);
-		intel_de_rmw(display, PORT_HOTPLUG_STAT(i915), 0, 0);
+		intel_de_rmw(display, PORT_HOTPLUG_STAT(display), 0, 0);
 	}
 
-	i9xx_pipestat_irq_reset(i915);
+	i9xx_pipestat_irq_reset(display);
 }
 
 static u32 vlv_error_mask(void)
@@ -1951,10 +1921,10 @@ void vlv_display_irq_postinstall(struct intel_display *display)
 	u32 enable_mask;
 	enum pipe pipe;
 
-	if (!dev_priv->display.irq.vlv_display_irqs_enabled)
+	if (!display->irq.vlv_display_irqs_enabled)
 		return;
 
-	if (IS_CHERRYVIEW(dev_priv))
+	if (display->platform.cherryview)
 		intel_de_write(display, DPINVGTT,
 			       DPINVGTT_STATUS_MASK_CHV |
 			       DPINVGTT_EN_MASK_CHV);
@@ -1969,7 +1939,7 @@ void vlv_display_irq_postinstall(struct intel_display *display)
 	pipestat_mask = PIPE_CRC_DONE_INTERRUPT_STATUS;
 
 	i915_enable_pipestat(display, PIPE_A, PIPE_GMBUS_INTERRUPT_STATUS);
-	for_each_pipe(dev_priv, pipe)
+	for_each_pipe(display, pipe)
 		i915_enable_pipestat(display, pipe, pipestat_mask);
 
 	enable_mask = I915_DISPLAY_PORT_INTERRUPT |
@@ -1979,11 +1949,11 @@ void vlv_display_irq_postinstall(struct intel_display *display)
 		I915_LPE_PIPE_B_INTERRUPT |
 		I915_MASTER_ERROR_INTERRUPT;
 
-	if (IS_CHERRYVIEW(dev_priv))
+	if (display->platform.cherryview)
 		enable_mask |= I915_DISPLAY_PIPE_C_EVENT_INTERRUPT |
 			I915_LPE_PIPE_C_INTERRUPT;
 
-	drm_WARN_ON(&dev_priv->drm, dev_priv->irq_mask != ~0u);
+	drm_WARN_ON(display->drm, dev_priv->irq_mask != ~0u);
 
 	dev_priv->irq_mask = ~enable_mask;
 
@@ -1992,16 +1962,15 @@ void vlv_display_irq_postinstall(struct intel_display *display)
 
 void gen8_display_irq_reset(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum pipe pipe;
 
-	if (!HAS_DISPLAY(dev_priv))
+	if (!HAS_DISPLAY(display))
 		return;
 
 	intel_de_write(display, EDP_PSR_IMR, 0xffffffff);
 	intel_de_write(display, EDP_PSR_IIR, 0xffffffff);
 
-	for_each_pipe(dev_priv, pipe)
+	for_each_pipe(display, pipe)
 		if (intel_display_power_is_enabled(display,
 						   POWER_DOMAIN_PIPE(pipe)))
 			intel_display_irq_regs_reset(display, GEN8_DE_PIPE_IRQ_REGS(pipe));
@@ -2017,15 +1986,15 @@ void gen11_display_irq_reset(struct intel_display *display)
 	u32 trans_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_D);
 
-	if (!HAS_DISPLAY(dev_priv))
+	if (!HAS_DISPLAY(display))
 		return;
 
 	intel_de_write(display, GEN11_DISPLAY_INT_CTL, 0);
 
-	if (DISPLAY_VER(dev_priv) >= 12) {
+	if (DISPLAY_VER(display) >= 12) {
 		enum transcoder trans;
 
-		for_each_cpu_transcoder_masked(dev_priv, trans, trans_mask) {
+		for_each_cpu_transcoder_masked(display, trans, trans_mask) {
 			enum intel_display_power_domain domain;
 
 			domain = POWER_DOMAIN_TRANSCODER(trans);
@@ -2033,10 +2002,10 @@ void gen11_display_irq_reset(struct intel_display *display)
 				continue;
 
 			intel_de_write(display,
-				       TRANS_PSR_IMR(dev_priv, trans),
+				       TRANS_PSR_IMR(display, trans),
 				       0xffffffff);
 			intel_de_write(display,
-				       TRANS_PSR_IIR(dev_priv, trans),
+				       TRANS_PSR_IIR(display, trans),
 				       0xffffffff);
 		}
 	} else {
@@ -2044,7 +2013,7 @@ void gen11_display_irq_reset(struct intel_display *display)
 		intel_de_write(display, EDP_PSR_IIR, 0xffffffff);
 	}
 
-	for_each_pipe(dev_priv, pipe)
+	for_each_pipe(display, pipe)
 		if (intel_display_power_is_enabled(display,
 						   POWER_DOMAIN_PIPE(pipe)))
 			intel_display_irq_regs_reset(display, GEN8_DE_PIPE_IRQ_REGS(pipe));
@@ -2052,7 +2021,7 @@ void gen11_display_irq_reset(struct intel_display *display)
 	intel_display_irq_regs_reset(display, GEN8_DE_PORT_IRQ_REGS);
 	intel_display_irq_regs_reset(display, GEN8_DE_MISC_IRQ_REGS);
 
-	if (DISPLAY_VER(dev_priv) >= 14)
+	if (DISPLAY_VER(display) >= 14)
 		intel_display_irq_regs_reset(display, PICAINTERRUPT_IRQ_REGS);
 	else
 		intel_display_irq_regs_reset(display, GEN11_DE_HPD_IRQ_REGS);
@@ -2066,7 +2035,7 @@ void gen8_irq_power_well_post_enable(struct intel_display *display,
 {
 	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 extra_ier = GEN8_PIPE_VBLANK | GEN8_PIPE_FIFO_UNDERRUN |
-		gen8_de_pipe_flip_done_mask(dev_priv);
+		gen8_de_pipe_flip_done_mask(display);
 	enum pipe pipe;
 
 	spin_lock_irq(&dev_priv->irq_lock);
@@ -2076,10 +2045,10 @@ void gen8_irq_power_well_post_enable(struct intel_display *display,
 		return;
 	}
 
-	for_each_pipe_masked(dev_priv, pipe, pipe_mask)
+	for_each_pipe_masked(display, pipe, pipe_mask)
 		intel_display_irq_regs_init(display, GEN8_DE_PIPE_IRQ_REGS(pipe),
-					    dev_priv->display.irq.de_irq_mask[pipe],
-					    ~dev_priv->display.irq.de_irq_mask[pipe] | extra_ier);
+					    display->irq.de_irq_mask[pipe],
+					    ~display->irq.de_irq_mask[pipe] | extra_ier);
 
 	spin_unlock_irq(&dev_priv->irq_lock);
 }
@@ -2097,7 +2066,7 @@ void gen8_irq_power_well_pre_disable(struct intel_display *display,
 		return;
 	}
 
-	for_each_pipe_masked(dev_priv, pipe, pipe_mask)
+	for_each_pipe_masked(display, pipe, pipe_mask)
 		intel_display_irq_regs_reset(display, GEN8_DE_PIPE_IRQ_REGS(pipe));
 
 	spin_unlock_irq(&dev_priv->irq_lock);
@@ -2117,9 +2086,9 @@ void gen8_irq_power_well_pre_disable(struct intel_display *display,
  * to avoid races with the irq handler, assuming we have MSI. Shared legacy
  * interrupts could still race.
  */
-static void ibx_irq_postinstall(struct drm_i915_private *dev_priv)
+static void ibx_irq_postinstall(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 mask;
 
 	if (HAS_PCH_NOP(dev_priv))
@@ -2141,13 +2110,13 @@ void valleyview_enable_display_irqs(struct intel_display *display)
 
 	lockdep_assert_held(&dev_priv->irq_lock);
 
-	if (dev_priv->display.irq.vlv_display_irqs_enabled)
+	if (display->irq.vlv_display_irqs_enabled)
 		return;
 
-	dev_priv->display.irq.vlv_display_irqs_enabled = true;
+	display->irq.vlv_display_irqs_enabled = true;
 
 	if (intel_irqs_enabled(dev_priv)) {
-		_vlv_display_irq_reset(dev_priv);
+		_vlv_display_irq_reset(display);
 		vlv_display_irq_postinstall(display);
 	}
 }
@@ -2158,13 +2127,13 @@ void valleyview_disable_display_irqs(struct intel_display *display)
 
 	lockdep_assert_held(&dev_priv->irq_lock);
 
-	if (!dev_priv->display.irq.vlv_display_irqs_enabled)
+	if (!display->irq.vlv_display_irqs_enabled)
 		return;
 
-	dev_priv->display.irq.vlv_display_irqs_enabled = false;
+	display->irq.vlv_display_irqs_enabled = false;
 
 	if (intel_irqs_enabled(dev_priv))
-		_vlv_display_irq_reset(dev_priv);
+		_vlv_display_irq_reset(display);
 }
 
 void ilk_de_irq_postinstall(struct intel_display *display)
@@ -2173,7 +2142,7 @@ void ilk_de_irq_postinstall(struct intel_display *display)
 
 	u32 display_mask, extra_mask;
 
-	if (DISPLAY_VER(i915) >= 7) {
+	if (DISPLAY_VER(display) >= 7) {
 		display_mask = (DE_MASTER_IRQ_CONTROL | DE_GSE_IVB |
 				DE_PCH_EVENT_IVB | DE_AUX_CHANNEL_A_IVB);
 		extra_mask = (DE_PIPEC_VBLANK_IVB | DE_PIPEB_VBLANK_IVB |
@@ -2194,59 +2163,59 @@ void ilk_de_irq_postinstall(struct intel_display *display)
 			      DE_DP_A_HOTPLUG);
 	}
 
-	if (IS_HASWELL(i915)) {
+	if (display->platform.haswell) {
 		intel_display_irq_regs_assert_irr_is_zero(display, EDP_PSR_IIR);
 		display_mask |= DE_EDP_PSR_INT_HSW;
 	}
 
-	if (IS_IRONLAKE_M(i915))
+	if (display->platform.ironlake && display->platform.mobile)
 		extra_mask |= DE_PCU_EVENT;
 
 	i915->irq_mask = ~display_mask;
 
-	ibx_irq_postinstall(i915);
+	ibx_irq_postinstall(display);
 
 	intel_display_irq_regs_init(display, DE_IRQ_REGS, i915->irq_mask,
 				    display_mask | extra_mask);
 }
 
-static void mtp_irq_postinstall(struct drm_i915_private *i915);
-static void icp_irq_postinstall(struct drm_i915_private *i915);
+static void mtp_irq_postinstall(struct intel_display *display);
+static void icp_irq_postinstall(struct intel_display *display);
 
 void gen8_de_irq_postinstall(struct intel_display *display)
 {
 	struct drm_i915_private *dev_priv = to_i915(display->drm);
 
-	u32 de_pipe_masked = gen8_de_pipe_fault_mask(dev_priv) |
+	u32 de_pipe_masked = gen8_de_pipe_fault_mask(display) |
 		GEN8_PIPE_CDCLK_CRC_DONE;
 	u32 de_pipe_enables;
-	u32 de_port_masked = gen8_de_port_aux_mask(dev_priv);
+	u32 de_port_masked = gen8_de_port_aux_mask(display);
 	u32 de_port_enables;
 	u32 de_misc_masked = GEN8_DE_EDP_PSR;
 	u32 trans_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_D);
 	enum pipe pipe;
 
-	if (!HAS_DISPLAY(dev_priv))
+	if (!HAS_DISPLAY(display))
 		return;
 
-	if (DISPLAY_VER(dev_priv) >= 14)
-		mtp_irq_postinstall(dev_priv);
+	if (DISPLAY_VER(display) >= 14)
+		mtp_irq_postinstall(display);
 	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
-		icp_irq_postinstall(dev_priv);
+		icp_irq_postinstall(display);
 	else if (HAS_PCH_SPLIT(dev_priv))
-		ibx_irq_postinstall(dev_priv);
+		ibx_irq_postinstall(display);
 
-	if (DISPLAY_VER(dev_priv) < 11)
+	if (DISPLAY_VER(display) < 11)
 		de_misc_masked |= GEN8_DE_MISC_GSE;
 
-	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
+	if (display->platform.geminilake || display->platform.broxton)
 		de_port_masked |= BXT_DE_PORT_GMBUS;
 
-	if (DISPLAY_VER(dev_priv) >= 14) {
+	if (DISPLAY_VER(display) >= 14) {
 		de_misc_masked |= XELPDP_PMDEMAND_RSPTOUT_ERR |
 				  XELPDP_PMDEMAND_RSP | XELPDP_RM_TIMEOUT;
-	} else if (DISPLAY_VER(dev_priv) >= 11) {
+	} else if (DISPLAY_VER(display) >= 11) {
 		enum port port;
 
 		if (intel_bios_is_dsi_present(display, &port))
@@ -2256,25 +2225,25 @@ void gen8_de_irq_postinstall(struct intel_display *display)
 	if (HAS_DBUF_OVERLAP_DETECTION(display))
 		de_misc_masked |= XE2LPD_DBUF_OVERLAP_DETECTED;
 
-	if (HAS_DSB(dev_priv))
+	if (HAS_DSB(display))
 		de_pipe_masked |= GEN12_DSB_INT(INTEL_DSB_0) |
 			GEN12_DSB_INT(INTEL_DSB_1) |
 			GEN12_DSB_INT(INTEL_DSB_2);
 
 	de_pipe_enables = de_pipe_masked |
 		GEN8_PIPE_VBLANK | GEN8_PIPE_FIFO_UNDERRUN |
-		gen8_de_pipe_flip_done_mask(dev_priv);
+		gen8_de_pipe_flip_done_mask(display);
 
 	de_port_enables = de_port_masked;
-	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
+	if (display->platform.geminilake || display->platform.broxton)
 		de_port_enables |= BXT_DE_PORT_HOTPLUG_MASK;
-	else if (IS_BROADWELL(dev_priv))
+	else if (display->platform.broadwell)
 		de_port_enables |= BDW_DE_PORT_HOTPLUG_MASK;
 
-	if (DISPLAY_VER(dev_priv) >= 12) {
+	if (DISPLAY_VER(display) >= 12) {
 		enum transcoder trans;
 
-		for_each_cpu_transcoder_masked(dev_priv, trans, trans_mask) {
+		for_each_cpu_transcoder_masked(display, trans, trans_mask) {
 			enum intel_display_power_domain domain;
 
 			domain = POWER_DOMAIN_TRANSCODER(trans);
@@ -2282,19 +2251,19 @@ void gen8_de_irq_postinstall(struct intel_display *display)
 				continue;
 
 			intel_display_irq_regs_assert_irr_is_zero(display,
-								  TRANS_PSR_IIR(dev_priv, trans));
+								  TRANS_PSR_IIR(display, trans));
 		}
 	} else {
 		intel_display_irq_regs_assert_irr_is_zero(display, EDP_PSR_IIR);
 	}
 
-	for_each_pipe(dev_priv, pipe) {
-		dev_priv->display.irq.de_irq_mask[pipe] = ~de_pipe_masked;
+	for_each_pipe(display, pipe) {
+		display->irq.de_irq_mask[pipe] = ~de_pipe_masked;
 
 		if (intel_display_power_is_enabled(display,
 						   POWER_DOMAIN_PIPE(pipe)))
 			intel_display_irq_regs_init(display, GEN8_DE_PIPE_IRQ_REGS(pipe),
-						    dev_priv->display.irq.de_irq_mask[pipe],
+						    display->irq.de_irq_mask[pipe],
 						    de_pipe_enables);
 	}
 
@@ -2303,7 +2272,7 @@ void gen8_de_irq_postinstall(struct intel_display *display)
 	intel_display_irq_regs_init(display, GEN8_DE_MISC_IRQ_REGS, ~de_misc_masked,
 				    de_misc_masked);
 
-	if (IS_DISPLAY_VER(dev_priv, 11, 13)) {
+	if (IS_DISPLAY_VER(display, 11, 13)) {
 		u32 de_hpd_masked = 0;
 		u32 de_hpd_enables = GEN11_DE_TC_HOTPLUG_MASK |
 				     GEN11_DE_TBT_HOTPLUG_MASK;
@@ -2313,9 +2282,8 @@ void gen8_de_irq_postinstall(struct intel_display *display)
 	}
 }
 
-static void mtp_irq_postinstall(struct drm_i915_private *i915)
+static void mtp_irq_postinstall(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
 	u32 sde_mask = SDE_GMBUS_ICP | SDE_PICAINTERRUPT;
 	u32 de_hpd_mask = XELPDP_AUX_TC_MASK;
 	u32 de_hpd_enables = de_hpd_mask | XELPDP_DP_ALT_HOTPLUG_MASK |
@@ -2327,9 +2295,8 @@ static void mtp_irq_postinstall(struct drm_i915_private *i915)
 	intel_display_irq_regs_init(display, SDE_IRQ_REGS, ~sde_mask, 0xffffffff);
 }
 
-static void icp_irq_postinstall(struct drm_i915_private *dev_priv)
+static void icp_irq_postinstall(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
 	u32 mask = SDE_GMBUS_ICP;
 
 	intel_display_irq_regs_init(display, SDE_IRQ_REGS, ~mask, 0xffffffff);
-- 
2.39.5

