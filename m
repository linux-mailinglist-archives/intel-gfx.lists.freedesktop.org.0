Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F276CAAC534
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 15:07:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8872210E69C;
	Tue,  6 May 2025 13:07:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lMg9iGep";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F120710E69C;
 Tue,  6 May 2025 13:07:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746536849; x=1778072849;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YW6Nm16fdp2a80K5mhctFjaG3nX2CUCznMlPAAfQ9kY=;
 b=lMg9iGeppFstSIqLQf7yvNpwJ19HnavA1xHTtao0HRZtruTycck43RTX
 Wsw2GOv99JkG4V8nB2BbfWYOy6Nz6sqyd2t88p/KVwfCtEXR6CGi3iJOC
 s6zovl3Cj8U82WH7C3GrOnsy03OOW26e0nVeg4nRMDQOZfZf04a3Fet+D
 vxg7wVJ9XuJyAJnmeXmeyH2PxvyrmuEkvPiOqbuA1pRs5JBfuzVItbGoa
 dY9Jl2Ls6i4rdwDJb0mjQu62sI0B7xl1NBvCj87hjM4D54TsKZli4nWEG
 lIIfYIujfIstZdRezwKFu9eXuRuEQXZOckB0CaYI3PgZncAWgHT+ctgez Q==;
X-CSE-ConnectionGUID: 9hofyelDT8OoRYVVgPGwuw==
X-CSE-MsgGUID: jNykuJHqR9+uRVH0b+k2dQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="70708608"
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="70708608"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 06:07:28 -0700
X-CSE-ConnectionGUID: urAeeG7aRNOQ7IrWA3WY1w==
X-CSE-MsgGUID: WqR7B5RhQqGd224p66x/UQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="136116469"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.221])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 06:07:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 8/8] drm/i915/irq: move i915->irq_lock to display->irq.lock
Date: Tue,  6 May 2025 16:06:50 +0300
Message-Id: <6d8d2ce0f34a9c7361a5e2fcf96bb32a34c57e76.1746536745.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1746536745.git.jani.nikula@intel.com>
References: <cover.1746536745.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Observe that i915->irq_lock is no longer used to protect anything
outside of display. Make it a display thing.

This allows us to remove the ugly #define irq_lock irq.lock hack from xe
compat header.

Note that this is slightly more subtle than it first looks. For i915,
there's no functional change here. The lock is moved. However, for xe,
we'll now have *two* locks, xe->irq.lock and display->irq.lock. These
should protect different things, though. Indeed, nesting in the past
would've lead to a deadlock because they were the same lock.

With the i915 references gone, we can make a handful more files
independent of i915_drv.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c     |  43 +++---
 .../gpu/drm/i915/display/intel_display_core.h |   3 +
 .../gpu/drm/i915/display/intel_display_irq.c  | 114 +++++++---------
 .../gpu/drm/i915/display/intel_display_rps.c  |  12 +-
 .../drm/i915/display/intel_display_types.h    |   2 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  10 +-
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c  |   9 +-
 .../drm/i915/display/intel_fifo_underrun.c    |  44 +++---
 drivers/gpu/drm/i915/display/intel_hotplug.c  | 129 +++++++-----------
 .../gpu/drm/i915/display/intel_hotplug_irq.c  |  22 ++-
 drivers/gpu/drm/i915/display/intel_tv.c       |  14 +-
 .../drm/i915/display/skl_universal_plane.c    |  10 +-
 drivers/gpu/drm/i915/i915_driver.c            |   1 -
 drivers/gpu/drm/i915/i915_drv.h               |   2 -
 .../gpu/drm/xe/compat-i915-headers/i915_drv.h |  11 --
 15 files changed, 168 insertions(+), 258 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 5e8344fdfc28..83778a6ff007 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -7,9 +7,10 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_blend.h>
 #include <drm/drm_fourcc.h>
+#include <drm/drm_print.h>
 
-#include "i915_drv.h"
 #include "i915_reg.h"
+#include "i915_utils.h"
 #include "i9xx_plane.h"
 #include "i9xx_plane_regs.h"
 #include "intel_atomic.h"
