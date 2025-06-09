Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DCB5AD20A4
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Jun 2025 16:11:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDA0A10E3E2;
	Mon,  9 Jun 2025 14:11:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nul5fuUy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2DD610E3F4;
 Mon,  9 Jun 2025 14:11:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749478300; x=1781014300;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hBc8ul9fOVL0AsKqB+LFp7vFE9LbizQgVqLdz/QZOSc=;
 b=Nul5fuUycgEORDKu1VLxcxYMxtN8kWmVLesjkNuTxtZ7FneVzWVyFFDp
 1Bdix/gBEgKdCTZoxDiZWr+2rpYUcTN8GW+ETu7/6ECKXYx05E8Hp825g
 v4NA6Jc7Pr7uBTarYzS6aDrjhG8uYu/Wq7+oH3m56atNaEAUwce6AJSTs
 xWYC4z2nCdsy0CTRExy9H2CMRO7NADOYcZtHl0FGBwSTrTLFenzVlQ6Iv
 RWMi4K2h6NXzZydrfiQyWHQKLEG6S3cKexEGDeaqGYJPBSokf/j7Duii+
 vi/QmBvGnL2O+s/EojEDpDIPuQCjCpRcO2+bCkKYLfaDdV3MsxDXno1Gb g==;
X-CSE-ConnectionGUID: s0q2YSOwQSWyZm7iO8ZGUg==
X-CSE-MsgGUID: /jM0ENmnQB+hmmY0mv6Rgg==
X-IronPort-AV: E=McAfee;i="6800,10657,11459"; a="55360846"
X-IronPort-AV: E=Sophos;i="6.16,222,1744095600"; d="scan'208";a="55360846"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 07:11:40 -0700
X-CSE-ConnectionGUID: /xTcOhJoTIqUnGaBfoQzkA==
X-CSE-MsgGUID: ORvl75IbTI670eRb1ZmKzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,222,1744095600"; d="scan'208";a="151765823"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.99])
 by orviesa005.jf.intel.com with SMTP; 09 Jun 2025 07:11:37 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 09 Jun 2025 17:11:36 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v4 15/21] drm/i915/flipq: Provide the nuts and bolts code for
 flip queue
Date: Mon,  9 Jun 2025 17:10:40 +0300
Message-ID: <20250609141046.6244-16-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250609141046.6244-1-ville.syrjala@linux.intel.com>
References: <20250609141046.6244-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Provide the lower level code for PIPEDMC based flip queue.

We'll use the so called semi-full flip queue mode where the
PIPEDMC will start the provided DSB on a scanline a little
ahead of the vblank. We need to program the triggering scanline
early enough so that the DSB has enough time to complete writing
all the double buffered registers before they get latched (at
start of vblank).

The firmware implements several queues:
- 3 "plane queues" which execute a single DSB per entry
- 1 "general queue" which can apparently execute 2 DSBs per entry
- 1 vestigial "fast queue" that replaced the "simple flip queue"
  on ADL+, but this isn't supposed to be used due to issues.

But we only need a single plane queue really, and we won't actually
use it as a real queue because we don't allow queueing multiple commits
ahead of time. So the whole thing is perhaps useless. I suppose
there migth be some power saving benefits if we would get the flip
scheduled by userspace early and then could keep some hardware powered
off a bit longer until the DMC kicks off the flipq programming. But that
is pure speculation at this time and needs to be proven.

The code to hook up the flip queue into the actual atomic commit
path will follow later.

TODO: need to think how to do the "wait for DMC firmware load" nicely
      need to think about VRR and PSR
      etc.

v2: Don't write DMC_FQ_W2_PTS_CFG_SEL on pre-lnl
    Don't oops at flipq init if there is no dmc
v3: Adapt to PTL+ flipq changes (different queue entry
    layout, different trigger event, need VRR TG)
    Use the actual CDCLK frequency
    Ask the DSB code how long things are expected to take
