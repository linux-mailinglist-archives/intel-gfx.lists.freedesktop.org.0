Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BD0A1990D7
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 11:15:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E58089E2C;
	Tue, 31 Mar 2020 09:15:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1ECFC6E303
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Mar 2020 09:15:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20749077-1500050 
 for multiple; Tue, 31 Mar 2020 10:15:00 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 Mar 2020 10:14:56 +0100
Message-Id: <20200331091459.29179-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/selftests: Tidy up an error
 message for live_error_interrupt
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

Since we don't wait for the error interrupt to reset, restart and then
complete the guilty request, clean up the error messages.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/selftest_lrc.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index d3e163c93e22..b929e52a8f5a 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -649,9 +649,9 @@ static int live_error_interrupt(void *arg)
 						 error_repr(p->error[i]));
 
 				if (!i915_request_started(client[i])) {
-					pr_debug("%s: %s request not stated!\n",
-						 engine->name,
-						 error_repr(p->error[i]));
+					pr_err("%s: %s request not started!\n",
+					       engine->name,
+					       error_repr(p->error[i]));
 					err = -ETIME;
 					goto out;
 				}
@@ -659,9 +659,10 @@ static int live_error_interrupt(void *arg)
 				/* Kick the tasklet to process the error */
 				intel_engine_flush_submission(engine);
 				if (client[i]->fence.error != p->error[i]) {
-					pr_err("%s: %s request completed with wrong error code: %d\n",
+					pr_err("%s: %s request (%s) with wrong error code: %d\n",
 					       engine->name,
 					       error_repr(p->error[i]),
+					       i915_request_completed(client[i]) ? "completed" : "running",
 					       client[i]->fence.error);
 					err = -EINVAL;
 					goto out;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