@@ -631,92 +632,84 @@ static void
 bdw_primary_enable_flip_done(struct intel_plane *plane)
 {
 	struct intel_display *display = to_intel_display(plane);
-	struct drm_i915_private *i915 = to_i915(plane->base.dev);
 	enum pipe pipe = plane->pipe;
 
-	spin_lock_irq(&i915->irq_lock);
+	spin_lock_irq(&display->irq.lock);
 	bdw_enable_pipe_irq(display, pipe, GEN8_PIPE_PRIMARY_FLIP_DONE);
-	spin_unlock_irq(&i915->irq_lock);
+	spin_unlock_irq(&display->irq.lock);
 }
 
 static void
 bdw_primary_disable_flip_done(struct intel_plane *plane)
 {
 	struct intel_display *display = to_intel_display(plane);
-	struct drm_i915_private *i915 = to_i915(plane->base.dev);
 	enum pipe pipe = plane->pipe;
 
-	spin_lock_irq(&i915->irq_lock);
+	spin_lock_irq(&display->irq.lock);
 	bdw_disable_pipe_irq(display, pipe, GEN8_PIPE_PRIMARY_FLIP_DONE);
-	spin_unlock_irq(&i915->irq_lock);
+	spin_unlock_irq(&display->irq.lock);
 }
 
 static void
 ivb_primary_enable_flip_done(struct intel_plane *plane)
 {
 	struct intel_display *display = to_intel_display(plane);
-	struct drm_i915_private *i915 = to_i915(plane->base.dev);
 
-	spin_lock_irq(&i915->irq_lock);
+	spin_lock_irq(&display->irq.lock);
 	ilk_enable_display_irq(display, DE_PLANE_FLIP_DONE_IVB(plane->i9xx_plane));
-	spin_unlock_irq(&i915->irq_lock);
+	spin_unlock_irq(&display->irq.lock);
 }
 
 static void
 ivb_primary_disable_flip_done(struct intel_plane *plane)
 {
 	struct intel_display *display = to_intel_display(plane);
-	struct drm_i915_private *i915 = to_i915(plane->base.dev);
 
-	spin_lock_irq(&i915->irq_lock);
+	spin_lock_irq(&display->irq.lock);
 	ilk_disable_display_irq(display, DE_PLANE_FLIP_DONE_IVB(plane->i9xx_plane));
-	spin_unlock_irq(&i915->irq_lock);
+	spin_unlock_irq(&display->irq.lock);
 }
 
 static void
 ilk_primary_enable_flip_done(struct intel_plane *plane)
 {
 	struct intel_display *display = to_intel_display(plane);
-	struct drm_i915_private *i915 = to_i915(plane->base.dev);
 
-	spin_lock_irq(&i915->irq_lock);
+	spin_lock_irq(&display->irq.lock);
 	ilk_enable_display_irq(display, DE_PLANE_FLIP_DONE(plane->i9xx_plane));
-	spin_unlock_irq(&i915->irq_lock);
+	spin_unlock_irq(&display->irq.lock);
 }
 
 static void
 ilk_primary_disable_flip_done(struct intel_plane *plane)
 {
 	struct intel_display *display = to_intel_display(plane);
-	struct drm_i915_private *i915 = to_i915(plane->base.dev);
 
-	spin_lock_irq(&i915->irq_lock);
+	spin_lock_irq(&display->irq.lock);
 	ilk_disable_display_irq(display, DE_PLANE_FLIP_DONE(plane->i9xx_plane));
-	spin_unlock_irq(&i915->irq_lock);
+	spin_unlock_irq(&display->irq.lock);
 }
 
 static void
 vlv_primary_enable_flip_done(struct intel_plane *plane)
 {
 	struct intel_display *display = to_intel_display(plane);
-	struct drm_i915_private *i915 = to_i915(plane->base.dev);
 	enum pipe pipe = plane->pipe;
 
-	spin_lock_irq(&i915->irq_lock);
+	spin_lock_irq(&display->irq.lock);
 	i915_enable_pipestat(display, pipe, PLANE_FLIP_DONE_INT_STATUS_VLV);
-	spin_unlock_irq(&i915->irq_lock);
+	spin_unlock_irq(&display->irq.lock);
 }
 
 static void
 vlv_primary_disable_flip_done(struct intel_plane *plane)
 {
 	struct intel_display *display = to_intel_display(plane);
-	struct drm_i915_private *i915 = to_i915(plane->base.dev);
 	enum pipe pipe = plane->pipe;
 
-	spin_lock_irq(&i915->irq_lock);
+	spin_lock_irq(&display->irq.lock);
 	i915_disable_pipestat(display, pipe, PLANE_FLIP_DONE_INT_STATUS_VLV);
-	spin_unlock_irq(&i915->irq_lock);
+	spin_unlock_irq(&display->irq.lock);
 }
 
 static bool i9xx_plane_can_async_flip(u64 modifier)
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index dc834cef75c7..ebbd3618260c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -458,6 +458,9 @@ struct intel_display {
 	} ips;
 
 	struct {
+		/* protects the irq masks */
+		spinlock_t lock;
+
 		/*
 		 * Most platforms treat the display irq block as an always-on
 		 * power domain. vlv/chv can disable it at runtime and need
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 264ddeba121b..3e73832e5e81 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -135,7 +135,7 @@ void ilk_update_display_irq(struct intel_display *display,
 	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 new_val;
 
-	lockdep_assert_held(&dev_priv->irq_lock);
+	lockdep_assert_held(&display->irq.lock);
 	drm_WARN_ON(display->drm, enabled_irq_mask & ~interrupt_mask);
 
 	new_val = dev_priv->irq_mask;
@@ -173,7 +173,7 @@ void bdw_update_port_irq(struct intel_display *display,
 	u32 new_val;
 	u32 old_val;
 
-	lockdep_assert_held(&dev_priv->irq_lock);
+	lockdep_assert_held(&display->irq.lock);
 
 	drm_WARN_ON(display->drm, enabled_irq_mask & ~interrupt_mask);
 
@@ -206,7 +206,7 @@ static void bdw_update_pipe_irq(struct intel_display *display,
 	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 new_val;
 
-	lockdep_assert_held(&dev_priv->irq_lock);
+	lockdep_assert_held(&display->irq.lock);
 
 	drm_WARN_ON(display->drm, enabled_irq_mask & ~interrupt_mask);
 
@@ -254,7 +254,7 @@ void ibx_display_interrupt_update(struct intel_display *display,
 
 	drm_WARN_ON(display->drm, enabled_irq_mask & ~interrupt_mask);
 
-	lockdep_assert_held(&dev_priv->irq_lock);
+	lockdep_assert_held(&display->irq.lock);
 
 	if (drm_WARN_ON(display->drm, !intel_irqs_enabled(dev_priv)))
 		return;
@@ -276,11 +276,10 @@ void ibx_disable_display_interrupt(struct intel_display *display, u32 bits)
 u32 i915_pipestat_enable_mask(struct intel_display *display,
 			      enum pipe pipe)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 status_mask = display->irq.pipestat_irq_mask[pipe];
 	u32 enable_mask = status_mask << 16;
 
-	lockdep_assert_held(&dev_priv->irq_lock);
+	lockdep_assert_held(&display->irq.lock);
 
 	if (DISPLAY_VER(display) < 5)
 		goto out;
@@ -329,7 +328,7 @@ void i915_enable_pipestat(struct intel_display *display,
 		      "pipe %c: status_mask=0x%x\n",
 		      pipe_name(pipe), status_mask);
 
-	lockdep_assert_held(&dev_priv->irq_lock);
+	lockdep_assert_held(&display->irq.lock);
 	drm_WARN_ON(display->drm, !intel_irqs_enabled(dev_priv));
 
 	if ((display->irq.pipestat_irq_mask[pipe] & status_mask) == status_mask)
@@ -353,7 +352,7 @@ void i915_disable_pipestat(struct intel_display *display,
 		      "pipe %c: status_mask=0x%x\n",
 		      pipe_name(pipe), status_mask);
 
-	lockdep_assert_held(&dev_priv->irq_lock);
+	lockdep_assert_held(&display->irq.lock);
 	drm_WARN_ON(display->drm, !intel_irqs_enabled(dev_priv));
 
 	if ((display->irq.pipestat_irq_mask[pipe] & status_mask) == 0)
@@ -380,22 +379,20 @@ static bool i915_has_legacy_blc_interrupt(struct intel_display *display)
 /* enable ASLE pipestat for OpRegion */
 static void i915_enable_asle_pipestat(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
-
 	if (!intel_opregion_asle_present(display))
 		return;
 
 	if (!i915_has_legacy_blc_interrupt(display))
 		return;
 
-	spin_lock_irq(&dev_priv->irq_lock);
+	spin_lock_irq(&display->irq.lock);
 
 	i915_enable_pipestat(display, PIPE_B, PIPE_LEGACY_BLC_EVENT_STATUS);
 	if (DISPLAY_VER(display) >= 4)
 		i915_enable_pipestat(display, PIPE_A,
 				     PIPE_LEGACY_BLC_EVENT_STATUS);
 
-	spin_unlock_irq(&dev_priv->irq_lock);
+	spin_unlock_irq(&display->irq.lock);
 }
 
 #if IS_ENABLED(CONFIG_DEBUG_FS)
@@ -514,14 +511,13 @@ static void i9xx_pipestat_irq_reset(struct intel_display *display)
 void i9xx_pipestat_irq_ack(struct intel_display *display,
 			   u32 iir, u32 pipe_stats[I915_MAX_PIPES])
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum pipe pipe;
 
-	spin_lock(&dev_priv->irq_lock);
+	spin_lock(&display->irq.lock);
 
 	if ((display->platform.valleyview || display->platform.cherryview) &&
 	    !display->irq.vlv_display_irqs_enabled) {
-		spin_unlock(&dev_priv->irq_lock);
+		spin_unlock(&display->irq.lock);
 		return;
 	}
 
@@ -576,7 +572,7 @@ void i9xx_pipestat_irq_ack(struct intel_display *display,
 			intel_de_write(display, reg, enable_mask);
 		}
 	}
