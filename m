Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 520BA14A06E
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 10:07:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76E2F6EA74;
	Mon, 27 Jan 2020 09:07:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 747386EA74;
 Mon, 27 Jan 2020 09:07:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20018979-1500050 
 for multiple; Mon, 27 Jan 2020 09:07:14 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Jan 2020 09:07:09 +0000
Message-Id: <20200127090712.2324227-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 1/4] i915/gem_sync: Reduce runtime
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

Reduce the upper timeout for stress tests from 150s to a mere 20s, and
quick tests to 2s.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_sync.c | 60 +++++++++++++++++++++----------------------
 1 file changed, 30 insertions(+), 30 deletions(-)

diff --git a/tests/i915/gem_sync.c b/tests/i915/gem_sync.c
index 0010ac103..2ef55ecc0 100644
--- a/tests/i915/gem_sync.c
+++ b/tests/i915/gem_sync.c
@@ -1224,67 +1224,67 @@ igt_main
 
 	for (e = intel_execution_engines; e->name; e++) {
 		igt_subtest_f("%s", e->name)
-			sync_ring(fd, eb_ring(e), 1, 150);
+			sync_ring(fd, eb_ring(e), 1, 20);
 		igt_subtest_f("idle-%s", e->name)
-			idle_ring(fd, eb_ring(e), 150);
+			idle_ring(fd, eb_ring(e), 20);
 		igt_subtest_f("active-%s", e->name)
-			active_ring(fd, eb_ring(e), 150);
+			active_ring(fd, eb_ring(e), 20);
 		igt_subtest_f("wakeup-%s", e->name)
-			wakeup_ring(fd, eb_ring(e), 150, 1);
+			wakeup_ring(fd, eb_ring(e), 20, 1);
 		igt_subtest_f("active-wakeup-%s", e->name)
-			active_wakeup_ring(fd, eb_ring(e), 150, 1);
+			active_wakeup_ring(fd, eb_ring(e), 20, 1);
 		igt_subtest_f("double-wakeup-%s", e->name)
-			wakeup_ring(fd, eb_ring(e), 150, 2);
+			wakeup_ring(fd, eb_ring(e), 20, 2);
 		igt_subtest_f("store-%s", e->name)
-			store_ring(fd, eb_ring(e), 1, 150);
+			store_ring(fd, eb_ring(e), 1, 20);
 		igt_subtest_f("switch-%s", e->name)
-			switch_ring(fd, eb_ring(e), 1, 150);
+			switch_ring(fd, eb_ring(e), 1, 20);
 		igt_subtest_f("forked-switch-%s", e->name)
-			switch_ring(fd, eb_ring(e), ncpus, 150);
+			switch_ring(fd, eb_ring(e), ncpus, 20);
 		igt_subtest_f("many-%s", e->name)
-			store_many(fd, eb_ring(e), 150);
+			store_many(fd, eb_ring(e), 20);
 		igt_subtest_f("forked-%s", e->name)
-			sync_ring(fd, eb_ring(e), ncpus, 150);
+			sync_ring(fd, eb_ring(e), ncpus, 20);
 		igt_subtest_f("forked-store-%s", e->name)
-			store_ring(fd, eb_ring(e), ncpus, 150);
+			store_ring(fd, eb_ring(e), ncpus, 20);
 	}
 
 	igt_subtest("basic-each")
-		sync_ring(fd, ALL_ENGINES, 1, 5);
+		sync_ring(fd, ALL_ENGINES, 1, 2);
 	igt_subtest("basic-store-each")
-		store_ring(fd, ALL_ENGINES, 1, 5);
+		store_ring(fd, ALL_ENGINES, 1, 2);
 	igt_subtest("basic-many-each")
-		store_many(fd, ALL_ENGINES, 5);
+		store_many(fd, ALL_ENGINES, 2);
 	igt_subtest("switch-each")
-		switch_ring(fd, ALL_ENGINES, 1, 150);
+		switch_ring(fd, ALL_ENGINES, 1, 20);
 	igt_subtest("forked-switch-each")
-		switch_ring(fd, ALL_ENGINES, ncpus, 150);
+		switch_ring(fd, ALL_ENGINES, ncpus, 20);
 	igt_subtest("forked-each")
-		sync_ring(fd, ALL_ENGINES, ncpus, 150);
+		sync_ring(fd, ALL_ENGINES, ncpus, 20);
 	igt_subtest("forked-store-each")
-		store_ring(fd, ALL_ENGINES, ncpus, 150);
+		store_ring(fd, ALL_ENGINES, ncpus, 20);
 	igt_subtest("active-each")
-		active_ring(fd, ALL_ENGINES, 150);
+		active_ring(fd, ALL_ENGINES, 20);
 	igt_subtest("wakeup-each")
-		wakeup_ring(fd, ALL_ENGINES, 150, 1);
+		wakeup_ring(fd, ALL_ENGINES, 20, 1);
 	igt_subtest("active-wakeup-each")
-		active_wakeup_ring(fd, ALL_ENGINES, 150, 1);
+		active_wakeup_ring(fd, ALL_ENGINES, 20, 1);
 	igt_subtest("double-wakeup-each")
-		wakeup_ring(fd, ALL_ENGINES, 150, 2);
+		wakeup_ring(fd, ALL_ENGINES, 20, 2);
 
 	igt_subtest("basic-all")
-		sync_all(fd, 1, 5);
+		sync_all(fd, 1, 2);
 	igt_subtest("basic-store-all")
-		store_all(fd, 1, 5);
+		store_all(fd, 1, 2);
 
 	igt_subtest("all")
-		sync_all(fd, 1, 150);
+		sync_all(fd, 1, 20);
 	igt_subtest("store-all")
-		store_all(fd, 1, 150);
+		store_all(fd, 1, 20);
 	igt_subtest("forked-all")
-		sync_all(fd, ncpus, 150);
+		sync_all(fd, ncpus, 20);
 	igt_subtest("forked-store-all")
-		store_all(fd, ncpus, 150);
+		store_all(fd, ncpus, 20);
 
 	igt_subtest_group {
 		igt_fixture {
@@ -1298,7 +1298,7 @@ igt_main
 
 		for (e = intel_execution_engines; e->name; e++) {
 			igt_subtest_f("preempt-%s", e->name)
-				preempt(fd, eb_ring(e), ncpus, 150);
+				preempt(fd, eb_ring(e), ncpus, 20);
 		}
 	}
 
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
