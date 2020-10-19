Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37287292646
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Oct 2020 13:15:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EEE86E919;
	Mon, 19 Oct 2020 11:15:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 951266E915
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Oct 2020 11:15:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22755821-1500050 
 for multiple; Mon, 19 Oct 2020 12:15:00 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Oct 2020 12:14:41 +0100
Message-Id: <20201019111441.5611-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Flush the old heartbeat
 more gently
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

In order to test how fast the heartbeat can respond, we measure with the
interval set to its minimum. Before we measure though, we want to be
sure we start with a fresh pulse, and so wait until any old one is
complete. During that wait though, we were continually flushing the
work, and so continually re-evaluating to see if the pulse was complete,
and each attempt would count as an unresponsive system. If the engine
did not complete the request in the couple of busy-spins, it would flag
an error. This is unfortunate, so let's not busy-spin waiting for the
old heartbeat, but terminate it and start afresh.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gt/selftest_engine_heartbeat.c    | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
index e73854dd2fe0..d64ea0b4b493 100644
--- a/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
+++ b/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
@@ -210,17 +210,15 @@ static int __live_heartbeat_fast(struct intel_engine_cs *engine)
 
 	intel_engine_pm_get(engine);
 
-	err = intel_engine_set_heartbeat(engine, 1);
-	if (err)
-		goto err_pm;
-
 	for (i = 0; i < ARRAY_SIZE(times); i++) {
-		/* Manufacture a tick */
 		do {
-			while (READ_ONCE(engine->heartbeat.systole))
-				flush_delayed_work(&engine->heartbeat.work);
+			/* Manufacture a tick */
+			intel_engine_park_heartbeat(engine);
+			engine->serial++; /*  pretend we are not idle! */
+			err = intel_engine_set_heartbeat(engine, 1);
+			if (err)
+				goto err_pm;
 
-			engine->serial++; /* quick, pretend we are not idle! */
 			flush_delayed_work(&engine->heartbeat.work);
 			if (!delayed_work_pending(&engine->heartbeat.work)) {
 				pr_err("%s: heartbeat did not start\n",
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