v3: Adjust the cdclk rounding (docs are 100% vague, Windows
    rounds like this)
    Initialize some undocumented magic DMC variables on PTL
v4: Use PIPEDMC_FQ_STATUS for busy check (the busy bit in
    PIPEDMC_FQ_CTRL is apparently gone on LNL+)
    Based the preempt timeout on the max exec time
    Preempt before disabling the flip queue
    Order the PIPEDMC_SCANLINECMP* writes a bit more carefully
    Fix some typos

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   1 +
 .../drm/i915/display/intel_display_driver.c   |   3 +
 .../drm/i915/display/intel_display_types.h    |  17 +
 drivers/gpu/drm/i915/display/intel_dmc.c      |  51 +++
 drivers/gpu/drm/i915/display/intel_dmc.h      |  11 +
 drivers/gpu/drm/i915/display/intel_dsb.c      |   1 +
 drivers/gpu/drm/i915/display/intel_flipq.c    | 385 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_flipq.h    |  32 ++
 drivers/gpu/drm/xe/Makefile                   |   1 +
 9 files changed, 502 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/display/intel_flipq.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_flipq.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 7c6075bc483c..7545767e4ced 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -265,6 +265,7 @@ i915-y += \
 	display/intel_fbc.o \
 	display/intel_fdi.o \
 	display/intel_fifo_underrun.o \
+	display/intel_flipq.o \
 	display/intel_frontbuffer.o \
 	display/intel_global_state.o \
 	display/intel_hdcp.o \
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index ec799a1773e4..3ee3fd71bd25 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -44,6 +44,7 @@
 #include "intel_fbc.h"
 #include "intel_fbdev.h"
 #include "intel_fdi.h"
+#include "intel_flipq.h"
 #include "intel_gmbus.h"
 #include "intel_hdcp.h"
 #include "intel_hotplug.h"
@@ -535,6 +536,8 @@ int intel_display_driver_probe(struct intel_display *display)
 	 */
 	intel_hdcp_component_init(display);
 
