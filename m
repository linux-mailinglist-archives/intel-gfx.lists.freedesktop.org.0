Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 037DA136B9F
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 12:04:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70E0F6E9B6;
	Fri, 10 Jan 2020 11:04:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 628176E9B6
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 11:04:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19832532-1500050 
 for multiple; Fri, 10 Jan 2020 11:04:03 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jan 2020 11:04:00 +0000
Message-Id: <20200110110402.1231745-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/gt: Skip trying to unbind in
 restore_ggtt_mappings
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

Currently we first to try to unbind the VMA (and lazily rebind on next
use) as an optimisation during restore_ggtt_mappings. Ideally, the only
objects in the GGTT upon resume are the pinned kernel objects which
can't be unbound and need to be restored. As the unbind interferes with
the plan to mark those objects as active for error capture, forgo the
optimisation.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 795cd267e28e..eb9365741ff8 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -1197,7 +1197,7 @@ void i915_ggtt_disable_guc(struct i915_ggtt *ggtt)
 
 static void ggtt_restore_mappings(struct i915_ggtt *ggtt)
 {
-	struct i915_vma *vma, *vn;
+	struct i915_vma *vma;
 	bool flush = false;
 	int open;
 
@@ -1212,15 +1212,12 @@ static void ggtt_restore_mappings(struct i915_ggtt *ggtt)
 	open = atomic_xchg(&ggtt->vm.open, 0);
 
 	/* clflush objects bound into the GGTT and rebind them. */
-	list_for_each_entry_safe(vma, vn, &ggtt->vm.bound_list, vm_link) {
+	list_for_each_entry(vma, &ggtt->vm.bound_list, vm_link) {
 		struct drm_i915_gem_object *obj = vma->obj;
 
 		if (!i915_vma_is_bound(vma, I915_VMA_GLOBAL_BIND))
 			continue;
 
-		if (!__i915_vma_unbind(vma))
-			continue;
-
 		clear_bit(I915_VMA_GLOBAL_BIND_BIT, __i915_vma_flags(vma));
 		WARN_ON(i915_vma_bind(vma,
 				      obj ? obj->cache_level : 0,
-- 
2.25.0.rc2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
