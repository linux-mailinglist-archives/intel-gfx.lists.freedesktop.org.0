Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3405B6F704D
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 18:57:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8207F10E4E5;
	Thu,  4 May 2023 16:57:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EC1310E1A6
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 May 2023 16:57:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683219471; x=1714755471;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NL45XcisqOyltrBh7ySBcevpGzz7cbuk+5v3Rl6z0P8=;
 b=RAC+CEUzTEUFRA0HWnXvANSXYd/mzE46Fdq7GFTvzS4qbiuttfwbpCjO
 Kj23LEBVhNTdB+EwUeIYqIO1Dce/7JUucGNXWdinivgCbT/zLlDT53rlC
 IuRBc0JfHemVpjw+aV/HaGlRkHfCdtXx3tQo37mQhaHA5U76PGrzpXoli
 4Rjy4iK6dAOiCIZ2/B/x423bsdXDL/5EQoSTBJU9DZ2Esg7k4nzIAR4h8
 uTmjB8+l/lTdasXOXwacZ+oZDOi6V0E5vOuyJIBRszPJ5Co8N4alvxxuc
 0vZeXnWIjvtiulia8CAd1KIz9I5GOeRuh+VtfAfDQfCUumfuP6k3Jgvv/ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="377062914"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="377062914"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 09:57:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="691217612"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="691217612"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 09:57:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 May 2023 19:57:31 +0300
Message-Id: <d175e7571d188e791a3b691919d22b6a55ba8b16.1683219363.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1683219362.git.jani.nikula@intel.com>
References: <cover.1683219362.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/irq: split out display irq handling
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
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Split (non-hotplug) display irq handling out of i915_irq.[ch] into
display/intel_display_irq.[ch].

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |    1 +
 drivers/gpu/drm/i915/display/i9xx_plane.c     |    2 +-
 drivers/gpu/drm/i915/display/intel_crtc.c     |    2 +-
 .../gpu/drm/i915/display/intel_display_irq.c  | 1677 +++++++++++++++++
 .../gpu/drm/i915/display/intel_display_irq.h  |   79 +
 .../i915/display/intel_display_power_well.c   |    1 +
 .../drm/i915/display/intel_fifo_underrun.c    |    2 +-
 .../gpu/drm/i915/display/intel_hotplug_irq.c  |    2 +-
 drivers/gpu/drm/i915/display/intel_tv.c       |    2 +-
 .../drm/i915/display/skl_universal_plane.c    |    2 +-
 drivers/gpu/drm/i915/gt/intel_rps.c           |    1 +
 drivers/gpu/drm/i915/i915_irq.c               | 1676 +---------------
 drivers/gpu/drm/i915/i915_irq.h               |   46 +-
 13 files changed, 1770 insertions(+), 1723 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_irq.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_irq.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index b8520aea6068..5a9ad491a2fd 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -239,6 +239,7 @@ i915-y += \
 	display/intel_cursor.o \
 	display/intel_display.o \
 	display/intel_display_driver.o \
+	display/intel_display_irq.o \
 	display/intel_display_power.o \
 	display/intel_display_power_map.o \
 	display/intel_display_power_well.o \
diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index ecaeb7dc196b..616654adbfb8 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -8,12 +8,12 @@
 #include <drm/drm_blend.h>
 #include <drm/drm_fourcc.h>
 
-#include "i915_irq.h"
 #include "i915_reg.h"
 #include "i9xx_plane.h"
 #include "intel_atomic.h"
 #include "intel_atomic_plane.h"
 #include "intel_de.h"
+#include "intel_display_irq.h"
 #include "intel_display_types.h"
 #include "intel_fb.h"
 #include "intel_fbc.h"
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index df7d05f1e14b..a79930a4e40f 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -11,7 +11,6 @@
 #include <drm/drm_plane.h>
 #include <drm/drm_vblank_work.h>
 
-#include "i915_irq.h"
 #include "i915_vgpu.h"
 #include "i9xx_plane.h"
 #include "icl_dsi.h"
@@ -21,6 +20,7 @@
 #include "intel_crtc.h"
 #include "intel_cursor.h"
 #include "intel_display_debugfs.h"
+#include "intel_display_irq.h"
 #include "intel_display_trace.h"
 #include "intel_display_types.h"
 #include "intel_drrs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
