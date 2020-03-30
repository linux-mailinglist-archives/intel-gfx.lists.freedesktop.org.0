Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C52EA197BAE
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 14:17:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 035376E26C;
	Mon, 30 Mar 2020 12:17:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C81F16E26C
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 12:17:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20739493-1500050 
 for multiple; Mon, 30 Mar 2020 13:16:45 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Mar 2020 13:16:44 +0100
Message-Id: <20200330121644.25277-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Check timeout before flush
 and cond checks
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
Cc: Matthew Auld <matthew.auld@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Allow a bit of leniency for the CPU scheduler to be distracted while we
flush the tasklet and so ensure that we always check the status of the
request once more before timing out.

v2: Wait until the HW acked the submit, and we do any secondary actions
for the submit (e.g. timeslices)

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_lrc.c | 30 ++++++++++++++++++--------
 1 file changed, 21 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 6f06ba750a0a..dd6c63a2fb96 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -68,26 +68,38 @@ static void engine_heartbeat_enable(struct intel_engine_cs *engine,
 	engine->props.heartbeat_interval_ms = saved;
 }
 
+static bool is_active(struct i915_request *rq)
+{
+	if (i915_request_is_active(rq))
+		return true;
+
+	if (i915_request_on_hold(rq))
+		return true;
+
+	return false;
+}
+
 static int wait_for_submit(struct intel_engine_cs *engine,
 			   struct i915_request *rq,
 			   unsigned long timeout)
 {
 	timeout += jiffies;
 	do {
-		cond_resched();
-		intel_engine_flush_submission(engine);
+		bool done = time_after(jiffies, timeout);
 
-		if (READ_ONCE(engine->execlists.pending[0]))
-			continue;
-
-		if (i915_request_is_active(rq))
+		if (i915_request_completed(rq)) /* that was quick! */
 			return 0;
 
-		if (i915_request_started(rq)) /* that was quick! */
+		/* Wait until the HW has acknowleged the submission (or err) */
+		intel_engine_flush_submission(engine);
+		if (!READ_ONCE(engine->execlists.pending[0]) && is_active(rq))
 			return 0;
-	} while (time_before(jiffies, timeout));
 
-	return -ETIME;
+		if (done)
+			return -ETIME;
+
+		cond_resched();
+	} while (1);
 }
 
 static int wait_for_reset(struct intel_engine_cs *engine,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
