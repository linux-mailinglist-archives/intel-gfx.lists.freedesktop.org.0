Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A99D6301C5A
	for <lists+intel-gfx@lfdr.de>; Sun, 24 Jan 2021 14:54:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A324E89B45;
	Sun, 24 Jan 2021 13:54:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7543189C61
 for <intel-gfx@lists.freedesktop.org>; Sun, 24 Jan 2021 13:54:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23686206-1500050 
 for multiple; Sun, 24 Jan 2021 13:54:05 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 24 Jan 2021 13:54:06 +0000
Message-Id: <20210124135406.28756-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210124135406.28756-1-chris@chris-wilson.co.uk>
References: <20210124135406.28756-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Always try to reserve GGTT
 address 0x0
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since writing to address 0 is a very common mistake, let's try to avoid
putting anything sensitive there.

References: https://gitlab.freedesktop.org/drm/intel/-/issues/2989
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c | 40 +++++++++++++++++++---------
 1 file changed, 28 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index dac07d66f658..3a737d4fbc3c 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -535,16 +535,32 @@ static int init_ggtt(struct i915_ggtt *ggtt)
 
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
@@ -557,9 +573,9 @@ static int init_ggtt(struct i915_ggtt *ggtt)
 
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
