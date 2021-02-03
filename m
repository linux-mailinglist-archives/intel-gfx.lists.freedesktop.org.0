Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C0CF30E4A4
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Feb 2021 22:07:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D5626EBB5;
	Wed,  3 Feb 2021 21:06:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C234D89FAC
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Feb 2021 21:06:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23780398-1500050 
 for multiple; Wed, 03 Feb 2021 21:06:43 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Feb 2021 21:06:44 +0000
Message-Id: <20210203210644.10163-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Ratelimit heartbeat completion
 probing
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

The heartbeat runs through a few phases that we expect to complete
within a certain number of heartbeat intervals. First we must submit the
heartbeat to the queue, and if the queue is occupied it may take a
couple of intervals before the heartbeat preempts the workload and is
submitted to HW. Once running on HW, completion is not instantaneous as
it may have to first reset the current workload before it itself runs
through the empty request and signals completion. As such, we know that
the heartbeat must take at least the preempt reset timeout and before we
have had a chance to reset the engine, we do not want to issue a global
reset ourselves (simply so that we only try to do one reset at a time
and not confuse ourselves by resetting twice and hitting an innocent.)

So by taking into consideration that once running the request must take
a finite amount of time, we can delay the final completion check to
accomodate that and avoid checking too early (before we've had a chance
to handle any engine resets required).

Suggested-by: CQ Tang <cq.tang@intel.com>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gt/intel_engine_heartbeat.c  | 32 +++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
index 778bcae5ef2c..2a999911f4ac 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
@@ -20,6 +20,16 @@
  * issue a reset -- in the hope that restores progress.
  */
 
+static long completion_timeout(const struct intel_engine_cs *engine)
+{
+	long timeout = 50;
+
+	if (intel_engine_has_preempt_reset(engine))
+		timeout += READ_ONCE(engine->props.heartbeat_interval_ms);
+
+	return msecs_to_jiffies(timeout);
+}
+
 static bool next_heartbeat(struct intel_engine_cs *engine)
 {
 	long delay;
@@ -29,6 +39,28 @@ static bool next_heartbeat(struct intel_engine_cs *engine)
 		return false;
 
 	delay = msecs_to_jiffies_timeout(delay);
+
+	/*
+	 * Once we submit a heartbeat to the HW, we know that it will take
+	 * at least a certain amount of time to complete. On a hanging system
+	 * it will first have to wait for the preempt reset timeout, and
+	 * then it will take some time for the reset to resume with the
+	 * heartbeat and for it to complete. So once we have submitted the
+	 * heartbeat to HW, we can wait a while longer before declaring the
+	 * engine stuck and forcing a reset ourselves. If we do a reset
+	 * and the engine is also doing a reset, it is possible that we
+	 * reset the engine twice, harming an innocent.
+	 *
+	 * Before we have sumitted the heartbeat, we do not want to change
+	 * the interval as we to promote the heartbeat and trigger preemption
+	 * in a deterministic time frame.
+	 */
+	if (engine->heartbeat.systole) {
+		intel_engine_flush_submission(engine);
+		if (i915_request_is_active(engine->heartbeat.systole))
+			delay = max(delay, completion_timeout(engine));
+	}
+
 	if (delay >= HZ)
 		delay = round_jiffies_up_relative(delay);
 	mod_delayed_work(system_highpri_wq, &engine->heartbeat.work, delay);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
