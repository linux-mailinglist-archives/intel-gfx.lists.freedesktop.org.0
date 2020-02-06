Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD50B153C50
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 01:35:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F9666F986;
	Thu,  6 Feb 2020 00:35:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9ACA6F986
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Feb 2020 00:35:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20130482-1500050 
 for multiple; Thu, 06 Feb 2020 00:35:18 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  6 Feb 2020 00:35:17 +0000
Message-Id: <20200206003517.2125357-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Tweak gen7 xcs flushing
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
 drivers/gpu/drm/i915/gt/intel_ring_submission.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index b5a4b3d4ba6a..4a4792149ad6 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -446,7 +446,7 @@ static u32 *gen6_xcs_emit_breadcrumb(struct i915_request *rq, u32 *cs)
 	return cs;
 }
 
-#define GEN7_XCS_WA 32
+#define GEN7_XCS_WA 8
 static u32 *gen7_xcs_emit_breadcrumb(struct i915_request *rq, u32 *cs)
 {
 	int i;
@@ -454,6 +454,11 @@ static u32 *gen7_xcs_emit_breadcrumb(struct i915_request *rq, u32 *cs)
 	GEM_BUG_ON(i915_request_active_timeline(rq)->hwsp_ggtt != rq->engine->status_page.vma);
 	GEM_BUG_ON(offset_in_page(i915_request_active_timeline(rq)->hwsp_offset) != I915_GEM_HWS_SEQNO_ADDR);
 
+	*cs++ = MI_FLUSH_DW | MI_INVALIDATE_TLB |
+		MI_FLUSH_DW_OP_STOREDW | MI_FLUSH_DW_STORE_INDEX;
+	*cs++ = (I915_GEM_HWS_SEQNO_ADDR + 4) | MI_FLUSH_DW_USE_GTT;
+	*cs++ = rq->fence.seqno;
+
 	*cs++ = MI_FLUSH_DW | MI_INVALIDATE_TLB |
 		MI_FLUSH_DW_OP_STOREDW | MI_FLUSH_DW_STORE_INDEX;
 	*cs++ = I915_GEM_HWS_SEQNO_ADDR | MI_FLUSH_DW_USE_GTT;
@@ -461,7 +466,7 @@ static u32 *gen7_xcs_emit_breadcrumb(struct i915_request *rq, u32 *cs)
 
 	for (i = 0; i < GEN7_XCS_WA; i++) {
 		*cs++ = MI_STORE_DWORD_INDEX;
-		*cs++ = I915_GEM_HWS_SEQNO_ADDR;
+		*cs++ = I915_GEM_HWS_SEQNO_ADDR + 4;
 		*cs++ = rq->fence.seqno;
 	}
 
@@ -470,7 +475,6 @@ static u32 *gen7_xcs_emit_breadcrumb(struct i915_request *rq, u32 *cs)
 	*cs++ = 0;
 
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