+	intel_flipq_init(display);
+
 	/*
 	 * Force all active planes to recompute their states. So that on
 	 * mode_setcrtc after probe, all the intel_plane_state variables
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index ed4d743fc7c5..5b30b652e123 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1365,6 +1365,21 @@ struct intel_pipe_crc {
 	enum intel_pipe_crc_source source;
 };
 
+enum intel_flipq_id {
+	INTEL_FLIPQ_PLANE_1,
+	INTEL_FLIPQ_PLANE_2,
+	INTEL_FLIPQ_PLANE_3,
+	INTEL_FLIPQ_GENERAL,
+	INTEL_FLIPQ_FAST,
+	MAX_INTEL_FLIPQ,
+};
+
+struct intel_flipq {
+	u32 start_mmioaddr;
+	enum intel_flipq_id flipq_id;
+	u8 tail;
+};
+
 struct intel_crtc {
 	struct drm_crtc base;
 	enum pipe pipe;
@@ -1396,6 +1411,8 @@ struct intel_crtc {
 	bool cpu_fifo_underrun_disabled;
 	bool pch_fifo_underrun_disabled;
 
+	struct intel_flipq flipq[MAX_INTEL_FLIPQ];
+
 	/* per-pipe watermark state */
 	struct {
 		/* watermarks currently being used  */
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 0896246c3982..e239e444eafe 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -24,6 +24,7 @@
 
 #include <linux/debugfs.h>
 #include <linux/firmware.h>
+#include <drm/drm_vblank.h>
 
 #include "i915_drv.h"
 #include "i915_reg.h"
@@ -35,6 +36,7 @@
 #include "intel_display_types.h"
 #include "intel_dmc.h"
 #include "intel_dmc_regs.h"
+#include "intel_flipq.h"
 #include "intel_step.h"
 
 /**
@@ -640,6 +642,8 @@ void intel_dmc_enable_pipe(struct intel_display *display, enum pipe pipe)
 	assert_dmc_loaded(display, dmc_id);
 
 	if (DISPLAY_VER(display) >= 20) {
+		intel_flipq_reset(display, pipe);
+
 		intel_de_write(display, PIPEDMC_INTERRUPT(pipe), pipedmc_interrupt_mask(display));
 		intel_de_write(display, PIPEDMC_INTERRUPT_MASK(pipe), ~pipedmc_interrupt_mask(display));
 	}
@@ -665,6 +669,8 @@ void intel_dmc_disable_pipe(struct intel_display *display, enum pipe pipe)
 	if (DISPLAY_VER(display) >= 20) {
 		intel_de_write(display, PIPEDMC_INTERRUPT_MASK(pipe), ~0);
 		intel_de_write(display, PIPEDMC_INTERRUPT(pipe), pipedmc_interrupt_mask(display));
+
+		intel_flipq_reset(display, pipe);
 	}
 }
 
@@ -767,6 +773,13 @@ void intel_dmc_load_program(struct intel_display *display)
 	for_each_dmc_id(dmc_id)
 		intel_dmc_load_mmio(display, dmc_id);
 
+	if (DISPLAY_VER(display) >= 20)
+		intel_de_write(display, DMC_FQ_W2_PTS_CFG_SEL,
+			       PIPE_D_DMC_W2_PTS_CONFIG_SELECT(PIPE_D) |
+			       PIPE_C_DMC_W2_PTS_CONFIG_SELECT(PIPE_C) |
+			       PIPE_B_DMC_W2_PTS_CONFIG_SELECT(PIPE_B) |
+			       PIPE_A_DMC_W2_PTS_CONFIG_SELECT(PIPE_A));
+
 	power_domains->dc_state = 0;
 
 	gen9_set_dc_state_debugmask(display);
@@ -1281,6 +1294,17 @@ void intel_dmc_suspend(struct intel_display *display)
 		intel_dmc_runtime_pm_put(display);
 }
 
+void intel_dmc_wait_fw_load(struct intel_display *display)
+{
+	struct intel_dmc *dmc = display_to_dmc(display);
+
+	if (!HAS_DMC(display))
+		return;
+
+	if (dmc)
+		flush_work(&dmc->work);
+}
+
 /**
  * intel_dmc_resume() - init DMC firmware during system resume
  * @display: display instance
@@ -1516,3 +1540,30 @@ void intel_pipedmc_irq_handler(struct intel_display *display, enum pipe pipe)
 		drm_err(display->drm, "[CRTC:%d:%s]] PIPEDMC interrupt vector 0x%x\n",
 			crtc->base.base.id, crtc->base.name, tmp);
 }
+
+void intel_pipedmc_enable_event(struct intel_crtc *crtc,
+				enum pipedmc_event_id event)
+{
+	struct intel_display *display = to_intel_display(crtc);
+	enum intel_dmc_id dmc_id = PIPE_TO_DMC_ID(crtc->pipe);
+
+	dmc_configure_event(display, dmc_id, event, true);
+}
+
+void intel_pipedmc_disable_event(struct intel_crtc *crtc,
+				 enum pipedmc_event_id event)
+{
+	struct intel_display *display = to_intel_display(crtc);
+	enum intel_dmc_id dmc_id = PIPE_TO_DMC_ID(crtc->pipe);
+
+	dmc_configure_event(display, dmc_id, event, false);
+}
+
+u32 intel_pipedmc_start_mmioaddr(struct intel_crtc *crtc)
+{
+	struct intel_display *display = to_intel_display(crtc);
+	struct intel_dmc *dmc = display_to_dmc(display);
+	enum intel_dmc_id dmc_id = PIPE_TO_DMC_ID(crtc->pipe);
+
+	return dmc ? dmc->dmc_info[dmc_id].start_mmioaddr : 0;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
index a3792052078a..b74e6c32198b 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc.h
@@ -9,12 +9,15 @@
 #include <linux/types.h>
 
 enum pipe;
+enum pipedmc_event_id;
 struct drm_printer;
+struct intel_crtc;
 struct intel_display;
 struct intel_dmc_snapshot;
 
 void intel_dmc_init(struct intel_display *display);
 void intel_dmc_load_program(struct intel_display *display);
+void intel_dmc_wait_fw_load(struct intel_display *display);
 void intel_dmc_disable_program(struct intel_display *display);
 void intel_dmc_enable_pipe(struct intel_display *display, enum pipe pipe);
 void intel_dmc_disable_pipe(struct intel_display *display, enum pipe pipe);
@@ -36,4 +39,12 @@ void assert_main_dmc_loaded(struct intel_display *display);
 
 void intel_pipedmc_irq_handler(struct intel_display *display, enum pipe pipe);
 
+u32 intel_pipedmc_start_mmioaddr(struct intel_crtc *crtc);
+void intel_pipedmc_enable_event(struct intel_crtc *crtc,
+				enum pipedmc_event_id event);
+void intel_pipedmc_disable_event(struct intel_crtc *crtc,
+				 enum pipedmc_event_id event);
+
+void intel_pipedmc_irq_handler(struct intel_display *display, enum pipe pipe);
+
 #endif /* __INTEL_DMC_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index f60a6698419c..10d031020d1e 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -14,6 +14,7 @@
 #include "intel_display_regs.h"
 #include "intel_display_rpm.h"
 #include "intel_display_types.h"
+#include "intel_dmc_regs.h"
 #include "intel_dsb.h"
 #include "intel_dsb_buffer.h"
 #include "intel_dsb_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_flipq.c b/drivers/gpu/drm/i915/display/intel_flipq.c
new file mode 100644
index 000000000000..c9804cfe506a
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_flipq.c
@@ -0,0 +1,385 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2025 Intel Corporation
+ */
+
+#include <linux/pci.h>
+
+#include <drm/drm_print.h>
+
+#include "i915_utils.h"
+#include "intel_step.h"
+#include "intel_crtc.h"
+#include "intel_de.h"
+#include "intel_display_core.h"
+#include "intel_display_types.h"
+#include "intel_flipq.h"
+#include "intel_dmc.h"
+#include "intel_dmc_regs.h"
+#include "intel_dsb.h"
+#include "intel_vblank.h"
+#include "intel_vrr.h"
+
+#define for_each_flipq(flipq_id) \
+	for ((flipq_id) = INTEL_FLIPQ_PLANE_1; (flipq_id) < MAX_INTEL_FLIPQ; (flipq_id)++)
+
+static int intel_flipq_offset(enum intel_flipq_id flipq_id)
+{
+	switch (flipq_id) {
+	case INTEL_FLIPQ_PLANE_1:
+		return 0x008;
+	case INTEL_FLIPQ_PLANE_2:
+		return 0x108;
+	case INTEL_FLIPQ_PLANE_3:
+		return 0x208;
+	case INTEL_FLIPQ_GENERAL:
+		return 0x308;
+	case INTEL_FLIPQ_FAST:
+		return 0x3c8;
+	default:
+		MISSING_CASE(flipq_id);
+		return 0;
+	}
+}
+
+static int intel_flipq_size_dw(enum intel_flipq_id flipq_id)
+{
+	switch (flipq_id) {
+	case INTEL_FLIPQ_PLANE_1:
+	case INTEL_FLIPQ_PLANE_2:
+	case INTEL_FLIPQ_PLANE_3:
+		return 64;
+	case INTEL_FLIPQ_GENERAL:
+	case INTEL_FLIPQ_FAST:
+		return 48;
+	default:
+		MISSING_CASE(flipq_id);
+		return 0;
+	}
+}
+
+static int intel_flipq_elem_size_dw(enum intel_flipq_id flipq_id)
+{
+	switch (flipq_id) {
+	case INTEL_FLIPQ_PLANE_1:
+	case INTEL_FLIPQ_PLANE_2:
+	case INTEL_FLIPQ_PLANE_3:
+		return 4;
+	case INTEL_FLIPQ_GENERAL:
+	case INTEL_FLIPQ_FAST:
+		return 6;
+	default:
+		MISSING_CASE(flipq_id);
+		return 0;
+	}
+}
+
+static int intel_flipq_size_entries(enum intel_flipq_id flipq_id)
+{
+	return intel_flipq_size_dw(flipq_id) / intel_flipq_elem_size_dw(flipq_id);
+}
+
+static void intel_flipq_crtc_init(struct intel_crtc *crtc)
+{
+	struct intel_display *display = to_intel_display(crtc);
+	enum intel_flipq_id flipq_id;
+
+	for_each_flipq(flipq_id) {
+		struct intel_flipq *flipq = &crtc->flipq[flipq_id];
+
+		flipq->start_mmioaddr = intel_pipedmc_start_mmioaddr(crtc) + intel_flipq_offset(flipq_id);
+		flipq->flipq_id = flipq_id;
+
+		drm_dbg_kms(display->drm, "[CRTC:%d:%s] FQ %d: start 0x%x\n",
+			    crtc->base.base.id, crtc->base.name,
+			    flipq_id, flipq->start_mmioaddr);
+	}
+}
+
+bool intel_flipq_supported(struct intel_display *display)
+{
+	if (!display->dmc.dmc)
+		return false;
+
+	if (DISPLAY_VER(display) == 20)
+		return true;
+
+	/* DMC firmware expects VRR timing generator to be used */
+	return DISPLAY_VER(display) >= 30 && intel_vrr_always_use_vrr_tg(display);
+}
+
+void intel_flipq_init(struct intel_display *display)
+{
+	struct intel_crtc *crtc;
+
+	intel_dmc_wait_fw_load(display);
+
+	for_each_intel_crtc(display->drm, crtc)
+		intel_flipq_crtc_init(crtc);
+}
+
+static int cdclk_factor(struct intel_display *display)
+{
+	if (DISPLAY_VER(display) >= 30)
+		return 120;
+	else
+		return 280;
+}
+
+static int intel_flipq_exec_time_us(struct intel_display *display)
+{
+	return intel_dsb_exec_time_us() +
+		DIV_ROUND_UP(display->cdclk.hw.cdclk * cdclk_factor(display), 540000) +
+		display->sagv.block_time_us;
+}
+
+static int intel_flipq_preempt_timeout_ms(struct intel_display *display)
+{
+	return DIV_ROUND_UP(intel_flipq_exec_time_us(display), 1000);
+}
+
+static void intel_flipq_preempt(struct intel_crtc *crtc, bool preempt)
+{
+	struct intel_display *display = to_intel_display(crtc);
+
+	intel_de_rmw(display, PIPEDMC_FQ_CTRL(crtc->pipe),
+		     PIPEDMC_FQ_CTRL_PREEMPT, preempt ? PIPEDMC_FQ_CTRL_PREEMPT : 0);
+
+	if (preempt &&
+	    intel_de_wait_for_clear(display,
+				    PIPEDMC_FQ_STATUS(crtc->pipe),
+				    PIPEDMC_FQ_STATUS_BUSY,
+				    intel_flipq_preempt_timeout_ms(display)))
+		drm_err(display->drm, "[CRTC:%d:%s] flip queue preempt timeout\n",
+			crtc->base.base.id, crtc->base.name);
+}
+
+static int intel_flipq_current_head(struct intel_crtc *crtc, enum intel_flipq_id flipq_id)
+{
+	struct intel_display *display = to_intel_display(crtc);
+
+	return intel_de_read(display, PIPEDMC_FPQ_CHP(crtc->pipe, flipq_id));
+}
+
+static void intel_flipq_write_tail(struct intel_crtc *crtc)
+{
+	struct intel_display *display = to_intel_display(crtc);
+
+	intel_de_write(display, PIPEDMC_FPQ_ATOMIC_TP(crtc->pipe),
+		       PIPEDMC_FPQ_PLANEQ_3_TP(crtc->flipq[INTEL_FLIPQ_PLANE_3].tail) |
+		       PIPEDMC_FPQ_PLANEQ_2_TP(crtc->flipq[INTEL_FLIPQ_PLANE_2].tail) |
+		       PIPEDMC_FPQ_PLANEQ_1_TP(crtc->flipq[INTEL_FLIPQ_PLANE_1].tail) |
+		       PIPEDMC_FPQ_FASTQ_TP(crtc->flipq[INTEL_FLIPQ_FAST].tail) |
+		       PIPEDMC_FPQ_GENERALQ_TP(crtc->flipq[INTEL_FLIPQ_GENERAL].tail));
+}
+
+static void intel_flipq_sw_dmc_wake(struct intel_crtc *crtc)
+{
+	struct intel_display *display = to_intel_display(crtc);
+
+	intel_de_write(display, PIPEDMC_FPQ_CTL1(crtc->pipe), PIPEDMC_SW_DMC_WAKE);
+}
+
+static int intel_flipq_exec_time_lines(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	return intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode,
+					intel_flipq_exec_time_us(display));
+}
+
+void intel_flipq_reset(struct intel_display *display, enum pipe pipe)
+{
+	struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
+	enum intel_flipq_id flipq_id;
+
+	intel_de_write(display, PIPEDMC_FQ_CTRL(pipe), 0);
+
+	intel_de_write(display, PIPEDMC_SCANLINECMPLOWER(pipe), 0);
+	intel_de_write(display, PIPEDMC_SCANLINECMPUPPER(pipe), 0);
+
+	for_each_flipq(flipq_id) {
+		struct intel_flipq *flipq = &crtc->flipq[flipq_id];
+
+		intel_de_write(display, PIPEDMC_FPQ_HP(pipe, flipq_id), 0);
+		intel_de_write(display, PIPEDMC_FPQ_CHP(pipe, flipq_id), 0);
+
+		flipq->tail = 0;
+	}
+
+	intel_de_write(display, PIPEDMC_FPQ_ATOMIC_TP(pipe), 0);
+}
+
+static enum pipedmc_event_id flipq_event_id(struct intel_display *display)
+{
+	if (DISPLAY_VER(display) >= 30)
+		return PIPEDMC_EVENT_FULL_FQ_WAKE_TRIGGER;
+	else
+		return PIPEDMC_EVENT_SCANLINE_INRANGE_FQ_TRIGGER;
+}
+
+void intel_flipq_enable(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	/* FIXME what to do with VRR? */
+	int scanline = intel_mode_vblank_start(&crtc_state->hw.adjusted_mode) -
+		intel_flipq_exec_time_lines(crtc_state);
+
+	if (DISPLAY_VER(display) >= 30) {
+		u32 start_mmioaddr = intel_pipedmc_start_mmioaddr(crtc);
+
+		/* undocumented magic DMC variables */
+		intel_de_write(display, PTL_PIPEDMC_EXEC_TIME_LINES(start_mmioaddr),
+			       intel_flipq_exec_time_lines(crtc_state));
+		intel_de_write(display, PTL_PIPEDMC_END_OF_EXEC_GB(start_mmioaddr),
+			       100);
+	}
+
+	intel_de_write(display, PIPEDMC_SCANLINECMPUPPER(crtc->pipe),
+		       PIPEDMC_SCANLINE_UPPER(scanline));
+	intel_de_write(display, PIPEDMC_SCANLINECMPLOWER(crtc->pipe),
+		       PIPEDMC_SCANLINEINRANGECMP_EN |
+		       PIPEDMC_SCANLINE_LOWER(scanline - 2));
+
+	intel_pipedmc_enable_event(crtc, flipq_event_id(display));
+
+	intel_de_write(display, PIPEDMC_FQ_CTRL(crtc->pipe), PIPEDMC_FQ_CTRL_ENABLE);
+}
+
+void intel_flipq_disable(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	intel_flipq_preempt(crtc, true);
+
+	intel_de_write(display, PIPEDMC_FQ_CTRL(crtc->pipe), 0);
+
+	intel_pipedmc_disable_event(crtc, flipq_event_id(display));
+
+	intel_de_write(display, PIPEDMC_SCANLINECMPLOWER(crtc->pipe), 0);
+	intel_de_write(display, PIPEDMC_SCANLINECMPUPPER(crtc->pipe), 0);
+}
+
+static bool assert_flipq_has_room(struct intel_crtc *crtc,
+				  enum intel_flipq_id flipq_id)
+{
+	struct intel_display *display = to_intel_display(crtc);
+	struct intel_flipq *flipq = &crtc->flipq[flipq_id];
+	int head, size = intel_flipq_size_entries(flipq_id);
+
+	head = intel_flipq_current_head(crtc, flipq_id);
+
+	return !drm_WARN(display->drm,
+			 (flipq->tail + size - head) % size >= size - 1,
+			 "[CRTC:%d:%s] FQ %d overflow (head %d, tail %d, size %d)\n",
+			 crtc->base.base.id, crtc->base.name, flipq_id,
+			 head, flipq->tail, size);
+}
+
+static void intel_flipq_write(struct intel_display *display,
+			      struct intel_flipq *flipq, u32 data, int i)
+{
+	intel_de_write(display, PIPEDMC_FQ_RAM(flipq->start_mmioaddr, flipq->tail *
+					       intel_flipq_elem_size_dw(flipq->flipq_id) + i), data);
+}
+
+static void lnl_flipq_add(struct intel_display *display,
+			  struct intel_flipq *flipq,
+			  unsigned int pts,
+			  enum intel_dsb_id dsb_id,
+			  struct intel_dsb *dsb)
+{
+	int i = 0;
+
+	switch (flipq->flipq_id) {
+	case INTEL_FLIPQ_GENERAL:
+		intel_flipq_write(display, flipq, pts, i++);
+		intel_flipq_write(display, flipq, intel_dsb_head(dsb), i++);
+		intel_flipq_write(display, flipq, LNL_FQ_INTERRUPT |
+				  LNL_FQ_DSB_ID(dsb_id) |
+				  LNL_FQ_DSB_SIZE(intel_dsb_size(dsb) / 64), i++);
+		intel_flipq_write(display, flipq, 0, i++);
+		intel_flipq_write(display, flipq, 0, i++); /* head for second DSB */
+		intel_flipq_write(display, flipq, 0, i++); /* DSB engine + size for second DSB */
+		break;
+	case INTEL_FLIPQ_PLANE_1:
+	case INTEL_FLIPQ_PLANE_2:
+	case INTEL_FLIPQ_PLANE_3:
+		intel_flipq_write(display, flipq, pts, i++);
+		intel_flipq_write(display, flipq, intel_dsb_head(dsb), i++);
+		intel_flipq_write(display, flipq, LNL_FQ_INTERRUPT |
+				  LNL_FQ_DSB_ID(dsb_id) |
+				  LNL_FQ_DSB_SIZE(intel_dsb_size(dsb) / 64), i++);
+		intel_flipq_write(display, flipq, 0, i++);
+		break;
+	default:
+		MISSING_CASE(flipq->flipq_id);
+		return;
+	}
+}
+
+static void ptl_flipq_add(struct intel_display *display,
+			  struct intel_flipq *flipq,
+			  unsigned int pts,
+			  enum intel_dsb_id dsb_id,
+			  struct intel_dsb *dsb)
+{
+	int i = 0;
+
+	switch (flipq->flipq_id) {
+	case INTEL_FLIPQ_GENERAL:
+		intel_flipq_write(display, flipq, pts, i++);
+		intel_flipq_write(display, flipq, 0, i++);
+		intel_flipq_write(display, flipq, PTL_FQ_INTERRUPT |
+				  PTL_FQ_DSB_ID(dsb_id) |
+				  PTL_FQ_DSB_SIZE(intel_dsb_size(dsb) / 64), i++);
+		intel_flipq_write(display, flipq, intel_dsb_head(dsb), i++);
+		intel_flipq_write(display, flipq, 0, i++); /* DSB engine + size for second DSB */
+		intel_flipq_write(display, flipq, 0, i++); /* head for second DSB */
+		break;
+	case INTEL_FLIPQ_PLANE_1:
+	case INTEL_FLIPQ_PLANE_2:
+	case INTEL_FLIPQ_PLANE_3:
+		intel_flipq_write(display, flipq, pts, i++);
+		intel_flipq_write(display, flipq, 0, i++);
+		intel_flipq_write(display, flipq, PTL_FQ_INTERRUPT |
+				  PTL_FQ_DSB_ID(dsb_id) |
+				  PTL_FQ_DSB_SIZE(intel_dsb_size(dsb) / 64), i++);
+		intel_flipq_write(display, flipq, intel_dsb_head(dsb), i++);
+		break;
+	default:
+		MISSING_CASE(flipq->flipq_id);
+		return;
+	}
+}
+
+void intel_flipq_add(struct intel_crtc *crtc,
+		     enum intel_flipq_id flipq_id,
+		     unsigned int pts,
+		     enum intel_dsb_id dsb_id,
+		     struct intel_dsb *dsb)
+{
+	struct intel_display *display = to_intel_display(crtc);
+	struct intel_flipq *flipq = &crtc->flipq[flipq_id];
+
+	if (!assert_flipq_has_room(crtc, flipq_id))
+		return;
+
+	pts += intel_de_read(display, PIPEDMC_FPQ_TS(crtc->pipe));
+
+	intel_flipq_preempt(crtc, true);
+
+	if (DISPLAY_VER(display) >= 30)
+		ptl_flipq_add(display, flipq,  pts, dsb_id, dsb);
+	else
+		lnl_flipq_add(display, flipq,  pts, dsb_id, dsb);
+
+	flipq->tail = (flipq->tail + 1) % intel_flipq_size_entries(flipq->flipq_id);
+	intel_flipq_write_tail(crtc);
+
+	intel_flipq_preempt(crtc, false);
+
+	intel_flipq_sw_dmc_wake(crtc);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_flipq.h b/drivers/gpu/drm/i915/display/intel_flipq.h
new file mode 100644
index 000000000000..64d3c2a5bb7b
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_flipq.h
@@ -0,0 +1,32 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2025 Intel Corporation
+ */
+
+#ifndef __INTEL_FLIPQ_H__
+#define __INTEL_FLIPQ_H__
+
+#include <linux/types.h>
+
+enum intel_dsb_id;
+enum intel_flipq_id;
+enum pipe;
+struct intel_crtc;
+struct intel_crtc_state;
+struct intel_display;
+struct intel_dsb;
+
+bool intel_flipq_supported(struct intel_display *display);
+void intel_flipq_init(struct intel_display *display);
+void intel_flipq_reset(struct intel_display *display, enum pipe pipe);
+
+void intel_flipq_enable(const struct intel_crtc_state *crtc_state);
+void intel_flipq_disable(const struct intel_crtc_state *old_crtc_state);
+
+void intel_flipq_add(struct intel_crtc *crtc,
+		     enum intel_flipq_id flip_queue_id,
+		     unsigned int pts,
+		     enum intel_dsb_id dsb_id,
+		     struct intel_dsb *dsb);
+
+#endif /* __INTEL_FLIPQ_H__ */
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index f5f5775acdc0..b3bd683b4267 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -255,6 +255,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-display/intel_fbc.o \
 	i915-display/intel_fdi.o \
 	i915-display/intel_fifo_underrun.o \
+	i915-display/intel_flipq.o \
 	i915-display/intel_frontbuffer.o \
 	i915-display/intel_global_state.o \
 	i915-display/intel_gmbus.o \
-- 
2.49.0

