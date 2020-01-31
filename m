Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D98714ECD5
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 14:03:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84E806E994;
	Fri, 31 Jan 2020 13:03:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59FC16E994
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 13:03:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20072512-1500050 
 for multiple; Fri, 31 Jan 2020 13:03:20 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 31 Jan 2020 13:03:19 +0000
Message-Id: <20200131130319.2998318-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Disable heartbeat around
 hang tests
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If the heartbeat fires in the middle of the preempt-hang test, it
consumes our forced hang disrupting the test.

Reported-by: Daniel Vetter <daniel.vetter@ffwll.ch>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/selftest_lrc.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 5e04ecb61dcc..f5214a374fb7 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -2452,15 +2452,19 @@ static int live_preempt_hang(void *arg)
 		I915_USER_PRIORITY(I915_CONTEXT_MIN_USER_PRIORITY);
 
 	for_each_engine(engine, gt, id) {
+		unsigned long heartbeat;
 		struct i915_request *rq;
 
 		if (!intel_engine_has_preemption(engine))
 			continue;
 
+		engine_heartbeat_disable(engine, &heartbeat);
+
 		rq = spinner_create_request(&spin_lo, ctx_lo, engine,
 					    MI_ARB_CHECK);
 		if (IS_ERR(rq)) {
 			err = PTR_ERR(rq);
+			engine_heartbeat_enable(engine, heartbeat);
 			goto err_ctx_lo;
 		}
 
@@ -2470,6 +2474,7 @@ static int live_preempt_hang(void *arg)
 			GEM_TRACE_DUMP();
 			intel_gt_set_wedged(gt);
 			err = -EIO;
+			engine_heartbeat_enable(engine, heartbeat);
 			goto err_ctx_lo;
 		}
 
@@ -2477,6 +2482,7 @@ static int live_preempt_hang(void *arg)
 					    MI_ARB_CHECK);
 		if (IS_ERR(rq)) {
 			igt_spinner_end(&spin_lo);
+			engine_heartbeat_enable(engine, heartbeat);
 			err = PTR_ERR(rq);
 			goto err_ctx_lo;
 		}
@@ -2491,6 +2497,7 @@ static int live_preempt_hang(void *arg)
 			pr_err("Preemption did not occur within timeout!");
 			GEM_TRACE_DUMP();
 			intel_gt_set_wedged(gt);
+			engine_heartbeat_enable(engine, heartbeat);
 			err = -EIO;
 			goto err_ctx_lo;
 		}
@@ -2505,12 +2512,15 @@ static int live_preempt_hang(void *arg)
 			GEM_TRACE("hi spinner failed to start\n");
 			GEM_TRACE_DUMP();
 			intel_gt_set_wedged(gt);
+			engine_heartbeat_enable(engine, heartbeat);
 			err = -EIO;
 			goto err_ctx_lo;
 		}
 
 		igt_spinner_end(&spin_hi);
 		igt_spinner_end(&spin_lo);
+		engine_heartbeat_enable(engine, heartbeat);
+
 		if (igt_flush_test(gt->i915)) {
 			err = -EIO;
 			goto err_ctx_lo;
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
