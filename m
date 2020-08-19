Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 43CD5249A91
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Aug 2020 12:40:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E74776E215;
	Wed, 19 Aug 2020 10:40:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA3B26E215
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Aug 2020 10:40:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22172039-1500050 
 for multiple; Wed, 19 Aug 2020 11:39:51 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Aug 2020 11:39:51 +0100
Message-Id: <20200819103952.19083-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/gem: Replace reloc chain with
 terminator on error unwind
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
Cc: stable@vger.kernel.org, Pavel Machek <pavel@ucw.cz>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If we hit an error during construction of the reloc chain, we need to
replace the chain into the next batch with the terminator so that upon
flushing the relocations so far, we do not execute a hanging batch.

Reported-by: Pavel Machek <pavel@ucw.cz>
Fixes: 964a9b0f611e ("drm/i915/gem: Use chained reloc batches")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Pavel Machek <pavel@ucw.cz>
Cc: <stable@vger.kernel.org> # v5.8+
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 31 ++++++++++---------
 1 file changed, 16 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 24a1486d2dc5..a09f04eee417 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -972,21 +972,6 @@ static int reloc_gpu_chain(struct reloc_cache *cache)
 	if (err)
 		goto out_pool;
 
-	GEM_BUG_ON(cache->rq_size + RELOC_TAIL > PAGE_SIZE  / sizeof(u32));
-	cmd = cache->rq_cmd + cache->rq_size;
-	*cmd++ = MI_ARB_CHECK;
-	if (cache->gen >= 8)
-		*cmd++ = MI_BATCH_BUFFER_START_GEN8;
-	else if (cache->gen >= 6)
-		*cmd++ = MI_BATCH_BUFFER_START;
-	else
-		*cmd++ = MI_BATCH_BUFFER_START | MI_BATCH_GTT;
-	*cmd++ = lower_32_bits(batch->node.start);
-	*cmd++ = upper_32_bits(batch->node.start); /* Always 0 for gen<8 */
-	i915_gem_object_flush_map(cache->rq_vma->obj);
-	i915_gem_object_unpin_map(cache->rq_vma->obj);
-	cache->rq_vma = NULL;
-
 	err = intel_gt_buffer_pool_mark_active(pool, rq);
 	if (err == 0) {
 		i915_vma_lock(batch);
@@ -999,15 +984,31 @@ static int reloc_gpu_chain(struct reloc_cache *cache)
 	if (err)
 		goto out_pool;
 
+	GEM_BUG_ON(cache->rq_size + RELOC_TAIL > PAGE_SIZE  / sizeof(u32));
+	cmd = cache->rq_cmd + cache->rq_size;
+	*cmd++ = MI_ARB_CHECK;
+	if (cache->gen >= 8)
+		*cmd++ = MI_BATCH_BUFFER_START_GEN8;
+	else if (cache->gen >= 6)
+		*cmd++ = MI_BATCH_BUFFER_START;
+	else
+		*cmd++ = MI_BATCH_BUFFER_START | MI_BATCH_GTT;
+	*cmd++ = lower_32_bits(batch->node.start);
+	*cmd++ = upper_32_bits(batch->node.start); /* Always 0 for gen<8 */
+
 	cmd = i915_gem_object_pin_map(batch->obj,
 				      cache->has_llc ?
 				      I915_MAP_FORCE_WB :
 				      I915_MAP_FORCE_WC);
 	if (IS_ERR(cmd)) {
+		/* We will replace the BBS with BBE upon flushing the rq */
 		err = PTR_ERR(cmd);
 		goto out_pool;
 	}
 
+	i915_gem_object_flush_map(cache->rq_vma->obj);
+	i915_gem_object_unpin_map(cache->rq_vma->obj);
+
 	/* Return with batch mapping (cmd) still pinned */
 	cache->rq_cmd = cmd;
 	cache->rq_size = 0;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