new file mode 100644
index 000000000000..e50821639da0
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -0,0 +1,1677 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#include "i915_drv.h"
+#include "i915_irq.h"
+#include "i915_reg.h"
+#include "icl_dsi_regs.h"
+#include "intel_display_irq.h"
+#include "intel_display_types.h"
+#include "intel_hotplug_irq.h"
+#include "intel_psr_regs.h"
+#include "intel_crtc.h"
+#include "intel_display_trace.h"
+#include "intel_dp_aux.h"
+#include "intel_gmbus.h"
+#include "intel_fifo_underrun.h"
+#include "intel_psr.h"
+#include "intel_fdi_regs.h"
+#include "gt/intel_rps.h"
+#include "intel_de.h"
+
+static void
+intel_handle_vblank(struct drm_i915_private *dev_priv, enum pipe pipe)
+{
+	struct intel_crtc *crtc = intel_crtc_for_pipe(dev_priv, pipe);
+
+	drm_crtc_handle_vblank(&crtc->base);
+}
+
+/**
+ * ilk_update_display_irq - update DEIMR
+ * @dev_priv: driver private
+ * @interrupt_mask: mask of interrupt bits to update
+ * @enabled_irq_mask: mask of interrupt bits to enable
+ */
+void ilk_update_display_irq(struct drm_i915_private *dev_priv,
+			    u32 interrupt_mask, u32 enabled_irq_mask)
+{
+	u32 new_val;
+
+	lockdep_assert_held(&dev_priv->irq_lock);
+	drm_WARN_ON(&dev_priv->drm, enabled_irq_mask & ~interrupt_mask);
+
+	new_val = dev_priv->irq_mask;
+	new_val &= ~interrupt_mask;
+	new_val |= (~enabled_irq_mask & interrupt_mask);
+
+	if (new_val != dev_priv->irq_mask &&
+	    !drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv))) {
+		dev_priv->irq_mask = new_val;
+		intel_uncore_write(&dev_priv->uncore, DEIMR, dev_priv->irq_mask);
+		intel_uncore_posting_read(&dev_priv->uncore, DEIMR);
+	}
+}
+
+void ilk_enable_display_irq(struct drm_i915_private *i915, u32 bits)
+{
+	ilk_update_display_irq(i915, bits, bits);
+}
+
+void ilk_disable_display_irq(struct drm_i915_private *i915, u32 bits)
+{
+	ilk_update_display_irq(i915, bits, 0);
+}
+
+/**
+ * bdw_update_port_irq - update DE port interrupt
+ * @dev_priv: driver private
+ * @interrupt_mask: mask of interrupt bits to update
+ * @enabled_irq_mask: mask of interrupt bits to enable
+ */
+void bdw_update_port_irq(struct drm_i915_private *dev_priv,
+			 u32 interrupt_mask, u32 enabled_irq_mask)
+{
+	u32 new_val;
+	u32 old_val;
+
+	lockdep_assert_held(&dev_priv->irq_lock);
+
+	drm_WARN_ON(&dev_priv->drm, enabled_irq_mask & ~interrupt_mask);
+
+	if (drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv)))
+		return;
+
+	old_val = intel_uncore_read(&dev_priv->uncore, GEN8_DE_PORT_IMR);
+
+	new_val = old_val;
+	new_val &= ~interrupt_mask;
+	new_val |= (~enabled_irq_mask & interrupt_mask);
+
+	if (new_val != old_val) {
+		intel_uncore_write(&dev_priv->uncore, GEN8_DE_PORT_IMR, new_val);
+		intel_uncore_posting_read(&dev_priv->uncore, GEN8_DE_PORT_IMR);
+	}
+}
+
+/**
+ * bdw_update_pipe_irq - update DE pipe interrupt
+ * @dev_priv: driver private
+ * @pipe: pipe whose interrupt to update
+ * @interrupt_mask: mask of interrupt bits to update
+ * @enabled_irq_mask: mask of interrupt bits to enable
+ */
+static void bdw_update_pipe_irq(struct drm_i915_private *dev_priv,
+				enum pipe pipe, u32 interrupt_mask,
+				u32 enabled_irq_mask)
+{
+	u32 new_val;
+
+	lockdep_assert_held(&dev_priv->irq_lock);
+
+	drm_WARN_ON(&dev_priv->drm, enabled_irq_mask & ~interrupt_mask);
+
+	if (drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv)))
+		return;
+
+	new_val = dev_priv->de_irq_mask[pipe];
+	new_val &= ~interrupt_mask;
+	new_val |= (~enabled_irq_mask & interrupt_mask);
+
+	if (new_val != dev_priv->de_irq_mask[pipe]) {
+		dev_priv->de_irq_mask[pipe] = new_val;
+		intel_uncore_write(&dev_priv->uncore, GEN8_DE_PIPE_IMR(pipe), dev_priv->de_irq_mask[pipe]);
+		intel_uncore_posting_read(&dev_priv->uncore, GEN8_DE_PIPE_IMR(pipe));
+	}
+}
+
+void bdw_enable_pipe_irq(struct drm_i915_private *i915,
+			 enum pipe pipe, u32 bits)
+{
+	bdw_update_pipe_irq(i915, pipe, bits, bits);
+}
+
+void bdw_disable_pipe_irq(struct drm_i915_private *i915,
+			  enum pipe pipe, u32 bits)
+{
+	bdw_update_pipe_irq(i915, pipe, bits, 0);
+}
+
+/**
+ * ibx_display_interrupt_update - update SDEIMR
+ * @dev_priv: driver private
+ * @interrupt_mask: mask of interrupt bits to update
+ * @enabled_irq_mask: mask of interrupt bits to enable
+ */
+void ibx_display_interrupt_update(struct drm_i915_private *dev_priv,
+				  u32 interrupt_mask,
+				  u32 enabled_irq_mask)
+{
+	u32 sdeimr = intel_uncore_read(&dev_priv->uncore, SDEIMR);
+
+	sdeimr &= ~interrupt_mask;
+	sdeimr |= (~enabled_irq_mask & interrupt_mask);
+
+	drm_WARN_ON(&dev_priv->drm, enabled_irq_mask & ~interrupt_mask);
+
+	lockdep_assert_held(&dev_priv->irq_lock);
+
+	if (drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv)))
+		return;
+
+	intel_uncore_write(&dev_priv->uncore, SDEIMR, sdeimr);
+	intel_uncore_posting_read(&dev_priv->uncore, SDEIMR);
+}
+
+void ibx_enable_display_interrupt(struct drm_i915_private *i915, u32 bits)
+{
+	ibx_display_interrupt_update(i915, bits, bits);
+}
+
+void ibx_disable_display_interrupt(struct drm_i915_private *i915, u32 bits)
+{
+	ibx_display_interrupt_update(i915, bits, 0);
+}
+
+u32 i915_pipestat_enable_mask(struct drm_i915_private *dev_priv,
+			      enum pipe pipe)
+{
+	u32 status_mask = dev_priv->pipestat_irq_mask[pipe];
+	u32 enable_mask = status_mask << 16;
+
+	lockdep_assert_held(&dev_priv->irq_lock);
+
+	if (DISPLAY_VER(dev_priv) < 5)
+		goto out;
+
+	/*
+	 * On pipe A we don't support the PSR interrupt yet,
+	 * on pipe B and C the same bit MBZ.
+	 */
+	if (drm_WARN_ON_ONCE(&dev_priv->drm,
+			     status_mask & PIPE_A_PSR_STATUS_VLV))
+		return 0;
+	/*
+	 * On pipe B and C we don't support the PSR interrupt yet, on pipe
+	 * A the same bit is for perf counters which we don't use either.
+	 */
+	if (drm_WARN_ON_ONCE(&dev_priv->drm,
+			     status_mask & PIPE_B_PSR_STATUS_VLV))
+		return 0;
+
+	enable_mask &= ~(PIPE_FIFO_UNDERRUN_STATUS |
+			 SPRITE0_FLIP_DONE_INT_EN_VLV |
+			 SPRITE1_FLIP_DONE_INT_EN_VLV);
+	if (status_mask & SPRITE0_FLIP_DONE_INT_STATUS_VLV)
+		enable_mask |= SPRITE0_FLIP_DONE_INT_EN_VLV;
+	if (status_mask & SPRITE1_FLIP_DONE_INT_STATUS_VLV)
+		enable_mask |= SPRITE1_FLIP_DONE_INT_EN_VLV;
+
+out:
+	drm_WARN_ONCE(&dev_priv->drm,
+		      enable_mask & ~PIPESTAT_INT_ENABLE_MASK ||
+		      status_mask & ~PIPESTAT_INT_STATUS_MASK,
+		      "pipe %c: enable_mask=0x%x, status_mask=0x%x\n",
+		      pipe_name(pipe), enable_mask, status_mask);
+
+	return enable_mask;
+}
+
+void i915_enable_pipestat(struct drm_i915_private *dev_priv,
+			  enum pipe pipe, u32 status_mask)
+{
+	i915_reg_t reg = PIPESTAT(pipe);
+	u32 enable_mask;
+
+	drm_WARN_ONCE(&dev_priv->drm, status_mask & ~PIPESTAT_INT_STATUS_MASK,
+		      "pipe %c: status_mask=0x%x\n",
+		      pipe_name(pipe), status_mask);
+
+	lockdep_assert_held(&dev_priv->irq_lock);
+	drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv));
+
+	if ((dev_priv->pipestat_irq_mask[pipe] & status_mask) == status_mask)
+		return;
+
+	dev_priv->pipestat_irq_mask[pipe] |= status_mask;
+	enable_mask = i915_pipestat_enable_mask(dev_priv, pipe);
+
+	intel_uncore_write(&dev_priv->uncore, reg, enable_mask | status_mask);
+	intel_uncore_posting_read(&dev_priv->uncore, reg);
+}
+
+void i915_disable_pipestat(struct drm_i915_private *dev_priv,
+			   enum pipe pipe, u32 status_mask)
+{
+	i915_reg_t reg = PIPESTAT(pipe);
+	u32 enable_mask;
+
+	drm_WARN_ONCE(&dev_priv->drm, status_mask & ~PIPESTAT_INT_STATUS_MASK,
+		      "pipe %c: status_mask=0x%x\n",
+		      pipe_name(pipe), status_mask);
+
+	lockdep_assert_held(&dev_priv->irq_lock);
+	drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv));
+
+	if ((dev_priv->pipestat_irq_mask[pipe] & status_mask) == 0)
+		return;
+
+	dev_priv->pipestat_irq_mask[pipe] &= ~status_mask;
+	enable_mask = i915_pipestat_enable_mask(dev_priv, pipe);
+
+	intel_uncore_write(&dev_priv->uncore, reg, enable_mask | status_mask);
+	intel_uncore_posting_read(&dev_priv->uncore, reg);
+}
+
+static bool i915_has_asle(struct drm_i915_private *dev_priv)
+{
+	if (!dev_priv->display.opregion.asle)
+		return false;
+
+	return IS_PINEVIEW(dev_priv) || IS_MOBILE(dev_priv);
+}
+
+/**
+ * i915_enable_asle_pipestat - enable ASLE pipestat for OpRegion
+ * @dev_priv: i915 device private
+ */
+void i915_enable_asle_pipestat(struct drm_i915_private *dev_priv)
+{
+	if (!i915_has_asle(dev_priv))
+		return;
+
+	spin_lock_irq(&dev_priv->irq_lock);
+
+	i915_enable_pipestat(dev_priv, PIPE_B, PIPE_LEGACY_BLC_EVENT_STATUS);
+	if (DISPLAY_VER(dev_priv) >= 4)
+		i915_enable_pipestat(dev_priv, PIPE_A,
+				     PIPE_LEGACY_BLC_EVENT_STATUS);
+
+	spin_unlock_irq(&dev_priv->irq_lock);
+}
+
+#if defined(CONFIG_DEBUG_FS)
+static void display_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
+					 enum pipe pipe,
+					 u32 crc0, u32 crc1,
+					 u32 crc2, u32 crc3,
+					 u32 crc4)
+{
+	struct intel_crtc *crtc = intel_crtc_for_pipe(dev_priv, pipe);
+	struct intel_pipe_crc *pipe_crc = &crtc->pipe_crc;
+	u32 crcs[5] = { crc0, crc1, crc2, crc3, crc4 };
+
+	trace_intel_pipe_crc(crtc, crcs);
+
+	spin_lock(&pipe_crc->lock);
+	/*
+	 * For some not yet identified reason, the first CRC is
+	 * bonkers. So let's just wait for the next vblank and read
+	 * out the buggy result.
+	 *
+	 * On GEN8+ sometimes the second CRC is bonkers as well, so
+	 * don't trust that one either.
+	 */
+	if (pipe_crc->skipped <= 0 ||
+	    (DISPLAY_VER(dev_priv) >= 8 && pipe_crc->skipped == 1)) {
+		pipe_crc->skipped++;
+		spin_unlock(&pipe_crc->lock);
+		return;
+	}
+	spin_unlock(&pipe_crc->lock);
+
+	drm_crtc_add_crc_entry(&crtc->base, true,
+			       drm_crtc_accurate_vblank_count(&crtc->base),
+			       crcs);
+}
+#else
+static inline void
+display_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
+			     enum pipe pipe,
+			     u32 crc0, u32 crc1,
+			     u32 crc2, u32 crc3,
+			     u32 crc4) {}
+#endif
+
+static void flip_done_handler(struct drm_i915_private *i915,
+			      enum pipe pipe)
+{
+	struct intel_crtc *crtc = intel_crtc_for_pipe(i915, pipe);
+	struct drm_crtc_state *crtc_state = crtc->base.state;
+	struct drm_pending_vblank_event *e = crtc_state->event;
+	struct drm_device *dev = &i915->drm;
+	unsigned long irqflags;
+
+	spin_lock_irqsave(&dev->event_lock, irqflags);
+
+	crtc_state->event = NULL;
+
+	drm_crtc_send_vblank_event(&crtc->base, e);
+
+	spin_unlock_irqrestore(&dev->event_lock, irqflags);
+}
+
+static void hsw_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
+				     enum pipe pipe)
+{
+	display_pipe_crc_irq_handler(dev_priv, pipe,
+				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_1_IVB(pipe)),
+				     0, 0, 0, 0);
+}
+
+static void ivb_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
+				     enum pipe pipe)
+{
+	display_pipe_crc_irq_handler(dev_priv, pipe,
+				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_1_IVB(pipe)),
+				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_2_IVB(pipe)),
+				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_3_IVB(pipe)),
+				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_4_IVB(pipe)),
+				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_5_IVB(pipe)));
+}
+
+static void i9xx_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
+				      enum pipe pipe)
+{
+	u32 res1, res2;
+
+	if (DISPLAY_VER(dev_priv) >= 3)
+		res1 = intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_RES1_I915(pipe));
+	else
+		res1 = 0;
+
+	if (DISPLAY_VER(dev_priv) >= 5 || IS_G4X(dev_priv))
+		res2 = intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_RES2_G4X(pipe));
+	else
+		res2 = 0;
+
+	display_pipe_crc_irq_handler(dev_priv, pipe,
+				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_RED(pipe)),
+				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_GREEN(pipe)),
+				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_BLUE(pipe)),
+				     res1, res2);
+}
+
+void i9xx_pipestat_irq_reset(struct drm_i915_private *dev_priv)
+{
+	enum pipe pipe;
+
+	for_each_pipe(dev_priv, pipe) {
+		intel_uncore_write(&dev_priv->uncore, PIPESTAT(pipe),
+				   PIPESTAT_INT_STATUS_MASK |
+				   PIPE_FIFO_UNDERRUN_STATUS);
+
+		dev_priv->pipestat_irq_mask[pipe] = 0;
+	}
+}
+
+void i9xx_pipestat_irq_ack(struct drm_i915_private *dev_priv,
+			   u32 iir, u32 pipe_stats[I915_MAX_PIPES])
+{
+	enum pipe pipe;
+
+	spin_lock(&dev_priv->irq_lock);
+
+	if (!dev_priv->display_irqs_enabled) {
+		spin_unlock(&dev_priv->irq_lock);
+		return;
+	}
+
+	for_each_pipe(dev_priv, pipe) {
+		i915_reg_t reg;
+		u32 status_mask, enable_mask, iir_bit = 0;
+
+		/*
+		 * PIPESTAT bits get signalled even when the interrupt is
+		 * disabled with the mask bits, and some of the status bits do
+		 * not generate interrupts at all (like the underrun bit). Hence
+		 * we need to be careful that we only handle what we want to
+		 * handle.
+		 */
+
+		/* fifo underruns are filterered in the underrun handler. */
+		status_mask = PIPE_FIFO_UNDERRUN_STATUS;
+
+		switch (pipe) {
+		default:
+		case PIPE_A:
+			iir_bit = I915_DISPLAY_PIPE_A_EVENT_INTERRUPT;
+			break;
+		case PIPE_B:
+			iir_bit = I915_DISPLAY_PIPE_B_EVENT_INTERRUPT;
+			break;
+		case PIPE_C:
+			iir_bit = I915_DISPLAY_PIPE_C_EVENT_INTERRUPT;
+			break;
+		}
+		if (iir & iir_bit)
+			status_mask |= dev_priv->pipestat_irq_mask[pipe];
+
+		if (!status_mask)
+			continue;
+
+		reg = PIPESTAT(pipe);
+		pipe_stats[pipe] = intel_uncore_read(&dev_priv->uncore, reg) & status_mask;
+		enable_mask = i915_pipestat_enable_mask(dev_priv, pipe);
+
+		/*
+		 * Clear the PIPE*STAT regs before the IIR
+		 *
+		 * Toggle the enable bits to make sure we get an
+		 * edge in the ISR pipe event bit if we don't clear
+		 * all the enabled status bits. Otherwise the edge
+		 * triggered IIR on i965/g4x wouldn't notice that
+		 * an interrupt is still pending.
+		 */
+		if (pipe_stats[pipe]) {
+			intel_uncore_write(&dev_priv->uncore, reg, pipe_stats[pipe]);
+			intel_uncore_write(&dev_priv->uncore, reg, enable_mask);
+		}
+	}
+	spin_unlock(&dev_priv->irq_lock);
+}
+
+void i8xx_pipestat_irq_handler(struct drm_i915_private *dev_priv,
+			       u16 iir, u32 pipe_stats[I915_MAX_PIPES])
+{
+	enum pipe pipe;
+
+	for_each_pipe(dev_priv, pipe) {
+		if (pipe_stats[pipe] & PIPE_VBLANK_INTERRUPT_STATUS)
+			intel_handle_vblank(dev_priv, pipe);
+
+		if (pipe_stats[pipe] & PIPE_CRC_DONE_INTERRUPT_STATUS)
+			i9xx_pipe_crc_irq_handler(dev_priv, pipe);
+
+		if (pipe_stats[pipe] & PIPE_FIFO_UNDERRUN_STATUS)
+			intel_cpu_fifo_underrun_irq_handler(dev_priv, pipe);
+	}
+}
+
+void i915_pipestat_irq_handler(struct drm_i915_private *dev_priv,
+			       u32 iir, u32 pipe_stats[I915_MAX_PIPES])
+{
+	bool blc_event = false;
+	enum pipe pipe;
+
+	for_each_pipe(dev_priv, pipe) {
+		if (pipe_stats[pipe] & PIPE_VBLANK_INTERRUPT_STATUS)
+			intel_handle_vblank(dev_priv, pipe);
+
+		if (pipe_stats[pipe] & PIPE_LEGACY_BLC_EVENT_STATUS)
+			blc_event = true;
+
+		if (pipe_stats[pipe] & PIPE_CRC_DONE_INTERRUPT_STATUS)
+			i9xx_pipe_crc_irq_handler(dev_priv, pipe);
+
+		if (pipe_stats[pipe] & PIPE_FIFO_UNDERRUN_STATUS)
+			intel_cpu_fifo_underrun_irq_handler(dev_priv, pipe);
+	}
+
+	if (blc_event || (iir & I915_ASLE_INTERRUPT))
+		intel_opregion_asle_intr(dev_priv);
+}
+
+void i965_pipestat_irq_handler(struct drm_i915_private *dev_priv,
+			       u32 iir, u32 pipe_stats[I915_MAX_PIPES])
+{
+	bool blc_event = false;
+	enum pipe pipe;
+
+	for_each_pipe(dev_priv, pipe) {
+		if (pipe_stats[pipe] & PIPE_START_VBLANK_INTERRUPT_STATUS)
+			intel_handle_vblank(dev_priv, pipe);
+
+		if (pipe_stats[pipe] & PIPE_LEGACY_BLC_EVENT_STATUS)
+			blc_event = true;
+
+		if (pipe_stats[pipe] & PIPE_CRC_DONE_INTERRUPT_STATUS)
+			i9xx_pipe_crc_irq_handler(dev_priv, pipe);
+
+		if (pipe_stats[pipe] & PIPE_FIFO_UNDERRUN_STATUS)
+			intel_cpu_fifo_underrun_irq_handler(dev_priv, pipe);
+	}
+
+	if (blc_event || (iir & I915_ASLE_INTERRUPT))
+		intel_opregion_asle_intr(dev_priv);
+
+	if (pipe_stats[0] & PIPE_GMBUS_INTERRUPT_STATUS)
+		intel_gmbus_irq_handler(dev_priv);
+}
+
+void valleyview_pipestat_irq_handler(struct drm_i915_private *dev_priv,
+				     u32 pipe_stats[I915_MAX_PIPES])
+{
+	enum pipe pipe;
+
+	for_each_pipe(dev_priv, pipe) {
+		if (pipe_stats[pipe] & PIPE_START_VBLANK_INTERRUPT_STATUS)
+			intel_handle_vblank(dev_priv, pipe);
+
+		if (pipe_stats[pipe] & PLANE_FLIP_DONE_INT_STATUS_VLV)
+			flip_done_handler(dev_priv, pipe);
+
+		if (pipe_stats[pipe] & PIPE_CRC_DONE_INTERRUPT_STATUS)
+			i9xx_pipe_crc_irq_handler(dev_priv, pipe);
+
+		if (pipe_stats[pipe] & PIPE_FIFO_UNDERRUN_STATUS)
+			intel_cpu_fifo_underrun_irq_handler(dev_priv, pipe);
+	}
+
+	if (pipe_stats[0] & PIPE_GMBUS_INTERRUPT_STATUS)
+		intel_gmbus_irq_handler(dev_priv);
+}
+
+static void ibx_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
+{
+	enum pipe pipe;
+	u32 hotplug_trigger = pch_iir & SDE_HOTPLUG_MASK;
+
+	ibx_hpd_irq_handler(dev_priv, hotplug_trigger);
+
+	if (pch_iir & SDE_AUDIO_POWER_MASK) {
+		int port = ffs((pch_iir & SDE_AUDIO_POWER_MASK) >>
+			       SDE_AUDIO_POWER_SHIFT);
+		drm_dbg(&dev_priv->drm, "PCH audio power change on port %d\n",
+			port_name(port));
+	}
+
+	if (pch_iir & SDE_AUX_MASK)
+		intel_dp_aux_irq_handler(dev_priv);
+
+	if (pch_iir & SDE_GMBUS)
+		intel_gmbus_irq_handler(dev_priv);
+
+	if (pch_iir & SDE_AUDIO_HDCP_MASK)
+		drm_dbg(&dev_priv->drm, "PCH HDCP audio interrupt\n");
+
+	if (pch_iir & SDE_AUDIO_TRANS_MASK)
+		drm_dbg(&dev_priv->drm, "PCH transcoder audio interrupt\n");
+
+	if (pch_iir & SDE_POISON)
+		drm_err(&dev_priv->drm, "PCH poison interrupt\n");
+
+	if (pch_iir & SDE_FDI_MASK) {
+		for_each_pipe(dev_priv, pipe)
+			drm_dbg(&dev_priv->drm, "  pipe %c FDI IIR: 0x%08x\n",
+				pipe_name(pipe),
+				intel_uncore_read(&dev_priv->uncore, FDI_RX_IIR(pipe)));
+	}
+
+	if (pch_iir & (SDE_TRANSB_CRC_DONE | SDE_TRANSA_CRC_DONE))
+		drm_dbg(&dev_priv->drm, "PCH transcoder CRC done interrupt\n");
+
+	if (pch_iir & (SDE_TRANSB_CRC_ERR | SDE_TRANSA_CRC_ERR))
+		drm_dbg(&dev_priv->drm,
+			"PCH transcoder CRC error interrupt\n");
+
+	if (pch_iir & SDE_TRANSA_FIFO_UNDER)
+		intel_pch_fifo_underrun_irq_handler(dev_priv, PIPE_A);
+
+	if (pch_iir & SDE_TRANSB_FIFO_UNDER)
+		intel_pch_fifo_underrun_irq_handler(dev_priv, PIPE_B);
+}
+
+static void ivb_err_int_handler(struct drm_i915_private *dev_priv)
+{
+	u32 err_int = intel_uncore_read(&dev_priv->uncore, GEN7_ERR_INT);
+	enum pipe pipe;
+
+	if (err_int & ERR_INT_POISON)
+		drm_err(&dev_priv->drm, "Poison interrupt\n");
+
+	for_each_pipe(dev_priv, pipe) {
+		if (err_int & ERR_INT_FIFO_UNDERRUN(pipe))
+			intel_cpu_fifo_underrun_irq_handler(dev_priv, pipe);
+
+		if (err_int & ERR_INT_PIPE_CRC_DONE(pipe)) {
+			if (IS_IVYBRIDGE(dev_priv))
+				ivb_pipe_crc_irq_handler(dev_priv, pipe);
+			else
+				hsw_pipe_crc_irq_handler(dev_priv, pipe);
+		}
+	}
+
+	intel_uncore_write(&dev_priv->uncore, GEN7_ERR_INT, err_int);
+}
+
+static void cpt_serr_int_handler(struct drm_i915_private *dev_priv)
+{
+	u32 serr_int = intel_uncore_read(&dev_priv->uncore, SERR_INT);
+	enum pipe pipe;
+
+	if (serr_int & SERR_INT_POISON)
+		drm_err(&dev_priv->drm, "PCH poison interrupt\n");
+
+	for_each_pipe(dev_priv, pipe)
+		if (serr_int & SERR_INT_TRANS_FIFO_UNDERRUN(pipe))
+			intel_pch_fifo_underrun_irq_handler(dev_priv, pipe);
+
+	intel_uncore_write(&dev_priv->uncore, SERR_INT, serr_int);
+}
+
+static void cpt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
+{
+	enum pipe pipe;
+	u32 hotplug_trigger = pch_iir & SDE_HOTPLUG_MASK_CPT;
+
+	ibx_hpd_irq_handler(dev_priv, hotplug_trigger);
+
+	if (pch_iir & SDE_AUDIO_POWER_MASK_CPT) {
+		int port = ffs((pch_iir & SDE_AUDIO_POWER_MASK_CPT) >>
+			       SDE_AUDIO_POWER_SHIFT_CPT);
+		drm_dbg(&dev_priv->drm, "PCH audio power change on port %c\n",
+			port_name(port));
+	}
+
+	if (pch_iir & SDE_AUX_MASK_CPT)
+		intel_dp_aux_irq_handler(dev_priv);
+
+	if (pch_iir & SDE_GMBUS_CPT)
+		intel_gmbus_irq_handler(dev_priv);
+
+	if (pch_iir & SDE_AUDIO_CP_REQ_CPT)
+		drm_dbg(&dev_priv->drm, "Audio CP request interrupt\n");
+
+	if (pch_iir & SDE_AUDIO_CP_CHG_CPT)
+		drm_dbg(&dev_priv->drm, "Audio CP change interrupt\n");
+
+	if (pch_iir & SDE_FDI_MASK_CPT) {
+		for_each_pipe(dev_priv, pipe)
+			drm_dbg(&dev_priv->drm, "  pipe %c FDI IIR: 0x%08x\n",
+				pipe_name(pipe),
+				intel_uncore_read(&dev_priv->uncore, FDI_RX_IIR(pipe)));
+	}
+
+	if (pch_iir & SDE_ERROR_CPT)
+		cpt_serr_int_handler(dev_priv);
+}
+
+void ilk_display_irq_handler(struct drm_i915_private *dev_priv, u32 de_iir)
+{
+	enum pipe pipe;
+	u32 hotplug_trigger = de_iir & DE_DP_A_HOTPLUG;
+
+	if (hotplug_trigger)
+		ilk_hpd_irq_handler(dev_priv, hotplug_trigger);
+
+	if (de_iir & DE_AUX_CHANNEL_A)
+		intel_dp_aux_irq_handler(dev_priv);
+
+	if (de_iir & DE_GSE)
+		intel_opregion_asle_intr(dev_priv);
+
+	if (de_iir & DE_POISON)
+		drm_err(&dev_priv->drm, "Poison interrupt\n");
+
+	for_each_pipe(dev_priv, pipe) {
+		if (de_iir & DE_PIPE_VBLANK(pipe))
+			intel_handle_vblank(dev_priv, pipe);
+
+		if (de_iir & DE_PLANE_FLIP_DONE(pipe))
+			flip_done_handler(dev_priv, pipe);
+
+		if (de_iir & DE_PIPE_FIFO_UNDERRUN(pipe))
+			intel_cpu_fifo_underrun_irq_handler(dev_priv, pipe);
+
+		if (de_iir & DE_PIPE_CRC_DONE(pipe))
+			i9xx_pipe_crc_irq_handler(dev_priv, pipe);
+	}
+
+	/* check event from PCH */
+	if (de_iir & DE_PCH_EVENT) {
+		u32 pch_iir = intel_uncore_read(&dev_priv->uncore, SDEIIR);
+
+		if (HAS_PCH_CPT(dev_priv))
+			cpt_irq_handler(dev_priv, pch_iir);
+		else
+			ibx_irq_handler(dev_priv, pch_iir);
+
+		/* should clear PCH hotplug event before clear CPU irq */
+		intel_uncore_write(&dev_priv->uncore, SDEIIR, pch_iir);
+	}
+
+	if (DISPLAY_VER(dev_priv) == 5 && de_iir & DE_PCU_EVENT)
+		gen5_rps_irq_handler(&to_gt(dev_priv)->rps);
+}
+
+void ivb_display_irq_handler(struct drm_i915_private *dev_priv, u32 de_iir)
+{
+	enum pipe pipe;
+	u32 hotplug_trigger = de_iir & DE_DP_A_HOTPLUG_IVB;
+
+	if (hotplug_trigger)
+		ilk_hpd_irq_handler(dev_priv, hotplug_trigger);
+
+	if (de_iir & DE_ERR_INT_IVB)
+		ivb_err_int_handler(dev_priv);
+
+	if (de_iir & DE_AUX_CHANNEL_A_IVB)
+		intel_dp_aux_irq_handler(dev_priv);
+
+	if (de_iir & DE_GSE_IVB)
+		intel_opregion_asle_intr(dev_priv);
+
+	for_each_pipe(dev_priv, pipe) {
+		if (de_iir & DE_PIPE_VBLANK_IVB(pipe))
+			intel_handle_vblank(dev_priv, pipe);
+
+		if (de_iir & DE_PLANE_FLIP_DONE_IVB(pipe))
+			flip_done_handler(dev_priv, pipe);
+	}
+
+	/* check event from PCH */
+	if (!HAS_PCH_NOP(dev_priv) && (de_iir & DE_PCH_EVENT_IVB)) {
+		u32 pch_iir = intel_uncore_read(&dev_priv->uncore, SDEIIR);
+
+		cpt_irq_handler(dev_priv, pch_iir);
+
+		/* clear PCH hotplug event before clear CPU irq */
+		intel_uncore_write(&dev_priv->uncore, SDEIIR, pch_iir);
+	}
+}
+
+static u32 gen8_de_port_aux_mask(struct drm_i915_private *dev_priv)
+{
+	u32 mask;
+
+	if (DISPLAY_VER(dev_priv) >= 14)
+		return TGL_DE_PORT_AUX_DDIA |
+			TGL_DE_PORT_AUX_DDIB;
+	else if (DISPLAY_VER(dev_priv) >= 13)
+		return TGL_DE_PORT_AUX_DDIA |
+			TGL_DE_PORT_AUX_DDIB |
+			TGL_DE_PORT_AUX_DDIC |
+			XELPD_DE_PORT_AUX_DDID |
+			XELPD_DE_PORT_AUX_DDIE |
+			TGL_DE_PORT_AUX_USBC1 |
+			TGL_DE_PORT_AUX_USBC2 |
+			TGL_DE_PORT_AUX_USBC3 |
+			TGL_DE_PORT_AUX_USBC4;
+	else if (DISPLAY_VER(dev_priv) >= 12)
+		return TGL_DE_PORT_AUX_DDIA |
+			TGL_DE_PORT_AUX_DDIB |
+			TGL_DE_PORT_AUX_DDIC |
+			TGL_DE_PORT_AUX_USBC1 |
+			TGL_DE_PORT_AUX_USBC2 |
+			TGL_DE_PORT_AUX_USBC3 |
+			TGL_DE_PORT_AUX_USBC4 |
+			TGL_DE_PORT_AUX_USBC5 |
+			TGL_DE_PORT_AUX_USBC6;
+
+	mask = GEN8_AUX_CHANNEL_A;
+	if (DISPLAY_VER(dev_priv) >= 9)
+		mask |= GEN9_AUX_CHANNEL_B |
+			GEN9_AUX_CHANNEL_C |
+			GEN9_AUX_CHANNEL_D;
+
+	if (DISPLAY_VER(dev_priv) == 11) {
+		mask |= ICL_AUX_CHANNEL_F;
+		mask |= ICL_AUX_CHANNEL_E;
+	}
+
+	return mask;
+}
+
+static u32 gen8_de_pipe_fault_mask(struct drm_i915_private *dev_priv)
+{
+	if (DISPLAY_VER(dev_priv) >= 13 || HAS_D12_PLANE_MINIMIZATION(dev_priv))
+		return RKL_DE_PIPE_IRQ_FAULT_ERRORS;
+	else if (DISPLAY_VER(dev_priv) >= 11)
+		return GEN11_DE_PIPE_IRQ_FAULT_ERRORS;
+	else if (DISPLAY_VER(dev_priv) >= 9)
+		return GEN9_DE_PIPE_IRQ_FAULT_ERRORS;
+	else
+		return GEN8_DE_PIPE_IRQ_FAULT_ERRORS;
+}
+
+static void
+gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
+{
+	bool found = false;
+
+	if (iir & GEN8_DE_MISC_GSE) {
+		intel_opregion_asle_intr(dev_priv);
+		found = true;
+	}
+
+	if (iir & GEN8_DE_EDP_PSR) {
+		struct intel_encoder *encoder;
+		u32 psr_iir;
+		i915_reg_t iir_reg;
+
+		for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
+			struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+
+			if (DISPLAY_VER(dev_priv) >= 12)
+				iir_reg = TRANS_PSR_IIR(intel_dp->psr.transcoder);
+			else
+				iir_reg = EDP_PSR_IIR;
+
+			psr_iir = intel_uncore_rmw(&dev_priv->uncore, iir_reg, 0, 0);
+
+			if (psr_iir)
+				found = true;
+
+			intel_psr_irq_handler(intel_dp, psr_iir);
+
+			/* prior GEN12 only have one EDP PSR */
+			if (DISPLAY_VER(dev_priv) < 12)
+				break;
+		}
+	}
+
+	if (!found)
+		drm_err(&dev_priv->drm, "Unexpected DE Misc interrupt\n");
+}
+
+static void gen11_dsi_te_interrupt_handler(struct drm_i915_private *dev_priv,
+					   u32 te_trigger)
+{
+	enum pipe pipe = INVALID_PIPE;
+	enum transcoder dsi_trans;
+	enum port port;
+	u32 val, tmp;
+
+	/*
+	 * Incase of dual link, TE comes from DSI_1
+	 * this is to check if dual link is enabled
+	 */
+	val = intel_uncore_read(&dev_priv->uncore, TRANS_DDI_FUNC_CTL2(TRANSCODER_DSI_0));
+	val &= PORT_SYNC_MODE_ENABLE;
+
+	/*
+	 * if dual link is enabled, then read DSI_0
+	 * transcoder registers
+	 */
+	port = ((te_trigger & DSI1_TE && val) || (te_trigger & DSI0_TE)) ?
+						  PORT_A : PORT_B;
+	dsi_trans = (port == PORT_A) ? TRANSCODER_DSI_0 : TRANSCODER_DSI_1;
+
+	/* Check if DSI configured in command mode */
+	val = intel_uncore_read(&dev_priv->uncore, DSI_TRANS_FUNC_CONF(dsi_trans));
+	val = val & OP_MODE_MASK;
+
+	if (val != CMD_MODE_NO_GATE && val != CMD_MODE_TE_GATE) {
+		drm_err(&dev_priv->drm, "DSI trancoder not configured in command mode\n");
+		return;
+	}
+
+	/* Get PIPE for handling VBLANK event */
+	val = intel_uncore_read(&dev_priv->uncore, TRANS_DDI_FUNC_CTL(dsi_trans));
+	switch (val & TRANS_DDI_EDP_INPUT_MASK) {
+	case TRANS_DDI_EDP_INPUT_A_ON:
+		pipe = PIPE_A;
+		break;
+	case TRANS_DDI_EDP_INPUT_B_ONOFF:
+		pipe = PIPE_B;
+		break;
+	case TRANS_DDI_EDP_INPUT_C_ONOFF:
+		pipe = PIPE_C;
+		break;
+	default:
+		drm_err(&dev_priv->drm, "Invalid PIPE\n");
+		return;
+	}
+
+	intel_handle_vblank(dev_priv, pipe);
+
+	/* clear TE in dsi IIR */
+	port = (te_trigger & DSI1_TE) ? PORT_B : PORT_A;
+	tmp = intel_uncore_rmw(&dev_priv->uncore, DSI_INTR_IDENT_REG(port), 0, 0);
+}
+
+static u32 gen8_de_pipe_flip_done_mask(struct drm_i915_private *i915)
+{
+	if (DISPLAY_VER(i915) >= 9)
+		return GEN9_PIPE_PLANE1_FLIP_DONE;
+	else
+		return GEN8_PIPE_PRIMARY_FLIP_DONE;
+}
+
+u32 gen8_de_pipe_underrun_mask(struct drm_i915_private *dev_priv)
+{
+	u32 mask = GEN8_PIPE_FIFO_UNDERRUN;
+
+	if (DISPLAY_VER(dev_priv) >= 13)
+		mask |= XELPD_PIPE_SOFT_UNDERRUN |
+			XELPD_PIPE_HARD_UNDERRUN;
+
+	return mask;
+}
+
+static void gen8_read_and_ack_pch_irqs(struct drm_i915_private *i915, u32 *pch_iir, u32 *pica_iir)
+{
+	u32 pica_ier = 0;
+
+	*pica_iir = 0;
+	*pch_iir = intel_de_read(i915, SDEIIR);
+	if (!*pch_iir)
+		return;
+
+	/**
+	 * PICA IER must be disabled/re-enabled around clearing PICA IIR and
+	 * SDEIIR, to avoid losing PICA IRQs and to ensure that such IRQs set
+	 * their flags both in the PICA and SDE IIR.
+	 */
+	if (*pch_iir & SDE_PICAINTERRUPT) {
+		drm_WARN_ON(&i915->drm, INTEL_PCH_TYPE(i915) < PCH_MTP);
+
+		pica_ier = intel_de_rmw(i915, PICAINTERRUPT_IER, ~0, 0);
+		*pica_iir = intel_de_read(i915, PICAINTERRUPT_IIR);
+		intel_de_write(i915, PICAINTERRUPT_IIR, *pica_iir);
+	}
+
+	intel_de_write(i915, SDEIIR, *pch_iir);
+
+	if (pica_ier)
+		intel_de_write(i915, PICAINTERRUPT_IER, pica_ier);
+}
+
+void gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
+{
+	irqreturn_t ret = IRQ_NONE;
+	u32 iir;
+	enum pipe pipe;
+
+	drm_WARN_ON_ONCE(&dev_priv->drm, !HAS_DISPLAY(dev_priv));
+
+	if (master_ctl & GEN8_DE_MISC_IRQ) {
+		iir = intel_uncore_read(&dev_priv->uncore, GEN8_DE_MISC_IIR);
+		if (iir) {
+			intel_uncore_write(&dev_priv->uncore, GEN8_DE_MISC_IIR, iir);
+			ret = IRQ_HANDLED;
+			gen8_de_misc_irq_handler(dev_priv, iir);
+		} else {
+			drm_err_ratelimited(&dev_priv->drm,
+					    "The master control interrupt lied (DE MISC)!\n");
+		}
+	}
+
+	if (DISPLAY_VER(dev_priv) >= 11 && (master_ctl & GEN11_DE_HPD_IRQ)) {
+		iir = intel_uncore_read(&dev_priv->uncore, GEN11_DE_HPD_IIR);
+		if (iir) {
+			intel_uncore_write(&dev_priv->uncore, GEN11_DE_HPD_IIR, iir);
+			ret = IRQ_HANDLED;
+			gen11_hpd_irq_handler(dev_priv, iir);
+		} else {
+			drm_err_ratelimited(&dev_priv->drm,
+					    "The master control interrupt lied, (DE HPD)!\n");
+		}
+	}
+
+	if (master_ctl & GEN8_DE_PORT_IRQ) {
+		iir = intel_uncore_read(&dev_priv->uncore, GEN8_DE_PORT_IIR);
+		if (iir) {
+			bool found = false;
+
+			intel_uncore_write(&dev_priv->uncore, GEN8_DE_PORT_IIR, iir);
+			ret = IRQ_HANDLED;
+
+			if (iir & gen8_de_port_aux_mask(dev_priv)) {
+				intel_dp_aux_irq_handler(dev_priv);
+				found = true;
+			}
+
+			if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
+				u32 hotplug_trigger = iir & BXT_DE_PORT_HOTPLUG_MASK;
+
+				if (hotplug_trigger) {
+					bxt_hpd_irq_handler(dev_priv, hotplug_trigger);
+					found = true;
+				}
+			} else if (IS_BROADWELL(dev_priv)) {
+				u32 hotplug_trigger = iir & BDW_DE_PORT_HOTPLUG_MASK;
+
+				if (hotplug_trigger) {
+					ilk_hpd_irq_handler(dev_priv, hotplug_trigger);
+					found = true;
+				}
+			}
+
+			if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) &&
+			    (iir & BXT_DE_PORT_GMBUS)) {
+				intel_gmbus_irq_handler(dev_priv);
+				found = true;
+			}
+
+			if (DISPLAY_VER(dev_priv) >= 11) {
+				u32 te_trigger = iir & (DSI0_TE | DSI1_TE);
+
+				if (te_trigger) {
+					gen11_dsi_te_interrupt_handler(dev_priv, te_trigger);
+					found = true;
+				}
+			}
+
+			if (!found)
+				drm_err_ratelimited(&dev_priv->drm,
+						    "Unexpected DE Port interrupt\n");
+		} else {
+			drm_err_ratelimited(&dev_priv->drm,
+					    "The master control interrupt lied (DE PORT)!\n");
+		}
+	}
+
+	for_each_pipe(dev_priv, pipe) {
+		u32 fault_errors;
+
+		if (!(master_ctl & GEN8_DE_PIPE_IRQ(pipe)))
+			continue;
+
+		iir = intel_uncore_read(&dev_priv->uncore, GEN8_DE_PIPE_IIR(pipe));
+		if (!iir) {
+			drm_err_ratelimited(&dev_priv->drm,
+					    "The master control interrupt lied (DE PIPE)!\n");
+			continue;
+		}
+
+		ret = IRQ_HANDLED;
+		intel_uncore_write(&dev_priv->uncore, GEN8_DE_PIPE_IIR(pipe), iir);
+
+		if (iir & GEN8_PIPE_VBLANK)
+			intel_handle_vblank(dev_priv, pipe);
+
+		if (iir & gen8_de_pipe_flip_done_mask(dev_priv))
+			flip_done_handler(dev_priv, pipe);
+
+		if (iir & GEN8_PIPE_CDCLK_CRC_DONE)
+			hsw_pipe_crc_irq_handler(dev_priv, pipe);
+
+		if (iir & gen8_de_pipe_underrun_mask(dev_priv))
+			intel_cpu_fifo_underrun_irq_handler(dev_priv, pipe);
+
+		fault_errors = iir & gen8_de_pipe_fault_mask(dev_priv);
+		if (fault_errors)
+			drm_err_ratelimited(&dev_priv->drm,
+					    "Fault errors on pipe %c: 0x%08x\n",
+					    pipe_name(pipe),
+					    fault_errors);
+	}
+
+	if (HAS_PCH_SPLIT(dev_priv) && !HAS_PCH_NOP(dev_priv) &&
+	    master_ctl & GEN8_DE_PCH_IRQ) {
+		u32 pica_iir;
+
+		/*
+		 * FIXME(BDW): Assume for now that the new interrupt handling
+		 * scheme also closed the SDE interrupt handling race we've seen
+		 * on older pch-split platforms. But this needs testing.
+		 */
+		gen8_read_and_ack_pch_irqs(dev_priv, &iir, &pica_iir);
+		if (iir) {
+			ret = IRQ_HANDLED;
+
+			if (pica_iir)
+				xelpdp_pica_irq_handler(dev_priv, pica_iir);
+
+			if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
+				icp_irq_handler(dev_priv, iir);
+			else if (INTEL_PCH_TYPE(dev_priv) >= PCH_SPT)
+				spt_irq_handler(dev_priv, iir);
+			else
+				cpt_irq_handler(dev_priv, iir);
+		} else {
+			/*
+			 * Like on previous PCH there seems to be something
+			 * fishy going on with forwarding PCH interrupts.
+			 */
+			drm_dbg(&dev_priv->drm,
+				"The master control interrupt lied (SDE)!\n");
+		}
+	}
+
+	/* FIXME: return ret; */
+}
+
+u32 gen11_gu_misc_irq_ack(struct drm_i915_private *i915, const u32 master_ctl)
+{
+	void __iomem * const regs = i915->uncore.regs;
+	u32 iir;
+
+	if (!(master_ctl & GEN11_GU_MISC_IRQ))
+		return 0;
+
+	iir = raw_reg_read(regs, GEN11_GU_MISC_IIR);
+	if (likely(iir))
+		raw_reg_write(regs, GEN11_GU_MISC_IIR, iir);
+
+	return iir;
+}
+
+void gen11_gu_misc_irq_handler(struct drm_i915_private *i915, const u32 iir)
+{
+	if (iir & GEN11_GU_MISC_GSE)
+		intel_opregion_asle_intr(i915);
+}
+
+void gen11_display_irq_handler(struct drm_i915_private *i915)
+{
+	void __iomem * const regs = i915->uncore.regs;
+	const u32 disp_ctl = raw_reg_read(regs, GEN11_DISPLAY_INT_CTL);
+
+	disable_rpm_wakeref_asserts(&i915->runtime_pm);
+	/*
+	 * GEN11_DISPLAY_INT_CTL has same format as GEN8_MASTER_IRQ
+	 * for the display related bits.
+	 */
+	raw_reg_write(regs, GEN11_DISPLAY_INT_CTL, 0x0);
+	gen8_de_irq_handler(i915, disp_ctl);
+	raw_reg_write(regs, GEN11_DISPLAY_INT_CTL,
+		      GEN11_DISPLAY_IRQ_ENABLE);
+
+	enable_rpm_wakeref_asserts(&i915->runtime_pm);
+}
+
+/* Called from drm generic code, passed 'crtc' which
+ * we use as a pipe index
+ */
+int i8xx_enable_vblank(struct drm_crtc *crtc)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
+	enum pipe pipe = to_intel_crtc(crtc)->pipe;
+	unsigned long irqflags;
+
+	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
+	i915_enable_pipestat(dev_priv, pipe, PIPE_VBLANK_INTERRUPT_STATUS);
+	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
+
+	return 0;
+}
+
+int i915gm_enable_vblank(struct drm_crtc *crtc)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
+
+	/*
+	 * Vblank interrupts fail to wake the device up from C2+.
+	 * Disabling render clock gating during C-states avoids
+	 * the problem. There is a small power cost so we do this
+	 * only when vblank interrupts are actually enabled.
+	 */
+	if (dev_priv->vblank_enabled++ == 0)
+		intel_uncore_write(&dev_priv->uncore, SCPD0, _MASKED_BIT_ENABLE(CSTATE_RENDER_CLOCK_GATE_DISABLE));
+
+	return i8xx_enable_vblank(crtc);
+}
+
+int i965_enable_vblank(struct drm_crtc *crtc)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
+	enum pipe pipe = to_intel_crtc(crtc)->pipe;
+	unsigned long irqflags;
+
+	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
+	i915_enable_pipestat(dev_priv, pipe,
+			     PIPE_START_VBLANK_INTERRUPT_STATUS);
+	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
+
+	return 0;
+}
+
+int ilk_enable_vblank(struct drm_crtc *crtc)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
+	enum pipe pipe = to_intel_crtc(crtc)->pipe;
+	unsigned long irqflags;
+	u32 bit = DISPLAY_VER(dev_priv) >= 7 ?
+		DE_PIPE_VBLANK_IVB(pipe) : DE_PIPE_VBLANK(pipe);
+
+	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
+	ilk_enable_display_irq(dev_priv, bit);
+	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
+
+	/* Even though there is no DMC, frame counter can get stuck when
+	 * PSR is active as no frames are generated.
+	 */
+	if (HAS_PSR(dev_priv))
+		drm_crtc_vblank_restore(crtc);
+
+	return 0;
+}
+
+static bool gen11_dsi_configure_te(struct intel_crtc *intel_crtc,
+				   bool enable)
+{
+	struct drm_i915_private *dev_priv = to_i915(intel_crtc->base.dev);
+	enum port port;
+
+	if (!(intel_crtc->mode_flags &
+	    (I915_MODE_FLAG_DSI_USE_TE1 | I915_MODE_FLAG_DSI_USE_TE0)))
+		return false;
+
+	/* for dual link cases we consider TE from slave */
+	if (intel_crtc->mode_flags & I915_MODE_FLAG_DSI_USE_TE1)
+		port = PORT_B;
+	else
+		port = PORT_A;
+
+	intel_uncore_rmw(&dev_priv->uncore, DSI_INTR_MASK_REG(port), DSI_TE_EVENT,
+			 enable ? 0 : DSI_TE_EVENT);
+
+	intel_uncore_rmw(&dev_priv->uncore, DSI_INTR_IDENT_REG(port), 0, 0);
+
+	return true;
+}
+
+int bdw_enable_vblank(struct drm_crtc *_crtc)
+{
+	struct intel_crtc *crtc = to_intel_crtc(_crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	enum pipe pipe = crtc->pipe;
+	unsigned long irqflags;
+
+	if (gen11_dsi_configure_te(crtc, true))
+		return 0;
+
+	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
+	bdw_enable_pipe_irq(dev_priv, pipe, GEN8_PIPE_VBLANK);
+	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
+
+	/* Even if there is no DMC, frame counter can get stuck when
+	 * PSR is active as no frames are generated, so check only for PSR.
+	 */
+	if (HAS_PSR(dev_priv))
+		drm_crtc_vblank_restore(&crtc->base);
+
+	return 0;
+}
+
+/* Called from drm generic code, passed 'crtc' which
+ * we use as a pipe index
+ */
+void i8xx_disable_vblank(struct drm_crtc *crtc)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
+	enum pipe pipe = to_intel_crtc(crtc)->pipe;
+	unsigned long irqflags;
+
+	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
+	i915_disable_pipestat(dev_priv, pipe, PIPE_VBLANK_INTERRUPT_STATUS);
+	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
+}
+
+void i915gm_disable_vblank(struct drm_crtc *crtc)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
+
+	i8xx_disable_vblank(crtc);
+
+	if (--dev_priv->vblank_enabled == 0)
+		intel_uncore_write(&dev_priv->uncore, SCPD0, _MASKED_BIT_DISABLE(CSTATE_RENDER_CLOCK_GATE_DISABLE));
+}
+
+void i965_disable_vblank(struct drm_crtc *crtc)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
+	enum pipe pipe = to_intel_crtc(crtc)->pipe;
+	unsigned long irqflags;
+
+	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
+	i915_disable_pipestat(dev_priv, pipe,
+			      PIPE_START_VBLANK_INTERRUPT_STATUS);
+	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
+}
+
+void ilk_disable_vblank(struct drm_crtc *crtc)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
+	enum pipe pipe = to_intel_crtc(crtc)->pipe;
+	unsigned long irqflags;
+	u32 bit = DISPLAY_VER(dev_priv) >= 7 ?
+		DE_PIPE_VBLANK_IVB(pipe) : DE_PIPE_VBLANK(pipe);
+
+	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
+	ilk_disable_display_irq(dev_priv, bit);
+	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
+}
+
+void bdw_disable_vblank(struct drm_crtc *_crtc)
+{
+	struct intel_crtc *crtc = to_intel_crtc(_crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	enum pipe pipe = crtc->pipe;
+	unsigned long irqflags;
+
+	if (gen11_dsi_configure_te(crtc, false))
+		return;
+
+	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
+	bdw_disable_pipe_irq(dev_priv, pipe, GEN8_PIPE_VBLANK);
+	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
+}
+
+void vlv_display_irq_reset(struct drm_i915_private *dev_priv)
+{
+	struct intel_uncore *uncore = &dev_priv->uncore;
+
+	if (IS_CHERRYVIEW(dev_priv))
+		intel_uncore_write(uncore, DPINVGTT, DPINVGTT_STATUS_MASK_CHV);
+	else
+		intel_uncore_write(uncore, DPINVGTT, DPINVGTT_STATUS_MASK_VLV);
+
+	i915_hotplug_interrupt_update_locked(dev_priv, 0xffffffff, 0);
+	intel_uncore_rmw(uncore, PORT_HOTPLUG_STAT, 0, 0);
+
+	i9xx_pipestat_irq_reset(dev_priv);
+
+	GEN3_IRQ_RESET(uncore, VLV_);
+	dev_priv->irq_mask = ~0u;
+}
+
+void vlv_display_irq_postinstall(struct drm_i915_private *dev_priv)
+{
+	struct intel_uncore *uncore = &dev_priv->uncore;
+
+	u32 pipestat_mask;
+	u32 enable_mask;
+	enum pipe pipe;
+
+	pipestat_mask = PIPE_CRC_DONE_INTERRUPT_STATUS;
+
+	i915_enable_pipestat(dev_priv, PIPE_A, PIPE_GMBUS_INTERRUPT_STATUS);
+	for_each_pipe(dev_priv, pipe)
+		i915_enable_pipestat(dev_priv, pipe, pipestat_mask);
+
+	enable_mask = I915_DISPLAY_PORT_INTERRUPT |
+		I915_DISPLAY_PIPE_A_EVENT_INTERRUPT |
+		I915_DISPLAY_PIPE_B_EVENT_INTERRUPT |
+		I915_LPE_PIPE_A_INTERRUPT |
+		I915_LPE_PIPE_B_INTERRUPT;
+
+	if (IS_CHERRYVIEW(dev_priv))
+		enable_mask |= I915_DISPLAY_PIPE_C_EVENT_INTERRUPT |
+			I915_LPE_PIPE_C_INTERRUPT;
+
+	drm_WARN_ON(&dev_priv->drm, dev_priv->irq_mask != ~0u);
+
+	dev_priv->irq_mask = ~enable_mask;
+
+	GEN3_IRQ_INIT(uncore, VLV_, dev_priv->irq_mask, enable_mask);
+}
+
+void gen8_display_irq_reset(struct drm_i915_private *dev_priv)
+{
+	struct intel_uncore *uncore = &dev_priv->uncore;
+	enum pipe pipe;
+
+	if (!HAS_DISPLAY(dev_priv))
+		return;
+
+	intel_uncore_write(uncore, EDP_PSR_IMR, 0xffffffff);
+	intel_uncore_write(uncore, EDP_PSR_IIR, 0xffffffff);
+
+	for_each_pipe(dev_priv, pipe)
+		if (intel_display_power_is_enabled(dev_priv,
+						   POWER_DOMAIN_PIPE(pipe)))
+			GEN8_IRQ_RESET_NDX(uncore, DE_PIPE, pipe);
+
+	GEN3_IRQ_RESET(uncore, GEN8_DE_PORT_);
+	GEN3_IRQ_RESET(uncore, GEN8_DE_MISC_);
+}
+
+void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
+{
+	struct intel_uncore *uncore = &dev_priv->uncore;
+	enum pipe pipe;
+	u32 trans_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
+		BIT(TRANSCODER_C) | BIT(TRANSCODER_D);
+
+	if (!HAS_DISPLAY(dev_priv))
+		return;
+
+	intel_uncore_write(uncore, GEN11_DISPLAY_INT_CTL, 0);
+
+	if (DISPLAY_VER(dev_priv) >= 12) {
+		enum transcoder trans;
+
+		for_each_cpu_transcoder_masked(dev_priv, trans, trans_mask) {
+			enum intel_display_power_domain domain;
+
+			domain = POWER_DOMAIN_TRANSCODER(trans);
+			if (!intel_display_power_is_enabled(dev_priv, domain))
+				continue;
+
+			intel_uncore_write(uncore, TRANS_PSR_IMR(trans), 0xffffffff);
+			intel_uncore_write(uncore, TRANS_PSR_IIR(trans), 0xffffffff);
+		}
+	} else {
+		intel_uncore_write(uncore, EDP_PSR_IMR, 0xffffffff);
+		intel_uncore_write(uncore, EDP_PSR_IIR, 0xffffffff);
+	}
+
+	for_each_pipe(dev_priv, pipe)
+		if (intel_display_power_is_enabled(dev_priv,
+						   POWER_DOMAIN_PIPE(pipe)))
+			GEN8_IRQ_RESET_NDX(uncore, DE_PIPE, pipe);
+
+	GEN3_IRQ_RESET(uncore, GEN8_DE_PORT_);
+	GEN3_IRQ_RESET(uncore, GEN8_DE_MISC_);
+
+	if (DISPLAY_VER(dev_priv) >= 14)
+		GEN3_IRQ_RESET(uncore, PICAINTERRUPT_);
+	else
+		GEN3_IRQ_RESET(uncore, GEN11_DE_HPD_);
+
+	if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
+		GEN3_IRQ_RESET(uncore, SDE);
+}
+
+void gen8_irq_power_well_post_enable(struct drm_i915_private *dev_priv,
+				     u8 pipe_mask)
+{
+	struct intel_uncore *uncore = &dev_priv->uncore;
+	u32 extra_ier = GEN8_PIPE_VBLANK |
+		gen8_de_pipe_underrun_mask(dev_priv) |
+		gen8_de_pipe_flip_done_mask(dev_priv);
+	enum pipe pipe;
+
+	spin_lock_irq(&dev_priv->irq_lock);
+
+	if (!intel_irqs_enabled(dev_priv)) {
+		spin_unlock_irq(&dev_priv->irq_lock);
+		return;
+	}
+
+	for_each_pipe_masked(dev_priv, pipe, pipe_mask)
+		GEN8_IRQ_INIT_NDX(uncore, DE_PIPE, pipe,
+				  dev_priv->de_irq_mask[pipe],
+				  ~dev_priv->de_irq_mask[pipe] | extra_ier);
+
+	spin_unlock_irq(&dev_priv->irq_lock);
+}
+
+void gen8_irq_power_well_pre_disable(struct drm_i915_private *dev_priv,
+				     u8 pipe_mask)
+{
+	struct intel_uncore *uncore = &dev_priv->uncore;
+	enum pipe pipe;
+
+	spin_lock_irq(&dev_priv->irq_lock);
+
+	if (!intel_irqs_enabled(dev_priv)) {
+		spin_unlock_irq(&dev_priv->irq_lock);
+		return;
+	}
+
+	for_each_pipe_masked(dev_priv, pipe, pipe_mask)
+		GEN8_IRQ_RESET_NDX(uncore, DE_PIPE, pipe);
+
+	spin_unlock_irq(&dev_priv->irq_lock);
+
+	/* make sure we're done processing display irqs */
+	intel_synchronize_irq(dev_priv);
+}
+
+/*
+ * SDEIER is also touched by the interrupt handler to work around missed PCH
+ * interrupts. Hence we can't update it after the interrupt handler is enabled -
+ * instead we unconditionally enable all PCH interrupt sources here, but then
+ * only unmask them as needed with SDEIMR.
+ *
+ * Note that we currently do this after installing the interrupt handler,
+ * but before we enable the master interrupt. That should be sufficient
+ * to avoid races with the irq handler, assuming we have MSI. Shared legacy
+ * interrupts could still race.
+ */
+void ibx_irq_postinstall(struct drm_i915_private *dev_priv)
+{
+	struct intel_uncore *uncore = &dev_priv->uncore;
+	u32 mask;
+
+	if (HAS_PCH_NOP(dev_priv))
+		return;
+
+	if (HAS_PCH_IBX(dev_priv))
+		mask = SDE_GMBUS | SDE_AUX_MASK | SDE_POISON;
+	else if (HAS_PCH_CPT(dev_priv) || HAS_PCH_LPT(dev_priv))
+		mask = SDE_GMBUS_CPT | SDE_AUX_MASK_CPT;
+	else
+		mask = SDE_GMBUS_CPT;
+
+	GEN3_IRQ_INIT(uncore, SDE, ~mask, 0xffffffff);
+}
+
+void valleyview_enable_display_irqs(struct drm_i915_private *dev_priv)
+{
+	lockdep_assert_held(&dev_priv->irq_lock);
+
+	if (dev_priv->display_irqs_enabled)
+		return;
+
+	dev_priv->display_irqs_enabled = true;
+
+	if (intel_irqs_enabled(dev_priv)) {
+		vlv_display_irq_reset(dev_priv);
+		vlv_display_irq_postinstall(dev_priv);
+	}
+}
+
+void valleyview_disable_display_irqs(struct drm_i915_private *dev_priv)
+{
+	lockdep_assert_held(&dev_priv->irq_lock);
+
+	if (!dev_priv->display_irqs_enabled)
+		return;
+
+	dev_priv->display_irqs_enabled = false;
+
+	if (intel_irqs_enabled(dev_priv))
+		vlv_display_irq_reset(dev_priv);
+}
+
+void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
+{
+	struct intel_uncore *uncore = &dev_priv->uncore;
+
+	u32 de_pipe_masked = gen8_de_pipe_fault_mask(dev_priv) |
+		GEN8_PIPE_CDCLK_CRC_DONE;
+	u32 de_pipe_enables;
+	u32 de_port_masked = gen8_de_port_aux_mask(dev_priv);
+	u32 de_port_enables;
+	u32 de_misc_masked = GEN8_DE_EDP_PSR;
+	u32 trans_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
+		BIT(TRANSCODER_C) | BIT(TRANSCODER_D);
+	enum pipe pipe;
+
+	if (!HAS_DISPLAY(dev_priv))
+		return;
+
+	if (DISPLAY_VER(dev_priv) <= 10)
+		de_misc_masked |= GEN8_DE_MISC_GSE;
+
+	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
+		de_port_masked |= BXT_DE_PORT_GMBUS;
+
+	if (DISPLAY_VER(dev_priv) >= 11) {
+		enum port port;
+
+		if (intel_bios_is_dsi_present(dev_priv, &port))
+			de_port_masked |= DSI0_TE | DSI1_TE;
+	}
+
+	de_pipe_enables = de_pipe_masked |
+		GEN8_PIPE_VBLANK |
+		gen8_de_pipe_underrun_mask(dev_priv) |
+		gen8_de_pipe_flip_done_mask(dev_priv);
+
+	de_port_enables = de_port_masked;
+	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
+		de_port_enables |= BXT_DE_PORT_HOTPLUG_MASK;
+	else if (IS_BROADWELL(dev_priv))
+		de_port_enables |= BDW_DE_PORT_HOTPLUG_MASK;
+
+	if (DISPLAY_VER(dev_priv) >= 12) {
+		enum transcoder trans;
+
+		for_each_cpu_transcoder_masked(dev_priv, trans, trans_mask) {
+			enum intel_display_power_domain domain;
+
+			domain = POWER_DOMAIN_TRANSCODER(trans);
+			if (!intel_display_power_is_enabled(dev_priv, domain))
+				continue;
+
+			gen3_assert_iir_is_zero(uncore, TRANS_PSR_IIR(trans));
+		}
+	} else {
+		gen3_assert_iir_is_zero(uncore, EDP_PSR_IIR);
+	}
+
+	for_each_pipe(dev_priv, pipe) {
+		dev_priv->de_irq_mask[pipe] = ~de_pipe_masked;
+
+		if (intel_display_power_is_enabled(dev_priv,
+						   POWER_DOMAIN_PIPE(pipe)))
+			GEN8_IRQ_INIT_NDX(uncore, DE_PIPE, pipe,
+					  dev_priv->de_irq_mask[pipe],
+					  de_pipe_enables);
+	}
+
+	GEN3_IRQ_INIT(uncore, GEN8_DE_PORT_, ~de_port_masked, de_port_enables);
+	GEN3_IRQ_INIT(uncore, GEN8_DE_MISC_, ~de_misc_masked, de_misc_masked);
+
+	if (IS_DISPLAY_VER(dev_priv, 11, 13)) {
+		u32 de_hpd_masked = 0;
+		u32 de_hpd_enables = GEN11_DE_TC_HOTPLUG_MASK |
+				     GEN11_DE_TBT_HOTPLUG_MASK;
+
+		GEN3_IRQ_INIT(uncore, GEN11_DE_HPD_, ~de_hpd_masked,
+			      de_hpd_enables);
+	}
+}
+
+void mtp_irq_postinstall(struct drm_i915_private *i915)
+{
+	struct intel_uncore *uncore = &i915->uncore;
+	u32 sde_mask = SDE_GMBUS_ICP | SDE_PICAINTERRUPT;
+	u32 de_hpd_mask = XELPDP_AUX_TC_MASK;
+	u32 de_hpd_enables = de_hpd_mask | XELPDP_DP_ALT_HOTPLUG_MASK |
+			     XELPDP_TBT_HOTPLUG_MASK;
+
+	GEN3_IRQ_INIT(uncore, PICAINTERRUPT_, ~de_hpd_mask,
+		      de_hpd_enables);
+
+	GEN3_IRQ_INIT(uncore, SDE, ~sde_mask, 0xffffffff);
+}
+
+void icp_irq_postinstall(struct drm_i915_private *dev_priv)
+{
+	struct intel_uncore *uncore = &dev_priv->uncore;
+	u32 mask = SDE_GMBUS_ICP;
+
+	GEN3_IRQ_INIT(uncore, SDE, ~mask, 0xffffffff);
+}
+
+void gen11_de_irq_postinstall(struct drm_i915_private *dev_priv)
+{
+	if (!HAS_DISPLAY(dev_priv))
+		return;
+
+	gen8_de_irq_postinstall(dev_priv);
+
+	intel_uncore_write(&dev_priv->uncore, GEN11_DISPLAY_INT_CTL,
+			   GEN11_DISPLAY_IRQ_ENABLE);
+}
+
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
new file mode 100644
index 000000000000..c4dfa55b192d
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
@@ -0,0 +1,79 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#ifndef __INTEL_DISPLAY_IRQ_H__
+#define __INTEL_DISPLAY_IRQ_H__
+
+#include <linux/types.h>
+
+enum pipe;
+struct drm_i915_private;
+struct drm_crtc;
+
+void valleyview_enable_display_irqs(struct drm_i915_private *i915);
+void valleyview_disable_display_irqs(struct drm_i915_private *i915);
+
+void ilk_update_display_irq(struct drm_i915_private *i915,
+			    u32 interrupt_mask, u32 enabled_irq_mask);
+void ilk_enable_display_irq(struct drm_i915_private *i915, u32 bits);
+void ilk_disable_display_irq(struct drm_i915_private *i915, u32 bits);
+
+void bdw_update_port_irq(struct drm_i915_private *i915, u32 interrupt_mask, u32 enabled_irq_mask);
+void bdw_enable_pipe_irq(struct drm_i915_private *i915, enum pipe pipe, u32 bits);
+void bdw_disable_pipe_irq(struct drm_i915_private *i915, enum pipe pipe, u32 bits);
+
+void ibx_display_interrupt_update(struct drm_i915_private *i915,
+				  u32 interrupt_mask, u32 enabled_irq_mask);
+void ibx_enable_display_interrupt(struct drm_i915_private *i915, u32 bits);
+void ibx_disable_display_interrupt(struct drm_i915_private *i915, u32 bits);
+
+void gen8_irq_power_well_post_enable(struct drm_i915_private *i915, u8 pipe_mask);
+void gen8_irq_power_well_pre_disable(struct drm_i915_private *i915, u8 pipe_mask);
+u32 gen8_de_pipe_underrun_mask(struct drm_i915_private *i915);
+
+int i8xx_enable_vblank(struct drm_crtc *crtc);
+int i915gm_enable_vblank(struct drm_crtc *crtc);
+int i965_enable_vblank(struct drm_crtc *crtc);
+int ilk_enable_vblank(struct drm_crtc *crtc);
+int bdw_enable_vblank(struct drm_crtc *crtc);
+void i8xx_disable_vblank(struct drm_crtc *crtc);
+void i915gm_disable_vblank(struct drm_crtc *crtc);
+void i965_disable_vblank(struct drm_crtc *crtc);
+void ilk_disable_vblank(struct drm_crtc *crtc);
+void bdw_disable_vblank(struct drm_crtc *crtc);
+
+void ivb_display_irq_handler(struct drm_i915_private *i915, u32 de_iir);
+void ilk_display_irq_handler(struct drm_i915_private *i915, u32 de_iir);
+void gen8_de_irq_handler(struct drm_i915_private *i915, u32 master_ctl);
+void gen11_display_irq_handler(struct drm_i915_private *i915);
+
+u32 gen11_gu_misc_irq_ack(struct drm_i915_private *i915, const u32 master_ctl);
+void gen11_gu_misc_irq_handler(struct drm_i915_private *i915, const u32 iir);
+
+void vlv_display_irq_reset(struct drm_i915_private *i915);
+void gen8_display_irq_reset(struct drm_i915_private *i915);
+void gen11_display_irq_reset(struct drm_i915_private *i915);
+
+void ibx_irq_postinstall(struct drm_i915_private *i915);
+void vlv_display_irq_postinstall(struct drm_i915_private *i915);
+void icp_irq_postinstall(struct drm_i915_private *i915);
+void gen8_de_irq_postinstall(struct drm_i915_private *i915);
+void mtp_irq_postinstall(struct drm_i915_private *i915);
+void gen11_de_irq_postinstall(struct drm_i915_private *i915);
+
+u32 i915_pipestat_enable_mask(struct drm_i915_private *i915, enum pipe pipe);
+void i915_enable_pipestat(struct drm_i915_private *i915, enum pipe pipe, u32 status_mask);
+void i915_disable_pipestat(struct drm_i915_private *i915, enum pipe pipe, u32 status_mask);
+void i915_enable_asle_pipestat(struct drm_i915_private *i915);
+void i9xx_pipestat_irq_reset(struct drm_i915_private *i915);
+
+void i9xx_pipestat_irq_ack(struct drm_i915_private *i915, u32 iir, u32 *pipe_stats);
+
+void i915_pipestat_irq_handler(struct drm_i915_private *i915, u32 iir, u32 *pipe_stats);
+void i965_pipestat_irq_handler(struct drm_i915_private *i915, u32 iir, u32 *pipe_stats);
+void valleyview_pipestat_irq_handler(struct drm_i915_private *i915, u32 *pipe_stats);
+void i8xx_pipestat_irq_handler(struct drm_i915_private *i915, u16 iir, u32 *pipe_stats);
+
+#endif /* __INTEL_DISPLAY_IRQ_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 41eabdf3e871..916009894d89 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -11,6 +11,7 @@
 #include "intel_combo_phy_regs.h"
 #include "intel_crt.h"
 #include "intel_de.h"
+#include "intel_display_irq.h"
 #include "intel_display_power_well.h"
 #include "intel_display_types.h"
 #include "intel_dkl_phy.h"
diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
index e7f77a225739..09a7fa6c0c37 100644
--- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
+++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
@@ -27,8 +27,8 @@
 
 #include "i915_drv.h"
 #include "i915_reg.h"
-#include "i915_irq.h"
 #include "intel_de.h"
+#include "intel_display_irq.h"
 #include "intel_display_trace.h"
 #include "intel_display_types.h"
 #include "intel_fbc.h"
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
index 1d7ae49e073e..f95fa793fabb 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
@@ -4,9 +4,9 @@
  */
 
 #include "i915_drv.h"
-#include "i915_irq.h"
 #include "i915_reg.h"
 #include "intel_de.h"
+#include "intel_display_irq.h"
 #include "intel_display_types.h"
 #include "intel_dp_aux.h"
 #include "intel_gmbus.h"
diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
index e3ccface0c9d..26059355e3d8 100644
--- a/drivers/gpu/drm/i915/display/intel_tv.c
+++ b/drivers/gpu/drm/i915/display/intel_tv.c
@@ -35,11 +35,11 @@
 #include <drm/drm_edid.h>
 
 #include "i915_drv.h"
-#include "i915_irq.h"
 #include "i915_reg.h"
 #include "intel_connector.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
+#include "intel_display_irq.h"
 #include "intel_display_types.h"
 #include "intel_dpll.h"
 #include "intel_hotplug.h"
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 8ea0598a5a07..1ea664a366c1 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -9,10 +9,10 @@
 #include <drm/drm_fourcc.h>
 
 #include "i915_drv.h"
-#include "i915_irq.h"
 #include "i915_reg.h"
 #include "intel_atomic_plane.h"
 #include "intel_de.h"
+#include "intel_display_irq.h"
 #include "intel_display_types.h"
 #include "intel_fb.h"
 #include "intel_fbc.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 80968e49e2c3..e68a99205599 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -8,6 +8,7 @@
 #include <drm/i915_drm.h>
 
 #include "display/intel_display.h"
+#include "display/intel_display_irq.h"
 #include "i915_drv.h"
 #include "i915_irq.h"
 #include "i915_reg.h"
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 0ead32154f81..82fbabcdd7a5 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -33,18 +33,11 @@
 
 #include <drm/drm_drv.h>
 
-#include "display/icl_dsi_regs.h"
-#include "display/intel_de.h"
-#include "display/intel_display_trace.h"
+#include "display/intel_display_irq.h"
 #include "display/intel_display_types.h"
-#include "display/intel_dp_aux.h"
-#include "display/intel_fdi_regs.h"
-#include "display/intel_fifo_underrun.h"
-#include "display/intel_gmbus.h"
 #include "display/intel_hotplug.h"
 #include "display/intel_hotplug_irq.h"
 #include "display/intel_lpe_audio.h"
-#include "display/intel_psr.h"
 #include "display/intel_psr_regs.h"
 
 #include "gt/intel_breadcrumbs.h"
@@ -85,14 +78,6 @@ static inline void pmu_irq_stats(struct drm_i915_private *i915,
 	WRITE_ONCE(i915->pmu.irq_count, i915->pmu.irq_count + 1);
 }
 
-static void
-intel_handle_vblank(struct drm_i915_private *dev_priv, enum pipe pipe)
-{
-	struct intel_crtc *crtc = intel_crtc_for_pipe(dev_priv, pipe);
-
-	drm_crtc_handle_vblank(&crtc->base);
-}
-
 void gen3_irq_reset(struct intel_uncore *uncore, i915_reg_t imr,
 		    i915_reg_t iir, i915_reg_t ier)
 {
@@ -125,7 +110,7 @@ static void gen2_irq_reset(struct intel_uncore *uncore)
 /*
  * We should clear IMR at preinstall/uninstall, and just check at postinstall.
  */
-static void gen3_assert_iir_is_zero(struct intel_uncore *uncore, i915_reg_t reg)
+void gen3_assert_iir_is_zero(struct intel_uncore *uncore, i915_reg_t reg)
 {
 	u32 val = intel_uncore_read(uncore, reg);
 
@@ -179,268 +164,6 @@ static void gen2_irq_init(struct intel_uncore *uncore,
 	intel_uncore_posting_read16(uncore, GEN2_IMR);
 }
 
-/**
- * ilk_update_display_irq - update DEIMR
- * @dev_priv: driver private
- * @interrupt_mask: mask of interrupt bits to update
- * @enabled_irq_mask: mask of interrupt bits to enable
- */
-void ilk_update_display_irq(struct drm_i915_private *dev_priv,
-			    u32 interrupt_mask, u32 enabled_irq_mask)
-{
-	u32 new_val;
-
-	lockdep_assert_held(&dev_priv->irq_lock);
-	drm_WARN_ON(&dev_priv->drm, enabled_irq_mask & ~interrupt_mask);
-
-	new_val = dev_priv->irq_mask;
-	new_val &= ~interrupt_mask;
-	new_val |= (~enabled_irq_mask & interrupt_mask);
-
-	if (new_val != dev_priv->irq_mask &&
-	    !drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv))) {
-		dev_priv->irq_mask = new_val;
-		intel_uncore_write(&dev_priv->uncore, DEIMR, dev_priv->irq_mask);
-		intel_uncore_posting_read(&dev_priv->uncore, DEIMR);
-	}
-}
-
-void ilk_enable_display_irq(struct drm_i915_private *i915, u32 bits)
-{
-	ilk_update_display_irq(i915, bits, bits);
-}
-
-void ilk_disable_display_irq(struct drm_i915_private *i915, u32 bits)
-{
-	ilk_update_display_irq(i915, bits, 0);
-}
-
-/**
- * bdw_update_port_irq - update DE port interrupt
- * @dev_priv: driver private
- * @interrupt_mask: mask of interrupt bits to update
- * @enabled_irq_mask: mask of interrupt bits to enable
- */
-void bdw_update_port_irq(struct drm_i915_private *dev_priv,
-			 u32 interrupt_mask, u32 enabled_irq_mask)
-{
-	u32 new_val;
-	u32 old_val;
-
-	lockdep_assert_held(&dev_priv->irq_lock);
-
-	drm_WARN_ON(&dev_priv->drm, enabled_irq_mask & ~interrupt_mask);
-
-	if (drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv)))
-		return;
-
-	old_val = intel_uncore_read(&dev_priv->uncore, GEN8_DE_PORT_IMR);
-
-	new_val = old_val;
-	new_val &= ~interrupt_mask;
-	new_val |= (~enabled_irq_mask & interrupt_mask);
-
-	if (new_val != old_val) {
-		intel_uncore_write(&dev_priv->uncore, GEN8_DE_PORT_IMR, new_val);
-		intel_uncore_posting_read(&dev_priv->uncore, GEN8_DE_PORT_IMR);
-	}
-}
-
-/**
- * bdw_update_pipe_irq - update DE pipe interrupt
- * @dev_priv: driver private
- * @pipe: pipe whose interrupt to update
- * @interrupt_mask: mask of interrupt bits to update
- * @enabled_irq_mask: mask of interrupt bits to enable
- */
-static void bdw_update_pipe_irq(struct drm_i915_private *dev_priv,
-				enum pipe pipe, u32 interrupt_mask,
-				u32 enabled_irq_mask)
-{
-	u32 new_val;
-
-	lockdep_assert_held(&dev_priv->irq_lock);
-
-	drm_WARN_ON(&dev_priv->drm, enabled_irq_mask & ~interrupt_mask);
-
-	if (drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv)))
-		return;
-
-	new_val = dev_priv->de_irq_mask[pipe];
-	new_val &= ~interrupt_mask;
-	new_val |= (~enabled_irq_mask & interrupt_mask);
-
-	if (new_val != dev_priv->de_irq_mask[pipe]) {
-		dev_priv->de_irq_mask[pipe] = new_val;
-		intel_uncore_write(&dev_priv->uncore, GEN8_DE_PIPE_IMR(pipe), dev_priv->de_irq_mask[pipe]);
-		intel_uncore_posting_read(&dev_priv->uncore, GEN8_DE_PIPE_IMR(pipe));
-	}
-}
-
-void bdw_enable_pipe_irq(struct drm_i915_private *i915,
-			 enum pipe pipe, u32 bits)
-{
-	bdw_update_pipe_irq(i915, pipe, bits, bits);
-}
-
-void bdw_disable_pipe_irq(struct drm_i915_private *i915,
-			  enum pipe pipe, u32 bits)
-{
-	bdw_update_pipe_irq(i915, pipe, bits, 0);
-}
-
-/**
- * ibx_display_interrupt_update - update SDEIMR
- * @dev_priv: driver private
- * @interrupt_mask: mask of interrupt bits to update
- * @enabled_irq_mask: mask of interrupt bits to enable
- */
-void ibx_display_interrupt_update(struct drm_i915_private *dev_priv,
-				  u32 interrupt_mask,
-				  u32 enabled_irq_mask)
-{
-	u32 sdeimr = intel_uncore_read(&dev_priv->uncore, SDEIMR);
-	sdeimr &= ~interrupt_mask;
-	sdeimr |= (~enabled_irq_mask & interrupt_mask);
-
-	drm_WARN_ON(&dev_priv->drm, enabled_irq_mask & ~interrupt_mask);
-
-	lockdep_assert_held(&dev_priv->irq_lock);
-
-	if (drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv)))
-		return;
-
-	intel_uncore_write(&dev_priv->uncore, SDEIMR, sdeimr);
-	intel_uncore_posting_read(&dev_priv->uncore, SDEIMR);
-}
-
-void ibx_enable_display_interrupt(struct drm_i915_private *i915, u32 bits)
-{
-	ibx_display_interrupt_update(i915, bits, bits);
-}
-
-void ibx_disable_display_interrupt(struct drm_i915_private *i915, u32 bits)
-{
-	ibx_display_interrupt_update(i915, bits, 0);
-}
-
-u32 i915_pipestat_enable_mask(struct drm_i915_private *dev_priv,
-			      enum pipe pipe)
-{
-	u32 status_mask = dev_priv->pipestat_irq_mask[pipe];
-	u32 enable_mask = status_mask << 16;
-
-	lockdep_assert_held(&dev_priv->irq_lock);
-
-	if (DISPLAY_VER(dev_priv) < 5)
-		goto out;
-
-	/*
-	 * On pipe A we don't support the PSR interrupt yet,
-	 * on pipe B and C the same bit MBZ.
-	 */
-	if (drm_WARN_ON_ONCE(&dev_priv->drm,
-			     status_mask & PIPE_A_PSR_STATUS_VLV))
-		return 0;
-	/*
-	 * On pipe B and C we don't support the PSR interrupt yet, on pipe
-	 * A the same bit is for perf counters which we don't use either.
-	 */
-	if (drm_WARN_ON_ONCE(&dev_priv->drm,
-			     status_mask & PIPE_B_PSR_STATUS_VLV))
-		return 0;
-
-	enable_mask &= ~(PIPE_FIFO_UNDERRUN_STATUS |
-			 SPRITE0_FLIP_DONE_INT_EN_VLV |
-			 SPRITE1_FLIP_DONE_INT_EN_VLV);
-	if (status_mask & SPRITE0_FLIP_DONE_INT_STATUS_VLV)
-		enable_mask |= SPRITE0_FLIP_DONE_INT_EN_VLV;
-	if (status_mask & SPRITE1_FLIP_DONE_INT_STATUS_VLV)
-		enable_mask |= SPRITE1_FLIP_DONE_INT_EN_VLV;
-
-out:
-	drm_WARN_ONCE(&dev_priv->drm,
-		      enable_mask & ~PIPESTAT_INT_ENABLE_MASK ||
-		      status_mask & ~PIPESTAT_INT_STATUS_MASK,
-		      "pipe %c: enable_mask=0x%x, status_mask=0x%x\n",
-		      pipe_name(pipe), enable_mask, status_mask);
-
-	return enable_mask;
-}
-
-void i915_enable_pipestat(struct drm_i915_private *dev_priv,
-			  enum pipe pipe, u32 status_mask)
-{
-	i915_reg_t reg = PIPESTAT(pipe);
-	u32 enable_mask;
-
-	drm_WARN_ONCE(&dev_priv->drm, status_mask & ~PIPESTAT_INT_STATUS_MASK,
-		      "pipe %c: status_mask=0x%x\n",
-		      pipe_name(pipe), status_mask);
-
-	lockdep_assert_held(&dev_priv->irq_lock);
-	drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv));
-
-	if ((dev_priv->pipestat_irq_mask[pipe] & status_mask) == status_mask)
-		return;
-
-	dev_priv->pipestat_irq_mask[pipe] |= status_mask;
-	enable_mask = i915_pipestat_enable_mask(dev_priv, pipe);
-
-	intel_uncore_write(&dev_priv->uncore, reg, enable_mask | status_mask);
-	intel_uncore_posting_read(&dev_priv->uncore, reg);
-}
-
-void i915_disable_pipestat(struct drm_i915_private *dev_priv,
-			   enum pipe pipe, u32 status_mask)
-{
-	i915_reg_t reg = PIPESTAT(pipe);
-	u32 enable_mask;
-
-	drm_WARN_ONCE(&dev_priv->drm, status_mask & ~PIPESTAT_INT_STATUS_MASK,
-		      "pipe %c: status_mask=0x%x\n",
-		      pipe_name(pipe), status_mask);
-
-	lockdep_assert_held(&dev_priv->irq_lock);
-	drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv));
-
-	if ((dev_priv->pipestat_irq_mask[pipe] & status_mask) == 0)
-		return;
-
-	dev_priv->pipestat_irq_mask[pipe] &= ~status_mask;
-	enable_mask = i915_pipestat_enable_mask(dev_priv, pipe);
-
-	intel_uncore_write(&dev_priv->uncore, reg, enable_mask | status_mask);
-	intel_uncore_posting_read(&dev_priv->uncore, reg);
-}
-
-static bool i915_has_asle(struct drm_i915_private *dev_priv)
-{
-	if (!dev_priv->display.opregion.asle)
-		return false;
-
-	return IS_PINEVIEW(dev_priv) || IS_MOBILE(dev_priv);
-}
-
-/**
- * i915_enable_asle_pipestat - enable ASLE pipestat for OpRegion
- * @dev_priv: i915 device private
- */
-static void i915_enable_asle_pipestat(struct drm_i915_private *dev_priv)
-{
-	if (!i915_has_asle(dev_priv))
-		return;
-
-	spin_lock_irq(&dev_priv->irq_lock);
-
-	i915_enable_pipestat(dev_priv, PIPE_B, PIPE_LEGACY_BLC_EVENT_STATUS);
-	if (DISPLAY_VER(dev_priv) >= 4)
-		i915_enable_pipestat(dev_priv, PIPE_A,
-				     PIPE_LEGACY_BLC_EVENT_STATUS);
-
-	spin_unlock_irq(&dev_priv->irq_lock);
-}
-
 /**
  * ivb_parity_work - Workqueue called when a parity error interrupt
  * occurred.
@@ -525,278 +248,6 @@ static void ivb_parity_work(struct work_struct *work)
 	mutex_unlock(&dev_priv->drm.struct_mutex);
 }
 
-#if defined(CONFIG_DEBUG_FS)
-static void display_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
-					 enum pipe pipe,
-					 u32 crc0, u32 crc1,
-					 u32 crc2, u32 crc3,
-					 u32 crc4)
-{
-	struct intel_crtc *crtc = intel_crtc_for_pipe(dev_priv, pipe);
-	struct intel_pipe_crc *pipe_crc = &crtc->pipe_crc;
-	u32 crcs[5] = { crc0, crc1, crc2, crc3, crc4 };
-
-	trace_intel_pipe_crc(crtc, crcs);
-
-	spin_lock(&pipe_crc->lock);
-	/*
-	 * For some not yet identified reason, the first CRC is
-	 * bonkers. So let's just wait for the next vblank and read
-	 * out the buggy result.
-	 *
-	 * On GEN8+ sometimes the second CRC is bonkers as well, so
-	 * don't trust that one either.
-	 */
-	if (pipe_crc->skipped <= 0 ||
-	    (DISPLAY_VER(dev_priv) >= 8 && pipe_crc->skipped == 1)) {
-		pipe_crc->skipped++;
-		spin_unlock(&pipe_crc->lock);
-		return;
-	}
-	spin_unlock(&pipe_crc->lock);
-
-	drm_crtc_add_crc_entry(&crtc->base, true,
-				drm_crtc_accurate_vblank_count(&crtc->base),
-				crcs);
-}
-#else
-static inline void
-display_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
-			     enum pipe pipe,
-			     u32 crc0, u32 crc1,
-			     u32 crc2, u32 crc3,
-			     u32 crc4) {}
-#endif
-
-static void flip_done_handler(struct drm_i915_private *i915,
-			      enum pipe pipe)
-{
-	struct intel_crtc *crtc = intel_crtc_for_pipe(i915, pipe);
-	struct drm_crtc_state *crtc_state = crtc->base.state;
-	struct drm_pending_vblank_event *e = crtc_state->event;
-	struct drm_device *dev = &i915->drm;
-	unsigned long irqflags;
-
-	spin_lock_irqsave(&dev->event_lock, irqflags);
-
-	crtc_state->event = NULL;
-
-	drm_crtc_send_vblank_event(&crtc->base, e);
-
-	spin_unlock_irqrestore(&dev->event_lock, irqflags);
-}
-
-static void hsw_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
-				     enum pipe pipe)
-{
-	display_pipe_crc_irq_handler(dev_priv, pipe,
-				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_1_IVB(pipe)),
-				     0, 0, 0, 0);
-}
-
-static void ivb_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
-				     enum pipe pipe)
-{
-	display_pipe_crc_irq_handler(dev_priv, pipe,
-				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_1_IVB(pipe)),
-				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_2_IVB(pipe)),
-				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_3_IVB(pipe)),
-				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_4_IVB(pipe)),
-				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_5_IVB(pipe)));
-}
-
-static void i9xx_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
-				      enum pipe pipe)
-{
-	u32 res1, res2;
-
-	if (DISPLAY_VER(dev_priv) >= 3)
-		res1 = intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_RES1_I915(pipe));
-	else
-		res1 = 0;
-
-	if (DISPLAY_VER(dev_priv) >= 5 || IS_G4X(dev_priv))
-		res2 = intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_RES2_G4X(pipe));
-	else
-		res2 = 0;
-
-	display_pipe_crc_irq_handler(dev_priv, pipe,
-				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_RED(pipe)),
-				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_GREEN(pipe)),
-				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_BLUE(pipe)),
-				     res1, res2);
-}
-
-static void i9xx_pipestat_irq_reset(struct drm_i915_private *dev_priv)
-{
-	enum pipe pipe;
-
-	for_each_pipe(dev_priv, pipe) {
-		intel_uncore_write(&dev_priv->uncore, PIPESTAT(pipe),
-			   PIPESTAT_INT_STATUS_MASK |
-			   PIPE_FIFO_UNDERRUN_STATUS);
-
-		dev_priv->pipestat_irq_mask[pipe] = 0;
-	}
-}
-
-static void i9xx_pipestat_irq_ack(struct drm_i915_private *dev_priv,
-				  u32 iir, u32 pipe_stats[I915_MAX_PIPES])
-{
-	enum pipe pipe;
-
-	spin_lock(&dev_priv->irq_lock);
-
-	if (!dev_priv->display_irqs_enabled) {
-		spin_unlock(&dev_priv->irq_lock);
-		return;
-	}
-
-	for_each_pipe(dev_priv, pipe) {
-		i915_reg_t reg;
-		u32 status_mask, enable_mask, iir_bit = 0;
-
-		/*
-		 * PIPESTAT bits get signalled even when the interrupt is
-		 * disabled with the mask bits, and some of the status bits do
-		 * not generate interrupts at all (like the underrun bit). Hence
-		 * we need to be careful that we only handle what we want to
-		 * handle.
-		 */
-
-		/* fifo underruns are filterered in the underrun handler. */
-		status_mask = PIPE_FIFO_UNDERRUN_STATUS;
-
-		switch (pipe) {
-		default:
-		case PIPE_A:
-			iir_bit = I915_DISPLAY_PIPE_A_EVENT_INTERRUPT;
-			break;
-		case PIPE_B:
-			iir_bit = I915_DISPLAY_PIPE_B_EVENT_INTERRUPT;
-			break;
-		case PIPE_C:
-			iir_bit = I915_DISPLAY_PIPE_C_EVENT_INTERRUPT;
-			break;
-		}
-		if (iir & iir_bit)
-			status_mask |= dev_priv->pipestat_irq_mask[pipe];
-
-		if (!status_mask)
-			continue;
-
-		reg = PIPESTAT(pipe);
-		pipe_stats[pipe] = intel_uncore_read(&dev_priv->uncore, reg) & status_mask;
-		enable_mask = i915_pipestat_enable_mask(dev_priv, pipe);
-
-		/*
-		 * Clear the PIPE*STAT regs before the IIR
-		 *
-		 * Toggle the enable bits to make sure we get an
-		 * edge in the ISR pipe event bit if we don't clear
-		 * all the enabled status bits. Otherwise the edge
-		 * triggered IIR on i965/g4x wouldn't notice that
-		 * an interrupt is still pending.
-		 */
-		if (pipe_stats[pipe]) {
-			intel_uncore_write(&dev_priv->uncore, reg, pipe_stats[pipe]);
-			intel_uncore_write(&dev_priv->uncore, reg, enable_mask);
-		}
-	}
-	spin_unlock(&dev_priv->irq_lock);
-}
-
-static void i8xx_pipestat_irq_handler(struct drm_i915_private *dev_priv,
-				      u16 iir, u32 pipe_stats[I915_MAX_PIPES])
-{
-	enum pipe pipe;
-
-	for_each_pipe(dev_priv, pipe) {
-		if (pipe_stats[pipe] & PIPE_VBLANK_INTERRUPT_STATUS)
-			intel_handle_vblank(dev_priv, pipe);
-
-		if (pipe_stats[pipe] & PIPE_CRC_DONE_INTERRUPT_STATUS)
-			i9xx_pipe_crc_irq_handler(dev_priv, pipe);
-
-		if (pipe_stats[pipe] & PIPE_FIFO_UNDERRUN_STATUS)
-			intel_cpu_fifo_underrun_irq_handler(dev_priv, pipe);
-	}
-}
-
-static void i915_pipestat_irq_handler(struct drm_i915_private *dev_priv,
-				      u32 iir, u32 pipe_stats[I915_MAX_PIPES])
-{
-	bool blc_event = false;
-	enum pipe pipe;
-
-	for_each_pipe(dev_priv, pipe) {
-		if (pipe_stats[pipe] & PIPE_VBLANK_INTERRUPT_STATUS)
-			intel_handle_vblank(dev_priv, pipe);
-
-		if (pipe_stats[pipe] & PIPE_LEGACY_BLC_EVENT_STATUS)
-			blc_event = true;
-
-		if (pipe_stats[pipe] & PIPE_CRC_DONE_INTERRUPT_STATUS)
-			i9xx_pipe_crc_irq_handler(dev_priv, pipe);
-
-		if (pipe_stats[pipe] & PIPE_FIFO_UNDERRUN_STATUS)
-			intel_cpu_fifo_underrun_irq_handler(dev_priv, pipe);
-	}
-
-	if (blc_event || (iir & I915_ASLE_INTERRUPT))
-		intel_opregion_asle_intr(dev_priv);
-}
-
-static void i965_pipestat_irq_handler(struct drm_i915_private *dev_priv,
-				      u32 iir, u32 pipe_stats[I915_MAX_PIPES])
-{
-	bool blc_event = false;
-	enum pipe pipe;
-
-	for_each_pipe(dev_priv, pipe) {
-		if (pipe_stats[pipe] & PIPE_START_VBLANK_INTERRUPT_STATUS)
-			intel_handle_vblank(dev_priv, pipe);
-
-		if (pipe_stats[pipe] & PIPE_LEGACY_BLC_EVENT_STATUS)
-			blc_event = true;
-
-		if (pipe_stats[pipe] & PIPE_CRC_DONE_INTERRUPT_STATUS)
-			i9xx_pipe_crc_irq_handler(dev_priv, pipe);
-
-		if (pipe_stats[pipe] & PIPE_FIFO_UNDERRUN_STATUS)
-			intel_cpu_fifo_underrun_irq_handler(dev_priv, pipe);
-	}
-
-	if (blc_event || (iir & I915_ASLE_INTERRUPT))
-		intel_opregion_asle_intr(dev_priv);
-
-	if (pipe_stats[0] & PIPE_GMBUS_INTERRUPT_STATUS)
-		intel_gmbus_irq_handler(dev_priv);
-}
-
-static void valleyview_pipestat_irq_handler(struct drm_i915_private *dev_priv,
-					    u32 pipe_stats[I915_MAX_PIPES])
-{
-	enum pipe pipe;
-
-	for_each_pipe(dev_priv, pipe) {
-		if (pipe_stats[pipe] & PIPE_START_VBLANK_INTERRUPT_STATUS)
-			intel_handle_vblank(dev_priv, pipe);
-
-		if (pipe_stats[pipe] & PLANE_FLIP_DONE_INT_STATUS_VLV)
-			flip_done_handler(dev_priv, pipe);
-
-		if (pipe_stats[pipe] & PIPE_CRC_DONE_INTERRUPT_STATUS)
-			i9xx_pipe_crc_irq_handler(dev_priv, pipe);
-
-		if (pipe_stats[pipe] & PIPE_FIFO_UNDERRUN_STATUS)
-			intel_cpu_fifo_underrun_irq_handler(dev_priv, pipe);
-	}
-
-	if (pipe_stats[0] & PIPE_GMBUS_INTERRUPT_STATUS)
-		intel_gmbus_irq_handler(dev_priv);
-}
-
 static irqreturn_t valleyview_irq_handler(int irq, void *arg)
 {
 	struct drm_i915_private *dev_priv = arg;
@@ -961,217 +412,6 @@ static irqreturn_t cherryview_irq_handler(int irq, void *arg)
 	return ret;
 }
 
