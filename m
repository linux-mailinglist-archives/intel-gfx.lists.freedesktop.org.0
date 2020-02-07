Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F620155675
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 12:11:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B01466FC41;
	Fri,  7 Feb 2020 11:11:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from spamshield.firefly-cloud.com
 (ec2-52-211-27-78.eu-west-1.compute.amazonaws.com [52.211.27.78])
 by gabe.freedesktop.org (Postfix) with ESMTP id AFF1B6FC44
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 11:11:47 +0000 (UTC)
Received: from spamshield.firefly-cloud.com (localhost [127.0.0.1])
 by spamshield.firefly-cloud.com (Postfix) with ESMTP id 022031CC609
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 11:11:47 +0000 (GMT)
Received: from localhost (localhost [127.0.0.1])
 by spamshield.firefly-cloud.com (Postfix) with ESMTP id F2C031CC614
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 11:11:46 +0000 (GMT)
X-Virus-Scanned: by SpamTitan at eu-west-1.compute.internal
Received: from spamshield.firefly-cloud.com (localhost [127.0.0.1])
 by spamshield.firefly-cloud.com (Postfix) with ESMTP id 28D3C1CC59C
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 11:11:40 +0000 (GMT)
Authentication-Results: spamshield.firefly-cloud.com; none
Received: from fireflyinternet.com (unknown [77.68.26.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by spamshield.firefly-cloud.com (Postfix) with ESMTPS id 7B6221CC589
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 11:11:38 +0000 (GMT)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20146974-1500050 
 for multiple; Fri, 07 Feb 2020 11:11:25 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  7 Feb 2020 11:11:24 +0000
Message-Id: <20200207111124.2762388-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200207111124.2762388-1-chris@chris-wilson.co.uk>
References: <20200207111124.2762388-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/selftests: Relax timeout for
 error-interrupt reset processing
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
Cc: matthew.auld@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We can not require that the system process a tasklet in reasonable time
(thanks be to ksoftirqd), but we can insist that having waited
sufficiently for the error interrupt to have been raised and having
kicked the tasklet, the reset has begun and the request will be marked
as in error (if not already completed).

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/selftest_lrc.c | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index f38738978e57..21f407b063fd 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -500,14 +500,21 @@ static int live_error_interrupt(void *arg)
 			}
 
 			for (i = 0; i < ARRAY_SIZE(client); i++) {
-				if (i915_request_wait(client[i], 0, HZ / 5) < 0) {
-					pr_err("%s: %s request still executing!\n",
-					       engine->name,
-					       error_repr(p->error[i]));
+				if (i915_request_wait(client[i], 0, HZ / 5) < 0)
+					pr_debug("%s: %s request incomplete!\n",
+						 engine->name,
+						 error_repr(p->error[i]));
+
+				if (!i915_request_started(client[i])) {
+					pr_debug("%s: %s request not stated!\n",
+						 engine->name,
+						 error_repr(p->error[i]));
 					err = -ETIME;
 					goto out;
 				}
 
+				/* Kick the tasklet to process the error */
+				intel_engine_flush_submission(engine);
 				if (client[i]->fence.error != p->error[i]) {
 					pr_err("%s: %s request completed with wrong error code: %d\n",
 					       engine->name,
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
