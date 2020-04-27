Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C34FF1BB003
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2020 23:10:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAA676E1E6;
	Mon, 27 Apr 2020 21:10:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55B096E084
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2020 21:10:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21040345-1500050 
 for multiple; Mon, 27 Apr 2020 22:10:09 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Apr 2020 22:10:06 +0100
Message-Id: <20200427211006.29138-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200427211006.29138-1-chris@chris-wilson.co.uk>
References: <20200427211006.29138-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/execlists: Verify we don't submit
 two identical CCIDs
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

Check that we do not submit two contexts into ELSP with the same CCID
[upper portion of the descriptor].

References: https://gitlab.freedesktop.org/drm/intel/-/issues/1793
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 37 ++++++++++++++++++++++-------
 1 file changed, 28 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index e84d277d1f02..8fffbeaef8b0 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1621,9 +1621,12 @@ static __maybe_unused bool
 assert_pending_valid(const struct intel_engine_execlists *execlists,
 		     const char *msg)
 {
+	struct intel_engine_cs *engine =
+		container_of(execlists, typeof(*engine), execlists);
 	struct i915_request * const *port, *rq;
 	struct intel_context *ce = NULL;
 	bool sentinel = false;
+	u32 ccid = -1;
 
 	trace_ports(execlists, msg, execlists->pending);
 
@@ -1632,13 +1635,14 @@ assert_pending_valid(const struct intel_engine_execlists *execlists,
 		return true;
 
 	if (!execlists->pending[0]) {
-		GEM_TRACE_ERR("Nothing pending for promotion!\n");
+		GEM_TRACE_ERR("%s: Nothing pending for promotion!\n",
+			      engine->name);
 		return false;
 	}
 
 	if (execlists->pending[execlists_num_ports(execlists)]) {
-		GEM_TRACE_ERR("Excess pending[%d] for promotion!\n",
-			      execlists_num_ports(execlists));
+		GEM_TRACE_ERR("%s: Excess pending[%d] for promotion!\n",
+			      engine->name, execlists_num_ports(execlists));
 		return false;
 	}
 
@@ -1650,20 +1654,31 @@ assert_pending_valid(const struct intel_engine_execlists *execlists,
 		GEM_BUG_ON(!i915_request_is_active(rq));
 
 		if (ce == rq->context) {
-			GEM_TRACE_ERR("Dup context:%llx in pending[%zd]\n",
+			GEM_TRACE_ERR("%s: Dup context:%llx in pending[%zd]\n",
+				      engine->name,
 				      ce->timeline->fence_context,
 				      port - execlists->pending);
 			return false;
 		}
 		ce = rq->context;
 
+		if (ccid == upper_32_bits(ce->lrc_desc)) {
+			GEM_TRACE_ERR("%s: Dup ccid:%x context:%llx in pending[%zd]\n",
+				      engine->name,
+				      ccid, ce->timeline->fence_context,
+				      port - execlists->pending);
+			return false;
+		}
+		ccid = upper_32_bits(ce->lrc_desc);
+
 		/*
 		 * Sentinels are supposed to be lonely so they flush the
 		 * current exection off the HW. Check that they are the
 		 * only request in the pending submission.
 		 */
 		if (sentinel) {
-			GEM_TRACE_ERR("context:%llx after sentinel in pending[%zd]\n",
+			GEM_TRACE_ERR("%s: context:%llx after sentinel in pending[%zd]\n",
+				      engine->name,
 				      ce->timeline->fence_context,
 				      port - execlists->pending);
 			return false;
@@ -1671,7 +1686,8 @@ assert_pending_valid(const struct intel_engine_execlists *execlists,
 
 		sentinel = i915_request_has_sentinel(rq);
 		if (sentinel && port != execlists->pending) {
-			GEM_TRACE_ERR("sentinel context:%llx not in prime position[%zd]\n",
+			GEM_TRACE_ERR("%s: sentinel context:%llx not in prime position[%zd]\n",
+				      engine->name,
 				      ce->timeline->fence_context,
 				      port - execlists->pending);
 			return false;
@@ -1686,7 +1702,8 @@ assert_pending_valid(const struct intel_engine_execlists *execlists,
 
 		if (i915_active_is_idle(&ce->active) &&
 		    !intel_context_is_barrier(ce)) {
-			GEM_TRACE_ERR("Inactive context:%llx in pending[%zd]\n",
+			GEM_TRACE_ERR("%s: Inactive context:%llx in pending[%zd]\n",
+				      engine->name,
 				      ce->timeline->fence_context,
 				      port - execlists->pending);
 			ok = false;
@@ -1694,7 +1711,8 @@ assert_pending_valid(const struct intel_engine_execlists *execlists,
 		}
 
 		if (!i915_vma_is_pinned(ce->state)) {
-			GEM_TRACE_ERR("Unpinned context:%llx in pending[%zd]\n",
+			GEM_TRACE_ERR("%s: Unpinned context:%llx in pending[%zd]\n",
+				      engine->name,
 				      ce->timeline->fence_context,
 				      port - execlists->pending);
 			ok = false;
@@ -1702,7 +1720,8 @@ assert_pending_valid(const struct intel_engine_execlists *execlists,
 		}
 
 		if (!i915_vma_is_pinned(ce->ring->vma)) {
-			GEM_TRACE_ERR("Unpinned ring:%llx in pending[%zd]\n",
+			GEM_TRACE_ERR("%s: Unpinned ring:%llx in pending[%zd]\n",
+				      engine->name,
 				      ce->timeline->fence_context,
 				      port - execlists->pending);
 			ok = false;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
