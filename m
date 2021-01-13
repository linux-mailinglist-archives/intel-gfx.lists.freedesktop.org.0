Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A60DA2F4BDD
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jan 2021 13:59:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCABC6E9A0;
	Wed, 13 Jan 2021 12:59:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A753D6E9A0
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jan 2021 12:59:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23584419-1500050 
 for multiple; Wed, 13 Jan 2021 12:59:40 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Jan 2021 12:59:39 +0000
Message-Id: <20210113125939.10205-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210113125155.1029-1-chris@chris-wilson.co.uk>
References: <20210113125155.1029-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Bump the scheduling
 threshold for fast heartbeats
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

Since we are system_highpri_wq, we expected the heartbeat to be
scheduled promptly. However, we see delays of over 10ms upsetting our
assertions. Accept this as inevitable and bump the error threshold to
20ms (from 6ms).

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
index b88aa35ad75b..e88a01390dc5 100644
--- a/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
+++ b/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
@@ -197,6 +197,7 @@ static int cmp_u32(const void *_a, const void *_b)
 
 static int __live_heartbeat_fast(struct intel_engine_cs *engine)
 {
+	const int error_threshold = max(20000, jffies_to_usecs(6));
 	struct intel_context *ce;
 	struct i915_request *rq;
 	ktime_t t0, t1;
@@ -254,12 +255,18 @@ static int __live_heartbeat_fast(struct intel_engine_cs *engine)
 		times[0],
 		times[ARRAY_SIZE(times) - 1]);
 
-	/* Min work delay is 2 * 2 (worst), +1 for scheduling, +1 for slack */
-	if (times[ARRAY_SIZE(times) / 2] > jiffies_to_usecs(6)) {
+	/*
+	 * Ideally, the upper bound on min work delay would be something like
+	 * 2 * 2 (worst), +1 for scheduling, +1 for slack. In practice, we
+	 * are, even with system_wq_highpri, at the mercy of the CPU scheduler
+	 * and may be stuck behind some slow work for many millisecond. Such
+	 * as our very own display workers.
+	 */
+	if (times[ARRAY_SIZE(times) / 2] > error_threshold) {
 		pr_err("%s: Heartbeat delay was %uus, expected less than %dus\n",
 		       engine->name,
 		       times[ARRAY_SIZE(times) / 2],
-		       jiffies_to_usecs(6));
+		       error_threshold);
 		err = -EINVAL;
 	}
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
