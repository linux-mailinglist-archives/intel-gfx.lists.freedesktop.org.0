Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4613B3001DD
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jan 2021 12:46:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F0936E456;
	Fri, 22 Jan 2021 11:46:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC3E66E456
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jan 2021 11:46:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23670251-1500050 
 for multiple; Fri, 22 Jan 2021 11:46:25 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 22 Jan 2021 11:46:25 +0000
Message-Id: <20210122114625.29098-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Check for engine-reset
 errors in the middle of workarounds
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

As we reset the engine between verifying the workarounds remain intact,
report an engine reset failure.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/selftest_workarounds.c | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_workarounds.c b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
index 2070b91cb607..918705724005 100644
--- a/drivers/gpu/drm/i915/gt/selftest_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
@@ -1220,7 +1220,11 @@ live_engine_reset_workarounds(void *arg)
 			goto err;
 		}
 
-		intel_engine_reset(engine, "live_workarounds:idle");
+		ret = intel_engine_reset(engine, "live_workarounds:idle");
+		if (ret) {
+			pr_err("%s: Reset failed while idle\n", engine->name);
+			goto err;
+		}
 
 		ok = verify_wa_lists(gt, &lists, "after idle reset");
 		if (!ok) {
@@ -1241,12 +1245,18 @@ live_engine_reset_workarounds(void *arg)
 
 		ret = request_add_spin(rq, &spin);
 		if (ret) {
-			pr_err("Spinner failed to start\n");
+			pr_err("%s: Spinner failed to start\n", engine->name);
 			igt_spinner_fini(&spin);
 			goto err;
 		}
 
-		intel_engine_reset(engine, "live_workarounds:active");
+		ret = intel_engine_reset(engine, "live_workarounds:active");
+		if (ret) {
+			pr_err("%s: Reset failed on an active spinner\n",
+			       engine->name);
+			igt_spinner_fini(&spin);
+			goto err;
+		}
 
 		igt_spinner_end(&spin);
 		igt_spinner_fini(&spin);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
