Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D64E01A226D
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 15:00:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A4AB6E9E8;
	Wed,  8 Apr 2020 12:59:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3816C6E9E8;
 Wed,  8 Apr 2020 12:59:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20839247-1500050 
 for multiple; Wed, 08 Apr 2020 13:59:48 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Apr 2020 13:59:46 +0100
Message-Id: <20200408125946.2054864-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/i915_pm_rc6_residency: Show where
 the time is spent
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
Cc: igt-dev@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Sometimes the bg_load only wakes up once or twice in 3s. That's
just unbelievable, so include some measurements to see how long the
load spends in submission & waiting.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/i915_pm_rc6_residency.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/tests/i915/i915_pm_rc6_residency.c b/tests/i915/i915_pm_rc6_residency.c
index cd1a6c8d6..15efba186 100644
--- a/tests/i915/i915_pm_rc6_residency.c
+++ b/tests/i915/i915_pm_rc6_residency.c
@@ -304,11 +304,13 @@ static void bg_load(int i915, unsigned int flags, unsigned long *ctl)
 
 	sigaction(SIGINT, &act, NULL);
 	do {
+		uint64_t submit, wait, elapsed;
 		struct timespec tv = {};
 
 		igt_nsec_elapsed(&tv);
 
 		gem_execbuf(i915, &execbuf);
+		submit = igt_nsec_elapsed(&tv);
 		if (flags & WAITBOOST) {
 			gem_sync(i915, obj.handle);
 			if (flags & ONCE)
@@ -317,6 +319,7 @@ static void bg_load(int i915, unsigned int flags, unsigned long *ctl)
 			while (gem_bo_busy(i915, obj.handle))
 				usleep(0);
 		}
+		wait = igt_nsec_elapsed(&tv);
 		ctl[1]++;
 
 		/*
@@ -330,8 +333,15 @@ static void bg_load(int i915, unsigned int flags, unsigned long *ctl)
 		if (!gem_has_execlists(i915))
 			igt_drop_caches_set(i915, DROP_IDLE);
 
+		elapsed = igt_nsec_elapsed(&tv);
+		igt_info("Pulse took %.3fms (submit %.1fus, wait %.1fus, idle %.1fus)\n",
+			 1e-6 * elapsed,
+			 1e-3 * submit,
+			 1e-3 * (wait - submit),
+			 1e-3 * (elapsed - wait));
+
 		/* aim for ~1% busy */
-		usleep(min(igt_nsec_elapsed(&tv) / 10, 50 * 1000));
+		usleep(min(elapsed / 10, 50 * 1000));
 	} while (!READ_ONCE(*ctl));
 }
 
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
