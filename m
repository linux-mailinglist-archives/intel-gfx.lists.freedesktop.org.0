Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B29109E9AE6
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2024 16:51:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BED410E4CB;
	Mon,  9 Dec 2024 15:51:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD4D710E4CB;
 Mon,  9 Dec 2024 15:51:07 +0000 (UTC)
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, Maarten Lankhorst <dev@lankhorst.se>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH] drm/xe/display: Use a single early init call for display
Date: Mon,  9 Dec 2024 16:51:42 +0100
Message-ID: <20241209155142.209657-1-dev@lankhorst.se>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241206185956.3290-6-dev@lankhorst.se>
References: <20241206185956.3290-6-dev@lankhorst.se>
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

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
Rebase

 drivers/gpu/drm/xe/display/xe_display.c | 73 +++++++------------------
 drivers/gpu/drm/xe/display/xe_display.h |  8 +--
 drivers/gpu/drm/xe/xe_device.c          | 10 +---
 3 files changed, 22 insertions(+), 69 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 317fa66adf189..b013a4db11183 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -101,19 +101,25 @@ int xe_display_create(struct xe_device *xe)
 	return drmm_add_action_or_reset(&xe->drm, display_destroy, NULL);
 }
 
-static void xe_display_fini_nommio(struct drm_device *dev, void *dummy)
+static void xe_display_fini_early(void *arg)
 {
-	struct xe_device *xe = to_xe_device(dev);
+	struct xe_device *xe = arg;
 	struct intel_display *display = &xe->display;
 
 	if (!xe->info.probe_display)
 		return;
 
+	intel_display_driver_remove_nogem(display);
+	intel_display_driver_remove_noirq(display);
+	intel_opregion_cleanup(display);
 	intel_power_domains_cleanup(display);
 }
 
-int xe_display_init_nommio(struct xe_device *xe)
+int xe_display_init_early(struct xe_device *xe)
 {
+	struct intel_display *display = &xe->display;
+	int err;
+
 	if (!xe->info.probe_display)
 		return 0;
 
@@ -123,29 +129,6 @@ int xe_display_init_nommio(struct xe_device *xe)
 	/* This must be called before any calls to HAS_PCH_* */
 	intel_detect_pch(xe);
 
-	return drmm_add_action_or_reset(&xe->drm, xe_display_fini_nommio, xe);
-}
-
-static void xe_display_fini_noirq(void *arg)
-{
-	struct xe_device *xe = arg;
-	struct intel_display *display = &xe->display;
-
-	if (!xe->info.probe_display)
-		return;
-
-	intel_display_driver_remove_noirq(display);
-	intel_opregion_cleanup(display);
-}
-
-int xe_display_init_noirq(struct xe_device *xe)
-{
-	struct intel_display *display = &xe->display;
-	int err;
-
-	if (!xe->info.probe_display)
-		return 0;
-
 	intel_display_driver_early_probe(display);
 
 	/* Early display init.. */
@@ -162,38 +145,20 @@ int xe_display_init_noirq(struct xe_device *xe)
 	intel_display_device_info_runtime_init(display);
 
 	err = intel_display_driver_probe_noirq(display);
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
-	struct intel_display *display = &xe->display;
-
-	if (!xe->info.probe_display)
-		return;
-
-	intel_display_driver_remove_nogem(display);
-}
-
-int xe_display_init_noaccel(struct xe_device *xe)
-{
-	struct intel_display *display = &xe->display;
-	int err;
-
-	if (!xe->info.probe_display)
-		return 0;
+	if (err)
+		goto err_opregion;
 
 	err = intel_display_driver_probe_nogem(display);
 	if (err)
-		return err;
+		goto err_noirq;
 
-	return devm_add_action_or_reset(xe->drm.dev, xe_display_fini_noaccel, xe);
+	return devm_add_action_or_reset(xe->drm.dev, xe_display_fini_early, xe);
+err_noirq:
+	intel_display_driver_remove_noirq(display);
+	intel_power_domains_cleanup(display);
+err_opregion:
+	intel_opregion_cleanup(display);
+	return err;
 }
 
 int xe_display_init(struct xe_device *xe)
diff --git a/drivers/gpu/drm/xe/display/xe_display.h b/drivers/gpu/drm/xe/display/xe_display.h
index 233f81a26c255..e2a99624f7064 100644
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
 
@@ -54,9 +52,7 @@ static inline int xe_display_create(struct xe_device *xe) { return 0; }
 
 static inline int xe_display_probe(struct xe_device *xe) { return 0; }
 
-static inline int xe_display_init_nommio(struct xe_device *xe) { return 0; }
-static inline int xe_display_init_noirq(struct xe_device *xe) { return 0; }
-static inline int xe_display_init_noaccel(struct xe_device *xe) { return 0; }
+static inline int xe_display_init_early(struct xe_device *xe) { return 0; }
 static inline int xe_display_init(struct xe_device *xe) { return 0; }
 static inline void xe_display_fini(struct xe_device *xe) {}
 
diff --git a/drivers/gpu/drm/xe/xe_device.c b/drivers/gpu/drm/xe/xe_device.c
index fbec176ee64ad..c9c0b74c74ddb 100644
--- a/drivers/gpu/drm/xe/xe_device.c
+++ b/drivers/gpu/drm/xe/xe_device.c
@@ -639,10 +639,6 @@ int xe_device_probe(struct xe_device *xe)
 		return err;
 
 	xe->info.mem_region_mask = 1;
-	err = xe_display_init_nommio(xe);
-	if (err)
-		return err;
-
 	err = xe_set_dma_info(xe);
 	if (err)
 		return err;
@@ -697,10 +693,6 @@ int xe_device_probe(struct xe_device *xe)
 	if (err)
 		return err;
 
-	err = xe_display_init_noirq(xe);
-	if (err)
-		return err;
-
 	err = probe_has_flat_ccs(xe);
 	if (err)
 		goto err;
@@ -724,7 +716,7 @@ int xe_device_probe(struct xe_device *xe)
 	 * This is the reason the first allocation needs to be done
 	 * inside display.
 	 */
-	err = xe_display_init_noaccel(xe);
+	err = xe_display_init_early(xe);
 	if (err)
 		goto err;
 
-- 
2.45.2

