Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 524589BF081
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 15:38:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC77D10E70D;
	Wed,  6 Nov 2024 14:38:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51CB010E702;
 Wed,  6 Nov 2024 14:38:24 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maarten@mblankhorst.nl, Lankhorst@mblankhorst.nl, dev@lankhorst.se
Subject: [PATCH 05/10] drm/xe/display: Use a single early init call for display
Date: Wed,  6 Nov 2024 15:38:32 +0100
Message-ID: <20241106143837.195642-5-maarten.lankhorst@linux.intel.com>
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

Instead of 3 different calls, it should be safe to unify to a single
call now. This makes the init sequence cleaner, and display less
tangled.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20241105121857.17389-5-maarten.lankhorst@linux.intel.com
Signed-off-by: Maarten Lankhorst,,, <dev@lankhorst.se>
---
 drivers/gpu/drm/xe/display/xe_display.c | 72 +++++++------------------
 drivers/gpu/drm/xe/display/xe_display.h |  8 +--
 drivers/gpu/drm/xe/xe_device.c          | 10 +---
 3 files changed, 23 insertions(+), 67 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 695c27ac6b0f8..88dcec57620dd 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -100,31 +100,7 @@ int xe_display_create(struct xe_device *xe)
 	return drmm_add_action_or_reset(&xe->drm, display_destroy, NULL);
 }
 
-static void xe_display_fini_nommio(struct drm_device *dev, void *dummy)
-{
-	struct xe_device *xe = to_xe_device(dev);
-
-	if (!xe->info.probe_display)
-		return;
-
-	intel_power_domains_cleanup(xe);
-}
-
-int xe_display_init_nommio(struct xe_device *xe)
-{
-	if (!xe->info.probe_display)
-		return 0;
-
-	/* Fake uncore lock */
-	spin_lock_init(&xe->uncore.lock);
-
-	/* This must be called before any calls to HAS_PCH_* */
-	intel_detect_pch(xe);
-
-	return drmm_add_action_or_reset(&xe->drm, xe_display_fini_nommio, xe);
-}
-
-static void xe_display_fini_noirq(void *arg)
+static void xe_display_fini_early(void *arg)
 {
 	struct xe_device *xe = arg;
 	struct intel_display *display = &xe->display;
@@ -132,11 +108,13 @@ static void xe_display_fini_noirq(void *arg)
 	if (!xe->info.probe_display)
 		return;
 
+	intel_display_driver_remove_nogem(xe);
 	intel_display_driver_remove_noirq(xe);
 	intel_opregion_cleanup(display);
+	intel_power_domains_cleanup(xe);
 }
 
-int xe_display_init_noirq(struct xe_device *xe)
+int xe_display_init_early(struct xe_device *xe)
 {
 	struct intel_display *display = &xe->display;
 	int err;
@@ -144,6 +122,12 @@ int xe_display_init_noirq(struct xe_device *xe)
 	if (!xe->info.probe_display)
 		return 0;
 
+	/* Fake uncore lock */
+	spin_lock_init(&xe->uncore.lock);
+
+	/* This must be called before any calls to HAS_PCH_* */
+	intel_detect_pch(xe);
+
 	intel_display_driver_early_probe(xe);
 
 	/* Early display init.. */
@@ -160,36 +144,20 @@ int xe_display_init_noirq(struct xe_device *xe)
 	intel_display_device_info_runtime_init(xe);
 
 	err = intel_display_driver_probe_noirq(xe);
-	if (err) {
-		intel_opregion_cleanup(display);
-		return err;
-	}
-
-	return devm_add_action_or_reset(xe->drm.dev, xe_display_fini_noirq, xe);
-}
-
-static void xe_display_fini_noaccel(void *arg)
-{
-	struct xe_device *xe = arg;
-
-	if (!xe->info.probe_display)
-		return;
-
-	intel_display_driver_remove_nogem(xe);
-}
-
-int xe_display_init_noaccel(struct xe_device *xe)
-{
-	int err;
-
-	if (!xe->info.probe_display)
-		return 0;
+	if (err)
+		goto err_opregion;
 
 	err = intel_display_driver_probe_nogem(xe);
 	if (err)
-		return err;
+		goto err_noirq;
 
-	return devm_add_action_or_reset(xe->drm.dev, xe_display_fini_noaccel, xe);
+	return devm_add_action_or_reset(xe->drm.dev, xe_display_fini_early, xe);
+err_noirq:
+	intel_display_driver_remove_noirq(xe);
+	intel_power_domains_cleanup(xe);
+err_opregion:
+	intel_opregion_cleanup(display);
+	return err;
 }
 
 int xe_display_init(struct xe_device *xe)
diff --git a/drivers/gpu/drm/xe/display/xe_display.h b/drivers/gpu/drm/xe/display/xe_display.h
index 17afa537aee50..255cffa328160 100644
--- a/drivers/gpu/drm/xe/display/xe_display.h
+++ b/drivers/gpu/drm/xe/display/xe_display.h
@@ -20,9 +20,7 @@ int xe_display_create(struct xe_device *xe);
 
 int xe_display_probe(struct xe_device *xe);
 
-int xe_display_init_nommio(struct xe_device *xe);
-int xe_display_init_noirq(struct xe_device *xe);
-int xe_display_init_noaccel(struct xe_device *xe);
+int xe_display_init_early(struct xe_device *xe);
 int xe_display_init(struct xe_device *xe);
 void xe_display_fini(struct xe_device *xe);
 
@@ -53,9 +51,7 @@ static inline int xe_display_create(struct xe_device *xe) { return 0; }
 
 static inline int xe_display_probe(struct xe_device *xe) { return 0; }
 
-static inline int xe_display_init_nommio(struct xe_device *xe) { return 0; }
-static inline int xe_display_init_noirq(struct xe_device *xe) { return 0; }
-static inline int xe_display_init_noaccel(struct xe_device *xe) { return 0; }
+static inline int xe_display_init_early(struct xe_device *xe) { return 0; }
 static inline int xe_display_init(struct xe_device *xe) { return 0; }
 static inline void xe_display_fini(struct xe_device *xe) {}
 
diff --git a/drivers/gpu/drm/xe/xe_device.c b/drivers/gpu/drm/xe/xe_device.c
index f6f127788bb8b..450c57dfd297b 100644
--- a/drivers/gpu/drm/xe/xe_device.c
+++ b/drivers/gpu/drm/xe/xe_device.c
@@ -641,10 +641,6 @@ int xe_device_probe(struct xe_device *xe)
 		return err;
 
 	xe->info.mem_region_mask = 1;
-	err = xe_display_init_nommio(xe);
-	if (err)
-		return err;
-
 	err = xe_set_dma_info(xe);
 	if (err)
 		return err;
@@ -696,10 +692,6 @@ int xe_device_probe(struct xe_device *xe)
 	if (err)
 		return err;
 
-	err = xe_display_init_noirq(xe);
-	if (err)
-		return err;
-
 	err = probe_has_flat_ccs(xe);
 	if (err)
 		goto err;
@@ -727,7 +719,7 @@ int xe_device_probe(struct xe_device *xe)
 	 * This is the reason the first allocation needs to be done
 	 * inside display.
 	 */
-	err = xe_display_init_noaccel(xe);
+	err = xe_display_init_early(xe);
 	if (err)
 		goto err;
 
-- 
2.45.2

