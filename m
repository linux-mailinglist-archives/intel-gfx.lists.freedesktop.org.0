Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EEAF1DCD24
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2020 14:43:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 288346E1EC;
	Thu, 21 May 2020 12:43:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C0596E1EC
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 May 2020 12:43:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21247827-1500050 
 for multiple; Thu, 21 May 2020 13:43:07 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 21 May 2020 13:43:04 +0100
Message-Id: <20200521124304.3157692-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.27.0.rc0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Flush the submission,
 not cancel it!
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

Use intel_engine_flush_submission() when we want to ensure that the
tasklet is run. tasklet_kill(), while it may ensure that an ongoing
tasklet is completed, also prevents the tasklet from running if it's
already scheduled and hasn't yet been run.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1874
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/selftest_lrc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index ef38dd52945c..66f710b1b61e 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -332,7 +332,7 @@ static int live_unlite_restore(struct intel_gt *gt, int prio)
 		i915_request_put(rq[0]);
 
 err_ce:
-		tasklet_kill(&engine->execlists.tasklet); /* flush submission */
+		intel_engine_flush_submission(engine);
 		igt_spinner_end(&spin);
 		for (n = 0; n < ARRAY_SIZE(ce); n++) {
 			if (IS_ERR_OR_NULL(ce[n]))
-- 
2.27.0.rc0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
