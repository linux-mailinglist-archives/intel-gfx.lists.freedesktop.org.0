Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97743199394
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 12:36:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D2676E5D4;
	Tue, 31 Mar 2020 10:36:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BC246E5D4;
 Tue, 31 Mar 2020 10:36:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20750319-1500050 
 for multiple; Tue, 31 Mar 2020 11:36:24 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 Mar 2020 11:36:23 +0100
Message-Id: <20200331103623.859601-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_balancer: Check for bonding
 support before exercising
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

Don't bother trying and failing to test bonding if the kernel doesn't
even support it.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Andi Shyti <andi.shyti@intel.com>
---
 tests/i915/gem_exec_balancer.c | 34 +++++++++++++++++++++++++++-------
 1 file changed, 27 insertions(+), 7 deletions(-)

diff --git a/tests/i915/gem_exec_balancer.c b/tests/i915/gem_exec_balancer.c
index da8aff6de..9930e394d 100644
--- a/tests/i915/gem_exec_balancer.c
+++ b/tests/i915/gem_exec_balancer.c
@@ -1936,6 +1936,22 @@ static bool has_load_balancer(int i915)
 	return err == 0;
 }
 
+static bool has_bonding(int i915)
+{
+	I915_DEFINE_CONTEXT_ENGINES_BOND(bonds, 0) = {
+		.base.name = I915_CONTEXT_ENGINES_EXT_BOND,
+	};
+	struct i915_engine_class_instance ci = {};
+	uint32_t ctx;
+	int err;
+
+	ctx = gem_context_create(i915);
+	err = __set_load_balancer(i915, ctx, &ci, 1, &bonds);
+	gem_context_destroy(i915, ctx);
+
+	return err == 0;
+}
+
 igt_main
 {
 	int i915 = -1;
@@ -1992,11 +2008,18 @@ igt_main
 	igt_subtest("smoke")
 		smoketest(i915, 20);
 
-	igt_subtest("bonded-imm")
-		bonded(i915, 0);
+	igt_subtest_group {
+		igt_fixture igt_require(has_bonding(i915));
+
+		igt_subtest("bonded-imm")
+			bonded(i915, 0);
+
+		igt_subtest("bonded-cork")
+			bonded(i915, CORK);
 
-	igt_subtest("bonded-cork")
-		bonded(i915, CORK);
+		igt_subtest("bonded-early")
+			bonded_early(i915);
+	}
 
 	igt_subtest("bonded-slice")
 		bonded_slice(i915);
@@ -2007,9 +2030,6 @@ igt_main
 	igt_subtest("bonded-semaphore")
 		bonded_semaphore(i915);
 
-	igt_subtest("bonded-early")
-		bonded_early(i915);
-
 	igt_fixture {
 		igt_stop_hang_detector();
 	}
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
