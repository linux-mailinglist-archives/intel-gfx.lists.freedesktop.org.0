Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF10122812
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 10:57:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05AD56E969;
	Tue, 17 Dec 2019 09:57:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35C136E969
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2019 09:57:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19605951-1500050 
 for multiple; Tue, 17 Dec 2019 09:56:45 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Dec 2019 09:56:40 +0000
Message-Id: <20191217095642.3124521-6-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191217095642.3124521-1-chris@chris-wilson.co.uk>
References: <20191217095642.3124521-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/8] drm/i915/selftests: Impose a timeout for
 request submission
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

Avoid spinning indefinitely waiting for the request to be submitted, and
instead apply a timeout. A secondary benefit is that the error message
will show which suspect is blocked.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/selftest_lrc.c | 26 +++++++++++++++++++++-----
 1 file changed, 21 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 54bce282717a..3976198eff37 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -532,13 +532,19 @@ static struct i915_request *nop_request(struct intel_engine_cs *engine)
 	return rq;
 }
 
-static void wait_for_submit(struct intel_engine_cs *engine,
-			    struct i915_request *rq)
+static int wait_for_submit(struct intel_engine_cs *engine,
+			   struct i915_request *rq,
+			   unsigned long timeout)
 {
+	timeout += jiffies;
 	do {
 		cond_resched();
 		intel_engine_flush_submission(engine);
-	} while (!i915_request_is_active(rq));
+		if (i915_request_is_active(rq))
+			return 0;
+	} while (time_before(jiffies, timeout));
+
+	return -ETIME;
 }
 
 static long timeslice_threshold(const struct intel_engine_cs *engine)
@@ -606,7 +612,12 @@ static int live_timeslice_queue(void *arg)
 			goto err_heartbeat;
 		}
 		engine->schedule(rq, &attr);
-		wait_for_submit(engine, rq);
+		err = wait_for_submit(engine, rq, HZ / 2);
+		if (err) {
+			pr_err("%s: Timed out trying to submit semaphores\n",
+			       engine->name);
+			goto err_rq;
+		}
 
 		/* ELSP[1]: nop request */
 		nop = nop_request(engine);
@@ -614,8 +625,13 @@ static int live_timeslice_queue(void *arg)
 			err = PTR_ERR(nop);
 			goto err_rq;
 		}
-		wait_for_submit(engine, nop);
+		err = wait_for_submit(engine, nop, HZ / 2);
 		i915_request_put(nop);
+		if (err) {
+			pr_err("%s: Timed out trying to submit nop\n",
+			       engine->name);
+			goto err_rq;
+		}
 
 		GEM_BUG_ON(i915_request_completed(rq));
 		GEM_BUG_ON(execlists_active(&engine->execlists) != rq);
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
