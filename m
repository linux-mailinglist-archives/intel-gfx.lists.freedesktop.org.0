Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C81BB2849A0
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Oct 2020 11:47:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C97046E439;
	Tue,  6 Oct 2020 09:47:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E4346E436
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Oct 2020 09:47:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22634943-1500050 
 for multiple; Tue, 06 Oct 2020 10:46:54 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Oct 2020 10:46:53 +0100
Message-Id: <20201006094653.7558-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201002153256.28695-1-chris@chris-wilson.co.uk>
References: <20201002153256.28695-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3] drm/i915/gt: Track the most recent pulse for
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since we track the idle_pulse for flushing the barriers and avoid
re-emitting the pulse upon idling if no futher action is required, this
also impacts the heartbeat. Before emitting a fresh heartbeat, we look
at the engine idle status and assume that if the pulse was the last
request emitted along the heartbeat, the engine is idling and a
heartbeat pulse not required. This assumption fails, but we can reuse
the idle pulse as the heartbeat if we are yet to emit one, and so track
the status of that pulse for our engine health check.

This impacts tgl/rcs0 as we rely on the heartbeat for our healthcheck for
the normal preemption detection mechanism is disabled by default.

Testcase: igt/gem_exec_schedule/preempt-hang/rcs0 #tgl
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
index 5067d0524d4b..9060385cd69e 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
@@ -41,6 +41,8 @@ static void idle_pulse(struct intel_engine_cs *engine, struct i915_request *rq)
 {
 	engine->wakeref_serial = READ_ONCE(engine->serial) + 1;
 	i915_request_add_active_barriers(rq);
+	if (!engine->heartbeat.systole && intel_engine_has_heartbeat(engine))
+		engine->heartbeat.systole = i915_request_get(rq);
 }
 
 static void show_heartbeat(const struct i915_request *rq,
@@ -144,8 +146,6 @@ static void heartbeat(struct work_struct *wrk)
 		goto unlock;
 
 	idle_pulse(engine, rq);
-	if (engine->i915->params.enable_hangcheck)
-		engine->heartbeat.systole = i915_request_get(rq);
 
 	__i915_request_commit(rq);
 	__i915_request_queue(rq, &attr);
@@ -153,7 +153,7 @@ static void heartbeat(struct work_struct *wrk)
 unlock:
 	mutex_unlock(&ce->timeline->mutex);
 out:
-	if (!next_heartbeat(engine))
+	if (!engine->i915->params.enable_hangcheck || !next_heartbeat(engine))
 		i915_request_put(fetch_and_zero(&engine->heartbeat.systole));
 	intel_engine_pm_put(engine);
 }
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