-static void ibx_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
-{
-	enum pipe pipe;
-	u32 hotplug_trigger = pch_iir & SDE_HOTPLUG_MASK;
-
-	ibx_hpd_irq_handler(dev_priv, hotplug_trigger);
-
-	if (pch_iir & SDE_AUDIO_POWER_MASK) {
-		int port = ffs((pch_iir & SDE_AUDIO_POWER_MASK) >>
-			       SDE_AUDIO_POWER_SHIFT);
-		drm_dbg(&dev_priv->drm, "PCH audio power change on port %d\n",
-			port_name(port));
-	}
-
-	if (pch_iir & SDE_AUX_MASK)
-		intel_dp_aux_irq_handler(dev_priv);
-
-	if (pch_iir & SDE_GMBUS)
-		intel_gmbus_irq_handler(dev_priv);
-
-	if (pch_iir & SDE_AUDIO_HDCP_MASK)
-		drm_dbg(&dev_priv->drm, "PCH HDCP audio interrupt\n");
-
-	if (pch_iir & SDE_AUDIO_TRANS_MASK)
-		drm_dbg(&dev_priv->drm, "PCH transcoder audio interrupt\n");
-
-	if (pch_iir & SDE_POISON)
-		drm_err(&dev_priv->drm, "PCH poison interrupt\n");
-
-	if (pch_iir & SDE_FDI_MASK) {
-		for_each_pipe(dev_priv, pipe)
-			drm_dbg(&dev_priv->drm, "  pipe %c FDI IIR: 0x%08x\n",
-				pipe_name(pipe),
-				intel_uncore_read(&dev_priv->uncore, FDI_RX_IIR(pipe)));
-	}
-
-	if (pch_iir & (SDE_TRANSB_CRC_DONE | SDE_TRANSA_CRC_DONE))
-		drm_dbg(&dev_priv->drm, "PCH transcoder CRC done interrupt\n");
-
-	if (pch_iir & (SDE_TRANSB_CRC_ERR | SDE_TRANSA_CRC_ERR))
-		drm_dbg(&dev_priv->drm,
-			"PCH transcoder CRC error interrupt\n");
-
-	if (pch_iir & SDE_TRANSA_FIFO_UNDER)
-		intel_pch_fifo_underrun_irq_handler(dev_priv, PIPE_A);
-
-	if (pch_iir & SDE_TRANSB_FIFO_UNDER)
-		intel_pch_fifo_underrun_irq_handler(dev_priv, PIPE_B);
-}
-
-static void ivb_err_int_handler(struct drm_i915_private *dev_priv)
-{
-	u32 err_int = intel_uncore_read(&dev_priv->uncore, GEN7_ERR_INT);
-	enum pipe pipe;
-
-	if (err_int & ERR_INT_POISON)
-		drm_err(&dev_priv->drm, "Poison interrupt\n");
-
-	for_each_pipe(dev_priv, pipe) {
-		if (err_int & ERR_INT_FIFO_UNDERRUN(pipe))
-			intel_cpu_fifo_underrun_irq_handler(dev_priv, pipe);
-
-		if (err_int & ERR_INT_PIPE_CRC_DONE(pipe)) {
-			if (IS_IVYBRIDGE(dev_priv))
-				ivb_pipe_crc_irq_handler(dev_priv, pipe);
-			else
-				hsw_pipe_crc_irq_handler(dev_priv, pipe);
-		}
-	}
-
-	intel_uncore_write(&dev_priv->uncore, GEN7_ERR_INT, err_int);
-}
-
-static void cpt_serr_int_handler(struct drm_i915_private *dev_priv)
-{
-	u32 serr_int = intel_uncore_read(&dev_priv->uncore, SERR_INT);
-	enum pipe pipe;
-
-	if (serr_int & SERR_INT_POISON)
-		drm_err(&dev_priv->drm, "PCH poison interrupt\n");
-
-	for_each_pipe(dev_priv, pipe)
-		if (serr_int & SERR_INT_TRANS_FIFO_UNDERRUN(pipe))
-			intel_pch_fifo_underrun_irq_handler(dev_priv, pipe);
-
-	intel_uncore_write(&dev_priv->uncore, SERR_INT, serr_int);
-}
-
-static void cpt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
-{
-	enum pipe pipe;
-	u32 hotplug_trigger = pch_iir & SDE_HOTPLUG_MASK_CPT;
-
-	ibx_hpd_irq_handler(dev_priv, hotplug_trigger);
-
-	if (pch_iir & SDE_AUDIO_POWER_MASK_CPT) {
-		int port = ffs((pch_iir & SDE_AUDIO_POWER_MASK_CPT) >>
-			       SDE_AUDIO_POWER_SHIFT_CPT);
-		drm_dbg(&dev_priv->drm, "PCH audio power change on port %c\n",
-			port_name(port));
-	}
-
-	if (pch_iir & SDE_AUX_MASK_CPT)
-		intel_dp_aux_irq_handler(dev_priv);
-
-	if (pch_iir & SDE_GMBUS_CPT)
-		intel_gmbus_irq_handler(dev_priv);
-
-	if (pch_iir & SDE_AUDIO_CP_REQ_CPT)
-		drm_dbg(&dev_priv->drm, "Audio CP request interrupt\n");
-
-	if (pch_iir & SDE_AUDIO_CP_CHG_CPT)
-		drm_dbg(&dev_priv->drm, "Audio CP change interrupt\n");
-
-	if (pch_iir & SDE_FDI_MASK_CPT) {
-		for_each_pipe(dev_priv, pipe)
-			drm_dbg(&dev_priv->drm, "  pipe %c FDI IIR: 0x%08x\n",
-				pipe_name(pipe),
-				intel_uncore_read(&dev_priv->uncore, FDI_RX_IIR(pipe)));
-	}
-
-	if (pch_iir & SDE_ERROR_CPT)
-		cpt_serr_int_handler(dev_priv);
-}
-
-static void ilk_display_irq_handler(struct drm_i915_private *dev_priv,
-				    u32 de_iir)
-{
-	enum pipe pipe;
-	u32 hotplug_trigger = de_iir & DE_DP_A_HOTPLUG;
-
-	if (hotplug_trigger)
-		ilk_hpd_irq_handler(dev_priv, hotplug_trigger);
-
-	if (de_iir & DE_AUX_CHANNEL_A)
-		intel_dp_aux_irq_handler(dev_priv);
-
-	if (de_iir & DE_GSE)
-		intel_opregion_asle_intr(dev_priv);
-
-	if (de_iir & DE_POISON)
-		drm_err(&dev_priv->drm, "Poison interrupt\n");
-
-	for_each_pipe(dev_priv, pipe) {
-		if (de_iir & DE_PIPE_VBLANK(pipe))
-			intel_handle_vblank(dev_priv, pipe);
-
-		if (de_iir & DE_PLANE_FLIP_DONE(pipe))
-			flip_done_handler(dev_priv, pipe);
-
-		if (de_iir & DE_PIPE_FIFO_UNDERRUN(pipe))
-			intel_cpu_fifo_underrun_irq_handler(dev_priv, pipe);
-
-		if (de_iir & DE_PIPE_CRC_DONE(pipe))
-			i9xx_pipe_crc_irq_handler(dev_priv, pipe);
-	}
-
-	/* check event from PCH */
-	if (de_iir & DE_PCH_EVENT) {
-		u32 pch_iir = intel_uncore_read(&dev_priv->uncore, SDEIIR);
-
-		if (HAS_PCH_CPT(dev_priv))
-			cpt_irq_handler(dev_priv, pch_iir);
-		else
-			ibx_irq_handler(dev_priv, pch_iir);
-
-		/* should clear PCH hotplug event before clear CPU irq */
-		intel_uncore_write(&dev_priv->uncore, SDEIIR, pch_iir);
-	}
-
-	if (DISPLAY_VER(dev_priv) == 5 && de_iir & DE_PCU_EVENT)
-		gen5_rps_irq_handler(&to_gt(dev_priv)->rps);
-}
-
-static void ivb_display_irq_handler(struct drm_i915_private *dev_priv,
-				    u32 de_iir)
-{
-	enum pipe pipe;
-	u32 hotplug_trigger = de_iir & DE_DP_A_HOTPLUG_IVB;
-
-	if (hotplug_trigger)
-		ilk_hpd_irq_handler(dev_priv, hotplug_trigger);
-
-	if (de_iir & DE_ERR_INT_IVB)
-		ivb_err_int_handler(dev_priv);
-
-	if (de_iir & DE_AUX_CHANNEL_A_IVB)
-		intel_dp_aux_irq_handler(dev_priv);
-
-	if (de_iir & DE_GSE_IVB)
-		intel_opregion_asle_intr(dev_priv);
-
-	for_each_pipe(dev_priv, pipe) {
-		if (de_iir & DE_PIPE_VBLANK_IVB(pipe))
-			intel_handle_vblank(dev_priv, pipe);
-
-		if (de_iir & DE_PLANE_FLIP_DONE_IVB(pipe))
-			flip_done_handler(dev_priv, pipe);
-	}
-
-	/* check event from PCH */
-	if (!HAS_PCH_NOP(dev_priv) && (de_iir & DE_PCH_EVENT_IVB)) {
-		u32 pch_iir = intel_uncore_read(&dev_priv->uncore, SDEIIR);
-
-		cpt_irq_handler(dev_priv, pch_iir);
-
-		/* clear PCH hotplug event before clear CPU irq */
-		intel_uncore_write(&dev_priv->uncore, SDEIIR, pch_iir);
-	}
-}
-
 /*
  * To handle irqs with the minimum potential races with fresh interrupts, we:
  * 1 - Disable Master Interrupt Control.
@@ -1244,363 +484,8 @@ static irqreturn_t ilk_irq_handler(int irq, void *arg)
 
 	pmu_irq_stats(i915, ret);
 
-	/* IRQs are synced during runtime_suspend, we don't require a wakeref */
-	enable_rpm_wakeref_asserts(&i915->runtime_pm);
-
-	return ret;
-}
-
-static u32 gen8_de_port_aux_mask(struct drm_i915_private *dev_priv)
-{
-	u32 mask;
-
-	if (DISPLAY_VER(dev_priv) >= 14)
-		return TGL_DE_PORT_AUX_DDIA |
-			TGL_DE_PORT_AUX_DDIB;
-	else if (DISPLAY_VER(dev_priv) >= 13)
-		return TGL_DE_PORT_AUX_DDIA |
-			TGL_DE_PORT_AUX_DDIB |
-			TGL_DE_PORT_AUX_DDIC |
-			XELPD_DE_PORT_AUX_DDID |
-			XELPD_DE_PORT_AUX_DDIE |
-			TGL_DE_PORT_AUX_USBC1 |
-			TGL_DE_PORT_AUX_USBC2 |
-			TGL_DE_PORT_AUX_USBC3 |
-			TGL_DE_PORT_AUX_USBC4;
-	else if (DISPLAY_VER(dev_priv) >= 12)
-		return TGL_DE_PORT_AUX_DDIA |
-			TGL_DE_PORT_AUX_DDIB |
-			TGL_DE_PORT_AUX_DDIC |
-			TGL_DE_PORT_AUX_USBC1 |
-			TGL_DE_PORT_AUX_USBC2 |
-			TGL_DE_PORT_AUX_USBC3 |
-			TGL_DE_PORT_AUX_USBC4 |
-			TGL_DE_PORT_AUX_USBC5 |
-			TGL_DE_PORT_AUX_USBC6;
-
-
-	mask = GEN8_AUX_CHANNEL_A;
-	if (DISPLAY_VER(dev_priv) >= 9)
-		mask |= GEN9_AUX_CHANNEL_B |
-			GEN9_AUX_CHANNEL_C |
-			GEN9_AUX_CHANNEL_D;
-
-	if (DISPLAY_VER(dev_priv) == 11) {
-		mask |= ICL_AUX_CHANNEL_F;
-		mask |= ICL_AUX_CHANNEL_E;
-	}
-
-	return mask;
-}
-
-static u32 gen8_de_pipe_fault_mask(struct drm_i915_private *dev_priv)
-{
-	if (DISPLAY_VER(dev_priv) >= 13 || HAS_D12_PLANE_MINIMIZATION(dev_priv))
-		return RKL_DE_PIPE_IRQ_FAULT_ERRORS;
-	else if (DISPLAY_VER(dev_priv) >= 11)
-		return GEN11_DE_PIPE_IRQ_FAULT_ERRORS;
-	else if (DISPLAY_VER(dev_priv) >= 9)
-		return GEN9_DE_PIPE_IRQ_FAULT_ERRORS;
-	else
-		return GEN8_DE_PIPE_IRQ_FAULT_ERRORS;
-}
-
-static void
-gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
-{
-	bool found = false;
-
-	if (iir & GEN8_DE_MISC_GSE) {
-		intel_opregion_asle_intr(dev_priv);
-		found = true;
-	}
-
-	if (iir & GEN8_DE_EDP_PSR) {
-		struct intel_encoder *encoder;
-		u32 psr_iir;
-		i915_reg_t iir_reg;
-
-		for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
-			struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
-
-			if (DISPLAY_VER(dev_priv) >= 12)
-				iir_reg = TRANS_PSR_IIR(intel_dp->psr.transcoder);
-			else
-				iir_reg = EDP_PSR_IIR;
-
-			psr_iir = intel_uncore_rmw(&dev_priv->uncore, iir_reg, 0, 0);
-
-			if (psr_iir)
-				found = true;
-
-			intel_psr_irq_handler(intel_dp, psr_iir);
-
-			/* prior GEN12 only have one EDP PSR */
-			if (DISPLAY_VER(dev_priv) < 12)
-				break;
-		}
-	}
-
-	if (!found)
-		drm_err(&dev_priv->drm, "Unexpected DE Misc interrupt\n");
-}
-
-static void gen11_dsi_te_interrupt_handler(struct drm_i915_private *dev_priv,
-					   u32 te_trigger)
-{
-	enum pipe pipe = INVALID_PIPE;
-	enum transcoder dsi_trans;
-	enum port port;
-	u32 val, tmp;
-
-	/*
-	 * Incase of dual link, TE comes from DSI_1
-	 * this is to check if dual link is enabled
-	 */
-	val = intel_uncore_read(&dev_priv->uncore, TRANS_DDI_FUNC_CTL2(TRANSCODER_DSI_0));
-	val &= PORT_SYNC_MODE_ENABLE;
-
-	/*
-	 * if dual link is enabled, then read DSI_0
-	 * transcoder registers
-	 */
-	port = ((te_trigger & DSI1_TE && val) || (te_trigger & DSI0_TE)) ?
-						  PORT_A : PORT_B;
-	dsi_trans = (port == PORT_A) ? TRANSCODER_DSI_0 : TRANSCODER_DSI_1;
-
-	/* Check if DSI configured in command mode */
-	val = intel_uncore_read(&dev_priv->uncore, DSI_TRANS_FUNC_CONF(dsi_trans));
-	val = val & OP_MODE_MASK;
-
-	if (val != CMD_MODE_NO_GATE && val != CMD_MODE_TE_GATE) {
-		drm_err(&dev_priv->drm, "DSI trancoder not configured in command mode\n");
-		return;
-	}
-
-	/* Get PIPE for handling VBLANK event */
-	val = intel_uncore_read(&dev_priv->uncore, TRANS_DDI_FUNC_CTL(dsi_trans));
-	switch (val & TRANS_DDI_EDP_INPUT_MASK) {
-	case TRANS_DDI_EDP_INPUT_A_ON:
-		pipe = PIPE_A;
-		break;
-	case TRANS_DDI_EDP_INPUT_B_ONOFF:
-		pipe = PIPE_B;
-		break;
-	case TRANS_DDI_EDP_INPUT_C_ONOFF:
-		pipe = PIPE_C;
-		break;
-	default:
-		drm_err(&dev_priv->drm, "Invalid PIPE\n");
-		return;
-	}
-
-	intel_handle_vblank(dev_priv, pipe);
-
-	/* clear TE in dsi IIR */
-	port = (te_trigger & DSI1_TE) ? PORT_B : PORT_A;
-	tmp = intel_uncore_rmw(&dev_priv->uncore, DSI_INTR_IDENT_REG(port), 0, 0);
-}
-
-static u32 gen8_de_pipe_flip_done_mask(struct drm_i915_private *i915)
-{
-	if (DISPLAY_VER(i915) >= 9)
-		return GEN9_PIPE_PLANE1_FLIP_DONE;
-	else
-		return GEN8_PIPE_PRIMARY_FLIP_DONE;
-}
-
-u32 gen8_de_pipe_underrun_mask(struct drm_i915_private *dev_priv)
-{
-	u32 mask = GEN8_PIPE_FIFO_UNDERRUN;
-
-	if (DISPLAY_VER(dev_priv) >= 13)
-		mask |= XELPD_PIPE_SOFT_UNDERRUN |
-			XELPD_PIPE_HARD_UNDERRUN;
-
-	return mask;
-}
-
-static void gen8_read_and_ack_pch_irqs(struct drm_i915_private *i915, u32 *pch_iir, u32 *pica_iir)
-{
-	u32 pica_ier = 0;
-
-	*pica_iir = 0;
-	*pch_iir = intel_de_read(i915, SDEIIR);
-	if (!*pch_iir)
-		return;
-
-	/**
-	 * PICA IER must be disabled/re-enabled around clearing PICA IIR and
-	 * SDEIIR, to avoid losing PICA IRQs and to ensure that such IRQs set
-	 * their flags both in the PICA and SDE IIR.
-	 */
-	if (*pch_iir & SDE_PICAINTERRUPT) {
-		drm_WARN_ON(&i915->drm, INTEL_PCH_TYPE(i915) < PCH_MTP);
-
-		pica_ier = intel_de_rmw(i915, PICAINTERRUPT_IER, ~0, 0);
-		*pica_iir = intel_de_read(i915, PICAINTERRUPT_IIR);
-		intel_de_write(i915, PICAINTERRUPT_IIR, *pica_iir);
-	}
-
-	intel_de_write(i915, SDEIIR, *pch_iir);
-
-	if (pica_ier)
-		intel_de_write(i915, PICAINTERRUPT_IER, pica_ier);
-}
-
-static irqreturn_t
-gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
-{
-	irqreturn_t ret = IRQ_NONE;
-	u32 iir;
-	enum pipe pipe;
-
-	drm_WARN_ON_ONCE(&dev_priv->drm, !HAS_DISPLAY(dev_priv));
-
-	if (master_ctl & GEN8_DE_MISC_IRQ) {
-		iir = intel_uncore_read(&dev_priv->uncore, GEN8_DE_MISC_IIR);
-		if (iir) {
-			intel_uncore_write(&dev_priv->uncore, GEN8_DE_MISC_IIR, iir);
-			ret = IRQ_HANDLED;
-			gen8_de_misc_irq_handler(dev_priv, iir);
-		} else {
-			drm_err_ratelimited(&dev_priv->drm,
-					    "The master control interrupt lied (DE MISC)!\n");
-		}
-	}
-
-	if (DISPLAY_VER(dev_priv) >= 11 && (master_ctl & GEN11_DE_HPD_IRQ)) {
-		iir = intel_uncore_read(&dev_priv->uncore, GEN11_DE_HPD_IIR);
-		if (iir) {
-			intel_uncore_write(&dev_priv->uncore, GEN11_DE_HPD_IIR, iir);
-			ret = IRQ_HANDLED;
-			gen11_hpd_irq_handler(dev_priv, iir);
-		} else {
-			drm_err_ratelimited(&dev_priv->drm,
-					    "The master control interrupt lied, (DE HPD)!\n");
-		}
-	}
-
-	if (master_ctl & GEN8_DE_PORT_IRQ) {
-		iir = intel_uncore_read(&dev_priv->uncore, GEN8_DE_PORT_IIR);
-		if (iir) {
-			bool found = false;
-
-			intel_uncore_write(&dev_priv->uncore, GEN8_DE_PORT_IIR, iir);
-			ret = IRQ_HANDLED;
-
-			if (iir & gen8_de_port_aux_mask(dev_priv)) {
-				intel_dp_aux_irq_handler(dev_priv);
-				found = true;
-			}
-
-			if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
-				u32 hotplug_trigger = iir & BXT_DE_PORT_HOTPLUG_MASK;
-
-				if (hotplug_trigger) {
-					bxt_hpd_irq_handler(dev_priv, hotplug_trigger);
-					found = true;
-				}
-			} else if (IS_BROADWELL(dev_priv)) {
-				u32 hotplug_trigger = iir & BDW_DE_PORT_HOTPLUG_MASK;
-
-				if (hotplug_trigger) {
-					ilk_hpd_irq_handler(dev_priv, hotplug_trigger);
-					found = true;
-				}
-			}
-
-			if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) &&
-			    (iir & BXT_DE_PORT_GMBUS)) {
-				intel_gmbus_irq_handler(dev_priv);
-				found = true;
-			}
-
-			if (DISPLAY_VER(dev_priv) >= 11) {
-				u32 te_trigger = iir & (DSI0_TE | DSI1_TE);
-
-				if (te_trigger) {
-					gen11_dsi_te_interrupt_handler(dev_priv, te_trigger);
-					found = true;
-				}
-			}
-
-			if (!found)
-				drm_err_ratelimited(&dev_priv->drm,
-						    "Unexpected DE Port interrupt\n");
-		}
-		else
-			drm_err_ratelimited(&dev_priv->drm,
-					    "The master control interrupt lied (DE PORT)!\n");
-	}
-
-	for_each_pipe(dev_priv, pipe) {
-		u32 fault_errors;
-
-		if (!(master_ctl & GEN8_DE_PIPE_IRQ(pipe)))
-			continue;
-
-		iir = intel_uncore_read(&dev_priv->uncore, GEN8_DE_PIPE_IIR(pipe));
-		if (!iir) {
-			drm_err_ratelimited(&dev_priv->drm,
-					    "The master control interrupt lied (DE PIPE)!\n");
-			continue;
-		}
-
-		ret = IRQ_HANDLED;
-		intel_uncore_write(&dev_priv->uncore, GEN8_DE_PIPE_IIR(pipe), iir);
-
-		if (iir & GEN8_PIPE_VBLANK)
-			intel_handle_vblank(dev_priv, pipe);
-
-		if (iir & gen8_de_pipe_flip_done_mask(dev_priv))
-			flip_done_handler(dev_priv, pipe);
-
-		if (iir & GEN8_PIPE_CDCLK_CRC_DONE)
-			hsw_pipe_crc_irq_handler(dev_priv, pipe);
-
-		if (iir & gen8_de_pipe_underrun_mask(dev_priv))
-			intel_cpu_fifo_underrun_irq_handler(dev_priv, pipe);
-
-		fault_errors = iir & gen8_de_pipe_fault_mask(dev_priv);
-		if (fault_errors)
-			drm_err_ratelimited(&dev_priv->drm,
-					    "Fault errors on pipe %c: 0x%08x\n",
-					    pipe_name(pipe),
-					    fault_errors);
-	}
-
-	if (HAS_PCH_SPLIT(dev_priv) && !HAS_PCH_NOP(dev_priv) &&
-	    master_ctl & GEN8_DE_PCH_IRQ) {
-		u32 pica_iir;
-
-		/*
-		 * FIXME(BDW): Assume for now that the new interrupt handling
-		 * scheme also closed the SDE interrupt handling race we've seen
-		 * on older pch-split platforms. But this needs testing.
-		 */
-		gen8_read_and_ack_pch_irqs(dev_priv, &iir, &pica_iir);
-		if (iir) {
-			ret = IRQ_HANDLED;
-
-			if (pica_iir)
-				xelpdp_pica_irq_handler(dev_priv, pica_iir);
-
-			if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
-				icp_irq_handler(dev_priv, iir);
-			else if (INTEL_PCH_TYPE(dev_priv) >= PCH_SPT)
-				spt_irq_handler(dev_priv, iir);
-			else
-				cpt_irq_handler(dev_priv, iir);
-		} else {
-			/*
-			 * Like on previous PCH there seems to be something
-			 * fishy going on with forwarding PCH interrupts.
-			 */
-			drm_dbg(&dev_priv->drm,
-				"The master control interrupt lied (SDE)!\n");
-		}
-	}
+	/* IRQs are synced during runtime_suspend, we don't require a wakeref */
+	enable_rpm_wakeref_asserts(&i915->runtime_pm);
 
 	return ret;
 }
