Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 025D11DD3B2
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2020 19:03:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D09ED6E038;
	Thu, 21 May 2020 17:03:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A397C6E038
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 May 2020 17:03:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21251136-1500050 
 for multiple; Thu, 21 May 2020 18:02:57 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 21 May 2020 18:02:55 +0100
Message-Id: <20200521170255.27035-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Stop cross-poluting PIN_GLOBAL
 with PIN_USER with no-ppgtt
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

In order to keep userptr distinct from ggtt mmaps in the eyes of
lockdep, we need to avoid marking those userptr vma as PIN_GLOBAL. (So
long as we comply with only using them as local PIN_USER!)

References: https://gitlab.freedesktop.org/drm/intel/-/issues/1880
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 66165b10256e..1220abb2af6b 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -424,22 +424,17 @@ static int ggtt_bind_vma(struct i915_vma *vma,
 	struct drm_i915_gem_object *obj = vma->obj;
 	u32 pte_flags;
 
+	if (i915_vma_is_bound(vma, ~flags & (I915_VMA_LOCAL_BIND | I915_VMA_GLOBAL_BIND)))
+		return 0;
+
 	/* Applicable to VLV (gen8+ do not support RO in the GGTT) */
 	pte_flags = 0;
 	if (i915_gem_object_is_readonly(obj))
 		pte_flags |= PTE_READ_ONLY;
 
 	vma->vm->insert_entries(vma->vm, vma, cache_level, pte_flags);
-
 	vma->page_sizes.gtt = I915_GTT_PAGE_SIZE;
 
-	/*
-	 * Without aliasing PPGTT there's no difference between
-	 * GLOBAL/LOCAL_BIND, it's all the same ptes. Hence unconditionally
-	 * upgrade to both bound if we bind either to avoid double-binding.
-	 */
-	atomic_or(I915_VMA_GLOBAL_BIND | I915_VMA_LOCAL_BIND, &vma->flags);
-
 	return 0;
 }
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
