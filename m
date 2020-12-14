Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C18292D95F8
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 11:10:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D2466E209;
	Mon, 14 Dec 2020 10:10:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A4A66E20B
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Dec 2020 10:10:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23317787-1500050 
 for multiple; Mon, 14 Dec 2020 10:09:52 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Dec 2020 10:08:57 +0000
Message-Id: <20201214100949.11387-17-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201214100949.11387-1-chris@chris-wilson.co.uk>
References: <20201214100949.11387-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 17/69] drm/i915/gt: Track timeline GGTT offset
 separately from subpage offset
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

Currently we know that the timeline status page is at most a page in
size, and so we can preserve the lower 12bits of the offset when
relocating the status page in the GGTT. If we want to use a larger
object, such as the context state, we may not necessarily use a position
within the first page and so need more than 12b.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/gen6_engine_cs.c       |  4 ++--
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c       |  2 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c      |  4 ++--
 drivers/gpu/drm/i915/gt/intel_timeline.c       | 17 +++++++----------
 drivers/gpu/drm/i915/gt/intel_timeline_types.h |  1 +
 drivers/gpu/drm/i915/gt/selftest_engine_cs.c   |  2 +-
 drivers/gpu/drm/i915/gt/selftest_rc6.c         |  2 +-
 drivers/gpu/drm/i915/gt/selftest_timeline.c    | 16 ++++++++--------
 8 files changed, 23 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen6_engine_cs.c b/drivers/gpu/drm/i915/gt/gen6_engine_cs.c
index ce38d1bcaba3..2f59dd3bdc18 100644
--- a/drivers/gpu/drm/i915/gt/gen6_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen6_engine_cs.c
@@ -161,7 +161,7 @@ u32 *gen6_emit_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
 		 PIPE_CONTROL_DC_FLUSH_ENABLE |
 		 PIPE_CONTROL_QW_WRITE |
 		 PIPE_CONTROL_CS_STALL);
-	*cs++ = i915_request_active_timeline(rq)->hwsp_offset |
+	*cs++ = i915_request_active_timeline(rq)->ggtt_offset |
 		PIPE_CONTROL_GLOBAL_GTT;
 	*cs++ = rq->fence.seqno;
 
@@ -359,7 +359,7 @@ u32 *gen7_emit_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
 		 PIPE_CONTROL_QW_WRITE |
 		 PIPE_CONTROL_GLOBAL_GTT_IVB |
 		 PIPE_CONTROL_CS_STALL);
-	*cs++ = i915_request_active_timeline(rq)->hwsp_offset;
+	*cs++ = i915_request_active_timeline(rq)->ggtt_offset;
 	*cs++ = rq->fence.seqno;
 
 	*cs++ = MI_USER_INTERRUPT;
diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
index ebf043692eef..ed88dc4de72c 100644
--- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
@@ -346,7 +346,7 @@ static u32 hwsp_offset(const struct i915_request *rq)
 	if (cl)
 		return cl->ggtt_offset;
 
-	return rcu_dereference_protected(rq->timeline, 1)->hwsp_offset;
+	return rcu_dereference_protected(rq->timeline, 1)->ggtt_offset;
 }
 
 int gen8_emit_init_breadcrumb(struct i915_request *rq)
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 6c08e74edcae..55856c230779 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1340,7 +1340,7 @@ static int print_ring(char *buf, int sz, struct i915_request *rq)
 		len = scnprintf(buf, sz,
 				"ring:{start:%08x, hwsp:%08x, seqno:%08x, runtime:%llums}, ",
 				i915_ggtt_offset(rq->ring->vma),
-				tl ? tl->hwsp_offset : 0,
+				tl ? tl->ggtt_offset : 0,
 				hwsp_seqno(rq),
 				DIV_ROUND_CLOSEST_ULL(intel_context_get_total_runtime_ns(rq->context),
 						      1000 * 1000));
@@ -1679,7 +1679,7 @@ void intel_engine_dump(struct intel_engine_cs *engine,
 
 		if (tl) {
 			drm_printf(m, "\t\tring->hwsp:   0x%08x\n",
-				   tl->hwsp_offset);
+				   tl->ggtt_offset);
 			intel_timeline_put(tl);
 		}
 
diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.c b/drivers/gpu/drm/i915/gt/intel_timeline.c
index ddc8e1b4f3b8..cb20fcbb326b 100644
--- a/drivers/gpu/drm/i915/gt/intel_timeline.c
+++ b/drivers/gpu/drm/i915/gt/intel_timeline.c
@@ -338,13 +338,11 @@ int intel_timeline_pin(struct intel_timeline *tl, struct i915_gem_ww_ctx *ww)
 	if (err)
 		return err;
 
-	tl->hwsp_offset =
-		i915_ggtt_offset(tl->hwsp_ggtt) +
-		offset_in_page(tl->hwsp_offset);
+	tl->ggtt_offset = i915_ggtt_offset(tl->hwsp_ggtt) + tl->hwsp_offset;
 	GT_TRACE(tl->gt, "timeline:%llx using HWSP offset:%x\n",
-		 tl->fence_context, tl->hwsp_offset);
+		 tl->fence_context, tl->ggtt_offset);
 
-	cacheline_acquire(tl->hwsp_cacheline, tl->hwsp_offset);
+	cacheline_acquire(tl->hwsp_cacheline, tl->ggtt_offset);
 	if (atomic_fetch_inc(&tl->pin_count)) {
 		cacheline_release(tl->hwsp_cacheline);
 		__i915_vma_unpin(tl->hwsp_ggtt);
@@ -512,14 +510,13 @@ __intel_timeline_get_seqno(struct intel_timeline *tl,
 
 	vaddr = page_mask_bits(cl->vaddr);
 	tl->hwsp_offset = cacheline * CACHELINE_BYTES;
-	tl->hwsp_seqno =
-		memset(vaddr + tl->hwsp_offset, 0, CACHELINE_BYTES);
+	tl->hwsp_seqno = memset(vaddr + tl->hwsp_offset, 0, CACHELINE_BYTES);
 
-	tl->hwsp_offset += i915_ggtt_offset(vma);
+	tl->ggtt_offset = i915_ggtt_offset(vma) + tl->hwsp_offset;
 	GT_TRACE(tl->gt, "timeline:%llx using HWSP offset:%x\n",
-		 tl->fence_context, tl->hwsp_offset);
+		 tl->fence_context, tl->ggtt_offset);
 
-	cacheline_acquire(cl, tl->hwsp_offset);
+	cacheline_acquire(cl, tl->ggtt_offset);
 	tl->hwsp_cacheline = cl;
 
 	*seqno = timeline_advance(tl);
diff --git a/drivers/gpu/drm/i915/gt/intel_timeline_types.h b/drivers/gpu/drm/i915/gt/intel_timeline_types.h
index e360f50706bf..f187c5aac11c 100644
--- a/drivers/gpu/drm/i915/gt/intel_timeline_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_timeline_types.h
@@ -48,6 +48,7 @@ struct intel_timeline {
 	const u32 *hwsp_seqno;
 	struct i915_vma *hwsp_ggtt;
 	u32 hwsp_offset;
+	u32 ggtt_offset;
 
 	struct intel_timeline_cacheline *hwsp_cacheline;
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_cs.c b/drivers/gpu/drm/i915/gt/selftest_engine_cs.c
index 729c3c7b11e2..0a676d938c15 100644
--- a/drivers/gpu/drm/i915/gt/selftest_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/selftest_engine_cs.c
@@ -53,7 +53,7 @@ static int write_timestamp(struct i915_request *rq, int slot)
 		cmd++;
 	*cs++ = cmd;
 	*cs++ = i915_mmio_reg_offset(RING_TIMESTAMP(rq->engine->mmio_base));
-	*cs++ = i915_request_timeline(rq)->hwsp_offset + slot * sizeof(u32);
+	*cs++ = i915_request_timeline(rq)->ggtt_offset + slot * sizeof(u32);
 	*cs++ = 0;
 
 	intel_ring_advance(rq, cs);
diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c b/drivers/gpu/drm/i915/gt/selftest_rc6.c
index 64ef5ee5decf..9733f657c265 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
@@ -137,7 +137,7 @@ static const u32 *__live_rc6_ctx(struct intel_context *ce)
 
 	*cs++ = cmd;
 	*cs++ = i915_mmio_reg_offset(GEN8_RC6_CTX_INFO);
-	*cs++ = ce->timeline->hwsp_offset + 8;
+	*cs++ = ce->timeline->ggtt_offset + 8;
 	*cs++ = 0;
 	intel_ring_advance(rq, cs);
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_timeline.c b/drivers/gpu/drm/i915/gt/selftest_timeline.c
index a6ff9d1605aa..6f355c8a4f81 100644
--- a/drivers/gpu/drm/i915/gt/selftest_timeline.c
+++ b/drivers/gpu/drm/i915/gt/selftest_timeline.c
@@ -468,7 +468,7 @@ tl_write(struct intel_timeline *tl, struct intel_engine_cs *engine, u32 value)
 
 	i915_request_get(rq);
 
-	err = emit_ggtt_store_dw(rq, tl->hwsp_offset, value);
+	err = emit_ggtt_store_dw(rq, tl->ggtt_offset, value);
 	i915_request_add(rq);
 	if (err) {
 		i915_request_put(rq);
@@ -564,7 +564,7 @@ static int live_hwsp_engine(void *arg)
 
 		if (!err && READ_ONCE(*tl->hwsp_seqno) != n) {
 			GEM_TRACE_ERR("Invalid seqno:%lu stored in timeline %llu @ %x, found 0x%x\n",
-				      n, tl->fence_context, tl->hwsp_offset, *tl->hwsp_seqno);
+				      n, tl->fence_context, tl->ggtt_offset, *tl->hwsp_seqno);
 			GEM_TRACE_DUMP();
 			err = -EINVAL;
 		}
@@ -636,7 +636,7 @@ static int live_hwsp_alternate(void *arg)
 
 		if (!err && READ_ONCE(*tl->hwsp_seqno) != n) {
 			GEM_TRACE_ERR("Invalid seqno:%lu stored in timeline %llu @ %x, found 0x%x\n",
-				      n, tl->fence_context, tl->hwsp_offset, *tl->hwsp_seqno);
+				      n, tl->fence_context, tl->ggtt_offset, *tl->hwsp_seqno);
 			GEM_TRACE_DUMP();
 			err = -EINVAL;
 		}
@@ -696,9 +696,9 @@ static int live_hwsp_wrap(void *arg)
 			goto out;
 		}
 		pr_debug("seqno[0]:%08x, hwsp_offset:%08x\n",
-			 seqno[0], tl->hwsp_offset);
+			 seqno[0], tl->ggtt_offset);
 
