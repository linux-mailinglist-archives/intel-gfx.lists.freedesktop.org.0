Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A2713025E4
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 15:02:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 133F56E13A;
	Mon, 25 Jan 2021 14:02:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E97289DB7
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 14:01:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23693645-1500050 
 for multiple; Mon, 25 Jan 2021 14:01:40 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Jan 2021 14:01:18 +0000
Message-Id: <20210125140136.10494-23-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210125140136.10494-1-chris@chris-wilson.co.uk>
References: <20210125140136.10494-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 23/41] drm/i915/gt: Specify a deadline for the
 heartbeat
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
Cc: thomas.hellstrom@intel.com, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

As we know when we expect the heartbeat to be checked for completion,
pass this information along as its deadline. We still do not complain if
the deadline is missed, at least until we have tried a few times, but it
will allow for quicker hang detection on systems where deadlines are
adhered to.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
index 2d1f0a4da13c..defc71d4c729 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
@@ -65,6 +65,16 @@ static void heartbeat_commit(struct i915_request *rq,
 	__i915_request_queue(rq, attr);
 }
 
+static void set_heartbeat_deadline(struct intel_engine_cs *engine,
+				   struct i915_request *rq)
+{
+	unsigned long interval;
+
+	interval = READ_ONCE(engine->props.heartbeat_interval_ms);
+	if (interval)
+		i915_request_set_deadline(rq, ktime_get() + (interval << 20));
+}
+
 static void show_heartbeat(const struct i915_request *rq,
 			   struct intel_engine_cs *engine)
 {
@@ -114,8 +124,7 @@ static void heartbeat(struct work_struct *wrk)
 			 * but all other contexts, including the kernel
 			 * context are stuck waiting for the signal.
 			 */
-		} else if (intel_engine_has_scheduler(engine) &&
-			   rq->sched.attr.priority < I915_PRIORITY_BARRIER) {
+		} else if (rq->sched.attr.priority < I915_PRIORITY_BARRIER) {
 			/*
 			 * Gradually raise the priority of the heartbeat to
 			 * give high priority work [which presumably desires
@@ -129,6 +138,8 @@ static void heartbeat(struct work_struct *wrk)
 				attr.priority = I915_PRIORITY_BARRIER;
 
 			local_bh_disable();
+			if (attr.priority == I915_PRIORITY_BARRIER)
+				i915_request_set_deadline(rq, 0);
 			i915_request_set_priority(rq, attr.priority);
 			local_bh_enable();
 		} else {
@@ -161,6 +172,7 @@ static void heartbeat(struct work_struct *wrk)
 	if (IS_ERR(rq))
 		goto unlock;
 
+	set_heartbeat_deadline(engine, rq);
 	heartbeat_commit(rq, &attr);
 
 unlock:
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
