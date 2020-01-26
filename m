Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E6B149ADF
	for <lists+intel-gfx@lfdr.de>; Sun, 26 Jan 2020 14:48:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D0786E9B0;
	Sun, 26 Jan 2020 13:48:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FE886E9AC;
 Sun, 26 Jan 2020 13:48:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20013577-1500050 
 for multiple; Sun, 26 Jan 2020 13:48:12 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 26 Jan 2020 13:48:11 +0000
Message-Id: <20200126134811.2084060-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200126134811.2084060-1-chris@chris-wilson.co.uk>
References: <20200126134811.2084060-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 2/2] i915_pm_rps: Be wary if RP0 == RPn
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If the HW min/max frequencies are the same, there is not much range to
deal with and a couple of our invalid tests become confused as they are
actually no-ops.

Error reporting in i915_pm_rps is rudimentary and we deserve better.

Closes: https://gitlab.freedesktop.org/drm/intel/issues/1008
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/i915_pm_rps.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/tests/i915/i915_pm_rps.c b/tests/i915/i915_pm_rps.c
index b65eefb03..56c745a5b 100644
--- a/tests/i915/i915_pm_rps.c
+++ b/tests/i915/i915_pm_rps.c
@@ -397,9 +397,11 @@ static void min_max_config(void (*check)(void), bool load_gpu)
 	writeval_inval(sysfs_files[MIN].filp, origfreqs[RP0] + 1000);
 	check();
 
-	igt_debug("\nDecrease max to RPn (invalid)...\n");
-	writeval_inval(sysfs_files[MAX].filp, origfreqs[RPn]);
-	check();
+	if (origfreqs[RPn] < origfreqs[RP0]) {
+		igt_debug("\nDecrease max to RPn (invalid)...\n");
+		writeval_inval(sysfs_files[MAX].filp, origfreqs[RPn]);
+		check();
+	}
 
 	igt_debug("\nDecrease min to midpoint...\n");
 	writeval(sysfs_files[MIN].filp, fmid);
@@ -429,9 +431,11 @@ static void min_max_config(void (*check)(void), bool load_gpu)
 	writeval_inval(sysfs_files[MAX].filp, 0);
 	check();
 
-	igt_debug("\nIncrease min to RP0 (invalid)...\n");
-	writeval_inval(sysfs_files[MIN].filp, origfreqs[RP0]);
-	check();
+	if (origfreqs[RP0] > origfreqs[RP0]) {
+		igt_debug("\nIncrease min to RP0 (invalid)...\n");
+		writeval_inval(sysfs_files[MIN].filp, origfreqs[RP0]);
+		check();
+	}
 
 	igt_debug("\nIncrease max to midpoint...\n");
 	writeval(sysfs_files[MAX].filp, fmid);
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
