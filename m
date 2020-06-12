Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C60851F79C4
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2020 16:26:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CD3A6E981;
	Fri, 12 Jun 2020 14:26:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49C056E0FC
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2020 14:26:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21476888-1500050 
 for multiple; Fri, 12 Jun 2020 15:25:52 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Jun 2020 15:25:49 +0100
Message-Id: <20200612142551.30956-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/execlists: Lift opportunistic
 process_csb to before engine lock
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

Since the process_csb() does not require us to hold the
engine->active.lock, we can move the opportunistic flush before
direction submission to outside of the lock.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 21 ++++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 5ab0ed35af84..e866b8d721ed 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -3170,13 +3170,6 @@ static void __submit_queue_imm(struct intel_engine_cs *engine)
 	if (reset_in_progress(execlists))
 		return; /* defer until we restart the engine following reset */
 
-	/* Hopefully we clear execlists->pending[] to let us through */
-	if (READ_ONCE(execlists->pending[0]) &&
-	    tasklet_trylock(&execlists->tasklet)) {
-		process_csb(engine);
-		tasklet_unlock(&execlists->tasklet);
-	}
-
 	__execlists_submission_tasklet(engine);
 }
 
@@ -3199,11 +3192,25 @@ static bool ancestor_on_hold(const struct intel_engine_cs *engine,
 	return !list_empty(&engine->active.hold) && hold_request(rq);
 }
 
+static void flush_csb(struct intel_engine_cs *engine)
+{
+	struct intel_engine_execlists *el = &engine->execlists;
+
+	if (READ_ONCE(el->pending[0]) && tasklet_trylock(&el->tasklet)) {
+		if (!reset_in_progress(el))
+			process_csb(engine);
+		tasklet_unlock(&el->tasklet);
+	}
+}
+
 static void execlists_submit_request(struct i915_request *request)
 {
 	struct intel_engine_cs *engine = request->engine;
 	unsigned long flags;
 
+	/* Hopefully we clear execlists->pending[] to let us through */
+	flush_csb(engine);
+
 	/* Will be called from irq-context when using foreign fences. */
 	spin_lock_irqsave(&engine->active.lock, flags);
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