-	spin_unlock(&dev_priv->irq_lock);
+	spin_unlock(&display->irq.lock);
 }
 
 void i915_pipestat_irq_handler(struct intel_display *display,
@@ -1566,13 +1562,12 @@ void i915gm_irq_cstate_wa(struct intel_display *display, bool enable)
 int i8xx_enable_vblank(struct drm_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(crtc->dev);
-	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
 	enum pipe pipe = to_intel_crtc(crtc)->pipe;
 	unsigned long irqflags;
 
-	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
+	spin_lock_irqsave(&display->irq.lock, irqflags);
 	i915_enable_pipestat(display, pipe, PIPE_VBLANK_INTERRUPT_STATUS);
-	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
+	spin_unlock_irqrestore(&display->irq.lock, irqflags);
 
 	return 0;
 }
@@ -1580,13 +1575,12 @@ int i8xx_enable_vblank(struct drm_crtc *crtc)
 void i8xx_disable_vblank(struct drm_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(crtc->dev);
-	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
 	enum pipe pipe = to_intel_crtc(crtc)->pipe;
 	unsigned long irqflags;
 
-	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
+	spin_lock_irqsave(&display->irq.lock, irqflags);
 	i915_disable_pipestat(display, pipe, PIPE_VBLANK_INTERRUPT_STATUS);
-	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
+	spin_unlock_irqrestore(&display->irq.lock, irqflags);
 }
 
 int i915gm_enable_vblank(struct drm_crtc *crtc)
@@ -1610,14 +1604,13 @@ void i915gm_disable_vblank(struct drm_crtc *crtc)
 int i965_enable_vblank(struct drm_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(crtc->dev);
-	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
 	enum pipe pipe = to_intel_crtc(crtc)->pipe;
 	unsigned long irqflags;
 
-	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
+	spin_lock_irqsave(&display->irq.lock, irqflags);
 	i915_enable_pipestat(display, pipe,
 			     PIPE_START_VBLANK_INTERRUPT_STATUS);
-	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
+	spin_unlock_irqrestore(&display->irq.lock, irqflags);
 
 	return 0;
 }
@@ -1625,28 +1618,26 @@ int i965_enable_vblank(struct drm_crtc *crtc)
 void i965_disable_vblank(struct drm_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(crtc->dev);
-	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
 	enum pipe pipe = to_intel_crtc(crtc)->pipe;
 	unsigned long irqflags;
 
-	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
+	spin_lock_irqsave(&display->irq.lock, irqflags);
 	i915_disable_pipestat(display, pipe,
 			      PIPE_START_VBLANK_INTERRUPT_STATUS);
-	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
+	spin_unlock_irqrestore(&display->irq.lock, irqflags);
 }
 
 int ilk_enable_vblank(struct drm_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(crtc->dev);
-	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
 	enum pipe pipe = to_intel_crtc(crtc)->pipe;
 	unsigned long irqflags;
 	u32 bit = DISPLAY_VER(display) >= 7 ?
 		DE_PIPE_VBLANK_IVB(pipe) : DE_PIPE_VBLANK(pipe);
 
-	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
+	spin_lock_irqsave(&display->irq.lock, irqflags);
 	ilk_enable_display_irq(display, bit);
-	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
+	spin_unlock_irqrestore(&display->irq.lock, irqflags);
 
 	/* Even though there is no DMC, frame counter can get stuck when
 	 * PSR is active as no frames are generated.
@@ -1660,15 +1651,14 @@ int ilk_enable_vblank(struct drm_crtc *crtc)
 void ilk_disable_vblank(struct drm_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(crtc->dev);
-	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
 	enum pipe pipe = to_intel_crtc(crtc)->pipe;
 	unsigned long irqflags;
 	u32 bit = DISPLAY_VER(display) >= 7 ?
 		DE_PIPE_VBLANK_IVB(pipe) : DE_PIPE_VBLANK(pipe);
 
-	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
+	spin_lock_irqsave(&display->irq.lock, irqflags);
 	ilk_disable_display_irq(display, bit);
-	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
+	spin_unlock_irqrestore(&display->irq.lock, irqflags);
 }
 
 static bool gen11_dsi_configure_te(struct intel_crtc *intel_crtc,
@@ -1707,7 +1697,6 @@ int bdw_enable_vblank(struct drm_crtc *_crtc)
 {
 	struct intel_crtc *crtc = to_intel_crtc(_crtc);
 	struct intel_display *display = to_intel_display(crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 	unsigned long irqflags;
 
@@ -1717,9 +1706,9 @@ int bdw_enable_vblank(struct drm_crtc *_crtc)
 	if (crtc->vblank_psr_notify && display->irq.vblank_enable_count++ == 0)
 		schedule_work(&display->irq.vblank_notify_work);
 
-	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
+	spin_lock_irqsave(&display->irq.lock, irqflags);
 	bdw_enable_pipe_irq(display, pipe, GEN8_PIPE_VBLANK);
-	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
+	spin_unlock_irqrestore(&display->irq.lock, irqflags);
 
 	/* Even if there is no DMC, frame counter can get stuck when
 	 * PSR is active as no frames are generated, so check only for PSR.
@@ -1734,16 +1723,15 @@ void bdw_disable_vblank(struct drm_crtc *_crtc)
 {
 	struct intel_crtc *crtc = to_intel_crtc(_crtc);
 	struct intel_display *display = to_intel_display(crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 	unsigned long irqflags;
 
 	if (gen11_dsi_configure_te(crtc, false))
 		return;
 
-	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
+	spin_lock_irqsave(&display->irq.lock, irqflags);
 	bdw_disable_pipe_irq(display, pipe, GEN8_PIPE_VBLANK);
-	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
+	spin_unlock_irqrestore(&display->irq.lock, irqflags);
 
 	if (crtc->vblank_psr_notify && --display->irq.vblank_enable_count == 0)
 		schedule_work(&display->irq.vblank_notify_work);
@@ -1880,12 +1868,10 @@ static void _vlv_display_irq_reset(struct intel_display *display)
 
 void vlv_display_irq_reset(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
-
-	spin_lock_irq(&dev_priv->irq_lock);
+	spin_lock_irq(&display->irq.lock);
 	if (display->irq.vlv_display_irqs_enabled)
 		_vlv_display_irq_reset(display);
-	spin_unlock_irq(&dev_priv->irq_lock);
+	spin_unlock_irq(&display->irq.lock);
 }
 
 void i9xx_display_irq_reset(struct intel_display *display)
@@ -1900,33 +1886,29 @@ void i9xx_display_irq_reset(struct intel_display *display)
 
 void i915_display_irq_postinstall(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
-
 	/*
 	 * Interrupt setup is already guaranteed to be single-threaded, this is
 	 * just to make the assert_spin_locked check happy.
 	 */
-	spin_lock_irq(&dev_priv->irq_lock);
+	spin_lock_irq(&display->irq.lock);
 	i915_enable_pipestat(display, PIPE_A, PIPE_CRC_DONE_INTERRUPT_STATUS);
 	i915_enable_pipestat(display, PIPE_B, PIPE_CRC_DONE_INTERRUPT_STATUS);
-	spin_unlock_irq(&dev_priv->irq_lock);
+	spin_unlock_irq(&display->irq.lock);
 
 	i915_enable_asle_pipestat(display);
 }
 
 void i965_display_irq_postinstall(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
-
 	/*
 	 * Interrupt setup is already guaranteed to be single-threaded, this is
 	 * just to make the assert_spin_locked check happy.
 	 */
-	spin_lock_irq(&dev_priv->irq_lock);
+	spin_lock_irq(&display->irq.lock);
 	i915_enable_pipestat(display, PIPE_A, PIPE_GMBUS_INTERRUPT_STATUS);
 	i915_enable_pipestat(display, PIPE_A, PIPE_CRC_DONE_INTERRUPT_STATUS);
 	i915_enable_pipestat(display, PIPE_B, PIPE_CRC_DONE_INTERRUPT_STATUS);
-	spin_unlock_irq(&dev_priv->irq_lock);
+	spin_unlock_irq(&display->irq.lock);
 
 	i915_enable_asle_pipestat(display);
 }
@@ -1982,12 +1964,10 @@ static void _vlv_display_irq_postinstall(struct intel_display *display)
 
 void vlv_display_irq_postinstall(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
-
-	spin_lock_irq(&dev_priv->irq_lock);
+	spin_lock_irq(&display->irq.lock);
 	if (display->irq.vlv_display_irqs_enabled)
 		_vlv_display_irq_postinstall(display);
-	spin_unlock_irq(&dev_priv->irq_lock);
+	spin_unlock_irq(&display->irq.lock);
 }
 
 void ibx_display_irq_reset(struct intel_display *display)
@@ -2084,10 +2064,10 @@ void gen8_irq_power_well_post_enable(struct intel_display *display,
 		gen8_de_pipe_flip_done_mask(display);
 	enum pipe pipe;
 
-	spin_lock_irq(&dev_priv->irq_lock);
+	spin_lock_irq(&display->irq.lock);
 
 	if (!intel_irqs_enabled(dev_priv)) {
-		spin_unlock_irq(&dev_priv->irq_lock);
+		spin_unlock_irq(&display->irq.lock);
 		return;
 	}
 
@@ -2096,7 +2076,7 @@ void gen8_irq_power_well_post_enable(struct intel_display *display,
 					    display->irq.de_irq_mask[pipe],
 					    ~display->irq.de_irq_mask[pipe] | extra_ier);
 
-	spin_unlock_irq(&dev_priv->irq_lock);
+	spin_unlock_irq(&display->irq.lock);
 }
 
 void gen8_irq_power_well_pre_disable(struct intel_display *display,
@@ -2105,17 +2085,17 @@ void gen8_irq_power_well_pre_disable(struct intel_display *display,
 	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum pipe pipe;
 
-	spin_lock_irq(&dev_priv->irq_lock);
+	spin_lock_irq(&display->irq.lock);
 
 	if (!intel_irqs_enabled(dev_priv)) {
-		spin_unlock_irq(&dev_priv->irq_lock);
+		spin_unlock_irq(&display->irq.lock);
 		return;
 	}
 
 	for_each_pipe_masked(display, pipe, pipe_mask)
 		intel_display_irq_regs_reset(display, GEN8_DE_PIPE_IRQ_REGS(pipe));
 
-	spin_unlock_irq(&dev_priv->irq_lock);
+	spin_unlock_irq(&display->irq.lock);
 
 	/* make sure we're done processing display irqs */
 	intel_synchronize_irq(dev_priv);
@@ -2153,7 +2133,7 @@ void valleyview_enable_display_irqs(struct intel_display *display)
 {
 	struct drm_i915_private *dev_priv = to_i915(display->drm);
 
-	spin_lock_irq(&dev_priv->irq_lock);
+	spin_lock_irq(&display->irq.lock);
 
 	if (display->irq.vlv_display_irqs_enabled)
 		goto out;
@@ -2166,14 +2146,14 @@ void valleyview_enable_display_irqs(struct intel_display *display)
 	}
 
 out:
-	spin_unlock_irq(&dev_priv->irq_lock);
+	spin_unlock_irq(&display->irq.lock);
 }
 
 void valleyview_disable_display_irqs(struct intel_display *display)
 {
 	struct drm_i915_private *dev_priv = to_i915(display->drm);
 
-	spin_lock_irq(&dev_priv->irq_lock);
+	spin_lock_irq(&display->irq.lock);
 
 	if (!display->irq.vlv_display_irqs_enabled)
 		goto out;
@@ -2183,7 +2163,7 @@ void valleyview_disable_display_irqs(struct intel_display *display)
 	if (intel_irqs_enabled(dev_priv))
 		_vlv_display_irq_reset(display);
 out:
-	spin_unlock_irq(&dev_priv->irq_lock);
+	spin_unlock_irq(&display->irq.lock);
 }
 
 void ilk_de_irq_postinstall(struct intel_display *display)
@@ -2371,6 +2351,8 @@ void dg1_de_irq_postinstall(struct intel_display *display)
 
 void intel_display_irq_init(struct intel_display *display)
 {
+	spin_lock_init(&display->irq.lock);
+
 	display->drm->vblank_disable_immediate = true;
 
 	intel_hotplug_irq_init(display);
diff --git a/drivers/gpu/drm/i915/display/intel_display_rps.c b/drivers/gpu/drm/i915/display/intel_display_rps.c
index 941bff5a5eb0..678b24115951 100644
--- a/drivers/gpu/drm/i915/display/intel_display_rps.c
+++ b/drivers/gpu/drm/i915/display/intel_display_rps.c
@@ -86,20 +86,16 @@ void intel_display_rps_mark_interactive(struct intel_display *display,
 
 void ilk_display_rps_enable(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
-	spin_lock(&i915->irq_lock);
+	spin_lock(&display->irq.lock);
 	ilk_enable_display_irq(display, DE_PCU_EVENT);
-	spin_unlock(&i915->irq_lock);
+	spin_unlock(&display->irq.lock);
 }
 
 void ilk_display_rps_disable(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
-	spin_lock(&i915->irq_lock);
+	spin_lock(&display->irq.lock);
 	ilk_disable_display_irq(display, DE_PCU_EVENT);
-	spin_unlock(&i915->irq_lock);
+	spin_unlock(&display->irq.lock);
 }
 
 void ilk_display_rps_irq_handler(struct intel_display *display)
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 7415564d058a..d6d0440dcee9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1388,7 +1388,7 @@ struct intel_crtc {
 	/* armed event for DSB based updates */
 	struct drm_pending_vblank_event *dsb_event;
 
-	/* Access to these should be protected by dev_priv->irq_lock. */
+	/* Access to these should be protected by display->irq.lock. */
 	bool cpu_fifo_underrun_disabled;
 	bool pch_fifo_underrun_disabled;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index b299b5d8b68e..593b29b56714 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -45,12 +45,13 @@
 #include <drm/drm_crtc.h>
 #include <drm/drm_edid.h>
 #include <drm/drm_fixed.h>
+#include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
 
 #include "g4x_dp.h"
-#include "i915_drv.h"
 #include "i915_irq.h"
 #include "i915_reg.h"
+#include "i915_utils.h"
 #include "intel_alpm.h"
 #include "intel_atomic.h"
 #include "intel_audio.h"
@@ -58,6 +59,7 @@
 #include "intel_combo_phy_regs.h"
 #include "intel_connector.h"
 #include "intel_crtc.h"
+#include "intel_crtc_state_dump.h"
 #include "intel_cx0_phy.h"
 #include "intel_ddi.h"
 #include "intel_de.h"
@@ -92,7 +94,6 @@
 #include "intel_tc.h"
 #include "intel_vdsc.h"
 #include "intel_vrr.h"
-#include "intel_crtc_state_dump.h"
 
 /* DP DSC throughput values used for slice count calculations KPixels/s */
 #define DP_DSC_PEAK_PIXEL_RATE			2720000
@@ -6219,12 +6220,11 @@ static void intel_dp_oob_hotplug_event(struct drm_connector *_connector,
 	struct intel_connector *connector = to_intel_connector(_connector);
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_encoder *encoder = intel_attached_encoder(connector);
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	bool hpd_high = hpd_state == connector_status_connected;
 	unsigned int hpd_pin = encoder->hpd_pin;
 	bool need_work = false;
 
-	spin_lock_irq(&i915->irq_lock);
+	spin_lock_irq(&display->irq.lock);
 	if (hpd_high != test_bit(hpd_pin, &display->hotplug.oob_hotplug_last_state)) {
 		display->hotplug.event_bits |= BIT(hpd_pin);
 
@@ -6233,7 +6233,7 @@ static void intel_dp_oob_hotplug_event(struct drm_connector *_connector,
 			     hpd_high);
 		need_work = true;
 	}
-	spin_unlock_irq(&i915->irq_lock);
+	spin_unlock_irq(&display->irq.lock);
 
 	if (need_work)
 		intel_hpd_schedule_detection(display);
diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index 4e92504f5c14..29c920983413 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -31,16 +31,16 @@
 #include <linux/pinctrl/machine.h>
 #include <linux/slab.h>
 #include <linux/string_helpers.h>
-
 #include <linux/unaligned.h>
 
 #include <drm/drm_crtc.h>
 #include <drm/drm_edid.h>
+#include <drm/drm_print.h>
 
 #include <video/mipi_display.h>
 
-#include "i915_drv.h"
 #include "i915_reg.h"
+#include "i915_utils.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dsi.h"
@@ -321,7 +321,6 @@ enum {
 static void icl_native_gpio_set_value(struct intel_display *display,
 				      int gpio, bool value)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	int index;
 
 	if (drm_WARN_ON(display->drm, DISPLAY_VER(display) == 11 && gpio >= MIPI_RESET_2))
@@ -341,12 +340,12 @@ static void icl_native_gpio_set_value(struct intel_display *display,
 		 * The locking protects against concurrent SHOTPLUG_CTL_DDI
 		 * modifications in irq setup and handling.
 		 */
-		spin_lock_irq(&dev_priv->irq_lock);
+		spin_lock_irq(&display->irq.lock);
 		intel_de_rmw(display, SHOTPLUG_CTL_DDI,
 			     SHOTPLUG_CTL_DDI_HPD_ENABLE(index) |
 			     SHOTPLUG_CTL_DDI_HPD_OUTPUT_DATA(index),
 			     value ? SHOTPLUG_CTL_DDI_HPD_OUTPUT_DATA(index) : 0);
-		spin_unlock_irq(&dev_priv->irq_lock);
+		spin_unlock_irq(&display->irq.lock);
 		break;
 	case MIPI_AVDD_EN_1:
 	case MIPI_AVDD_EN_2:
diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
index 7c7cd29b0944..2a787897b2d3 100644
--- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
+++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
@@ -25,7 +25,8 @@
  *
  */
 
-#include "i915_drv.h"
+#include <drm/drm_print.h>
+
 #include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_display_irq.h"
@@ -57,11 +58,10 @@
 
 static bool ivb_can_enable_err_int(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_crtc *crtc;
 	enum pipe pipe;
 
-	lockdep_assert_held(&dev_priv->irq_lock);
+	lockdep_assert_held(&display->irq.lock);
 
 	for_each_pipe(display, pipe) {
 		crtc = intel_crtc_for_pipe(display, pipe);
@@ -75,11 +75,10 @@ static bool ivb_can_enable_err_int(struct intel_display *display)
 
 static bool cpt_can_enable_serr_int(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum pipe pipe;
 	struct intel_crtc *crtc;
 
-	lockdep_assert_held(&dev_priv->irq_lock);
+	lockdep_assert_held(&display->irq.lock);
 
 	for_each_pipe(display, pipe) {
 		crtc = intel_crtc_for_pipe(display, pipe);
@@ -94,11 +93,10 @@ static bool cpt_can_enable_serr_int(struct intel_display *display)
 static void i9xx_check_fifo_underruns(struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	i915_reg_t reg = PIPESTAT(display, crtc->pipe);
 	u32 enable_mask;
 
-	lockdep_assert_held(&dev_priv->irq_lock);
+	lockdep_assert_held(&display->irq.lock);
 
 	if ((intel_de_read(display, reg) & PIPE_FIFO_UNDERRUN_STATUS) == 0)
 		return;
@@ -115,10 +113,9 @@ static void i9xx_set_fifo_underrun_reporting(struct intel_display *display,
 					     enum pipe pipe,
 					     bool enable, bool old)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	i915_reg_t reg = PIPESTAT(display, pipe);
 
-	lockdep_assert_held(&dev_priv->irq_lock);
+	lockdep_assert_held(&display->irq.lock);
 
 	if (enable) {
 		u32 enable_mask = i915_pipestat_enable_mask(display, pipe);
@@ -148,11 +145,10 @@ static void ilk_set_fifo_underrun_reporting(struct intel_display *display,
 static void ivb_check_fifo_underruns(struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 	u32 err_int = intel_de_read(display, GEN7_ERR_INT);
 
-	lockdep_assert_held(&dev_priv->irq_lock);
+	lockdep_assert_held(&display->irq.lock);
 
 	if ((err_int & ERR_INT_FIFO_UNDERRUN(pipe)) == 0)
 		return;
@@ -213,11 +209,10 @@ static void ibx_set_fifo_underrun_reporting(struct intel_display *display,
 static void cpt_check_pch_fifo_underruns(struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pch_transcoder = crtc->pipe;
 	u32 serr_int = intel_de_read(display, SERR_INT);
 
-	lockdep_assert_held(&dev_priv->irq_lock);
+	lockdep_assert_held(&display->irq.lock);
 
 	if ((serr_int & SERR_INT_TRANS_FIFO_UNDERRUN(pch_transcoder)) == 0)
 		return;
@@ -258,11 +253,10 @@ static void cpt_set_fifo_underrun_reporting(struct intel_display *display,
 static bool __intel_set_cpu_fifo_underrun_reporting(struct intel_display *display,
 						    enum pipe pipe, bool enable)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
 	bool old;
 
-	lockdep_assert_held(&dev_priv->irq_lock);
+	lockdep_assert_held(&display->irq.lock);
 
 	old = !crtc->cpu_fifo_underrun_disabled;
 	crtc->cpu_fifo_underrun_disabled = !enable;
@@ -298,13 +292,12 @@ static bool __intel_set_cpu_fifo_underrun_reporting(struct intel_display *displa
 bool intel_set_cpu_fifo_underrun_reporting(struct intel_display *display,
 					   enum pipe pipe, bool enable)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	unsigned long flags;
 	bool ret;
 
-	spin_lock_irqsave(&dev_priv->irq_lock, flags);
+	spin_lock_irqsave(&display->irq.lock, flags);
 	ret = __intel_set_cpu_fifo_underrun_reporting(display, pipe, enable);
-	spin_unlock_irqrestore(&dev_priv->irq_lock, flags);
+	spin_unlock_irqrestore(&display->irq.lock, flags);
 
 	return ret;
 }
@@ -327,7 +320,6 @@ bool intel_set_pch_fifo_underrun_reporting(struct intel_display *display,
 					   enum pipe pch_transcoder,
 					   bool enable)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_crtc *crtc = intel_crtc_for_pipe(display, pch_transcoder);
 	unsigned long flags;
 	bool old;
@@ -341,7 +333,7 @@ bool intel_set_pch_fifo_underrun_reporting(struct intel_display *display,
 	 * crtc on LPT won't cause issues.
 	 */
 
-	spin_lock_irqsave(&dev_priv->irq_lock, flags);
+	spin_lock_irqsave(&display->irq.lock, flags);
 
 	old = !crtc->pch_fifo_underrun_disabled;
 	crtc->pch_fifo_underrun_disabled = !enable;
@@ -355,7 +347,7 @@ bool intel_set_pch_fifo_underrun_reporting(struct intel_display *display,
 						pch_transcoder,
 						enable, old);
 
-	spin_unlock_irqrestore(&dev_priv->irq_lock, flags);
+	spin_unlock_irqrestore(&display->irq.lock, flags);
 	return old;
 }
 
@@ -422,10 +414,9 @@ void intel_pch_fifo_underrun_irq_handler(struct intel_display *display,
  */
 void intel_check_cpu_fifo_underruns(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_crtc *crtc;
 
-	spin_lock_irq(&dev_priv->irq_lock);
+	spin_lock_irq(&display->irq.lock);
 
 	for_each_intel_crtc(display->drm, crtc) {
 		if (crtc->cpu_fifo_underrun_disabled)
@@ -437,7 +428,7 @@ void intel_check_cpu_fifo_underruns(struct intel_display *display)
 			ivb_check_fifo_underruns(crtc);
 	}
 
-	spin_unlock_irq(&dev_priv->irq_lock);
+	spin_unlock_irq(&display->irq.lock);
 }
 
 /**
@@ -450,10 +441,9 @@ void intel_check_cpu_fifo_underruns(struct intel_display *display)
  */
 void intel_check_pch_fifo_underruns(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_crtc *crtc;
 
-	spin_lock_irq(&dev_priv->irq_lock);
+	spin_lock_irq(&display->irq.lock);
 
 	for_each_intel_crtc(display->drm, crtc) {
 		if (crtc->pch_fifo_underrun_disabled)
@@ -463,7 +453,7 @@ void intel_check_pch_fifo_underruns(struct intel_display *display)
 			cpt_check_pch_fifo_underruns(crtc);
 	}
 
-	spin_unlock_irq(&dev_priv->irq_lock);
+	spin_unlock_irq(&display->irq.lock);
 }
 
 void intel_init_fifo_underrun_reporting(struct intel_display *display,
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index 6885e5a09079..fc5d8928c37e 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -183,9 +183,7 @@ static bool intel_hpd_irq_storm_detect(struct intel_display *display,
 
 static bool detection_work_enabled(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
-	lockdep_assert_held(&i915->irq_lock);
+	lockdep_assert_held(&display->irq.lock);
 
 	return display->hotplug.detection_work_enabled;
 }
@@ -195,7 +193,7 @@ mod_delayed_detection_work(struct intel_display *display, struct delayed_work *w
 {
 	struct drm_i915_private *i915 = to_i915(display->drm);
 
-	lockdep_assert_held(&i915->irq_lock);
+	lockdep_assert_held(&display->irq.lock);
 
 	if (!detection_work_enabled(display))
 		return false;
@@ -208,7 +206,7 @@ queue_delayed_detection_work(struct intel_display *display, struct delayed_work
 {
 	struct drm_i915_private *i915 = to_i915(display->drm);
 
-	lockdep_assert_held(&i915->irq_lock);
+	lockdep_assert_held(&display->irq.lock);
 
 	if (!detection_work_enabled(display))
 		return false;
@@ -221,7 +219,7 @@ queue_detection_work(struct intel_display *display, struct work_struct *work)
 {
 	struct drm_i915_private *i915 = to_i915(display->drm);
 
-	lockdep_assert_held(&i915->irq_lock);
+	lockdep_assert_held(&display->irq.lock);
 
 	if (!detection_work_enabled(display))
 		return false;
@@ -232,12 +230,11 @@ queue_detection_work(struct intel_display *display, struct work_struct *work)
 static void
 intel_hpd_irq_storm_switch_to_polling(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct drm_connector_list_iter conn_iter;
 	struct intel_connector *connector;
 	bool hpd_disabled = false;
 
-	lockdep_assert_held(&dev_priv->irq_lock);
+	lockdep_assert_held(&display->irq.lock);
 
 	drm_connector_list_iter_begin(display->drm, &conn_iter);
 	for_each_intel_connector_iter(connector, &conn_iter) {
@@ -276,7 +273,6 @@ static void intel_hpd_irq_storm_reenable_work(struct work_struct *work)
 {
 	struct intel_display *display =
 		container_of(work, typeof(*display), hotplug.reenable_work.work);
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct drm_connector_list_iter conn_iter;
 	struct intel_connector *connector;
 	struct ref_tracker *wakeref;
@@ -284,7 +280,7 @@ static void intel_hpd_irq_storm_reenable_work(struct work_struct *work)
 
 	wakeref = intel_display_rpm_get(display);
 
-	spin_lock_irq(&dev_priv->irq_lock);
+	spin_lock_irq(&display->irq.lock);
 
 	drm_connector_list_iter_begin(display->drm, &conn_iter);
 	for_each_intel_connector_iter(connector, &conn_iter) {
@@ -308,7 +304,7 @@ static void intel_hpd_irq_storm_reenable_work(struct work_struct *work)
 
 	intel_hpd_irq_setup(display);
 
-	spin_unlock_irq(&dev_priv->irq_lock);
+	spin_unlock_irq(&display->irq.lock);
 
 	intel_display_rpm_put(display, wakeref);
 }
@@ -376,9 +372,7 @@ static bool hpd_pin_has_pulse(struct intel_display *display, enum hpd_pin pin)
 
 static bool hpd_pin_is_blocked(struct intel_display *display, enum hpd_pin pin)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
-	lockdep_assert_held(&i915->irq_lock);
+	lockdep_assert_held(&display->irq.lock);
 
 	return display->hotplug.stats[pin].blocked_count;
 }
@@ -400,14 +394,13 @@ static void i915_digport_work_func(struct work_struct *work)
 {
 	struct intel_display *display =
 		container_of(work, struct intel_display, hotplug.dig_port_work);
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_hotplug *hotplug = &display->hotplug;
 	u32 long_hpd_pin_mask, short_hpd_pin_mask;
 	struct intel_encoder *encoder;
 	u32 blocked_hpd_pin_mask;
 	u32 old_bits = 0;
 
-	spin_lock_irq(&dev_priv->irq_lock);
+	spin_lock_irq(&display->irq.lock);
 
 	blocked_hpd_pin_mask = get_blocked_hpd_pin_mask(display);
 	long_hpd_pin_mask = hotplug->long_hpd_pin_mask & ~blocked_hpd_pin_mask;
@@ -415,7 +408,7 @@ static void i915_digport_work_func(struct work_struct *work)
 	short_hpd_pin_mask = hotplug->short_hpd_pin_mask & ~blocked_hpd_pin_mask;
 	hotplug->short_hpd_pin_mask &= ~short_hpd_pin_mask;
 
-	spin_unlock_irq(&dev_priv->irq_lock);
+	spin_unlock_irq(&display->irq.lock);
 
 	for_each_intel_encoder(display->drm, encoder) {
 		struct intel_digital_port *dig_port;
@@ -442,11 +435,11 @@ static void i915_digport_work_func(struct work_struct *work)
 	}
 
 	if (old_bits) {
-		spin_lock_irq(&dev_priv->irq_lock);
+		spin_lock_irq(&display->irq.lock);
 		display->hotplug.event_bits |= old_bits;
 		queue_delayed_detection_work(display,
 					     &display->hotplug.hotplug_work, 0);
-		spin_unlock_irq(&dev_priv->irq_lock);
+		spin_unlock_irq(&display->irq.lock);
 	}
 }
 
@@ -460,17 +453,16 @@ static void i915_digport_work_func(struct work_struct *work)
 void intel_hpd_trigger_irq(struct intel_digital_port *dig_port)
 {
 	struct intel_display *display = to_intel_display(dig_port);
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_hotplug *hotplug = &display->hotplug;
 	struct intel_encoder *encoder = &dig_port->base;
 
-	spin_lock_irq(&i915->irq_lock);
+	spin_lock_irq(&display->irq.lock);
 
 	hotplug->short_hpd_pin_mask |= BIT(encoder->hpd_pin);
 	if (!hpd_pin_is_blocked(display, encoder->hpd_pin))
 		queue_work(hotplug->dp_wq, &hotplug->dig_port_work);
 
-	spin_unlock_irq(&i915->irq_lock);
+	spin_unlock_irq(&display->irq.lock);
 }
 
 /*
@@ -480,7 +472,6 @@ static void i915_hotplug_work_func(struct work_struct *work)
 {
 	struct intel_display *display =
 		container_of(work, struct intel_display, hotplug.hotplug_work.work);
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_hotplug *hotplug = &display->hotplug;
 	struct drm_connector_list_iter conn_iter;
 	struct intel_connector *connector;
@@ -494,7 +485,7 @@ static void i915_hotplug_work_func(struct work_struct *work)
 	mutex_lock(&display->drm->mode_config.mutex);
 	drm_dbg_kms(display->drm, "running encoder hotplug functions\n");
 
-	spin_lock_irq(&dev_priv->irq_lock);
+	spin_lock_irq(&display->irq.lock);
 
 	blocked_hpd_pin_mask = get_blocked_hpd_pin_mask(display);
 	hpd_event_bits = hotplug->event_bits & ~blocked_hpd_pin_mask;
@@ -505,7 +496,7 @@ static void i915_hotplug_work_func(struct work_struct *work)
 	/* Enable polling for connectors which had HPD IRQ storms */
 	intel_hpd_irq_storm_switch_to_polling(display);
 
-	spin_unlock_irq(&dev_priv->irq_lock);
+	spin_unlock_irq(&display->irq.lock);
 
 	/* Skip calling encode hotplug handlers if ignore long HPD set*/
 	if (display->hotplug.ignore_long_hpd) {
@@ -569,13 +560,13 @@ static void i915_hotplug_work_func(struct work_struct *work)
 	/* Remove shared HPD pins that have changed */
 	retry &= ~changed;
 	if (retry) {
-		spin_lock_irq(&dev_priv->irq_lock);
+		spin_lock_irq(&display->irq.lock);
 		display->hotplug.retry_bits |= retry;
 
 		mod_delayed_detection_work(display,
 					   &display->hotplug.hotplug_work,
 					   msecs_to_jiffies(HPD_RETRY_DELAY));
-		spin_unlock_irq(&dev_priv->irq_lock);
+		spin_unlock_irq(&display->irq.lock);
 	}
 }
 
@@ -599,7 +590,6 @@ static void i915_hotplug_work_func(struct work_struct *work)
 void intel_hpd_irq_handler(struct intel_display *display,
 			   u32 pin_mask, u32 long_mask)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_encoder *encoder;
 	bool storm_detected = false;
 	bool queue_dig = false, queue_hp = false;
@@ -610,7 +600,7 @@ void intel_hpd_irq_handler(struct intel_display *display,
 	if (!pin_mask)
 		return;
 
-	spin_lock(&dev_priv->irq_lock);
+	spin_lock(&display->irq.lock);
 
 	/*
 	 * Determine whether ->hpd_pulse() exists for each pin, and
@@ -711,7 +701,7 @@ void intel_hpd_irq_handler(struct intel_display *display,
 		queue_delayed_detection_work(display,
 					     &display->hotplug.hotplug_work, 0);
 
-	spin_unlock(&dev_priv->irq_lock);
+	spin_unlock(&display->irq.lock);
 }
 
 /**
@@ -730,7 +720,6 @@ void intel_hpd_irq_handler(struct intel_display *display,
  */
 void intel_hpd_init(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	int i;
 
 	if (!HAS_DISPLAY(display))
@@ -745,9 +734,9 @@ void intel_hpd_init(struct intel_display *display)
 	 * Interrupt setup is already guaranteed to be single-threaded, this is
 	 * just to make the assert_spin_locked checks happy.
 	 */
-	spin_lock_irq(&dev_priv->irq_lock);
+	spin_lock_irq(&display->irq.lock);
 	intel_hpd_irq_setup(display);
-	spin_unlock_irq(&dev_priv->irq_lock);
+	spin_unlock_irq(&display->irq.lock);
 }
 
 static void i915_hpd_poll_detect_connectors(struct intel_display *display)
@@ -797,7 +786,6 @@ static void i915_hpd_poll_init_work(struct work_struct *work)
 {
 	struct intel_display *display =
 		container_of(work, typeof(*display), hotplug.poll_init_work);
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct drm_connector_list_iter conn_iter;
 	struct intel_connector *connector;
 	intel_wakeref_t wakeref;
@@ -820,7 +808,7 @@ static void i915_hpd_poll_init_work(struct work_struct *work)
 		cancel_work(&display->hotplug.poll_init_work);
 	}
 
-	spin_lock_irq(&dev_priv->irq_lock);
+	spin_lock_irq(&display->irq.lock);
 
 	drm_connector_list_iter_begin(display->drm, &conn_iter);
 	for_each_intel_connector_iter(connector, &conn_iter) {
@@ -841,7 +829,7 @@ static void i915_hpd_poll_init_work(struct work_struct *work)
 	}
 	drm_connector_list_iter_end(&conn_iter);
 
-	spin_unlock_irq(&dev_priv->irq_lock);
+	spin_unlock_irq(&display->irq.lock);
 
 	if (enabled)
 		drm_kms_helper_poll_reschedule(display->drm);
@@ -879,8 +867,6 @@ static void i915_hpd_poll_init_work(struct work_struct *work)
  */
 void intel_hpd_poll_enable(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
-
 	if (!HAS_DISPLAY(display) || !intel_display_device_enabled(display))
 		return;
 
@@ -892,10 +878,10 @@ void intel_hpd_poll_enable(struct intel_display *display)
 	 * As well, there's no issue if we race here since we always reschedule
 	 * this worker anyway
 	 */
-	spin_lock_irq(&dev_priv->irq_lock);
+	spin_lock_irq(&display->irq.lock);
 	queue_detection_work(display,
 			     &display->hotplug.poll_init_work);
-	spin_unlock_irq(&dev_priv->irq_lock);
+	spin_unlock_irq(&display->irq.lock);
 }
 
 /**
@@ -919,17 +905,15 @@ void intel_hpd_poll_enable(struct intel_display *display)
  */
 void intel_hpd_poll_disable(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
-
 	if (!HAS_DISPLAY(display))
 		return;
 
 	WRITE_ONCE(display->hotplug.poll_enabled, false);
 
-	spin_lock_irq(&dev_priv->irq_lock);
+	spin_lock_irq(&display->irq.lock);
 	queue_detection_work(display,
 			     &display->hotplug.poll_init_work);
-	spin_unlock_irq(&dev_priv->irq_lock);
+	spin_unlock_irq(&display->irq.lock);
 }
 
 void intel_hpd_poll_fini(struct intel_display *display)
@@ -981,12 +965,10 @@ static bool cancel_all_detection_work(struct intel_display *display)
 
 void intel_hpd_cancel_work(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
-
 	if (!HAS_DISPLAY(display))
 		return;
 
-	spin_lock_irq(&dev_priv->irq_lock);
+	spin_lock_irq(&display->irq.lock);
 
 	drm_WARN_ON(display->drm, get_blocked_hpd_pin_mask(display));
 
@@ -995,7 +977,7 @@ void intel_hpd_cancel_work(struct intel_display *display)
 	display->hotplug.event_bits = 0;
 	display->hotplug.retry_bits = 0;
 
-	spin_unlock_irq(&dev_priv->irq_lock);
+	spin_unlock_irq(&display->irq.lock);
 
 	cancel_work_sync(&display->hotplug.dig_port_work);
 
@@ -1009,13 +991,12 @@ void intel_hpd_cancel_work(struct intel_display *display)
 
 static void queue_work_for_missed_irqs(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_hotplug *hotplug = &display->hotplug;
 	bool queue_hp_work = false;
 	u32 blocked_hpd_pin_mask;
 	enum hpd_pin pin;
 
-	lockdep_assert_held(&i915->irq_lock);
+	lockdep_assert_held(&display->irq.lock);
 
 	blocked_hpd_pin_mask = get_blocked_hpd_pin_mask(display);
 	if ((hotplug->event_bits | hotplug->retry_bits) & ~blocked_hpd_pin_mask)
@@ -1043,10 +1024,9 @@ static void queue_work_for_missed_irqs(struct intel_display *display)
 
 static bool block_hpd_pin(struct intel_display *display, enum hpd_pin pin)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_hotplug *hotplug = &display->hotplug;
 
-	lockdep_assert_held(&i915->irq_lock);
+	lockdep_assert_held(&display->irq.lock);
 
 	hotplug->stats[pin].blocked_count++;
 
@@ -1055,10 +1035,9 @@ static bool block_hpd_pin(struct intel_display *display, enum hpd_pin pin)
 
 static bool unblock_hpd_pin(struct intel_display *display, enum hpd_pin pin)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_hotplug *hotplug = &display->hotplug;
 
-	lockdep_assert_held(&i915->irq_lock);
+	lockdep_assert_held(&display->irq.lock);
 
 	if (drm_WARN_ON(display->drm, hotplug->stats[pin].blocked_count == 0))
 		return true;
@@ -1095,19 +1074,18 @@ static bool unblock_hpd_pin(struct intel_display *display, enum hpd_pin pin)
 void intel_hpd_block(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_hotplug *hotplug = &display->hotplug;
 	bool do_flush = false;
 
 	if (encoder->hpd_pin == HPD_NONE)
 		return;
 
-	spin_lock_irq(&i915->irq_lock);
+	spin_lock_irq(&display->irq.lock);
 
 	if (block_hpd_pin(display, encoder->hpd_pin))
 		do_flush = true;
 
-	spin_unlock_irq(&i915->irq_lock);
+	spin_unlock_irq(&display->irq.lock);
 
 	if (do_flush && hpd_pin_has_pulse(display, encoder->hpd_pin))
 		flush_work(&hotplug->dig_port_work);
@@ -1125,17 +1103,16 @@ void intel_hpd_block(struct intel_encoder *encoder)
 void intel_hpd_unblock(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *i915 = to_i915(display->drm);
 
 	if (encoder->hpd_pin == HPD_NONE)
 		return;
 
-	spin_lock_irq(&i915->irq_lock);
+	spin_lock_irq(&display->irq.lock);
 
 	if (unblock_hpd_pin(display, encoder->hpd_pin))
 		queue_work_for_missed_irqs(display);
 
-	spin_unlock_irq(&i915->irq_lock);
+	spin_unlock_irq(&display->irq.lock);
 }
 
 /**
@@ -1149,14 +1126,13 @@ void intel_hpd_unblock(struct intel_encoder *encoder)
 void intel_hpd_clear_and_unblock(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_hotplug *hotplug = &display->hotplug;
 	enum hpd_pin pin = encoder->hpd_pin;
 
 	if (pin == HPD_NONE)
 		return;
 
-	spin_lock_irq(&i915->irq_lock);
+	spin_lock_irq(&display->irq.lock);
 
 	if (unblock_hpd_pin(display, pin)) {
 		hotplug->event_bits &= ~BIT(pin);
@@ -1165,39 +1141,34 @@ void intel_hpd_clear_and_unblock(struct intel_encoder *encoder)
 		hotplug->long_hpd_pin_mask &= ~BIT(pin);
 	}
 
-	spin_unlock_irq(&i915->irq_lock);
+	spin_unlock_irq(&display->irq.lock);
 }
 
 void intel_hpd_enable_detection_work(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
-	spin_lock_irq(&i915->irq_lock);
+	spin_lock_irq(&display->irq.lock);
 	display->hotplug.detection_work_enabled = true;
 	queue_work_for_missed_irqs(display);
-	spin_unlock_irq(&i915->irq_lock);
+	spin_unlock_irq(&display->irq.lock);
 }
 
 void intel_hpd_disable_detection_work(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
-	spin_lock_irq(&i915->irq_lock);
+	spin_lock_irq(&display->irq.lock);
 	display->hotplug.detection_work_enabled = false;
-	spin_unlock_irq(&i915->irq_lock);
+	spin_unlock_irq(&display->irq.lock);
 
 	cancel_all_detection_work(display);
 }
 
 bool intel_hpd_schedule_detection(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	unsigned long flags;
 	bool ret;
 
-	spin_lock_irqsave(&i915->irq_lock, flags);
+	spin_lock_irqsave(&display->irq.lock, flags);
 	ret = queue_delayed_detection_work(display, &display->hotplug.hotplug_work, 0);
-	spin_unlock_irqrestore(&i915->irq_lock, flags);
+	spin_unlock_irqrestore(&display->irq.lock, flags);
 
 	return ret;
 }
@@ -1228,7 +1199,6 @@ static ssize_t i915_hpd_storm_ctl_write(struct file *file,
 {
 	struct seq_file *m = file->private_data;
 	struct intel_display *display = m->private;
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_hotplug *hotplug = &display->hotplug;
 	unsigned int new_threshold;
 	int i;
@@ -1260,12 +1230,12 @@ static ssize_t i915_hpd_storm_ctl_write(struct file *file,
 	else
 		drm_dbg_kms(display->drm, "Disabling HPD storm detection\n");
 
-	spin_lock_irq(&dev_priv->irq_lock);
+	spin_lock_irq(&display->irq.lock);
 	hotplug->hpd_storm_threshold = new_threshold;
 	/* Reset the HPD storm stats so we don't accidentally trigger a storm */
 	for_each_hpd_pin(i)
 		hotplug->stats[i].count = 0;
-	spin_unlock_irq(&dev_priv->irq_lock);
+	spin_unlock_irq(&display->irq.lock);
 
 	/* Re-enable hpd immediately if we were in an irq storm */
 	flush_delayed_work(&display->hotplug.reenable_work);
@@ -1310,7 +1280,6 @@ static ssize_t i915_hpd_short_storm_ctl_write(struct file *file,
 {
 	struct seq_file *m = file->private_data;
 	struct intel_display *display = m->private;
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_hotplug *hotplug = &display->hotplug;
 	char *newline;
 	char tmp[16];
@@ -1339,12 +1308,12 @@ static ssize_t i915_hpd_short_storm_ctl_write(struct file *file,
 	drm_dbg_kms(display->drm, "%sabling HPD short storm detection\n",
 		    new_state ? "En" : "Dis");
 
-	spin_lock_irq(&dev_priv->irq_lock);
+	spin_lock_irq(&display->irq.lock);
 	hotplug->hpd_short_storm_enabled = new_state;
 	/* Reset the HPD storm stats so we don't accidentally trigger a storm */
 	for_each_hpd_pin(i)
 		hotplug->stats[i].count = 0;
-	spin_unlock_irq(&dev_priv->irq_lock);
+	spin_unlock_irq(&display->irq.lock);
 
 	/* Re-enable hpd immediately if we were in an irq storm */
 	flush_delayed_work(&display->hotplug.reenable_work);
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
index c841399e5c88..c024b42369c8 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
@@ -3,8 +3,10 @@
  * Copyright © 2023 Intel Corporation
  */
 
-#include "i915_drv.h"
+#include <drm/drm_print.h>
+
 #include "i915_reg.h"
+#include "i915_utils.h"
 #include "intel_de.h"
 #include "intel_display_irq.h"
 #include "intel_display_types.h"
@@ -183,9 +185,7 @@ static void intel_hpd_init_pins(struct intel_display *display)
 void i915_hotplug_interrupt_update_locked(struct intel_display *display,
 					  u32 mask, u32 bits)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
-
-	lockdep_assert_held(&dev_priv->irq_lock);
+	lockdep_assert_held(&display->irq.lock);
 	drm_WARN_ON(display->drm, bits & ~mask);
 
 	intel_de_rmw(display, PORT_HOTPLUG_EN(display), mask, bits);
@@ -207,11 +207,9 @@ void i915_hotplug_interrupt_update(struct intel_display *display,
 				   u32 mask,
 				   u32 bits)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
-
-	spin_lock_irq(&dev_priv->irq_lock);
+	spin_lock_irq(&display->irq.lock);
 	i915_hotplug_interrupt_update_locked(display, mask, bits);
-	spin_unlock_irq(&dev_priv->irq_lock);
+	spin_unlock_irq(&display->irq.lock);
 }
 
 static bool gen11_port_hotplug_long_detect(enum hpd_pin pin, u32 val)
@@ -556,7 +554,6 @@ void xelpdp_pica_irq_handler(struct intel_display *display, u32 iir)
 
 void icp_irq_handler(struct intel_display *display, u32 pch_iir)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 ddi_hotplug_trigger = pch_iir & SDE_DDI_HOTPLUG_MASK_ICP;
 	u32 tc_hotplug_trigger = pch_iir & SDE_TC_HOTPLUG_MASK_ICP;
 	u32 pin_mask = 0, long_mask = 0;
@@ -565,9 +562,9 @@ void icp_irq_handler(struct intel_display *display, u32 pch_iir)
 		u32 dig_hotplug_reg;
 
 		/* Locking due to DSI native GPIO sequences */
-		spin_lock(&dev_priv->irq_lock);
+		spin_lock(&display->irq.lock);
 		dig_hotplug_reg = intel_de_rmw(display, SHOTPLUG_CTL_DDI, 0, 0);
-		spin_unlock(&dev_priv->irq_lock);
+		spin_unlock(&display->irq.lock);
 
 		intel_get_hpd_pins(display, &pin_mask, &long_mask,
 				   ddi_hotplug_trigger, dig_hotplug_reg,
@@ -1395,10 +1392,9 @@ static void i915_hpd_enable_detection(struct intel_encoder *encoder)
 
 static void i915_hpd_irq_setup(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 hotplug_en;
 
-	lockdep_assert_held(&dev_priv->irq_lock);
+	lockdep_assert_held(&display->irq.lock);
 
 	/*
 	 * Note HDMI and DP share hotplug bits. Enable bits are the same for all
diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
index 2e3f3f0207e8..acf0b3733908 100644
--- a/drivers/gpu/drm/i915/display/intel_tv.c
+++ b/drivers/gpu/drm/i915/display/intel_tv.c
@@ -33,15 +33,15 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_edid.h>
+#include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
 
-#include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_connector.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
-#include "intel_display_irq.h"
 #include "intel_display_driver.h"
+#include "intel_display_irq.h"
 #include "intel_display_types.h"
 #include "intel_dpll.h"
 #include "intel_hotplug.h"
@@ -1585,19 +1585,17 @@ intel_tv_detect_type(struct intel_tv *intel_tv,
 {
 	struct intel_display *display = to_intel_display(connector->dev);
 	struct intel_crtc *crtc = to_intel_crtc(connector->state->crtc);
-	struct drm_device *dev = connector->dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
 	u32 tv_ctl, save_tv_ctl;
 	u32 tv_dac, save_tv_dac;
 	int type;
 
 	/* Disable TV interrupts around load detect or we'll recurse */
 	if (connector->polled & DRM_CONNECTOR_POLL_HPD) {
-		spin_lock_irq(&dev_priv->irq_lock);
+		spin_lock_irq(&display->irq.lock);
 		i915_disable_pipestat(display, 0,
 				      PIPE_HOTPLUG_INTERRUPT_STATUS |
 				      PIPE_HOTPLUG_TV_INTERRUPT_STATUS);
-		spin_unlock_irq(&dev_priv->irq_lock);
+		spin_unlock_irq(&display->irq.lock);
 	}
 
 	save_tv_dac = tv_dac = intel_de_read(display, TV_DAC);
@@ -1668,11 +1666,11 @@ intel_tv_detect_type(struct intel_tv *intel_tv,
 
 	/* Restore interrupt config */
 	if (connector->polled & DRM_CONNECTOR_POLL_HPD) {
-		spin_lock_irq(&dev_priv->irq_lock);
+		spin_lock_irq(&display->irq.lock);
 		i915_enable_pipestat(display, 0,
 				     PIPE_HOTPLUG_INTERRUPT_STATUS |
 				     PIPE_HOTPLUG_TV_INTERRUPT_STATUS);
-		spin_unlock_irq(&dev_priv->irq_lock);
+		spin_unlock_irq(&display->irq.lock);
 	}
 
 	return type;
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 8739195aba69..844519286b1c 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2690,24 +2690,22 @@ static void
 skl_plane_enable_flip_done(struct intel_plane *plane)
 {
 	struct intel_display *display = to_intel_display(plane);
-	struct drm_i915_private *i915 = to_i915(plane->base.dev);
 	enum pipe pipe = plane->pipe;
 
-	spin_lock_irq(&i915->irq_lock);
+	spin_lock_irq(&display->irq.lock);
 	bdw_enable_pipe_irq(display, pipe, GEN9_PIPE_PLANE_FLIP_DONE(plane->id));
-	spin_unlock_irq(&i915->irq_lock);
+	spin_unlock_irq(&display->irq.lock);
 }
 
 static void
 skl_plane_disable_flip_done(struct intel_plane *plane)
 {
 	struct intel_display *display = to_intel_display(plane);
-	struct drm_i915_private *i915 = to_i915(plane->base.dev);
 	enum pipe pipe = plane->pipe;
 
-	spin_lock_irq(&i915->irq_lock);
+	spin_lock_irq(&display->irq.lock);
 	bdw_disable_pipe_irq(display, pipe, GEN9_PIPE_PLANE_FLIP_DONE(plane->id));
-	spin_unlock_irq(&i915->irq_lock);
+	spin_unlock_irq(&display->irq.lock);
 }
 
 static bool skl_plane_has_rc_ccs(struct intel_display *display,
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 96a52f963475..273bc43468a0 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -234,7 +234,6 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 
 	intel_uncore_mmio_debug_init_early(dev_priv);
 
-	spin_lock_init(&dev_priv->irq_lock);
 	spin_lock_init(&dev_priv->gpu_error.lock);
 
 	intel_sbi_init(dev_priv);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index c0eec8fe5cad..d0e1980dcba2 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -222,8 +222,6 @@ struct drm_i915_private {
 	};
 	unsigned int engine_uabi_class_count[I915_LAST_UABI_ENGINE_CLASS + 1];
 
-	/* protects the irq masks */
-	spinlock_t irq_lock;
 	bool irqs_enabled;
 
 	/* LPT/WPT IOSF sideband protection */
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
index dd36f9b06b89..9b7572e06f34 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
@@ -60,15 +60,4 @@ static inline struct drm_i915_private *to_i915(const struct drm_device *dev)
 #define HAS_FLAT_CCS(xe) (xe_device_has_flat_ccs(xe))
 #define HAS_128_BYTE_Y_TILING(xe) (xe || 1)
 
-#ifdef CONFIG_ARM64
-/*
- * arm64 indirectly includes linux/rtc.h,
- * which defines a irq_lock, so include it
- * here before #define-ing it
- */
-#include <linux/rtc.h>
-#endif
-
-#define irq_lock irq.lock
-
 #endif
-- 
2.39.5

