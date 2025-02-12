Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACDF7A32BED
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 17:38:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50E2F10E91C;
	Wed, 12 Feb 2025 16:38:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P+f/z5i2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F211F10E91C;
 Wed, 12 Feb 2025 16:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739378281; x=1770914281;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=p08tkTHtgsli0vuc5FFjl32m9lVgIKgWB5+I4hynDSw=;
 b=P+f/z5i2jPyH1bhXtK3vf5Jr81E6EVwprejDPgjYkq/D2w4ametcFzvN
 uNFrrclYay/BquKZWwnarNpUPVtq8IpAJcQK37Un6GB4aKTxpwaL+/vTY
 QXRTxaNVT8JdqypBtI0wVnOd/JmkkRCWMoQbWXwVDXargs4go/I8wy5bn
 Wm8t2t8bACT9pkEeP0hjjZGi7r+v8SR6jo+OpvSCDjyiBLJadrW9P4RkP
 ur5wmDDv6aEsH0frpydrAB4Su9EindkmMfcNmBe12lveVrb4Hdt0kF8JC
 X6a3guNO2lCSntj+zaTO6uBK1YMP+OL7TBQw6/5sigmjS2QKkKIvrsJ+5 Q==;
X-CSE-ConnectionGUID: mbAHac3RTV6+8Yq/03QZPg==
X-CSE-MsgGUID: rgRdfMSZTBacwknhhBfABw==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="51033123"
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="51033123"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 08:38:01 -0800
X-CSE-ConnectionGUID: EnGnmd9RSeavtRUoc8dw+A==
X-CSE-MsgGUID: TQPpU+k2SUm6FGIvDkWSfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="112835921"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.167])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 08:37:59 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 14/14] drm/i915/display: convert i915_pipestat_enable_mask()
 to struct intel_display
Date: Wed, 12 Feb 2025 18:36:43 +0200
Message-Id: <975b382c703cfb62f24643e40eac247b8e8bbea8.1739378096.git.jani.nikula@intel.com>
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
pointer. Convert i915_pipestat_enable_mask() to struct intel_display,
allowing further conversions elsewhere.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c  | 19 ++++++++++---------
 .../gpu/drm/i915/display/intel_display_irq.h  |  5 +++--
 .../drm/i915/display/intel_fifo_underrun.c    |  4 ++--
 3 files changed, 15 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index b8fcf74bd3ac..880eaed83cd5 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -226,29 +226,30 @@ void ibx_disable_display_interrupt(struct drm_i915_private *i915, u32 bits)
 	ibx_display_interrupt_update(i915, bits, 0);
 }
 
