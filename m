Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B8CA32BEB
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 17:38:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2724010E915;
	Wed, 12 Feb 2025 16:37:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MBwG15WG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB89F10E915;
 Wed, 12 Feb 2025 16:37:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739378277; x=1770914277;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=umrwCJgYPCgN24m56xmJ4NtPKsdzFC4pEno3zv0GFfs=;
 b=MBwG15WGw5afqRRv207YiUMq+kLlGbxXwYeOU0uaM7xQ6Q1hxLZnFlWo
 Q9ko5VeBt1leGf1q//n0i6t8qy47O9i76Gb2bwSSr0iZgH+Vvc1InAU70
 zDKVXT3Iv3ae3nexhb0XZ0D4vQTN+asNraxPbhFpBFgtkIYXiBa7L/oez
 r/BH9uiGgsymivoucTWAMa0gWkyIOS2kuptFlOMNbz5yX40RAUy63Ys6O
 4bh9bBKkw55CcR+O3hZeW6jLbstvOsZXe71MgSYADnMwXo3F+7lP/kPe0
 xPZzQyWpfh1azRLSPdi7eknJhDFJ4XSiT9UwJhBFtJpkf/2OEP+XIJMXb g==;
X-CSE-ConnectionGUID: ZERq3fxhQSu1r+55QgsXhQ==
X-CSE-MsgGUID: XjgJWjWnT3+luDJtd4txTA==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="51480009"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="51480009"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 08:37:56 -0800
X-CSE-ConnectionGUID: m+DcZFFNTL2QoC23OW1i6Q==
X-CSE-MsgGUID: cHZR0LKgR1GE8t9Y2KPGlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="113080803"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.167])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 08:37:54 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 13/14] drm/i915/display: convert intel_fifo_underrun.[ch] to
 struct intel_display
Date: Wed, 12 Feb 2025 18:36:42 +0200
Message-Id: <682e667013e1726a6f2f78484b7e9618cee3b639.1739378096.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1739378095.git.jani.nikula@intel.com>
References: <cover.1739378095.git.jani.nikula@intel.com>
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
pointer. Convert as much as possible of intel_fifo_underrun.[ch] to
struct intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  4 +-
 .../gpu/drm/i915/display/intel_display_irq.c  | 18 ++--
 .../drm/i915/display/intel_fifo_underrun.c    | 93 ++++++++++---------
 .../drm/i915/display/intel_fifo_underrun.h    | 11 +--
 .../drm/i915/display/intel_modeset_setup.c    |  6 +-
 6 files changed, 67 insertions(+), 67 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 89785da93603..5ecf7d1a5f18 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -328,7 +328,7 @@ int intel_crtc_init(struct intel_display *display, enum pipe pipe)
 	}
 	crtc->plane_ids_mask |= BIT(primary->id);
 
-	intel_init_fifo_underrun_reporting(dev_priv, crtc, false);
+	intel_init_fifo_underrun_reporting(display, crtc, false);
 
 	for_each_sprite(display, pipe, sprite) {
 		struct intel_plane *plane;
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 23d4e4c6bd6b..b491a1638a00 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7954,8 +7954,8 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	}
 
 	/* Underruns don't always raise interrupts, so check manually */
-	intel_check_cpu_fifo_underruns(dev_priv);
-	intel_check_pch_fifo_underruns(dev_priv);
+	intel_check_cpu_fifo_underruns(display);
+	intel_check_pch_fifo_underruns(display);
 
 	if (state->modeset)
 		intel_verify_planes(state);
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 0f68b0a34ca9..b8fcf74bd3ac 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -562,7 +562,7 @@ void i915_pipestat_irq_handler(struct drm_i915_private *dev_priv,
 			i9xx_pipe_crc_irq_handler(dev_priv, pipe);
 
 		if (pipe_stats[pipe] & PIPE_FIFO_UNDERRUN_STATUS)
-			intel_cpu_fifo_underrun_irq_handler(dev_priv, pipe);
+			intel_cpu_fifo_underrun_irq_handler(display, pipe);
 	}
 
 	if (blc_event || (iir & I915_ASLE_INTERRUPT))