@@ -1655,29 +540,6 @@ static irqreturn_t gen8_irq_handler(int irq, void *arg)
 	return IRQ_HANDLED;
 }
 
-static u32
-gen11_gu_misc_irq_ack(struct drm_i915_private *i915, const u32 master_ctl)
-{
-	void __iomem * const regs = i915->uncore.regs;
-	u32 iir;
-
-	if (!(master_ctl & GEN11_GU_MISC_IRQ))
-		return 0;
-
-	iir = raw_reg_read(regs, GEN11_GU_MISC_IIR);
-	if (likely(iir))
-		raw_reg_write(regs, GEN11_GU_MISC_IIR, iir);
-
-	return iir;
-}
-
-static void
-gen11_gu_misc_irq_handler(struct drm_i915_private *i915, const u32 iir)
-{
-	if (iir & GEN11_GU_MISC_GSE)
-		intel_opregion_asle_intr(i915);
-}
-
 static inline u32 gen11_master_intr_disable(void __iomem * const regs)
 {
 	raw_reg_write(regs, GEN11_GFX_MSTR_IRQ, 0);
@@ -1696,25 +558,6 @@ static inline void gen11_master_intr_enable(void __iomem * const regs)
 	raw_reg_write(regs, GEN11_GFX_MSTR_IRQ, GEN11_MASTER_IRQ);
 }
 
