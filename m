Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E48DE1567EC
	for <lists+intel-gfx@lfdr.de>; Sat,  8 Feb 2020 23:01:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDD016E03C;
	Sat,  8 Feb 2020 22:01:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89A896E40C
 for <intel-gfx@lists.freedesktop.org>; Sat,  8 Feb 2020 22:01:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20160940-1500050 
 for multiple; Sat, 08 Feb 2020 22:01:07 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  8 Feb 2020 22:01:04 +0000
Message-Id: <20200208220106.3311791-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/gt: Tweak gen7 xcs flushing
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

Don't immediately write the seqno into the breadcrumb slot, but wait
until we've attempted to flush the writes; that is we need to ensure the
memory is coherent prior to updating the breadcrumb so that any
observers who see the new seqno can proceed.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gt/intel_ring_submission.c   | 23 +++++++++++++------
 1 file changed, 16 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index f70b903a98bc..c99017e3c3c9 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -446,31 +446,40 @@ static u32 *gen6_xcs_emit_breadcrumb(struct i915_request *rq, u32 *cs)
 	return cs;
 }
 
-#define GEN7_XCS_WA 32
+#define GEN7_XCS_WA 8
 static u32 *gen7_xcs_emit_breadcrumb(struct i915_request *rq, u32 *cs)
 {
+	const u32 mi_flush_seqno =
+		MI_FLUSH_DW | MI_INVALIDATE_TLB |
+		MI_FLUSH_DW_OP_STOREDW | MI_FLUSH_DW_STORE_INDEX;
 	int i;
 
 	GEM_BUG_ON(i915_request_active_timeline(rq)->hwsp_ggtt != rq->engine->status_page.vma);
 	GEM_BUG_ON(offset_in_page(i915_request_active_timeline(rq)->hwsp_offset) != I915_GEM_HWS_SEQNO_ADDR);
 
-	*cs++ = MI_FLUSH_DW | MI_INVALIDATE_TLB |
-		MI_FLUSH_DW_OP_STOREDW | MI_FLUSH_DW_STORE_INDEX;
+	/* Stalling flush before we update the actual breadcrumb */
+	*cs++ = mi_flush_seqno;
+	*cs++ = (I915_GEM_HWS_SEQNO_ADDR + 4) | MI_FLUSH_DW_USE_GTT;
+	*cs++ = rq->fence.seqno;
+
+	/* Write the seqno into the breadcrumb */
+	*cs++ = mi_flush_seqno;
 	*cs++ = I915_GEM_HWS_SEQNO_ADDR | MI_FLUSH_DW_USE_GTT;
 	*cs++ = rq->fence.seqno;
 
+	/* Delay for the seqno to land! */
 	for (i = 0; i < GEN7_XCS_WA; i++) {
 		*cs++ = MI_STORE_DWORD_INDEX;
 		*cs++ = I915_GEM_HWS_SEQNO_ADDR;
 		*cs++ = rq->fence.seqno;
 	}
 
-	*cs++ = MI_FLUSH_DW;
-	*cs++ = 0;
-	*cs++ = 0;
+	/* One final stall! */
+	*cs++ = mi_flush_seqno;
+	*cs++ = I915_GEM_HWS_SEQNO_ADDR | MI_FLUSH_DW_USE_GTT;
+	*cs++ = rq->fence.seqno;
 
 	*cs++ = MI_USER_INTERRUPT;
-	*cs++ = MI_NOOP;
 
 	rq->tail = intel_ring_offset(rq, cs);
 	assert_ring_tail_valid(rq->ring, rq->tail);
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
