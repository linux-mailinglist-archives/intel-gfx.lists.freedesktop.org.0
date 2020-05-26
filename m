Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4DEC1E24F8
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2020 17:07:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A35506E20B;
	Tue, 26 May 2020 15:07:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A89886E20B
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 May 2020 15:07:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21298866-1500050 
 for multiple; Tue, 26 May 2020 16:07:40 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 May 2020 16:07:39 +0100
Message-Id: <20200526150739.26147-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Clear LOCAL_BIND from shared GGTT
 on resume
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

We only restore GLOBAL binds upon resume as we expect these to be pinned
for use by HW, whereas the LOCAL binds can be recreated on demand once
userspace is resumed. For the LOCAL bind to be recreated in the global
GTT, we need to clear its presence flag on deciding not to restore the
mapping upon resume.

Fixes: bf0840cdb304 ("drm/i915/gt: Stop cross-polluting PIN_GLOBAL with PIN_USER with no-ppgtt")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 8c275f8588c3..317172ad5ef3 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -1161,6 +1161,11 @@ void i915_ggtt_disable_guc(struct i915_ggtt *ggtt)
 	ggtt->invalidate(ggtt);
 }
 
+static unsigned int clear_bind(struct i915_vma *vma)
+{
+	return atomic_fetch_and(~I915_VMA_BIND_MASK, &vma->flags);
+}
+
 void i915_ggtt_resume(struct i915_ggtt *ggtt)
 {
 	struct i915_vma *vma;
@@ -1179,10 +1184,9 @@ void i915_ggtt_resume(struct i915_ggtt *ggtt)
 	list_for_each_entry(vma, &ggtt->vm.bound_list, vm_link) {
 		struct drm_i915_gem_object *obj = vma->obj;
 
-		if (!i915_vma_is_bound(vma, I915_VMA_GLOBAL_BIND))
+		if (!(clear_bind(vma) & I915_VMA_GLOBAL_BIND))
 			continue;
 
-		clear_bit(I915_VMA_GLOBAL_BIND_BIT, __i915_vma_flags(vma));
 		WARN_ON(i915_vma_bind(vma,
 				      obj ? obj->cache_level : 0,
 				      PIN_GLOBAL, NULL));
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
