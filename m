Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 02608218E69
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 19:38:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6EE46E8FF;
	Wed,  8 Jul 2020 17:37:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 524F86E903
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2020 17:37:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21756437-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Jul 2020 18:37:50 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Jul 2020 18:37:46 +0100
Message-Id: <20200708173748.32734-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200708173748.32734-1-chris@chris-wilson.co.uk>
References: <20200708173748.32734-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/4] drm/i915/gt: Replace opencoded
 i915_gem_object_pin_map()
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

As we have a pin_map interface, that knows how to flush the data to the
device, use it. The only downside is that we keep the kmap around, as
once acquired we keep the mapping cached until the object's backing
store is released.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index e866b8d721ed..02a38810bcd3 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -3880,7 +3880,6 @@ static int intel_init_workaround_bb(struct intel_engine_cs *engine)
 	struct i915_wa_ctx_bb *wa_bb[2] = { &wa_ctx->indirect_ctx,
 					    &wa_ctx->per_ctx };
 	wa_bb_func_t wa_bb_fn[2];
-	struct page *page;
 	void *batch, *batch_ptr;
 	unsigned int i;
 	int ret;
@@ -3916,14 +3915,14 @@ static int intel_init_workaround_bb(struct intel_engine_cs *engine)
 		return ret;
 	}
 
-	page = i915_gem_object_get_dirty_page(wa_ctx->vma->obj, 0);
-	batch = batch_ptr = kmap_atomic(page);
+	batch = i915_gem_object_pin_map(wa_ctx->vma->obj, I915_MAP_WB);
 
 	/*
 	 * Emit the two workaround batch buffers, recording the offset from the
 	 * start of the workaround batch buffer object for each and their
 	 * respective sizes.
 	 */
+	batch_ptr = batch;
 	for (i = 0; i < ARRAY_SIZE(wa_bb_fn); i++) {
 		wa_bb[i]->offset = batch_ptr - batch;
 		if (GEM_DEBUG_WARN_ON(!IS_ALIGNED(wa_bb[i]->offset,
@@ -3935,10 +3934,10 @@ static int intel_init_workaround_bb(struct intel_engine_cs *engine)
 			batch_ptr = wa_bb_fn[i](engine, batch_ptr);
 		wa_bb[i]->size = batch_ptr - (batch + wa_bb[i]->offset);
 	}
+	GEM_BUG_ON(batch_ptr - batch > CTX_WA_BB_OBJ_SIZE);
 
-	BUG_ON(batch_ptr - batch > CTX_WA_BB_OBJ_SIZE);
-
-	kunmap_atomic(batch);
+	__i915_gem_object_flush_map(wa_ctx->vma->obj, 0, batch_ptr - batch);
+	i915_gem_object_unpin_map(wa_ctx->vma->obj);
 	if (ret)
 		lrc_destroy_wa_ctx(engine);
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
