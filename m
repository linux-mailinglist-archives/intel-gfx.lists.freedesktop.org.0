Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 701CC29294F
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Oct 2020 16:28:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71D516E9C7;
	Mon, 19 Oct 2020 14:28:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D2A96E9C7
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Oct 2020 14:28:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22757946-1500050 
 for multiple; Mon, 19 Oct 2020 15:28:41 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Oct 2020 15:28:41 +0100
Message-Id: <20201019142841.32273-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201019111441.5611-1-chris@chris-wilson.co.uk>
References: <20201019111441.5611-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/selftests: Flush the old heartbeat
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
 drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
index e73854dd2fe0..b88aa35ad75b 100644
--- a/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
+++ b/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
@@ -215,16 +215,17 @@ static int __live_heartbeat_fast(struct intel_engine_cs *engine)
 		goto err_pm;
 
 	for (i = 0; i < ARRAY_SIZE(times); i++) {
-		/* Manufacture a tick */
 		do {
-			while (READ_ONCE(engine->heartbeat.systole))
-				flush_delayed_work(&engine->heartbeat.work);
+			/* Manufacture a tick */
+			intel_engine_park_heartbeat(engine);
+			GEM_BUG_ON(engine->heartbeat.systole);
+			engine->serial++; /*  pretend we are not idle! */
+			intel_engine_unpark_heartbeat(engine);
 
-			engine->serial++; /* quick, pretend we are not idle! */
 			flush_delayed_work(&engine->heartbeat.work);
 			if (!delayed_work_pending(&engine->heartbeat.work)) {
-				pr_err("%s: heartbeat did not start\n",
-				       engine->name);
+				pr_err("%s: heartbeat %d did not start\n",
+				       engine->name, i);
 				err = -EINVAL;
 				goto err_pm;
 			}
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
