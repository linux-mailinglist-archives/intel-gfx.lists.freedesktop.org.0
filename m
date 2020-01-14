Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A64313AE39
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2020 17:00:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0F0689B12;
	Tue, 14 Jan 2020 16:00:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C484589B18
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jan 2020 16:00:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19877136-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jan 2020 16:00:31 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jan 2020 16:00:30 +0000
Message-Id: <20200114160030.2468927-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc2
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/selftests: Add a mock i915_vma to the
 mock_ring
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

Add a i915_vma to the mock_engine/mock_ring so that the core code can
always assume the presence of ring->vma.

Fixes: 8ccfc20a7d56 ("drm/i915/gt: Mark ring->vma as active while pinned")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/mock_engine.c | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/mock_engine.c b/drivers/gpu/drm/i915/gt/mock_engine.c
index a560b7eee2cd..f2806381733f 100644
--- a/drivers/gpu/drm/i915/gt/mock_engine.c
+++ b/drivers/gpu/drm/i915/gt/mock_engine.c
@@ -59,11 +59,26 @@ static struct intel_ring *mock_ring(struct intel_engine_cs *engine)
 	ring->vaddr = (void *)(ring + 1);
 	atomic_set(&ring->pin_count, 1);
 
+	ring->vma = i915_vma_alloc();
+	if (!ring->vma) {
+		kfree(ring);
+		return NULL;
+	}
+	i915_active_init(&ring->vma->active, NULL, NULL);
+
 	intel_ring_update_space(ring);
 
 	return ring;
 }
 
+static void mock_ring_free(struct intel_ring *ring)
+{
+	i915_active_fini(&ring->vma->active);
+	i915_vma_free(ring->vma);
+
+	kfree(ring);
+}
+
 static struct i915_request *first_request(struct mock_engine *engine)
 {
 	return list_first_entry_or_null(&engine->hw_queue,
@@ -121,7 +136,7 @@ static void mock_context_destroy(struct kref *ref)
 	GEM_BUG_ON(intel_context_is_pinned(ce));
 
 	if (test_bit(CONTEXT_ALLOC_BIT, &ce->flags)) {
-		kfree(ce->ring);
+		mock_ring_free(ce->ring);
 		mock_timeline_unpin(ce->timeline);
 	}
 
-- 
2.25.0.rc2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