-static void
-gen11_display_irq_handler(struct drm_i915_private *i915)
-{
-	void __iomem * const regs = i915->uncore.regs;
-	const u32 disp_ctl = raw_reg_read(regs, GEN11_DISPLAY_INT_CTL);
-
-	disable_rpm_wakeref_asserts(&i915->runtime_pm);
-	/*
-	 * GEN11_DISPLAY_INT_CTL has same format as GEN8_MASTER_IRQ
-	 * for the display related bits.
-	 */
-	raw_reg_write(regs, GEN11_DISPLAY_INT_CTL, 0x0);
-	gen8_de_irq_handler(i915, disp_ctl);
-	raw_reg_write(regs, GEN11_DISPLAY_INT_CTL,
-		      GEN11_DISPLAY_IRQ_ENABLE);
-
-	enable_rpm_wakeref_asserts(&i915->runtime_pm);
-}
-
 static irqreturn_t gen11_irq_handler(int irq, void *arg)
 {
 	struct drm_i915_private *i915 = arg;
@@ -1816,184 +659,6 @@ static irqreturn_t dg1_irq_handler(int irq, void *arg)
 	return IRQ_HANDLED;
 }
 
-/* Called from drm generic code, passed 'crtc' which
- * we use as a pipe index
- */
-int i8xx_enable_vblank(struct drm_crtc *crtc)
-{
-	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
-	enum pipe pipe = to_intel_crtc(crtc)->pipe;
-	unsigned long irqflags;
-
-	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
-	i915_enable_pipestat(dev_priv, pipe, PIPE_VBLANK_INTERRUPT_STATUS);
-	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
-
-	return 0;
-}
-
-int i915gm_enable_vblank(struct drm_crtc *crtc)
-{
-	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
-
-	/*
-	 * Vblank interrupts fail to wake the device up from C2+.
-	 * Disabling render clock gating during C-states avoids
-	 * the problem. There is a small power cost so we do this
-	 * only when vblank interrupts are actually enabled.
-	 */
-	if (dev_priv->vblank_enabled++ == 0)
-		intel_uncore_write(&dev_priv->uncore, SCPD0, _MASKED_BIT_ENABLE(CSTATE_RENDER_CLOCK_GATE_DISABLE));
-
-	return i8xx_enable_vblank(crtc);
-}
-
-int i965_enable_vblank(struct drm_crtc *crtc)
-{
-	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
-	enum pipe pipe = to_intel_crtc(crtc)->pipe;
-	unsigned long irqflags;
-
-	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
-	i915_enable_pipestat(dev_priv, pipe,
-			     PIPE_START_VBLANK_INTERRUPT_STATUS);
-	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
-
-	return 0;
-}
-
-int ilk_enable_vblank(struct drm_crtc *crtc)
-{
-	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
-	enum pipe pipe = to_intel_crtc(crtc)->pipe;
-	unsigned long irqflags;
-	u32 bit = DISPLAY_VER(dev_priv) >= 7 ?
-		DE_PIPE_VBLANK_IVB(pipe) : DE_PIPE_VBLANK(pipe);
-
-	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
-	ilk_enable_display_irq(dev_priv, bit);
-	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
-
-	/* Even though there is no DMC, frame counter can get stuck when
-	 * PSR is active as no frames are generated.
-	 */
-	if (HAS_PSR(dev_priv))
-		drm_crtc_vblank_restore(crtc);
-
-	return 0;
-}
-
-static bool gen11_dsi_configure_te(struct intel_crtc *intel_crtc,
-				   bool enable)
-{
-	struct drm_i915_private *dev_priv = to_i915(intel_crtc->base.dev);
-	enum port port;
-
-	if (!(intel_crtc->mode_flags &
-	    (I915_MODE_FLAG_DSI_USE_TE1 | I915_MODE_FLAG_DSI_USE_TE0)))
-		return false;
-
-	/* for dual link cases we consider TE from slave */
-	if (intel_crtc->mode_flags & I915_MODE_FLAG_DSI_USE_TE1)
-		port = PORT_B;
-	else
-		port = PORT_A;
-
-	intel_uncore_rmw(&dev_priv->uncore, DSI_INTR_MASK_REG(port), DSI_TE_EVENT,
-			 enable ? 0 : DSI_TE_EVENT);
-
-	intel_uncore_rmw(&dev_priv->uncore, DSI_INTR_IDENT_REG(port), 0, 0);
-
-	return true;
-}
-
-int bdw_enable_vblank(struct drm_crtc *_crtc)
-{
-	struct intel_crtc *crtc = to_intel_crtc(_crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	enum pipe pipe = crtc->pipe;
-	unsigned long irqflags;
-
-	if (gen11_dsi_configure_te(crtc, true))
-		return 0;
-
-	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
-	bdw_enable_pipe_irq(dev_priv, pipe, GEN8_PIPE_VBLANK);
-	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
-
-	/* Even if there is no DMC, frame counter can get stuck when
-	 * PSR is active as no frames are generated, so check only for PSR.
-	 */
-	if (HAS_PSR(dev_priv))
-		drm_crtc_vblank_restore(&crtc->base);
-
-	return 0;
-}
-
-/* Called from drm generic code, passed 'crtc' which
- * we use as a pipe index
- */
-void i8xx_disable_vblank(struct drm_crtc *crtc)
-{
-	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
-	enum pipe pipe = to_intel_crtc(crtc)->pipe;
-	unsigned long irqflags;
-
-	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
-	i915_disable_pipestat(dev_priv, pipe, PIPE_VBLANK_INTERRUPT_STATUS);
-	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
-}
-
-void i915gm_disable_vblank(struct drm_crtc *crtc)
-{
-	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
-
-	i8xx_disable_vblank(crtc);
-
-	if (--dev_priv->vblank_enabled == 0)
-		intel_uncore_write(&dev_priv->uncore, SCPD0, _MASKED_BIT_DISABLE(CSTATE_RENDER_CLOCK_GATE_DISABLE));
-}
-
-void i965_disable_vblank(struct drm_crtc *crtc)
-{
-	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
-	enum pipe pipe = to_intel_crtc(crtc)->pipe;
-	unsigned long irqflags;
-
-	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
-	i915_disable_pipestat(dev_priv, pipe,
-			      PIPE_START_VBLANK_INTERRUPT_STATUS);
-	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
-}
-
-void ilk_disable_vblank(struct drm_crtc *crtc)
-{
-	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
-	enum pipe pipe = to_intel_crtc(crtc)->pipe;
-	unsigned long irqflags;
-	u32 bit = DISPLAY_VER(dev_priv) >= 7 ?
-		DE_PIPE_VBLANK_IVB(pipe) : DE_PIPE_VBLANK(pipe);
-
-	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
-	ilk_disable_display_irq(dev_priv, bit);
-	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
-}
-
-void bdw_disable_vblank(struct drm_crtc *_crtc)
-{
-	struct intel_crtc *crtc = to_intel_crtc(_crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	enum pipe pipe = crtc->pipe;
-	unsigned long irqflags;
-
-	if (gen11_dsi_configure_te(crtc, false))
-		return;
-
-	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
-	bdw_disable_pipe_irq(dev_priv, pipe, GEN8_PIPE_VBLANK);
-	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
-}
-
 static void ibx_irq_reset(struct drm_i915_private *dev_priv)
 {
 	struct intel_uncore *uncore = &dev_priv->uncore;
@@ -2007,55 +672,6 @@ static void ibx_irq_reset(struct drm_i915_private *dev_priv)
 		intel_uncore_write(&dev_priv->uncore, SERR_INT, 0xffffffff);
 }
 
-static void vlv_display_irq_reset(struct drm_i915_private *dev_priv)
-{
-	struct intel_uncore *uncore = &dev_priv->uncore;
-
-	if (IS_CHERRYVIEW(dev_priv))
-		intel_uncore_write(uncore, DPINVGTT, DPINVGTT_STATUS_MASK_CHV);
-	else
-		intel_uncore_write(uncore, DPINVGTT, DPINVGTT_STATUS_MASK_VLV);
-
-	i915_hotplug_interrupt_update_locked(dev_priv, 0xffffffff, 0);
-	intel_uncore_rmw(uncore, PORT_HOTPLUG_STAT, 0, 0);
-
-	i9xx_pipestat_irq_reset(dev_priv);
-
-	GEN3_IRQ_RESET(uncore, VLV_);
-	dev_priv->irq_mask = ~0u;
-}
-
-static void vlv_display_irq_postinstall(struct drm_i915_private *dev_priv)
-{
-	struct intel_uncore *uncore = &dev_priv->uncore;
-
-	u32 pipestat_mask;
-	u32 enable_mask;
-	enum pipe pipe;
-
-	pipestat_mask = PIPE_CRC_DONE_INTERRUPT_STATUS;
-
-	i915_enable_pipestat(dev_priv, PIPE_A, PIPE_GMBUS_INTERRUPT_STATUS);
-	for_each_pipe(dev_priv, pipe)
-		i915_enable_pipestat(dev_priv, pipe, pipestat_mask);
-
-	enable_mask = I915_DISPLAY_PORT_INTERRUPT |
-		I915_DISPLAY_PIPE_A_EVENT_INTERRUPT |
-		I915_DISPLAY_PIPE_B_EVENT_INTERRUPT |
-		I915_LPE_PIPE_A_INTERRUPT |
-		I915_LPE_PIPE_B_INTERRUPT;
-
-	if (IS_CHERRYVIEW(dev_priv))
-		enable_mask |= I915_DISPLAY_PIPE_C_EVENT_INTERRUPT |
-			I915_LPE_PIPE_C_INTERRUPT;
-
-	drm_WARN_ON(&dev_priv->drm, dev_priv->irq_mask != ~0u);
-
-	dev_priv->irq_mask = ~enable_mask;
-
-	GEN3_IRQ_INIT(uncore, VLV_, dev_priv->irq_mask, enable_mask);
-}
-
 /* drm_dma.h hooks
 */
 static void ilk_irq_reset(struct drm_i915_private *dev_priv)
@@ -2091,26 +707,6 @@ static void valleyview_irq_reset(struct drm_i915_private *dev_priv)
 	spin_unlock_irq(&dev_priv->irq_lock);
 }
 
-static void gen8_display_irq_reset(struct drm_i915_private *dev_priv)
-{
-	struct intel_uncore *uncore = &dev_priv->uncore;
-	enum pipe pipe;
-
-	if (!HAS_DISPLAY(dev_priv))
-		return;
-
-	intel_uncore_write(uncore, EDP_PSR_IMR, 0xffffffff);
-	intel_uncore_write(uncore, EDP_PSR_IIR, 0xffffffff);
-
-	for_each_pipe(dev_priv, pipe)
-		if (intel_display_power_is_enabled(dev_priv,
-						   POWER_DOMAIN_PIPE(pipe)))
-			GEN8_IRQ_RESET_NDX(uncore, DE_PIPE, pipe);
-
-	GEN3_IRQ_RESET(uncore, GEN8_DE_PORT_);
-	GEN3_IRQ_RESET(uncore, GEN8_DE_MISC_);
-}
-
 static void gen8_irq_reset(struct drm_i915_private *dev_priv)
 {
 	struct intel_uncore *uncore = &dev_priv->uncore;
@@ -2126,53 +722,6 @@ static void gen8_irq_reset(struct drm_i915_private *dev_priv)
 
 }
 
-static void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
-{
-	struct intel_uncore *uncore = &dev_priv->uncore;
-	enum pipe pipe;
-	u32 trans_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
-		BIT(TRANSCODER_C) | BIT(TRANSCODER_D);
-
-	if (!HAS_DISPLAY(dev_priv))
-		return;
-
-	intel_uncore_write(uncore, GEN11_DISPLAY_INT_CTL, 0);
-
-	if (DISPLAY_VER(dev_priv) >= 12) {
-		enum transcoder trans;
-
-		for_each_cpu_transcoder_masked(dev_priv, trans, trans_mask) {
-			enum intel_display_power_domain domain;
-
-			domain = POWER_DOMAIN_TRANSCODER(trans);
-			if (!intel_display_power_is_enabled(dev_priv, domain))
-				continue;
-
-			intel_uncore_write(uncore, TRANS_PSR_IMR(trans), 0xffffffff);
-			intel_uncore_write(uncore, TRANS_PSR_IIR(trans), 0xffffffff);
-		}
-	} else {
-		intel_uncore_write(uncore, EDP_PSR_IMR, 0xffffffff);
-		intel_uncore_write(uncore, EDP_PSR_IIR, 0xffffffff);
-	}
-
-	for_each_pipe(dev_priv, pipe)
-		if (intel_display_power_is_enabled(dev_priv,
-						   POWER_DOMAIN_PIPE(pipe)))
-			GEN8_IRQ_RESET_NDX(uncore, DE_PIPE, pipe);
-
-	GEN3_IRQ_RESET(uncore, GEN8_DE_PORT_);
-	GEN3_IRQ_RESET(uncore, GEN8_DE_MISC_);
-
-	if (DISPLAY_VER(dev_priv) >= 14)
-		GEN3_IRQ_RESET(uncore, PICAINTERRUPT_);
-	else
-		GEN3_IRQ_RESET(uncore, GEN11_DE_HPD_);
-
-	if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
-		GEN3_IRQ_RESET(uncore, SDE);
-}
-
 static void gen11_irq_reset(struct drm_i915_private *dev_priv)
 {
 	struct intel_gt *gt = to_gt(dev_priv);
@@ -2204,52 +753,6 @@ static void dg1_irq_reset(struct drm_i915_private *dev_priv)
 	GEN3_IRQ_RESET(uncore, GEN8_PCU_);
 }
 
-void gen8_irq_power_well_post_enable(struct drm_i915_private *dev_priv,
-				     u8 pipe_mask)
-{
-	struct intel_uncore *uncore = &dev_priv->uncore;
-	u32 extra_ier = GEN8_PIPE_VBLANK |
-		gen8_de_pipe_underrun_mask(dev_priv) |
-		gen8_de_pipe_flip_done_mask(dev_priv);
-	enum pipe pipe;
-
-	spin_lock_irq(&dev_priv->irq_lock);
-
-	if (!intel_irqs_enabled(dev_priv)) {
-		spin_unlock_irq(&dev_priv->irq_lock);
-		return;
-	}
-
-	for_each_pipe_masked(dev_priv, pipe, pipe_mask)
-		GEN8_IRQ_INIT_NDX(uncore, DE_PIPE, pipe,
-				  dev_priv->de_irq_mask[pipe],
-				  ~dev_priv->de_irq_mask[pipe] | extra_ier);
-
-	spin_unlock_irq(&dev_priv->irq_lock);
-}
-
-void gen8_irq_power_well_pre_disable(struct drm_i915_private *dev_priv,
-				     u8 pipe_mask)
-{
-	struct intel_uncore *uncore = &dev_priv->uncore;
-	enum pipe pipe;
-
-	spin_lock_irq(&dev_priv->irq_lock);
-
-	if (!intel_irqs_enabled(dev_priv)) {
-		spin_unlock_irq(&dev_priv->irq_lock);
-		return;
-	}
-
-	for_each_pipe_masked(dev_priv, pipe, pipe_mask)
-		GEN8_IRQ_RESET_NDX(uncore, DE_PIPE, pipe);
-
-	spin_unlock_irq(&dev_priv->irq_lock);
-
-	/* make sure we're done processing display irqs */
-	intel_synchronize_irq(dev_priv);
-}
-
 static void cherryview_irq_reset(struct drm_i915_private *dev_priv)
 {
 	struct intel_uncore *uncore = &dev_priv->uncore;
@@ -2267,35 +770,6 @@ static void cherryview_irq_reset(struct drm_i915_private *dev_priv)
 	spin_unlock_irq(&dev_priv->irq_lock);
 }
 
-/*
- * SDEIER is also touched by the interrupt handler to work around missed PCH
- * interrupts. Hence we can't update it after the interrupt handler is enabled -
- * instead we unconditionally enable all PCH interrupt sources here, but then
- * only unmask them as needed with SDEIMR.
- *
- * Note that we currently do this after installing the interrupt handler,
- * but before we enable the master interrupt. That should be sufficient
- * to avoid races with the irq handler, assuming we have MSI. Shared legacy
- * interrupts could still race.
- */
-static void ibx_irq_postinstall(struct drm_i915_private *dev_priv)
-{
-	struct intel_uncore *uncore = &dev_priv->uncore;
-	u32 mask;
-
-	if (HAS_PCH_NOP(dev_priv))
-		return;
-
-	if (HAS_PCH_IBX(dev_priv))
-		mask = SDE_GMBUS | SDE_AUX_MASK | SDE_POISON;
-	else if (HAS_PCH_CPT(dev_priv) || HAS_PCH_LPT(dev_priv))
-		mask = SDE_GMBUS_CPT | SDE_AUX_MASK_CPT;
-	else
-		mask = SDE_GMBUS_CPT;
-
-	GEN3_IRQ_INIT(uncore, SDE, ~mask, 0xffffffff);
-}
-
 static void ilk_irq_postinstall(struct drm_i915_private *dev_priv)
 {
 	struct intel_uncore *uncore = &dev_priv->uncore;
@@ -2339,35 +813,6 @@ static void ilk_irq_postinstall(struct drm_i915_private *dev_priv)
 		      display_mask | extra_mask);
 }
 
