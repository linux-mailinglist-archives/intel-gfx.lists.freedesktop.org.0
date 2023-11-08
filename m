Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91BE77E5483
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Nov 2023 11:50:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1F0D10E715;
	Wed,  8 Nov 2023 10:50:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (lankhorst.se
 [IPv6:2a02:2308:0:7ec:e79c:4e97:b6c4:f0ae])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AB8510E712
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Nov 2023 10:50:32 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Nov 2023 11:49:53 +0100
Message-Id: <20231108104953.152671-1-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Use drm_atomic_helper_wait_for_fences
 helper.
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
Cc: Maarten Lankhorst <dev@lankhorst.se>, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Maarten Lankhorst <dev@lankhorst.se>

The fence api specifies you should wait for fence to completion, not
give up after whatever timeout was originally configured. The fences
themselves should prevent the timeout from being indefinite.

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c |  1 -
 drivers/gpu/drm/i915/display/intel_display.c  | 23 +------------------
 2 files changed, 1 insertion(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 6b3851d77b6d..ef553270c079 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -38,7 +38,6 @@
 #include <drm/drm_blend.h>
 #include <drm/drm_fourcc.h>
 
-#include "i915_config.h"
 #include "i915_reg.h"
 #include "intel_atomic_plane.h"
 #include "intel_cdclk.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 67cfc0eb1af5..28992f368b38 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -48,7 +48,6 @@
 #include "g4x_dp.h"
 #include "g4x_hdmi.h"
 #include "hsw_ips.h"
-#include "i915_config.h"
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "i915_utils.h"
@@ -7053,26 +7052,6 @@ void intel_atomic_helper_free_state_worker(struct work_struct *work)
 	intel_atomic_helper_free_state(dev_priv);
 }
 
-static void intel_atomic_commit_fence_wait(struct intel_atomic_state *intel_state)
-{
-	struct drm_i915_private *i915 = to_i915(intel_state->base.dev);
-	struct drm_plane *plane;
-	struct drm_plane_state *new_plane_state;
-	int ret, i;
-
-	for_each_new_plane_in_state(&intel_state->base, plane, new_plane_state, i) {
-		if (new_plane_state->fence) {
-			ret = dma_fence_wait_timeout(new_plane_state->fence, false,
-						     i915_fence_timeout(i915));
-			if (ret <= 0)
-				break;
-
-			dma_fence_put(new_plane_state->fence);
-			new_plane_state->fence = NULL;
-		}
-	}
-}
-
 static void intel_atomic_cleanup_work(struct work_struct *work)
 {
 	struct intel_atomic_state *state =
@@ -7145,7 +7124,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	intel_wakeref_t wakeref = 0;
 	int i;
 
-	intel_atomic_commit_fence_wait(state);
+	drm_atomic_helper_wait_for_fences(dev, &state->base, false);
 
 	drm_atomic_helper_wait_for_dependencies(&state->base);
 	drm_dp_mst_atomic_wait_for_dependencies(&state->base);
-- 
2.40.1

