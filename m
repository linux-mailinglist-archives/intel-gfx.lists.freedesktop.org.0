Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB2E1732C3
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 09:23:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96F6D6EE57;
	Fri, 28 Feb 2020 08:23:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9C266EE56
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 08:23:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20380880-1500050 
 for multiple; Fri, 28 Feb 2020 08:23:35 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Feb 2020 08:23:18 +0000
Message-Id: <20200228082330.2411941-12-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200228082330.2411941-1-chris@chris-wilson.co.uk>
References: <20200228082330.2411941-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 12/24] drm/i915/selftests: Disable heartbeat
 around manual pulse tests
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

Still chasing the mystery of the stray idle flush, let's ensure that the
heartbeat does not run at the same time as our test and confuse us.

References: https://gitlab.freedesktop.org/drm/intel/issues/541
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../drm/i915/gt/selftest_engine_heartbeat.c   | 30 ++++++++++++++++---
 drivers/gpu/drm/i915/selftests/i915_active.c  |  3 +-
 2 files changed, 27 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
index 43d4d589749f..697114dd1f47 100644
--- a/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
+++ b/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
@@ -142,6 +142,24 @@ static int __live_idle_pulse(struct intel_engine_cs *engine,
 	return err;
 }
 
+static void engine_heartbeat_disable(struct intel_engine_cs *engine,
+				     unsigned long *saved)
+{
+	*saved = engine->props.heartbeat_interval_ms;
+	engine->props.heartbeat_interval_ms = 0;
+
+	intel_engine_pm_get(engine);
+	intel_engine_park_heartbeat(engine);
+}
+
+static void engine_heartbeat_enable(struct intel_engine_cs *engine,
+				    unsigned long saved)
+{
+	intel_engine_pm_put(engine);
+
+	engine->props.heartbeat_interval_ms = saved;
+}
+
 static int live_idle_flush(void *arg)
 {
 	struct intel_gt *gt = arg;
@@ -152,9 +170,11 @@ static int live_idle_flush(void *arg)
 	/* Check that we can flush the idle barriers */
 
 	for_each_engine(engine, gt, id) {
-		intel_engine_pm_get(engine);
+		unsigned long heartbeat;
+
+		engine_heartbeat_disable(engine, &heartbeat);
 		err = __live_idle_pulse(engine, intel_engine_flush_barriers);
-		intel_engine_pm_put(engine);
+		engine_heartbeat_enable(engine, heartbeat);
 		if (err)
 			break;
 	}
@@ -172,9 +192,11 @@ static int live_idle_pulse(void *arg)
 	/* Check that heartbeat pulses flush the idle barriers */
 
 	for_each_engine(engine, gt, id) {
-		intel_engine_pm_get(engine);
+		unsigned long heartbeat;
+
+		engine_heartbeat_disable(engine, &heartbeat);
 		err = __live_idle_pulse(engine, intel_engine_pulse);
-		intel_engine_pm_put(engine);
+		engine_heartbeat_enable(engine, heartbeat);
 		if (err && err != -ENODEV)
 			break;
 
diff --git a/drivers/gpu/drm/i915/selftests/i915_active.c b/drivers/gpu/drm/i915/selftests/i915_active.c
index 035816eccbda..25909e590d8c 100644
--- a/drivers/gpu/drm/i915/selftests/i915_active.c
+++ b/drivers/gpu/drm/i915/selftests/i915_active.c
@@ -331,8 +331,7 @@ void i915_active_unlock_wait(struct i915_active *ref)
 	}
 
 	/* And wait for the retire callback */
-	spin_lock_irq(&ref->tree_lock);
-	spin_unlock_irq(&ref->tree_lock);
+	spin_unlock_wait(&ref->tree_lock);
 
 	/* ... which may have been on a thread instead */
 	flush_work(&ref->work);
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