-void valleyview_enable_display_irqs(struct drm_i915_private *dev_priv)
-{
-	lockdep_assert_held(&dev_priv->irq_lock);
-
-	if (dev_priv->display_irqs_enabled)
-		return;
-
-	dev_priv->display_irqs_enabled = true;
-
-	if (intel_irqs_enabled(dev_priv)) {
-		vlv_display_irq_reset(dev_priv);
-		vlv_display_irq_postinstall(dev_priv);
-	}
-}
-
-void valleyview_disable_display_irqs(struct drm_i915_private *dev_priv)
-{
-	lockdep_assert_held(&dev_priv->irq_lock);
-
-	if (!dev_priv->display_irqs_enabled)
-		return;
-
-	dev_priv->display_irqs_enabled = false;
-
-	if (intel_irqs_enabled(dev_priv))
-		vlv_display_irq_reset(dev_priv);
-}
-
-
 static void valleyview_irq_postinstall(struct drm_i915_private *dev_priv)
 {
 	gen5_gt_irq_postinstall(to_gt(dev_priv));
@@ -2381,108 +826,6 @@ static void valleyview_irq_postinstall(struct drm_i915_private *dev_priv)
 	intel_uncore_posting_read(&dev_priv->uncore, VLV_MASTER_IER);
 }
 
