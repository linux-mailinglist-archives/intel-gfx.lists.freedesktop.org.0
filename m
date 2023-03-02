Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A76C06A875C
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Mar 2023 17:49:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 828BC10E27B;
	Thu,  2 Mar 2023 16:49:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5721110E27B
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Mar 2023 16:49:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677775789; x=1709311789;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/dY4/GNEHuQEpudn1HCsS5BEPqjqHuHaq9lzqoJG1xY=;
 b=ZRg0cNZ/4ZXtOVVARa62oMnabkeL/ifVtk5M6depH2hJWqh9ZBjpM1l4
 KEa9loiSVgRBKpFjuykBlc8O5NLQ3iZ3LjJnuOVi2pxM8WPz9JF90+aoh
 owFBRl5Muxz29k0YtYCnsiF0Jn4kwuB7FKRtYPMzHBcRz22YK5q3/x8wk
 qsT/hM9+pbllAIg+vjQaGKJP0fdNEeosd1p7mAgNusL60dgVS6n4G4RAD
 x9JFuDfOW7YL+f59PwBPL2KJeaHuPvxUO+gpTSmciwpQFI+w49SS9RB9l
 Bb4vT1bsDw7Rew+W50udwKG01H99ZNOELGSIOtni1asrbsxYN7mVX2t62 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="323070823"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="323070823"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 08:49:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="675019871"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="675019871"
Received: from martamon-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.57.129])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 08:49:39 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Mar 2023 18:49:36 +0200
Message-Id: <20230302164936.3034161-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/rps: split out display rps parts to a
 separate file
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Split out the RPS parts so they can be conditionally compiled out later.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |  1 +
 .../gpu/drm/i915/display/intel_atomic_plane.c | 79 ++----------------
 .../gpu/drm/i915/display/intel_display_rps.c  | 81 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_display_rps.h  | 22 +++++
 4 files changed, 111 insertions(+), 72 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_rps.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_rps.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index b2f91a1f8268..8e46f57e4569 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -239,6 +239,7 @@ i915-y += \
 	display/intel_display_power.o \
 	display/intel_display_power_map.o \
 	display/intel_display_power_well.o \
+	display/intel_display_rps.o \
 	display/intel_dmc.o \
 	display/intel_dpio_phy.o \
 	display/intel_dpll.o \
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 3bd8f7eb75a6..719a60e278f3 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -34,11 +34,10 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_fourcc.h>
 
-#include "gt/intel_rps.h"
-
 #include "i915_config.h"
 #include "intel_atomic_plane.h"
 #include "intel_cdclk.h"
+#include "intel_display_rps.h"
 #include "intel_display_trace.h"
 #include "intel_display_types.h"
 #include "intel_fb.h"
@@ -941,64 +940,6 @@ int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_state,
 	return 0;
 }
 
-struct wait_rps_boost {
-	struct wait_queue_entry wait;
-
-	struct drm_crtc *crtc;
-	struct i915_request *request;
-};
-
-static int do_rps_boost(struct wait_queue_entry *_wait,
-			unsigned mode, int sync, void *key)
-{
-	struct wait_rps_boost *wait = container_of(_wait, typeof(*wait), wait);
-	struct i915_request *rq = wait->request;
-
-	/*
-	 * If we missed the vblank, but the request is already running it
-	 * is reasonable to assume that it will complete before the next
-	 * vblank without our intervention, so leave RPS alone.
-	 */
-	if (!i915_request_started(rq))
-		intel_rps_boost(rq);
-	i915_request_put(rq);
-
-	drm_crtc_vblank_put(wait->crtc);
-
-	list_del(&wait->wait.entry);
-	kfree(wait);
-	return 1;
-}
-
-static void add_rps_boost_after_vblank(struct drm_crtc *crtc,
-				       struct dma_fence *fence)
-{
-	struct wait_rps_boost *wait;
-
-	if (!dma_fence_is_i915(fence))
-		return;
-
-	if (DISPLAY_VER(to_i915(crtc->dev)) < 6)
-		return;
-
-	if (drm_crtc_vblank_get(crtc))
-		return;
-
-	wait = kmalloc(sizeof(*wait), GFP_KERNEL);
-	if (!wait) {
-		drm_crtc_vblank_put(crtc);
-		return;
-	}
-
-	wait->request = to_request(dma_fence_get(fence));
-	wait->crtc = crtc;
-
-	wait->wait.func = do_rps_boost;
-	wait->wait.flags = 0;
-
-	add_wait_queue(drm_crtc_vblank_waitqueue(crtc), &wait->wait);
-}
-
 /**
  * intel_prepare_plane_fb - Prepare fb for usage on plane
  * @_plane: drm plane to prepare for
@@ -1089,13 +1030,13 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
 		dma_resv_iter_begin(&cursor, obj->base.resv,
 				    DMA_RESV_USAGE_WRITE);
 		dma_resv_for_each_fence_unlocked(&cursor, fence) {
-			add_rps_boost_after_vblank(new_plane_state->hw.crtc,
-						   fence);
+			intel_display_rps_boost_after_vblank(new_plane_state->hw.crtc,
+							     fence);
 		}
 		dma_resv_iter_end(&cursor);
 	} else {
-		add_rps_boost_after_vblank(new_plane_state->hw.crtc,
-					   new_plane_state->uapi.fence);
+		intel_display_rps_boost_after_vblank(new_plane_state->hw.crtc,
+						     new_plane_state->uapi.fence);
 	}
 
 	/*
@@ -1106,10 +1047,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
 	 * that are not quite steady state without resorting to forcing
 	 * maximum clocks following a vblank miss (see do_rps_boost()).
 	 */
