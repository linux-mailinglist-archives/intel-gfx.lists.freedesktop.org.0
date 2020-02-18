Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DC07162A4E
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 17:22:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 484906E33A;
	Tue, 18 Feb 2020 16:22:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A2E16E34A
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 16:22:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20265835-1500050 
 for multiple; Tue, 18 Feb 2020 16:21:55 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Feb 2020 16:21:42 +0000
Message-Id: <20200218162150.1300405-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200218162150.1300405-1-chris@chris-wilson.co.uk>
References: <20200218162150.1300405-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/12] drm/i915/gt: Fix up missing error
 propagation for heartbeat pulses
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

Just missed setting err along an interruptible error path for the
intel_engine_pulse().

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
index 6c6fd185457c..dd825718e4e5 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
@@ -180,7 +180,7 @@ int intel_engine_pulse(struct intel_engine_cs *engine)
 	struct i915_sched_attr attr = { .priority = I915_PRIORITY_BARRIER };
 	struct intel_context *ce = engine->kernel_context;
 	struct i915_request *rq;
-	int err = 0;
+	int err;
 
 	if (!intel_engine_has_preemption(engine))
 		return -ENODEV;
@@ -188,8 +188,10 @@ int intel_engine_pulse(struct intel_engine_cs *engine)
 	if (!intel_engine_pm_get_if_awake(engine))
 		return 0;
 
-	if (mutex_lock_interruptible(&ce->timeline->mutex))
+	if (mutex_lock_interruptible(&ce->timeline->mutex)) {
+		err = -EINTR;
 		goto out_rpm;
+	}
 
 	intel_context_enter(ce);
 	rq = __i915_request_create(ce, GFP_NOWAIT | __GFP_NOWARN);
@@ -204,6 +206,8 @@ int intel_engine_pulse(struct intel_engine_cs *engine)
 
 	__i915_request_commit(rq);
 	__i915_request_queue(rq, &attr);
+	GEM_BUG_ON(rq->sched.attr.priority < I915_PRIORITY_BARRIER);
+	err = 0;
 
 out_unlock:
 	mutex_unlock(&ce->timeline->mutex);
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
