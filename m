Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA3E199B5A
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 18:23:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06C6F6E332;
	Tue, 31 Mar 2020 16:23:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 242C36E332;
 Tue, 31 Mar 2020 16:23:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20754889-1500050 
 for multiple; Tue, 31 Mar 2020 17:23:21 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 Mar 2020 17:23:19 +0100
Message-Id: <20200331162320.968537-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 1/2] i915/gem_exec_reloc: Dynamic active
 engine tests
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

Use igt_subtest_with_dynamic for the flexible approach to engine
dependent test discovery.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_exec_reloc.c | 38 ++++++++++++++++++++++++-------------
 1 file changed, 25 insertions(+), 13 deletions(-)

diff --git a/tests/i915/gem_exec_reloc.c b/tests/i915/gem_exec_reloc.c
index 1aa03fba3..275cf6ae9 100644
--- a/tests/i915/gem_exec_reloc.c
+++ b/tests/i915/gem_exec_reloc.c
@@ -261,13 +261,13 @@ static void active(int fd, unsigned engine)
 
 	nengine = 0;
 	if (engine == ALL_ENGINES) {
-		for_each_physical_engine(e, fd) {
-			if (gem_can_store_dword(fd, eb_ring(e)))
-				engines[nengine++] = eb_ring(e);
+		const struct intel_execution_engine2 *e;
+
+		__for_each_physical_engine(fd, e) {
+			if (gem_class_can_store_dword(fd, e->class))
+				engines[nengine++] = e->flags;
 		}
 	} else {
-		igt_require(gem_has_ring(fd, engine));
-		igt_require(gem_can_store_dword(fd, engine));
 		engines[nengine++] = engine;
 	}
 	igt_require(nengine);
@@ -706,6 +706,7 @@ static void basic_softpin(int fd)
 
 igt_main
 {
+	const struct intel_execution_engine2 *e;
 	const struct mode {
 		const char *name;
 		unsigned before, after;
@@ -805,15 +806,26 @@ igt_main
 	igt_subtest("gpu")
 		from_gpu(fd);
 
-	igt_subtest("basic-active")
-		active(fd, ALL_ENGINES);
-	for (const struct intel_execution_engine *e = intel_execution_engines;
-	     e->name; e++) {
-		igt_subtest_f("basic-active-%s", e->name)
-			active(fd, eb_ring(e));
-		igt_subtest_f("basic-spin-%s", e->name)
-			active_spin(fd, eb_ring(e));
+	igt_subtest_with_dynamic("basic-active") {
+		igt_dynamic("all")
+			active(fd, ALL_ENGINES);
+
+		__for_each_physical_engine(fd, e) {
+			if (!gem_class_can_store_dword(fd, e->class))
+				continue;
+
+			igt_dynamic_f("%s", e->name)
+				active(fd, e->flags);
+		}
+	}
+
+	igt_subtest_with_dynamic("basic-spin") {
+		__for_each_physical_engine(fd, e) {
+			igt_dynamic_f("%s", e->name)
+				active_spin(fd, e->flags);
+		}
 	}
+
 	igt_fixture
 		close(fd);
 }
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