@@ -587,7 +587,7 @@ void i965_pipestat_irq_handler(struct drm_i915_private *dev_priv,
 			i9xx_pipe_crc_irq_handler(dev_priv, pipe);
 
 		if (pipe_stats[pipe] & PIPE_FIFO_UNDERRUN_STATUS)
-			intel_cpu_fifo_underrun_irq_handler(dev_priv, pipe);
+			intel_cpu_fifo_underrun_irq_handler(display, pipe);
 	}
 
 	if (blc_event || (iir & I915_ASLE_INTERRUPT))
@@ -614,7 +614,7 @@ void valleyview_pipestat_irq_handler(struct drm_i915_private *dev_priv,
 			i9xx_pipe_crc_irq_handler(dev_priv, pipe);
 
 		if (pipe_stats[pipe] & PIPE_FIFO_UNDERRUN_STATUS)
-			intel_cpu_fifo_underrun_irq_handler(dev_priv, pipe);
+			intel_cpu_fifo_underrun_irq_handler(display, pipe);
 	}
 
 	if (pipe_stats[0] & PIPE_GMBUS_INTERRUPT_STATUS)
@@ -666,10 +666,10 @@ static void ibx_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 			"PCH transcoder CRC error interrupt\n");
 
 	if (pch_iir & SDE_TRANSA_FIFO_UNDER)
-		intel_pch_fifo_underrun_irq_handler(dev_priv, PIPE_A);
+		intel_pch_fifo_underrun_irq_handler(display, PIPE_A);
 
 	if (pch_iir & SDE_TRANSB_FIFO_UNDER)
-		intel_pch_fifo_underrun_irq_handler(dev_priv, PIPE_B);
+		intel_pch_fifo_underrun_irq_handler(display, PIPE_B);
 }
 
 static void ivb_err_int_handler(struct drm_i915_private *dev_priv)
