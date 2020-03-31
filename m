Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED0201988FD
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 02:41:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B9CD89970;
	Tue, 31 Mar 2020 00:41:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0EEF89970
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Mar 2020 00:41:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20745977-1500050 
 for multiple; Tue, 31 Mar 2020 01:41:15 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 Mar 2020 01:41:14 +0100
Message-Id: <20200331004114.31067-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/execlists: Peek at the next submission
 for error interrupts
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

GEM_BUG_ON(EXECLIST_STATUS_HI() != upper_32_bits(ce->lrc_desc)) ?

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 3d5f3f7677bb..53364c0ca487 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -2770,6 +2770,16 @@ static struct execlists_capture *capture_regs(struct intel_engine_cs *engine)
 	return NULL;
 }
 
+static struct i915_request *active_context(struct intel_engine_execlists *el)
+{
+	/*
+	 * Use the most recent result from process_csb(), but just in case
+	 * we trigger an error (via interrupt) before the first CS event has
+	 * been written, peek at the next submission.
+	 */
+	return *el->active ?: el->pending[0];
+}
+
 static bool execlists_capture(struct intel_engine_cs *engine)
 {
 	struct execlists_capture *cap;
@@ -2787,7 +2797,7 @@ static bool execlists_capture(struct intel_engine_cs *engine)
 		return true;
 
 	spin_lock_irq(&engine->active.lock);
-	cap->rq = execlists_active(&engine->execlists);
+	cap->rq = active_context(&engine->execlists);
 	if (cap->rq) {
 		cap->rq = active_request(cap->rq->context->timeline, cap->rq);
 		cap->rq = i915_request_get_rcu(cap->rq);
@@ -3724,7 +3734,7 @@ static void __execlists_reset(struct intel_engine_cs *engine, bool stalled)
 	 * its request, it was still running at the time of the
 	 * reset and will have been clobbered.
 	 */
-	rq = execlists_active(execlists);
+	rq = active_context(execlists);
 	if (!rq)
 		goto unwind;
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