-	if (!state->rps_interactive) {
-		intel_rps_mark_interactive(&to_gt(dev_priv)->rps, true);
-		state->rps_interactive = true;
-	}
+	intel_display_rps_mark_interactive(dev_priv, state, true);
 
 	return 0;
 
@@ -1140,10 +1078,7 @@ intel_cleanup_plane_fb(struct drm_plane *plane,
 	if (!obj)
 		return;
 
-	if (state->rps_interactive) {
-		intel_rps_mark_interactive(&to_gt(dev_priv)->rps, false);
-		state->rps_interactive = false;
-	}
+	intel_display_rps_mark_interactive(dev_priv, state, false);
 
 	/* Should only be called after a successful intel_prepare_plane_fb()! */
 	intel_plane_unpin_fb(old_plane_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display_rps.c b/drivers/gpu/drm/i915/display/intel_display_rps.c
new file mode 100644
index 000000000000..918d0327169a
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_display_rps.c
@@ -0,0 +1,81 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#include <drm/drm_crtc.h>
+#include <drm/drm_vblank.h>
+
+#include "gt/intel_rps.h"
+#include "i915_drv.h"
+#include "intel_display_rps.h"
+#include "intel_display_types.h"
+
+struct wait_rps_boost {
+	struct wait_queue_entry wait;
+
+	struct drm_crtc *crtc;
+	struct i915_request *request;
+};
+
+static int do_rps_boost(struct wait_queue_entry *_wait,
+			unsigned mode, int sync, void *key)
+{
+	struct wait_rps_boost *wait = container_of(_wait, typeof(*wait), wait);
+	struct i915_request *rq = wait->request;
+
+	/*
+	 * If we missed the vblank, but the request is already running it
+	 * is reasonable to assume that it will complete before the next
+	 * vblank without our intervention, so leave RPS alone.
+	 */
+	if (!i915_request_started(rq))
+		intel_rps_boost(rq);
+	i915_request_put(rq);
+
+	drm_crtc_vblank_put(wait->crtc);
+
+	list_del(&wait->wait.entry);
+	kfree(wait);
+	return 1;
+}
+
+void intel_display_rps_boost_after_vblank(struct drm_crtc *crtc,
+					  struct dma_fence *fence)
+{
+	struct wait_rps_boost *wait;
+
+	if (!dma_fence_is_i915(fence))
+		return;
+
+	if (DISPLAY_VER(to_i915(crtc->dev)) < 6)
+		return;
+
+	if (drm_crtc_vblank_get(crtc))
+		return;
+
+	wait = kmalloc(sizeof(*wait), GFP_KERNEL);
+	if (!wait) {
+		drm_crtc_vblank_put(crtc);
+		return;
+	}
+
+	wait->request = to_request(dma_fence_get(fence));
+	wait->crtc = crtc;
+
+	wait->wait.func = do_rps_boost;
+	wait->wait.flags = 0;
+
+	add_wait_queue(drm_crtc_vblank_waitqueue(crtc), &wait->wait);
+}
+
+void intel_display_rps_mark_interactive(struct drm_i915_private *i915,
+					struct intel_atomic_state *state,
+					bool interactive)
+{
+	if (state->rps_interactive == interactive)
+		return;
+
+	intel_rps_mark_interactive(&to_gt(i915)->rps, interactive);
+	state->rps_interactive = interactive;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_display_rps.h b/drivers/gpu/drm/i915/display/intel_display_rps.h
new file mode 100644
index 000000000000..e19009c2371a
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_display_rps.h
@@ -0,0 +1,22 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#ifndef __INTEL_DISPLAY_RPS_H__
+#define __INTEL_DISPLAY_RPS_H__
+
+#include <linux/types.h>
+
+struct dma_fence;
+struct drm_crtc;
+struct drm_i915_private;
+struct intel_atomic_state;
+
+void intel_display_rps_boost_after_vblank(struct drm_crtc *crtc,
+					  struct dma_fence *fence);
+void intel_display_rps_mark_interactive(struct drm_i915_private *i915,
+					struct intel_atomic_state *state,
+					bool interactive);
+
+#endif /* __INTEL_DISPLAY_RPS_H__ */
-- 
2.39.1

