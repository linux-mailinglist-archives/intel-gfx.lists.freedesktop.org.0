Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30CAE210681
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 10:41:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D22F46E86D;
	Wed,  1 Jul 2020 08:41:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BEE16E436
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jul 2020 08:41:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21671958-1500050 
 for multiple; Wed, 01 Jul 2020 09:41:04 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Jul 2020 09:40:50 +0100
Message-Id: <20200701084053.6086-30-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200701084053.6086-1-chris@chris-wilson.co.uk>
References: <20200701084053.6086-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 30/33] drm/i915/gt: Use client timeline address
 for seqno writes
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

If we allow for per-client timelines, even with legacy ring submission,
we open the door to a world full of possiblities [scheduling and
semaphores].

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/gen6_engine_cs.c | 21 +++++++++------------
 1 file changed, 9 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen6_engine_cs.c b/drivers/gpu/drm/i915/gt/gen6_engine_cs.c
index ce38d1bcaba3..fa11174bb13b 100644
--- a/drivers/gpu/drm/i915/gt/gen6_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen6_engine_cs.c
@@ -373,11 +373,10 @@ u32 *gen7_emit_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
 
 u32 *gen6_emit_breadcrumb_xcs(struct i915_request *rq, u32 *cs)
 {
-	GEM_BUG_ON(i915_request_active_timeline(rq)->hwsp_ggtt != rq->engine->status_page.vma);
-	GEM_BUG_ON(offset_in_page(i915_request_active_timeline(rq)->hwsp_offset) != I915_GEM_HWS_SEQNO_ADDR);
+	u32 addr = i915_request_active_timeline(rq)->hwsp_offset;
 
-	*cs++ = MI_FLUSH_DW | MI_FLUSH_DW_OP_STOREDW | MI_FLUSH_DW_STORE_INDEX;
-	*cs++ = I915_GEM_HWS_SEQNO_ADDR | MI_FLUSH_DW_USE_GTT;
+	*cs++ = MI_FLUSH_DW | MI_FLUSH_DW_OP_STOREDW;
+	*cs++ = addr | MI_FLUSH_DW_USE_GTT;
 	*cs++ = rq->fence.seqno;
 
 	*cs++ = MI_USER_INTERRUPT;
@@ -391,19 +390,17 @@ u32 *gen6_emit_breadcrumb_xcs(struct i915_request *rq, u32 *cs)
 #define GEN7_XCS_WA 32
 u32 *gen7_emit_breadcrumb_xcs(struct i915_request *rq, u32 *cs)
 {
+	u32 addr = i915_request_active_timeline(rq)->hwsp_offset;
 	int i;
 
-	GEM_BUG_ON(i915_request_active_timeline(rq)->hwsp_ggtt != rq->engine->status_page.vma);
-	GEM_BUG_ON(offset_in_page(i915_request_active_timeline(rq)->hwsp_offset) != I915_GEM_HWS_SEQNO_ADDR);
-
-	*cs++ = MI_FLUSH_DW | MI_INVALIDATE_TLB |
-		MI_FLUSH_DW_OP_STOREDW | MI_FLUSH_DW_STORE_INDEX;
-	*cs++ = I915_GEM_HWS_SEQNO_ADDR | MI_FLUSH_DW_USE_GTT;
+	*cs++ = MI_FLUSH_DW | MI_FLUSH_DW_OP_STOREDW;
+	*cs++ = addr | MI_FLUSH_DW_USE_GTT;
 	*cs++ = rq->fence.seqno;
 
 	for (i = 0; i < GEN7_XCS_WA; i++) {
-		*cs++ = MI_STORE_DWORD_INDEX;
-		*cs++ = I915_GEM_HWS_SEQNO_ADDR;
+		*cs++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
+		*cs++ = 0;
+		*cs++ = addr;
 		*cs++ = rq->fence.seqno;
 	}
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