-static void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
-{
-	struct intel_uncore *uncore = &dev_priv->uncore;
-
-	u32 de_pipe_masked = gen8_de_pipe_fault_mask(dev_priv) |
-		GEN8_PIPE_CDCLK_CRC_DONE;
-	u32 de_pipe_enables;
-	u32 de_port_masked = gen8_de_port_aux_mask(dev_priv);
-	u32 de_port_enables;
-	u32 de_misc_masked = GEN8_DE_EDP_PSR;
-	u32 trans_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
-		BIT(TRANSCODER_C) | BIT(TRANSCODER_D);
-	enum pipe pipe;
-
-	if (!HAS_DISPLAY(dev_priv))
-		return;
-
-	if (DISPLAY_VER(dev_priv) <= 10)
-		de_misc_masked |= GEN8_DE_MISC_GSE;
-
-	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
-		de_port_masked |= BXT_DE_PORT_GMBUS;
-
-	if (DISPLAY_VER(dev_priv) >= 11) {
-		enum port port;
-
-		if (intel_bios_is_dsi_present(dev_priv, &port))
-			de_port_masked |= DSI0_TE | DSI1_TE;
-	}
-
-	de_pipe_enables = de_pipe_masked |
-		GEN8_PIPE_VBLANK |
-		gen8_de_pipe_underrun_mask(dev_priv) |
-		gen8_de_pipe_flip_done_mask(dev_priv);
-
-	de_port_enables = de_port_masked;
-	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
-		de_port_enables |= BXT_DE_PORT_HOTPLUG_MASK;
-	else if (IS_BROADWELL(dev_priv))
-		de_port_enables |= BDW_DE_PORT_HOTPLUG_MASK;
-
-	if (DISPLAY_VER(dev_priv) >= 12) {
-		enum transcoder trans;
-
-		for_each_cpu_transcoder_masked(dev_priv, trans, trans_mask) {
-			enum intel_display_power_domain domain;
-
-			domain = POWER_DOMAIN_TRANSCODER(trans);
-			if (!intel_display_power_is_enabled(dev_priv, domain))
-				continue;
-
-			gen3_assert_iir_is_zero(uncore, TRANS_PSR_IIR(trans));
-		}
-	} else {
-		gen3_assert_iir_is_zero(uncore, EDP_PSR_IIR);
-	}
-
-	for_each_pipe(dev_priv, pipe) {
-		dev_priv->de_irq_mask[pipe] = ~de_pipe_masked;
-
-		if (intel_display_power_is_enabled(dev_priv,
-				POWER_DOMAIN_PIPE(pipe)))
-			GEN8_IRQ_INIT_NDX(uncore, DE_PIPE, pipe,
-					  dev_priv->de_irq_mask[pipe],
-					  de_pipe_enables);
-	}
-
-	GEN3_IRQ_INIT(uncore, GEN8_DE_PORT_, ~de_port_masked, de_port_enables);
-	GEN3_IRQ_INIT(uncore, GEN8_DE_MISC_, ~de_misc_masked, de_misc_masked);
-
-	if (IS_DISPLAY_VER(dev_priv, 11, 13)) {
-		u32 de_hpd_masked = 0;
-		u32 de_hpd_enables = GEN11_DE_TC_HOTPLUG_MASK |
-				     GEN11_DE_TBT_HOTPLUG_MASK;
-
-		GEN3_IRQ_INIT(uncore, GEN11_DE_HPD_, ~de_hpd_masked,
-			      de_hpd_enables);
-	}
-}
-
-static void mtp_irq_postinstall(struct drm_i915_private *i915)
-{
-	struct intel_uncore *uncore = &i915->uncore;
-	u32 sde_mask = SDE_GMBUS_ICP | SDE_PICAINTERRUPT;
-	u32 de_hpd_mask = XELPDP_AUX_TC_MASK;
-	u32 de_hpd_enables = de_hpd_mask | XELPDP_DP_ALT_HOTPLUG_MASK |
-			     XELPDP_TBT_HOTPLUG_MASK;
-
-	GEN3_IRQ_INIT(uncore, PICAINTERRUPT_, ~de_hpd_mask,
-		      de_hpd_enables);
-
-	GEN3_IRQ_INIT(uncore, SDE, ~sde_mask, 0xffffffff);
-}
-
-static void icp_irq_postinstall(struct drm_i915_private *dev_priv)
-{
-	struct intel_uncore *uncore = &dev_priv->uncore;
-	u32 mask = SDE_GMBUS_ICP;
-
-	GEN3_IRQ_INIT(uncore, SDE, ~mask, 0xffffffff);
-}
-
 static void gen8_irq_postinstall(struct drm_i915_private *dev_priv)
 {
 	if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
@@ -2496,17 +839,6 @@ static void gen8_irq_postinstall(struct drm_i915_private *dev_priv)
 	gen8_master_intr_enable(dev_priv->uncore.regs);
 }
 
