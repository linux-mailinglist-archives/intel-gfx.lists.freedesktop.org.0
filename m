Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD9AC2DF596
	for <lists+intel-gfx@lfdr.de>; Sun, 20 Dec 2020 14:49:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C1E06E167;
	Sun, 20 Dec 2020 13:49:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC6956E167
 for <intel-gfx@lists.freedesktop.org>; Sun, 20 Dec 2020 13:49:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23383721-1500050 
 for <intel-gfx@lists.freedesktop.org>; Sun, 20 Dec 2020 13:48:58 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 20 Dec 2020 13:48:58 +0000
Message-Id: <20201220134858.10510-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/gt: Another tweak for flushing the
 tasklets
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

tasklet_kill() ensures that we _yield_ the processor until a remote
tasklet is completed. However, this leads to a starvation condition as
being at the bottom of the scheduler's runqueue means that anything else
is able to run, including all hogs keeping the tasklet occupied.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine.h    |  7 ++++++-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c | 10 +++++-----
 drivers/gpu/drm/i915/i915_request.c       |  2 +-
 3 files changed, 12 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index 6606b1dbf3d6..47ee8578e511 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine.h
@@ -232,7 +232,12 @@ static inline void __intel_engine_reset(struct intel_engine_cs *engine,
 
 bool intel_engines_are_idle(struct intel_gt *gt);
 bool intel_engine_is_idle(struct intel_engine_cs *engine);
-void intel_engine_flush_submission(struct intel_engine_cs *engine);
+
+void __intel_engine_flush_submission(struct intel_engine_cs *engine, bool sync);
+static inline void intel_engine_flush_submission(struct intel_engine_cs *engine)
+{
+	__intel_engine_flush_submission(engine, true);
+}
 
 void intel_engines_reset_default_submission(struct intel_gt *gt);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 97ceaf7116e8..bb1c1adad78a 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1190,17 +1190,13 @@ static bool ring_is_idle(struct intel_engine_cs *engine)
 	return idle;
 }
 
-void intel_engine_flush_submission(struct intel_engine_cs *engine)
+void __intel_engine_flush_submission(struct intel_engine_cs *engine, bool sync)
 {
 	struct tasklet_struct *t = &engine->execlists.tasklet;
 
 	if (!t->func)
 		return;
 
-	/* Synchronise and wait for the tasklet on another CPU */
-	tasklet_kill(t);
-
-	/* Having cancelled the tasklet, ensure that is run */
 	local_bh_disable();
 	if (tasklet_trylock(t)) {
 		/* Must wait for any GPU reset in progress. */
@@ -1209,6 +1205,10 @@ void intel_engine_flush_submission(struct intel_engine_cs *engine)
 		tasklet_unlock(t);
 	}
 	local_bh_enable();
+
+	/* Synchronise and wait for the tasklet on another CPU */
+	if (sync)
+		tasklet_unlock_wait(t);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 2675c6d70779..45744c3ef7c4 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -1825,7 +1825,7 @@ long i915_request_wait(struct i915_request *rq,
 	 * for unhappy HW.
 	 */
 	if (i915_request_is_ready(rq))
-		intel_engine_flush_submission(rq->engine);
+		__intel_engine_flush_submission(rq->engine, false);
 
 	for (;;) {
 		set_current_state(state);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
