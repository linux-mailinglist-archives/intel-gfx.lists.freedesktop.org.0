Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F9BE156D02
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2020 00:08:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBF1B6E88D;
	Sun,  9 Feb 2020 23:08:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2760E6E88D
 for <intel-gfx@lists.freedesktop.org>; Sun,  9 Feb 2020 23:08:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20168061-1500050 
 for multiple; Sun, 09 Feb 2020 23:08:41 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  9 Feb 2020 23:08:38 +0000
Message-Id: <20200209230838.361154-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200209230838.361154-1-chris@chris-wilson.co.uk>
References: <20200209230838.361154-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/selftests: Relax timeout for
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
index 0895b1b4b579..3215d5a9964c 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -503,14 +503,21 @@ static int live_error_interrupt(void *arg)
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