-		err = emit_ggtt_store_dw(rq, tl->hwsp_offset, seqno[0]);
+		err = emit_ggtt_store_dw(rq, tl->ggtt_offset, seqno[0]);
 		if (err) {
 			i915_request_add(rq);
 			goto out;
@@ -713,9 +713,9 @@ static int live_hwsp_wrap(void *arg)
 			goto out;
 		}
 		pr_debug("seqno[1]:%08x, hwsp_offset:%08x\n",
-			 seqno[1], tl->hwsp_offset);
+			 seqno[1], tl->ggtt_offset);
 
-		err = emit_ggtt_store_dw(rq, tl->hwsp_offset, seqno[1]);
+		err = emit_ggtt_store_dw(rq, tl->ggtt_offset, seqno[1]);
 		if (err) {
 			i915_request_add(rq);
 			goto out;
@@ -1343,7 +1343,7 @@ static int live_hwsp_recycle(void *arg)
 			if (READ_ONCE(*tl->hwsp_seqno) != count) {
 				GEM_TRACE_ERR("Invalid seqno:%lu stored in timeline %llu @ %x found 0x%x\n",
 					      count, tl->fence_context,
-					      tl->hwsp_offset, *tl->hwsp_seqno);
+					      tl->ggtt_offset, *tl->hwsp_seqno);
 				GEM_TRACE_DUMP();
 				err = -EINVAL;
 			}
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
