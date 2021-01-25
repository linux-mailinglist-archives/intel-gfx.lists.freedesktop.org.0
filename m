Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F66030251F
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 13:50:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7E586E138;
	Mon, 25 Jan 2021 12:50:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62E376E133
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 12:50:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23692936-1500050 
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 12:50:31 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Jan 2021 12:50:33 +0000
Message-Id: <20210125125033.23656-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/gt: Always try to reserve GGTT address 0x0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since writing to address 0 is a very common mistake, let's try to avoid
putting anything sensitive there.

References: https://gitlab.freedesktop.org/drm/intel/-/issues/2989
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c | 47 +++++++++++++++++++++-------
 1 file changed, 35 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index dac07d66f658..c7f8023805e2 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -535,16 +535,39 @@ static int init_ggtt(struct i915_ggtt *ggtt)
 
 	mutex_init(&ggtt->error_mutex);
 	if (ggtt->mappable_end) {
-		/* Reserve a mappable slot for our lockless error capture */
-		ret = drm_mm_insert_node_in_range(&ggtt->vm.mm,
-						  &ggtt->error_capture,
-						  PAGE_SIZE, 0,
-						  I915_COLOR_UNEVICTABLE,
-						  0, ggtt->mappable_end,
-						  DRM_MM_INSERT_LOW);
-		if (ret)
-			return ret;
+		/*
+		 * Reserve a mappable slot for our lockless error capture.
+		 *
+		 * We strongly prefer taking address 0x0 in order to protect
+		 * other critical buffers against accidental overwrites,
+		 * as writing to address 0 is a very common mistake.
+		 *
+		 * Since 0 may already be in use by the system (e.g. the BIOS
+		 * framebuffer), we let the reservation fail quietly and hope
+		 * 0 remains reserved always.
+		 *
+		 * If we fail to reserve 0, and then fail to find any space
+		 * for an error-capture, remain silent. We can afford not
+		 * to reserve an error_capture node as we have fallback
+		 * paths, and we trust that 0 will remain reserved. However,
+		 * the only likely reason for failure to insert is a driver
+		 * bug, which we expect to cause other failures...
+		 */
+		ggtt->error_capture.size = I915_GTT_PAGE_SIZE;
+		ggtt->error_capture.color = I915_COLOR_UNEVICTABLE;
+		if (drm_mm_reserve_node(&ggtt->vm.mm, &ggtt->error_capture))
+			drm_mm_insert_node_in_range(&ggtt->vm.mm,
+						    &ggtt->error_capture,
+						    ggtt->error_capture.size, 0,
+						    ggtt->error_capture.color,
+						    0, ggtt->mappable_end,
+						    DRM_MM_INSERT_LOW);
 	}
+	if (drm_mm_node_allocated(&ggtt->error_capture))
+		drm_dbg(&ggtt->vm.i915->drm,
+			"Reserved GGTT:[%llx, %llx] for use by error capture\n",
+			ggtt->error_capture.start,
+			ggtt->error_capture.start + ggtt->error_capture.size);
 
 	/*
 	 * The upper portion of the GuC address space has a sizeable hole
@@ -557,9 +580,9 @@ static int init_ggtt(struct i915_ggtt *ggtt)
 
 	/* Clear any non-preallocated blocks */
 	drm_mm_for_each_hole(entry, &ggtt->vm.mm, hole_start, hole_end) {
-		drm_dbg_kms(&ggtt->vm.i915->drm,
-			    "clearing unused GTT space: [%lx, %lx]\n",
-			    hole_start, hole_end);
+		drm_dbg(&ggtt->vm.i915->drm,
+			"clearing unused GTT space: [%lx, %lx]\n",
+			hole_start, hole_end);
 		ggtt->vm.clear_range(&ggtt->vm, hole_start,
 				     hole_end - hole_start);
 	}
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
