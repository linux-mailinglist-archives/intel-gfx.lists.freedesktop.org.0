Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CA2C9BF07D
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 15:38:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B2B910E1EE;
	Wed,  6 Nov 2024 14:38:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CBC910E6FB;
 Wed,  6 Nov 2024 14:38:19 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maarten@mblankhorst.nl, Lankhorst@mblankhorst.nl, dev@lankhorst.se
Subject: [PATCH 02/10] drm/xe/display: Add intel_plane_initial_vblank_wait
Date: Wed,  6 Nov 2024 15:38:29 +0100
Message-ID: <20241106143837.195642-2-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241106143837.195642-1-maarten.lankhorst@linux.intel.com>
References: <20241106143837.195642-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
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

We're changing the driver to have no interrupts during early init for
Xe, so we poll the PIPE_FRMSTMSMP counter instead.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20241105121857.17389-2-maarten.lankhorst@linux.intel.com
Signed-off-by: Maarten Lankhorst,,, <dev@lankhorst.se>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  6 +++---
 .../drm/i915/display/intel_plane_initial.c    |  9 ++++++++-
 .../drm/i915/display/intel_plane_initial.h    |  1 +
 drivers/gpu/drm/xe/display/xe_plane_initial.c | 19 ++++++++++++++++++-
 4 files changed, 30 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ef14361463256..f4e2aec212d75 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -794,7 +794,7 @@ void intel_plane_disable_noatomic(struct intel_crtc *crtc,
 	if ((crtc_state->active_planes & ~BIT(PLANE_CURSOR)) == 0 &&
 	    hsw_ips_disable(crtc_state)) {
 		crtc_state->ips_enabled = false;
-		intel_crtc_wait_for_next_vblank(crtc);
+		intel_plane_initial_vblank_wait(plane);
 	}
 
 	/*
@@ -808,7 +808,7 @@ void intel_plane_disable_noatomic(struct intel_crtc *crtc,
 	 */
 	if (HAS_GMCH(dev_priv) &&
 	    intel_set_memory_cxsr(dev_priv, false))
-		intel_crtc_wait_for_next_vblank(crtc);
+		intel_plane_initial_vblank_wait(plane);
 
 	/*
 	 * Gen2 reports pipe underruns whenever all planes are disabled.
@@ -818,7 +818,7 @@ void intel_plane_disable_noatomic(struct intel_crtc *crtc,
 		intel_set_cpu_fifo_underrun_reporting(dev_priv, crtc->pipe, false);
 
 	intel_plane_disable_arm(NULL, plane, crtc_state);
-	intel_crtc_wait_for_next_vblank(crtc);
+	intel_plane_initial_vblank_wait(plane);
 }
 
 unsigned int
diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
index 62401f6a04e4f..f0f4ec2b6cc98 100644
--- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
+++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
@@ -14,6 +14,13 @@
 #include "intel_frontbuffer.h"
 #include "intel_plane_initial.h"
 
+void intel_plane_initial_vblank_wait(plane);(struct intel_plane *plane)
+{
+	struct intel_crtc *crtc = intel_crtc_for_pipe(to_intel_display(plane), plane->pipe);
+
+	intel_crtc_wait_for_next_vblank(crtc);
+}
+
 static bool
 intel_reuse_initial_plane_obj(struct intel_crtc *this,
 			      const struct intel_initial_plane_config plane_configs[],
@@ -438,7 +445,7 @@ void intel_initial_plane_config(struct drm_i915_private *i915)
 		intel_find_initial_plane_obj(crtc, plane_configs);
 
 		if (i915->display.funcs.display->fixup_initial_plane_config(crtc, plane_config))
-			intel_crtc_wait_for_next_vblank(crtc);
+			intel_initial_vblank_wait(crtc);
 
 		plane_config_fini(plane_config);
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.h b/drivers/gpu/drm/i915/display/intel_plane_initial.h
index 64ab95239cd45..3ba20b9e2355f 100644
--- a/drivers/gpu/drm/i915/display/intel_plane_initial.h
+++ b/drivers/gpu/drm/i915/display/intel_plane_initial.h
@@ -8,6 +8,7 @@
 
 struct drm_i915_private;
 
+void intel_plane_initial_vblank_wait(struct intel_plane *plane);
 void intel_initial_plane_config(struct drm_i915_private *i915);
 
 #endif
diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
index 668f544a7ac80..9252cfeef0a1f 100644
--- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
+++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
@@ -8,7 +8,9 @@
 
 #include "regs/xe_gtt_defs.h"
 #include "xe_ggtt.h"
+#include "xe_mmio.h"
 
+#include "i915_reg.h"
 #include "intel_atomic_plane.h"
 #include "intel_crtc.h"
 #include "intel_display.h"
@@ -22,6 +24,21 @@
 
 #include <generated/xe_wa_oob.h>
 
+void intel_plane_initial_vblank_wait(struct intel_plane *plane)
+{
+	/* Early xe has no irq */
+	struct xe_device *xe = to_xe_device(plane->base.dev);
+	struct xe_reg pipe_frmtmstmp = XE_REG(i915_mmio_reg_offset(PIPE_FRMTMSTMP(plane->pipe)));
+	u32 timestamp;
+	int ret;
+
+	timestamp = xe_mmio_read32(xe_root_tile_mmio(xe), pipe_frmtmstmp);
+
+	ret = xe_mmio_wait32_not(xe_root_tile_mmio(xe), pipe_frmtmstmp, ~0U, timestamp, 40000U, &timestamp, false);
+	if (ret < 0)
+		drm_warn(&xe->drm, "waiting for early vblank failed with %i\n", ret);
+}
+
 static bool
 intel_reuse_initial_plane_obj(struct intel_crtc *this,
 			      const struct intel_initial_plane_config plane_configs[],
@@ -293,7 +310,7 @@ void intel_initial_plane_config(struct drm_i915_private *i915)
 		intel_find_initial_plane_obj(crtc, plane_configs);
 
 		if (i915->display.funcs.display->fixup_initial_plane_config(crtc, plane_config))
-			intel_crtc_wait_for_next_vblank(crtc);
+			intel_plane_initial_vblank_wait(to_intel_plane(crtc->base.primary));
 
 		plane_config_fini(plane_config);
 	}
-- 
2.45.2

