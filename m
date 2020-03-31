Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 460BF1990DE
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 11:15:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90DAB6E0DB;
	Tue, 31 Mar 2020 09:15:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1167A6E2E6
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Mar 2020 09:15:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20749079-1500050 
 for multiple; Tue, 31 Mar 2020 10:15:01 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 Mar 2020 10:14:58 +0100
Message-Id: <20200331091459.29179-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200331091459.29179-1-chris@chris-wilson.co.uk>
References: <20200331091459.29179-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/execlists: Peek at the next
 submission for error interrupts
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

If we receive the error interrupt before the CS interrupt, we may find
ourselves without an active request to reset, skipping the GPU reset.
All because the attempt to reset was too early.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 41 ++++++++++++++++++++++++++++-
 1 file changed, 40 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 9e18c0896a83..97ed8275659a 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -2790,6 +2790,45 @@ static struct execlists_capture *capture_regs(struct intel_engine_cs *engine)
 	return NULL;
 }
 
+static struct i915_request *
+active_context(struct intel_engine_cs *engine, u32 ccid)
+{
+	const struct intel_engine_execlists * const el = &engine->execlists;
+	struct i915_request * const *port, *rq;
+
+	/*
+	 * Use the most recent result from process_csb(), but just in case
+	 * we trigger an error (via interrupt) before the first CS event has
+	 * been written, peek at the next submission.
+	 */
+
+	for (port = el->active; (rq = *port); port++) {
+		if (upper_32_bits(rq->context->lrc_desc) == ccid) {
+			ENGINE_TRACE(engine,
+				     "ccid found at active:%zd\n",
+				     port - el->active);
+			return rq;
+		}
+	}
+
+	for (port = el->pending; (rq = *port); port++) {
+		if (upper_32_bits(rq->context->lrc_desc) == ccid) {
+			ENGINE_TRACE(engine,
+				     "ccid found at pending:%zd\n",
+				     port - el->pending);
+			return rq;
+		}
+	}
+
+	ENGINE_TRACE(engine, "ccid:%x not found\n", ccid);
+	return NULL;
+}
+
+static u32 active_ccid(struct intel_engine_cs *engine)
+{
+	return ENGINE_READ_FW(engine, RING_EXECLIST_STATUS_HI);
+}
+
 static bool execlists_capture(struct intel_engine_cs *engine)
 {
 	struct execlists_capture *cap;
@@ -2807,7 +2846,7 @@ static bool execlists_capture(struct intel_engine_cs *engine)
 		return true;
 
 	spin_lock_irq(&engine->active.lock);
-	cap->rq = execlists_active(&engine->execlists);
+	cap->rq = active_context(engine, active_ccid(engine));
 	if (cap->rq) {
 		cap->rq = active_request(cap->rq->context->timeline, cap->rq);
 		cap->rq = i915_request_get_rcu(cap->rq);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
