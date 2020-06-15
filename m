Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB4FF1F9DDA
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2020 18:50:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB7DB6E428;
	Mon, 15 Jun 2020 16:50:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 566886E3B7
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Jun 2020 16:50:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21504176-1500050 
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Jun 2020 17:50:14 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 15 Jun 2020 17:50:13 +0100
Message-Id: <20200615165013.22973-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200615165013.22973-1-chris@chris-wilson.co.uk>
References: <20200615165013.22973-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/3] drm/i915/gt: Add a safety submission flush in
 the heartbeat
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

Just in case everything fails (like for example "missed interrupt
syndrome" on Sandybridge), always flush the submission tasklet from the
heartbeat. This papers over such issues, but will still appear as a
second long glitch, and prevents us from detecting it unless we happen
to be performing a timed test.

v2: We rely on flush_submission() synchronizing with the tasklet on
another CPU.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     | 23 +++++++++----------
 .../gpu/drm/i915/gt/intel_engine_heartbeat.c  |  3 +++
 2 files changed, 14 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index d613cf31970c..31049e0bdb57 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1094,19 +1094,18 @@ void intel_engine_flush_submission(struct intel_engine_cs *engine)
 {
 	struct tasklet_struct *t = &engine->execlists.tasklet;
 
-	if (__tasklet_is_scheduled(t)) {
-		local_bh_disable();
-		if (tasklet_trylock(t)) {
-			/* Must wait for any GPU reset in progress. */
-			if (__tasklet_is_enabled(t))
-				t->func(t->data);
-			tasklet_unlock(t);
-		}
-		local_bh_enable();
+	/* Synchronise and wait for the tasklet on another CPU */
+	tasklet_kill(t);
+
+	/* Having cancelled the tasklet, ensure that is run */
+	local_bh_disable();
+	if (tasklet_trylock(t)) {
+		/* Must wait for any GPU reset in progress. */
+		if (__tasklet_is_enabled(t))
+			t->func(t->data);
+		tasklet_unlock(t);
 	}
-
-	/* Otherwise flush the tasklet if it was running on another cpu */
-	tasklet_unlock_wait(t);
+	local_bh_enable();
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
index f67ad937eefb..cd20fb549b38 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
@@ -65,6 +65,9 @@ static void heartbeat(struct work_struct *wrk)
 	struct intel_context *ce = engine->kernel_context;
 	struct i915_request *rq;
 
+	/* Just in case everything has gone horribly wrong, give it a kick */
+	intel_engine_flush_submission(engine);
+
 	rq = engine->heartbeat.systole;
 	if (rq && i915_request_completed(rq)) {
 		i915_request_put(rq);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
