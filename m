Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD6419A9F8
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Apr 2020 13:04:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AB2E6E914;
	Wed,  1 Apr 2020 11:04:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A32986E90F
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Apr 2020 11:04:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20762757-1500050 
 for multiple; Wed, 01 Apr 2020 12:04:36 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Apr 2020 12:04:34 +0100
Message-Id: <20200401110435.30389-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/execlists: Peek at the next
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
index 3479cda37fdc..f028114714cd 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -2804,6 +2804,45 @@ static struct execlists_capture *capture_regs(struct intel_engine_cs *engine)
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
@@ -2821,7 +2860,7 @@ static bool execlists_capture(struct intel_engine_cs *engine)
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
