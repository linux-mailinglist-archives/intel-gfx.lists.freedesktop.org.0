Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44DA1201EB9
	for <lists+intel-gfx@lfdr.de>; Sat, 20 Jun 2020 01:45:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5728C6ECDE;
	Fri, 19 Jun 2020 23:45:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 234976ECDB
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jun 2020 23:45:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21555521-1500050 
 for <intel-gfx@lists.freedesktop.org>; Sat, 20 Jun 2020 00:45:46 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 20 Jun 2020 00:45:43 +0100
Message-Id: <20200619234543.17499-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200619234543.17499-1-chris@chris-wilson.co.uk>
References: <20200619234543.17499-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/2] drm/i915/gt: Replace manual kmap_atomic() with
 pin_map for renderstate
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

We only emit the renderstate once now during module load, it is no
longer a concern that we are delaying context creation and so do not
need to so eagerly optimise. Since the last time we have looked at the
renderstate, we have a pin_map / flush_map facility that supports simple
single mappings, replacing the open-coded kmap_atomic() and
prepare_write. As it should be a single page, of which we only write a
small portion, we stick to a simple WB [kmap] and use clflush on !llc
platforms, rather than creating a temporary WC vmapping for the single
page.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_renderstate.c | 29 +++++++--------------
 1 file changed, 9 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_renderstate.c b/drivers/gpu/drm/i915/gt/intel_renderstate.c
index f59e7875cc5e..6db23389e427 100644
--- a/drivers/gpu/drm/i915/gt/intel_renderstate.c
+++ b/drivers/gpu/drm/i915/gt/intel_renderstate.c
@@ -61,7 +61,7 @@ render_state_get_rodata(const struct intel_engine_cs *engine)
 #define OUT_BATCH(batch, i, val)				\
 	do {							\
 		if ((i) >= PAGE_SIZE / sizeof(u32))		\
-			goto err;				\
+			goto out;				\
 		(batch)[(i)++] = (val);				\
 	} while(0)
 
@@ -70,15 +70,12 @@ static int render_state_setup(struct intel_renderstate *so,
 {
 	const struct intel_renderstate_rodata *rodata = so->rodata;
 	unsigned int i = 0, reloc_index = 0;
-	unsigned int needs_clflush;
+	int ret = -EINVAL;
 	u32 *d;
-	int ret;
 
-	ret = i915_gem_object_prepare_write(so->vma->obj, &needs_clflush);
-	if (ret)
-		return ret;
-
-	d = kmap_atomic(i915_gem_object_get_dirty_page(so->vma->obj, 0));
+	d = i915_gem_object_pin_map(so->vma->obj, I915_MAP_WB);
+	if (IS_ERR(d))
+		return PTR_ERR(d);
 
 	while (i < rodata->batch_items) {
 		u32 s = rodata->batch[i];
@@ -89,7 +86,7 @@ static int render_state_setup(struct intel_renderstate *so,
 			if (HAS_64BIT_RELOC(i915)) {
 				if (i + 1 >= rodata->batch_items ||
 				    rodata->batch[i + 1] != 0)
-					goto err;
+					goto out;
 
 				d[i++] = s;
 				s = upper_32_bits(r);
@@ -103,7 +100,7 @@ static int render_state_setup(struct intel_renderstate *so,
 
 	if (rodata->reloc[reloc_index] != -1) {
 		drm_err(&i915->drm, "only %d relocs resolved\n", reloc_index);
-		goto err;
+		goto out;
 	}
 
 	so->batch_offset = i915_ggtt_offset(so->vma);
@@ -150,19 +147,11 @@ static int render_state_setup(struct intel_renderstate *so,
 	 */
 	so->aux_size = ALIGN(so->aux_size, 8);
 
-	if (needs_clflush)
-		drm_clflush_virt_range(d, i * sizeof(u32));
-	kunmap_atomic(d);
-
 	ret = 0;
 out:
-	i915_gem_object_finish_access(so->vma->obj);
+	__i915_gem_object_flush_map(so->vma->obj, 0, i * sizeof(u32));
+	i915_gem_object_unpin_map(so->vma->obj);
 	return ret;
-
-err:
-	kunmap_atomic(d);
-	ret = -EINVAL;
-	goto out;
 }
 
 #undef OUT_BATCH
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