@@ -683,7 +683,7 @@ static void ivb_err_int_handler(struct drm_i915_private *dev_priv)
 
 	for_each_pipe(dev_priv, pipe) {
 		if (err_int & ERR_INT_FIFO_UNDERRUN(pipe))
-			intel_cpu_fifo_underrun_irq_handler(dev_priv, pipe);
+			intel_cpu_fifo_underrun_irq_handler(display, pipe);
 
 		if (err_int & ERR_INT_PIPE_CRC_DONE(pipe)) {
 			if (IS_IVYBRIDGE(dev_priv))
@@ -707,7 +707,7 @@ static void cpt_serr_int_handler(struct drm_i915_private *dev_priv)
 
 	for_each_pipe(dev_priv, pipe)
 		if (serr_int & SERR_INT_TRANS_FIFO_UNDERRUN(pipe))
-			intel_pch_fifo_underrun_irq_handler(dev_priv, pipe);
+			intel_pch_fifo_underrun_irq_handler(display, pipe);
 
 	intel_de_write(display, SERR_INT, serr_int);
 }
@@ -776,7 +776,7 @@ void ilk_display_irq_handler(struct drm_i915_private *dev_priv, u32 de_iir)
 			flip_done_handler(dev_priv, pipe);
 
 		if (de_iir & DE_PIPE_FIFO_UNDERRUN(pipe))
-			intel_cpu_fifo_underrun_irq_handler(dev_priv, pipe);
+			intel_cpu_fifo_underrun_irq_handler(display, pipe);
 
 		if (de_iir & DE_PIPE_CRC_DONE(pipe))
 			i9xx_pipe_crc_irq_handler(dev_priv, pipe);
@@ -1228,7 +1228,7 @@ void gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 			hsw_pipe_crc_irq_handler(dev_priv, pipe);
 
 		if (iir & GEN8_PIPE_FIFO_UNDERRUN)
-			intel_cpu_fifo_underrun_irq_handler(dev_priv, pipe);
+			intel_cpu_fifo_underrun_irq_handler(display, pipe);
 
 		fault_errors = iir & gen8_de_pipe_fault_mask(dev_priv);
 		if (fault_errors)
diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
index cf70dab4881b..14b00988a81f 100644
--- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
+++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
@@ -63,7 +63,7 @@ static bool ivb_can_enable_err_int(struct intel_display *display)
 
 	lockdep_assert_held(&dev_priv->irq_lock);
 
-	for_each_pipe(dev_priv, pipe) {
+	for_each_pipe(display, pipe) {
 		crtc = intel_crtc_for_pipe(display, pipe);
 
 		if (crtc->cpu_fifo_underrun_disabled)
@@ -81,7 +81,7 @@ static bool cpt_can_enable_serr_int(struct intel_display *display)
 
 	lockdep_assert_held(&dev_priv->irq_lock);
 
-	for_each_pipe(dev_priv, pipe) {
+	for_each_pipe(display, pipe) {
 		crtc = intel_crtc_for_pipe(display, pipe);
 
 		if (crtc->pch_fifo_underrun_disabled)
@@ -95,20 +95,20 @@ static void i9xx_check_fifo_underruns(struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	i915_reg_t reg = PIPESTAT(dev_priv, crtc->pipe);
+	i915_reg_t reg = PIPESTAT(display, crtc->pipe);
 	u32 enable_mask;
 
 	lockdep_assert_held(&dev_priv->irq_lock);
 
-	if ((intel_de_read(dev_priv, reg) & PIPE_FIFO_UNDERRUN_STATUS) == 0)
+	if ((intel_de_read(display, reg) & PIPE_FIFO_UNDERRUN_STATUS) == 0)
 		return;
 
 	enable_mask = i915_pipestat_enable_mask(dev_priv, crtc->pipe);
-	intel_de_write(dev_priv, reg, enable_mask | PIPE_FIFO_UNDERRUN_STATUS);
-	intel_de_posting_read(dev_priv, reg);
+	intel_de_write(display, reg, enable_mask | PIPE_FIFO_UNDERRUN_STATUS);
+	intel_de_posting_read(display, reg);
 
 	trace_intel_cpu_fifo_underrun(display, crtc->pipe);
-	drm_err(&dev_priv->drm, "pipe %c underrun\n", pipe_name(crtc->pipe));
+	drm_err(display->drm, "pipe %c underrun\n", pipe_name(crtc->pipe));
 }
 
 static void i9xx_set_fifo_underrun_reporting(struct intel_display *display,
@@ -116,19 +116,19 @@ static void i9xx_set_fifo_underrun_reporting(struct intel_display *display,
 					     bool enable, bool old)
 {
 	struct drm_i915_private *dev_priv = to_i915(display->drm);
-	i915_reg_t reg = PIPESTAT(dev_priv, pipe);
+	i915_reg_t reg = PIPESTAT(display, pipe);
 
 	lockdep_assert_held(&dev_priv->irq_lock);
 
 	if (enable) {
 		u32 enable_mask = i915_pipestat_enable_mask(dev_priv, pipe);
 
-		intel_de_write(dev_priv, reg,
+		intel_de_write(display, reg,
 			       enable_mask | PIPE_FIFO_UNDERRUN_STATUS);
-		intel_de_posting_read(dev_priv, reg);
+		intel_de_posting_read(display, reg);
 	} else {
-		if (old && intel_de_read(dev_priv, reg) & PIPE_FIFO_UNDERRUN_STATUS)
-			drm_err(&dev_priv->drm, "pipe %c underrun\n",
+		if (old && intel_de_read(display, reg) & PIPE_FIFO_UNDERRUN_STATUS)
+			drm_err(display->drm, "pipe %c underrun\n",
 				pipe_name(pipe));
 	}
 }
@@ -151,18 +151,18 @@ static void ivb_check_fifo_underruns(struct intel_crtc *crtc)
 	struct intel_display *display = to_intel_display(crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
-	u32 err_int = intel_de_read(dev_priv, GEN7_ERR_INT);
+	u32 err_int = intel_de_read(display, GEN7_ERR_INT);
 
 	lockdep_assert_held(&dev_priv->irq_lock);
 
 	if ((err_int & ERR_INT_FIFO_UNDERRUN(pipe)) == 0)
 		return;
 
-	intel_de_write(dev_priv, GEN7_ERR_INT, ERR_INT_FIFO_UNDERRUN(pipe));
-	intel_de_posting_read(dev_priv, GEN7_ERR_INT);
+	intel_de_write(display, GEN7_ERR_INT, ERR_INT_FIFO_UNDERRUN(pipe));
+	intel_de_posting_read(display, GEN7_ERR_INT);
 
 	trace_intel_cpu_fifo_underrun(display, pipe);
-	drm_err(&dev_priv->drm, "fifo underrun on pipe %c\n", pipe_name(pipe));
+	drm_err(display->drm, "fifo underrun on pipe %c\n", pipe_name(pipe));
 }
 
 static void ivb_set_fifo_underrun_reporting(struct intel_display *display,
@@ -171,7 +171,7 @@ static void ivb_set_fifo_underrun_reporting(struct intel_display *display,
 {
 	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	if (enable) {
-		intel_de_write(dev_priv, GEN7_ERR_INT,
+		intel_de_write(display, GEN7_ERR_INT,
 			       ERR_INT_FIFO_UNDERRUN(pipe));
 
 		if (!ivb_can_enable_err_int(display))
@@ -182,8 +182,8 @@ static void ivb_set_fifo_underrun_reporting(struct intel_display *display,
 		ilk_disable_display_irq(dev_priv, DE_ERR_INT_IVB);
 
 		if (old &&
-		    intel_de_read(dev_priv, GEN7_ERR_INT) & ERR_INT_FIFO_UNDERRUN(pipe)) {
-			drm_err(&dev_priv->drm,
+		    intel_de_read(display, GEN7_ERR_INT) & ERR_INT_FIFO_UNDERRUN(pipe)) {
+			drm_err(display->drm,
 				"uncleared fifo underrun on pipe %c\n",
 				pipe_name(pipe));
 		}
@@ -220,19 +220,19 @@ static void cpt_check_pch_fifo_underruns(struct intel_crtc *crtc)
 	struct intel_display *display = to_intel_display(crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pch_transcoder = crtc->pipe;
-	u32 serr_int = intel_de_read(dev_priv, SERR_INT);
+	u32 serr_int = intel_de_read(display, SERR_INT);
 
 	lockdep_assert_held(&dev_priv->irq_lock);
 
 	if ((serr_int & SERR_INT_TRANS_FIFO_UNDERRUN(pch_transcoder)) == 0)
 		return;
 
-	intel_de_write(dev_priv, SERR_INT,
+	intel_de_write(display, SERR_INT,
 		       SERR_INT_TRANS_FIFO_UNDERRUN(pch_transcoder));
-	intel_de_posting_read(dev_priv, SERR_INT);
+	intel_de_posting_read(display, SERR_INT);
 
 	trace_intel_pch_fifo_underrun(display, pch_transcoder);
-	drm_err(&dev_priv->drm, "pch fifo underrun on pch transcoder %c\n",
+	drm_err(display->drm, "pch fifo underrun on pch transcoder %c\n",
 		pipe_name(pch_transcoder));
 }
 
@@ -243,7 +243,7 @@ static void cpt_set_fifo_underrun_reporting(struct intel_display *display,
 	struct drm_i915_private *dev_priv = to_i915(display->drm);
 
 	if (enable) {
-		intel_de_write(dev_priv, SERR_INT,
+		intel_de_write(display, SERR_INT,
 			       SERR_INT_TRANS_FIFO_UNDERRUN(pch_transcoder));
 
 		if (!cpt_can_enable_serr_int(display))
@@ -253,9 +253,9 @@ static void cpt_set_fifo_underrun_reporting(struct intel_display *display,
 	} else {
 		ibx_disable_display_interrupt(dev_priv, SDE_ERROR_CPT);
 
-		if (old && intel_de_read(dev_priv, SERR_INT) &
+		if (old && intel_de_read(display, SERR_INT) &
 		    SERR_INT_TRANS_FIFO_UNDERRUN(pch_transcoder)) {
-			drm_err(&dev_priv->drm,
+			drm_err(display->drm,
 				"uncleared pch fifo underrun on pch transcoder %c\n",
 				pipe_name(pch_transcoder));
 		}
@@ -368,17 +368,16 @@ bool intel_set_pch_fifo_underrun_reporting(struct intel_display *display,
 
 /**
  * intel_cpu_fifo_underrun_irq_handler - handle CPU fifo underrun interrupt
- * @dev_priv: i915 device instance
+ * @display: display device instance
  * @pipe: (CPU) pipe to set state for
  *
  * This handles a CPU fifo underrun interrupt, generating an underrun warning
  * into dmesg if underrun reporting is enabled and then disables the underrun
  * interrupt to avoid an irq storm.
  */
-void intel_cpu_fifo_underrun_irq_handler(struct drm_i915_private *dev_priv,
+void intel_cpu_fifo_underrun_irq_handler(struct intel_display *display,
 					 enum pipe pipe)
 {
-	struct intel_display *display = &dev_priv->display;
 	struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
 
 	/* We may be called too early in init, thanks BIOS! */
@@ -386,63 +385,62 @@ void intel_cpu_fifo_underrun_irq_handler(struct drm_i915_private *dev_priv,
 		return;
 
 	/* GMCH can't disable fifo underruns, filter them. */
-	if (HAS_GMCH(dev_priv) &&
+	if (HAS_GMCH(display) &&
 	    crtc->cpu_fifo_underrun_disabled)
 		return;
 
 	if (intel_set_cpu_fifo_underrun_reporting(display, pipe, false)) {
 		trace_intel_cpu_fifo_underrun(display, pipe);
 
-		drm_err(&dev_priv->drm, "CPU pipe %c FIFO underrun\n", pipe_name(pipe));
+		drm_err(display->drm, "CPU pipe %c FIFO underrun\n", pipe_name(pipe));
 	}
 
-	intel_fbc_handle_fifo_underrun_irq(&dev_priv->display);
+	intel_fbc_handle_fifo_underrun_irq(display);
 }
 
 /**
  * intel_pch_fifo_underrun_irq_handler - handle PCH fifo underrun interrupt
- * @dev_priv: i915 device instance
+ * @display: display device instance
  * @pch_transcoder: the PCH transcoder (same as pipe on IVB and older)
  *
  * This handles a PCH fifo underrun interrupt, generating an underrun warning
  * into dmesg if underrun reporting is enabled and then disables the underrun
  * interrupt to avoid an irq storm.
  */
-void intel_pch_fifo_underrun_irq_handler(struct drm_i915_private *dev_priv,
+void intel_pch_fifo_underrun_irq_handler(struct intel_display *display,
 					 enum pipe pch_transcoder)
 {
-	struct intel_display *display = &dev_priv->display;
-
 	if (intel_set_pch_fifo_underrun_reporting(display, pch_transcoder,
 						  false)) {
 		trace_intel_pch_fifo_underrun(display, pch_transcoder);
-		drm_err(&dev_priv->drm, "PCH transcoder %c FIFO underrun\n",
+		drm_err(display->drm, "PCH transcoder %c FIFO underrun\n",
 			pipe_name(pch_transcoder));
 	}
 }
 
 /**
  * intel_check_cpu_fifo_underruns - check for CPU fifo underruns immediately
- * @dev_priv: i915 device instance
+ * @display: display device instance
  *
  * Check for CPU fifo underruns immediately. Useful on IVB/HSW where the shared
  * error interrupt may have been disabled, and so CPU fifo underruns won't
  * necessarily raise an interrupt, and on GMCH platforms where underruns never
  * raise an interrupt.
  */
-void intel_check_cpu_fifo_underruns(struct drm_i915_private *dev_priv)
+void intel_check_cpu_fifo_underruns(struct intel_display *display)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_crtc *crtc;
 
 	spin_lock_irq(&dev_priv->irq_lock);
 
-	for_each_intel_crtc(&dev_priv->drm, crtc) {
+	for_each_intel_crtc(display->drm, crtc) {
 		if (crtc->cpu_fifo_underrun_disabled)
 			continue;
 
-		if (HAS_GMCH(dev_priv))
+		if (HAS_GMCH(display))
 			i9xx_check_fifo_underruns(crtc);
-		else if (DISPLAY_VER(dev_priv) == 7)
+		else if (DISPLAY_VER(display) == 7)
 			ivb_check_fifo_underruns(crtc);
 	}
 
@@ -451,19 +449,20 @@ void intel_check_cpu_fifo_underruns(struct drm_i915_private *dev_priv)
 
 /**
  * intel_check_pch_fifo_underruns - check for PCH fifo underruns immediately
- * @dev_priv: i915 device instance
+ * @display: display device instance
  *
  * Check for PCH fifo underruns immediately. Useful on CPT/PPT where the shared
  * error interrupt may have been disabled, and so PCH fifo underruns won't
  * necessarily raise an interrupt.
  */
-void intel_check_pch_fifo_underruns(struct drm_i915_private *dev_priv)
+void intel_check_pch_fifo_underruns(struct intel_display *display)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_crtc *crtc;
 
 	spin_lock_irq(&dev_priv->irq_lock);
 
-	for_each_intel_crtc(&dev_priv->drm, crtc) {
+	for_each_intel_crtc(display->drm, crtc) {
 		if (crtc->pch_fifo_underrun_disabled)
 			continue;
 
@@ -474,10 +473,12 @@ void intel_check_pch_fifo_underruns(struct drm_i915_private *dev_priv)
 	spin_unlock_irq(&dev_priv->irq_lock);
 }
 
-void intel_init_fifo_underrun_reporting(struct drm_i915_private *i915,
+void intel_init_fifo_underrun_reporting(struct intel_display *display,
 					struct intel_crtc *crtc,
 					bool enable)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
 	crtc->cpu_fifo_underrun_disabled = !enable;
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.h b/drivers/gpu/drm/i915/display/intel_fifo_underrun.h
index 8302080c2313..ebecc4347cfb 100644
--- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.h
+++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.h
@@ -9,22 +9,21 @@
 #include <linux/types.h>
 
 enum pipe;
-struct drm_i915_private;
 struct intel_crtc;
 struct intel_display;
 
-void intel_init_fifo_underrun_reporting(struct drm_i915_private *i915,
+void intel_init_fifo_underrun_reporting(struct intel_display *display,
 					struct intel_crtc *crtc, bool enable);
 bool intel_set_cpu_fifo_underrun_reporting(struct intel_display *display,
 					   enum pipe pipe, bool enable);
 bool intel_set_pch_fifo_underrun_reporting(struct intel_display *display,
 					   enum pipe pch_transcoder,
 					   bool enable);
-void intel_cpu_fifo_underrun_irq_handler(struct drm_i915_private *dev_priv,
+void intel_cpu_fifo_underrun_irq_handler(struct intel_display *display,
 					 enum pipe pipe);
-void intel_pch_fifo_underrun_irq_handler(struct drm_i915_private *dev_priv,
+void intel_pch_fifo_underrun_irq_handler(struct intel_display *display,
 					 enum pipe pch_transcoder);
-void intel_check_cpu_fifo_underruns(struct drm_i915_private *dev_priv);
-void intel_check_pch_fifo_underruns(struct drm_i915_private *dev_priv);
+void intel_check_cpu_fifo_underruns(struct intel_display *display);
+void intel_check_pch_fifo_underruns(struct intel_display *display);
 
 #endif /* __INTEL_FIFO_UNDERRUN_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index b4d1a18e9fd4..a5a00b3ce98f 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -454,8 +454,8 @@ static struct intel_connector *intel_encoder_find_connector(struct intel_encoder
 
 static void intel_sanitize_fifo_underrun_reporting(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 
 	/*
 	 * We start out with underrun reporting disabled on active
@@ -470,9 +470,9 @@ static void intel_sanitize_fifo_underrun_reporting(const struct intel_crtc_state
 	 * No protection against concurrent access is required - at
 	 * worst a fifo underrun happens which also sets this to false.
 	 */
-	intel_init_fifo_underrun_reporting(i915, crtc,
+	intel_init_fifo_underrun_reporting(display, crtc,
 					   !crtc_state->hw.active &&
-					   !HAS_GMCH(i915));
+					   !HAS_GMCH(display));
 }
 
 static bool intel_sanitize_crtc(struct intel_crtc *crtc,
-- 
2.39.5

