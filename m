Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5BE01F9DD9
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2020 18:50:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 580ED89E86;
	Mon, 15 Jun 2020 16:50:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D07B889E86
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Jun 2020 16:50:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21504174-1500050 
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Jun 2020 17:50:13 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 15 Jun 2020 17:50:11 +0100
Message-Id: <20200615165013.22973-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/3] drm/i915/selftests: Disable preemptive
 heartbeats over preemption tests
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

Since the heartbeat may cause a preemption event, disable it over the
preemption suppression tests.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_lrc.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index f651bdf7f191..91543494f595 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -2282,7 +2282,7 @@ static int live_suppress_self_preempt(void *arg)
 		if (igt_flush_test(gt->i915))
 			goto err_wedged;
 
-		intel_engine_pm_get(engine);
+		engine_heartbeat_disable(engine);
 		engine->execlists.preempt_hang.count = 0;
 
 		rq_a = spinner_create_request(&a.spin,
@@ -2290,14 +2290,14 @@ static int live_suppress_self_preempt(void *arg)
 					      MI_NOOP);
 		if (IS_ERR(rq_a)) {
 			err = PTR_ERR(rq_a);
-			intel_engine_pm_put(engine);
+			engine_heartbeat_enable(engine);
 			goto err_client_b;
 		}
 
 		i915_request_add(rq_a);
 		if (!igt_wait_for_spinner(&a.spin, rq_a)) {
 			pr_err("First client failed to start\n");
-			intel_engine_pm_put(engine);
+			engine_heartbeat_enable(engine);
 			goto err_wedged;
 		}
 
@@ -2309,7 +2309,7 @@ static int live_suppress_self_preempt(void *arg)
 						      MI_NOOP);
 			if (IS_ERR(rq_b)) {
 				err = PTR_ERR(rq_b);
-				intel_engine_pm_put(engine);
+				engine_heartbeat_enable(engine);
 				goto err_client_b;
 			}
 			i915_request_add(rq_b);
@@ -2320,7 +2320,7 @@ static int live_suppress_self_preempt(void *arg)
 
 			if (!igt_wait_for_spinner(&b.spin, rq_b)) {
 				pr_err("Second client failed to start\n");
-				intel_engine_pm_put(engine);
+				engine_heartbeat_enable(engine);
 				goto err_wedged;
 			}
 
@@ -2334,12 +2334,12 @@ static int live_suppress_self_preempt(void *arg)
 			       engine->name,
 			       engine->execlists.preempt_hang.count,
 			       depth);
-			intel_engine_pm_put(engine);
+			engine_heartbeat_enable(engine);
 			err = -EINVAL;
 			goto err_client_b;
 		}
 
-		intel_engine_pm_put(engine);
+		engine_heartbeat_enable(engine);
 		if (igt_flush_test(gt->i915))
 			goto err_wedged;
 	}
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