-static void gen11_de_irq_postinstall(struct drm_i915_private *dev_priv)
-{
-	if (!HAS_DISPLAY(dev_priv))
-		return;
-
-	gen8_de_irq_postinstall(dev_priv);
-
-	intel_uncore_write(&dev_priv->uncore, GEN11_DISPLAY_INT_CTL,
-			   GEN11_DISPLAY_IRQ_ENABLE);
-}
-
 static void gen11_irq_postinstall(struct drm_i915_private *dev_priv)
 {
 	struct intel_gt *gt = to_gt(dev_priv);
diff --git a/drivers/gpu/drm/i915/i915_irq.h b/drivers/gpu/drm/i915/i915_irq.h
index 913c854f873d..e665a1b007dc 100644
--- a/drivers/gpu/drm/i915/i915_irq.h
+++ b/drivers/gpu/drm/i915/i915_irq.h
@@ -25,34 +25,6 @@ void intel_irq_fini(struct drm_i915_private *dev_priv);
 int intel_irq_install(struct drm_i915_private *dev_priv);
 void intel_irq_uninstall(struct drm_i915_private *dev_priv);
 
-u32 i915_pipestat_enable_mask(struct drm_i915_private *dev_priv,
-			      enum pipe pipe);
-void
-i915_enable_pipestat(struct drm_i915_private *dev_priv, enum pipe pipe,
-		     u32 status_mask);
-
-void
-i915_disable_pipestat(struct drm_i915_private *dev_priv, enum pipe pipe,
-		      u32 status_mask);
-
-void valleyview_enable_display_irqs(struct drm_i915_private *dev_priv);
-void valleyview_disable_display_irqs(struct drm_i915_private *dev_priv);
-
-void ilk_update_display_irq(struct drm_i915_private *i915,
-			    u32 interrupt_mask, u32 enabled_irq_mask);
-void ilk_enable_display_irq(struct drm_i915_private *i915, u32 bits);
-void ilk_disable_display_irq(struct drm_i915_private *i915, u32 bits);
-
-void bdw_update_port_irq(struct drm_i915_private *i915,
-			 u32 interrupt_mask, u32 enabled_irq_mask);
-void bdw_enable_pipe_irq(struct drm_i915_private *i915, enum pipe pipe, u32 bits);
-void bdw_disable_pipe_irq(struct drm_i915_private *i915, enum pipe pipe, u32 bits);
-
-void ibx_display_interrupt_update(struct drm_i915_private *i915,
-				  u32 interrupt_mask, u32 enabled_irq_mask);
-void ibx_enable_display_interrupt(struct drm_i915_private *i915, u32 bits);
-void ibx_disable_display_interrupt(struct drm_i915_private *i915, u32 bits);
-
 void gen5_enable_gt_irq(struct drm_i915_private *dev_priv, u32 mask);
 void gen5_disable_gt_irq(struct drm_i915_private *dev_priv, u32 mask);
 void gen11_reset_rps_interrupts(struct drm_i915_private *dev_priv);
@@ -68,23 +40,7 @@ bool intel_irqs_enabled(struct drm_i915_private *dev_priv);
 void intel_synchronize_irq(struct drm_i915_private *i915);
 void intel_synchronize_hardirq(struct drm_i915_private *i915);
 
-void gen8_irq_power_well_post_enable(struct drm_i915_private *dev_priv,
-				     u8 pipe_mask);
-void gen8_irq_power_well_pre_disable(struct drm_i915_private *dev_priv,
-				     u8 pipe_mask);
-u32 gen8_de_pipe_underrun_mask(struct drm_i915_private *dev_priv);
-
-
-int i8xx_enable_vblank(struct drm_crtc *crtc);
-int i915gm_enable_vblank(struct drm_crtc *crtc);
-int i965_enable_vblank(struct drm_crtc *crtc);
-int ilk_enable_vblank(struct drm_crtc *crtc);
-int bdw_enable_vblank(struct drm_crtc *crtc);
-void i8xx_disable_vblank(struct drm_crtc *crtc);
-void i915gm_disable_vblank(struct drm_crtc *crtc);
-void i965_disable_vblank(struct drm_crtc *crtc);
-void ilk_disable_vblank(struct drm_crtc *crtc);
-void bdw_disable_vblank(struct drm_crtc *crtc);
+void gen3_assert_iir_is_zero(struct intel_uncore *uncore, i915_reg_t reg);
 
 void gen3_irq_reset(struct intel_uncore *uncore, i915_reg_t imr,
 		    i915_reg_t iir, i915_reg_t ier);
-- 
2.39.2

