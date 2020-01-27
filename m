Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B6514A06F
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 10:07:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05B986EA79;
	Mon, 27 Jan 2020 09:07:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74EBB6EA75;
 Mon, 27 Jan 2020 09:07:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20018980-1500050 
 for multiple; Mon, 27 Jan 2020 09:07:14 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Jan 2020 09:07:10 +0000
Message-Id: <20200127090712.2324227-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200127090712.2324227-1-chris@chris-wilson.co.uk>
References: <20200127090712.2324227-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 2/4] i915/gem_exec_nop: Reduce runtime
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
 tests/i915/gem_exec_nop.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/tests/i915/gem_exec_nop.c b/tests/i915/gem_exec_nop.c
index dbedb3561..9a2efd32c 100644
--- a/tests/i915/gem_exec_nop.c
+++ b/tests/i915/gem_exec_nop.c
@@ -865,41 +865,41 @@ igt_main
 	}
 
 	igt_subtest("basic-series")
-		series(device, handle, 5);
+		series(device, handle, 2);
 
 	igt_subtest("basic-parallel")
-		parallel(device, handle, 5);
+		parallel(device, handle, 2);
 
 	igt_subtest("basic-sequential")
-		sequential(device, handle, 0, 5);
+		sequential(device, handle, 0, 2);
 
 	for (e = intel_execution_engines; e->name; e++) {
 		igt_subtest_f("%s", e->name)
 			single(device, handle, eb_ring(e), e->name);
 		igt_subtest_f("signal-%s", e->name)
-			fence_signal(device, handle, eb_ring(e), e->name, 5);
+			fence_signal(device, handle, eb_ring(e), e->name, 2);
 	}
 
 	igt_subtest("signal-all")
-		fence_signal(device, handle, ALL_ENGINES, "all", 150);
+		fence_signal(device, handle, ALL_ENGINES, "all", 20);
 
 	igt_subtest("series")
-		series(device, handle, 150);
+		series(device, handle, 20);
 
 	igt_subtest("parallel")
-		parallel(device, handle, 150);
+		parallel(device, handle, 20);
 
 	igt_subtest("sequential")
-		sequential(device, handle, 0, 150);
+		sequential(device, handle, 0, 20);
 
 	igt_subtest("forked-sequential")
-		sequential(device, handle, FORKED, 150);
+		sequential(device, handle, FORKED, 20);
 
 	igt_subtest("chained-sequential")
-		sequential(device, handle, FORKED | CHAINED, 150);
+		sequential(device, handle, FORKED | CHAINED, 20);
 
 	igt_subtest("context-sequential")
-		sequential(device, handle, FORKED | CONTEXT, 150);
+		sequential(device, handle, FORKED | CONTEXT, 20);
 
 	igt_subtest_group {
 		igt_fixture {
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