-u32 i915_pipestat_enable_mask(struct drm_i915_private *dev_priv,
+u32 i915_pipestat_enable_mask(struct intel_display *display,
 			      enum pipe pipe)
 {
-	u32 status_mask = dev_priv->display.irq.pipestat_irq_mask[pipe];
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+	u32 status_mask = display->irq.pipestat_irq_mask[pipe];
 	u32 enable_mask = status_mask << 16;
 
 	lockdep_assert_held(&dev_priv->irq_lock);
 
-	if (DISPLAY_VER(dev_priv) < 5)
+	if (DISPLAY_VER(display) < 5)
 		goto out;
 
 	/*
 	 * On pipe A we don't support the PSR interrupt yet,
 	 * on pipe B and C the same bit MBZ.
 	 */
-	if (drm_WARN_ON_ONCE(&dev_priv->drm,
+	if (drm_WARN_ON_ONCE(display->drm,
 			     status_mask & PIPE_A_PSR_STATUS_VLV))
 		return 0;
 	/*
 	 * On pipe B and C we don't support the PSR interrupt yet, on pipe
 	 * A the same bit is for perf counters which we don't use either.
 	 */
-	if (drm_WARN_ON_ONCE(&dev_priv->drm,
+	if (drm_WARN_ON_ONCE(display->drm,
 			     status_mask & PIPE_B_PSR_STATUS_VLV))
 		return 0;
 
@@ -261,7 +262,7 @@ u32 i915_pipestat_enable_mask(struct drm_i915_private *dev_priv,
 		enable_mask |= SPRITE1_FLIP_DONE_INT_EN_VLV;
 
 out:
-	drm_WARN_ONCE(&dev_priv->drm,
+	drm_WARN_ONCE(display->drm,
 		      enable_mask & ~PIPESTAT_INT_ENABLE_MASK ||
 		      status_mask & ~PIPESTAT_INT_STATUS_MASK,
 		      "pipe %c: enable_mask=0x%x, status_mask=0x%x\n",
@@ -288,7 +289,7 @@ void i915_enable_pipestat(struct drm_i915_private *dev_priv,
 		return;
 
 	dev_priv->display.irq.pipestat_irq_mask[pipe] |= status_mask;
-	enable_mask = i915_pipestat_enable_mask(dev_priv, pipe);
+	enable_mask = i915_pipestat_enable_mask(display, pipe);
 
 	intel_de_write(display, reg, enable_mask | status_mask);
 	intel_de_posting_read(display, reg);
@@ -312,7 +313,7 @@ void i915_disable_pipestat(struct drm_i915_private *dev_priv,
 		return;
 
 	dev_priv->display.irq.pipestat_irq_mask[pipe] &= ~status_mask;
-	enable_mask = i915_pipestat_enable_mask(dev_priv, pipe);
+	enable_mask = i915_pipestat_enable_mask(display, pipe);
 
 	intel_de_write(display, reg, enable_mask | status_mask);
 	intel_de_posting_read(display, reg);
@@ -525,7 +526,7 @@ void i9xx_pipestat_irq_ack(struct drm_i915_private *dev_priv,
 
 		reg = PIPESTAT(dev_priv, pipe);
 		pipe_stats[pipe] = intel_de_read(display, reg) & status_mask;
-		enable_mask = i915_pipestat_enable_mask(dev_priv, pipe);
+		enable_mask = i915_pipestat_enable_mask(display, pipe);
 
 		/*
 		 * Clear the PIPE*STAT regs before the IIR
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
index b077712b7be1..75ab38a0908e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.h
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
@@ -11,8 +11,9 @@
 #include "intel_display_limits.h"
 
 enum pipe;
-struct drm_i915_private;
 struct drm_crtc;
+struct drm_i915_private;
+struct intel_display;
 
 void valleyview_enable_display_irqs(struct drm_i915_private *i915);
 void valleyview_disable_display_irqs(struct drm_i915_private *i915);
@@ -64,7 +65,7 @@ void gen8_de_irq_postinstall(struct drm_i915_private *i915);
 void gen11_de_irq_postinstall(struct drm_i915_private *i915);
 void dg1_de_irq_postinstall(struct drm_i915_private *i915);
 
-u32 i915_pipestat_enable_mask(struct drm_i915_private *i915, enum pipe pipe);
+u32 i915_pipestat_enable_mask(struct intel_display *display, enum pipe pipe);
 void i915_enable_pipestat(struct drm_i915_private *i915, enum pipe pipe, u32 status_mask);
 void i915_disable_pipestat(struct drm_i915_private *i915, enum pipe pipe, u32 status_mask);
 void i915_enable_asle_pipestat(struct drm_i915_private *i915);
diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
index 14b00988a81f..7a8fbff39be0 100644
--- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
+++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
@@ -103,7 +103,7 @@ static void i9xx_check_fifo_underruns(struct intel_crtc *crtc)
 	if ((intel_de_read(display, reg) & PIPE_FIFO_UNDERRUN_STATUS) == 0)
 		return;
 
-	enable_mask = i915_pipestat_enable_mask(dev_priv, crtc->pipe);
+	enable_mask = i915_pipestat_enable_mask(display, crtc->pipe);
 	intel_de_write(display, reg, enable_mask | PIPE_FIFO_UNDERRUN_STATUS);
 	intel_de_posting_read(display, reg);
 
@@ -121,7 +121,7 @@ static void i9xx_set_fifo_underrun_reporting(struct intel_display *display,
 	lockdep_assert_held(&dev_priv->irq_lock);
 
 	if (enable) {
-		u32 enable_mask = i915_pipestat_enable_mask(dev_priv, pipe);
+		u32 enable_mask = i915_pipestat_enable_mask(display, pipe);
 
 		intel_de_write(display, reg,
 			       enable_mask | PIPE_FIFO_UNDERRUN_STATUS);
-- 
2.39.5

