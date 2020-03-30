Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B45D1977BB
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 11:21:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FF6C8994D;
	Mon, 30 Mar 2020 09:21:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DDD689944;
 Mon, 30 Mar 2020 09:21:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20737346-1500050 
 for multiple; Mon, 30 Mar 2020 10:21:19 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Mar 2020 10:21:16 +0100
Message-Id: <20200330092117.810776-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200330092117.810776-1-chris@chris-wilson.co.uk>
References: <20200330092117.810776-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 3/4] i915/gem_exec_capture: Dynamise
 per-engine tests
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

Convert the per-engine tests into a dynamic subtest.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_exec_capture.c | 20 ++++++++------------
 1 file changed, 8 insertions(+), 12 deletions(-)

diff --git a/tests/i915/gem_exec_capture.c b/tests/i915/gem_exec_capture.c
index fe2c4bd12..bc13d8632 100644
--- a/tests/i915/gem_exec_capture.c
+++ b/tests/i915/gem_exec_capture.c
@@ -524,9 +524,14 @@ static size_t safer_strlen(const char *s)
 	return s ? strlen(s) : 0;
 }
 
+#define test_each_engine(T, i915, e) \
+	igt_subtest_with_dynamic(T) __for_each_physical_engine(i915, e) \
+		for_each_if(gem_class_can_store_dword(i915, (e)->class)) \
+			igt_dynamic_f("%s", (e)->name)
+
 igt_main
 {
-	const struct intel_execution_engine *e;
+	const struct intel_execution_engine2 *e;
 	igt_hang_t hang;
 	int fd = -1;
 	int dir = -1;
@@ -550,17 +555,8 @@ igt_main
 		igt_require(safer_strlen(igt_sysfs_get(dir, "error")) > 0);
 	}
 
-	for (e = intel_execution_engines; e->name; e++) {
-		/* default exec-id is purely symbolic */
-		if (e->exec_id == 0)
-			continue;
-
-		igt_subtest_f("capture-%s", e->name) {
-			igt_require(gem_ring_has_physical_engine(fd, eb_ring(e)));
-			igt_require(gem_can_store_dword(fd, eb_ring(e)));
-			capture(fd, dir, eb_ring(e));
-		}
-	}
+	test_each_engine("capture", fd, e)
+		capture(fd, dir, e->flags);
 
 	igt_subtest_f("many-4K-zero") {
 		igt_require(gem_can_store_dword(fd, 0));
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
