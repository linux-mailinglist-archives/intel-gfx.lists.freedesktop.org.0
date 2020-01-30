Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 021E114DABD
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 13:37:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 110056E81F;
	Thu, 30 Jan 2020 12:37:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3FE16E81F
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jan 2020 12:37:29 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20059236-1500050 
 for multiple; Thu, 30 Jan 2020 12:37:23 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Jan 2020 12:37:22 +0000
Message-Id: <20200130123722.1867253-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Serialise the bound vma prior to
 suspend
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

Make sure that all the vma are bound and PTE writes are finished before
we zap them for suspend.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c | 19 +++++--------------
 1 file changed, 5 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 79096722ce16..4597f6010c3a 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -106,20 +106,15 @@ static bool needs_idle_maps(struct drm_i915_private *i915)
 
 static void ggtt_suspend_mappings(struct i915_ggtt *ggtt)
 {
-	struct drm_i915_private *i915 = ggtt->vm.i915;
-
-	/*
-	 * Don't bother messing with faults pre GEN6 as we have little
-	 * documentation supporting that it's a good idea.
-	 */
-	if (INTEL_GEN(i915) < 6)
-		return;
+	struct i915_vma *vma;
 
-	intel_gt_check_and_clear_faults(ggtt->vm.gt);
+	list_for_each_entry(vma, &ggtt->vm.bound_list, vm_link)
+		i915_vma_sync(vma);
 
 	ggtt->vm.clear_range(&ggtt->vm, 0, ggtt->vm.total);
-
 	ggtt->invalidate(ggtt);
+
+	intel_gt_check_and_clear_faults(ggtt->vm.gt);
 }
 
 void i915_gem_suspend_gtt_mappings(struct drm_i915_private *i915)
@@ -1188,8 +1183,6 @@ static void ggtt_restore_mappings(struct i915_ggtt *ggtt)
 
 	intel_gt_check_and_clear_faults(ggtt->vm.gt);
 
-	mutex_lock(&ggtt->vm.mutex);
-
 	/* First fill our portion of the GTT with scratch pages */
 	ggtt->vm.clear_range(&ggtt->vm, 0, ggtt->vm.total);
 
@@ -1216,8 +1209,6 @@ static void ggtt_restore_mappings(struct i915_ggtt *ggtt)
 	atomic_set(&ggtt->vm.open, open);
 	ggtt->invalidate(ggtt);
 
-	mutex_unlock(&ggtt->vm.mutex);
-
 	if (flush)
 		wbinvd_on_all_cpus();
 }
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
