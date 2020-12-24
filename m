Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5692E2602
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Dec 2020 12:02:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A1E789B27;
	Thu, 24 Dec 2020 11:02:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FBE289B27;
 Thu, 24 Dec 2020 11:02:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23421807-1500050 
 for multiple; Thu, 24 Dec 2020 11:01:58 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Dec 2020 11:01:58 +0000
Message-Id: <20201224110158.3560769-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.30.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_softpin: Test total occupancy
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
Cc: igt-dev@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use pad-to-size to fill the entire GTT. Make sure we own it all!

Suggested-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Auld <matthew.auld@intel.com>
---
 tests/i915/gem_softpin.c | 49 ++++++++++++++++++++++++++++++++++++----
 1 file changed, 45 insertions(+), 4 deletions(-)

diff --git a/tests/i915/gem_softpin.c b/tests/i915/gem_softpin.c
index f761a6839..4a1622e75 100644
--- a/tests/i915/gem_softpin.c
+++ b/tests/i915/gem_softpin.c
@@ -32,6 +32,8 @@
 #define EXEC_OBJECT_PINNED	(1<<4)
 #define EXEC_OBJECT_SUPPORTS_48B_ADDRESS (1<<3)
 
+#define LIMIT_32b ((1ull << 32) - (1ull << 12))
+
 /* gen8_canonical_addr
  * Used to convert any address into canonical form, i.e. [63:48] == [47].
  * Based on kernel's sign_extend64 implementation.
@@ -132,27 +134,27 @@ static void test_zero(int i915)
 
 	object.offset = 0;
 	igt_assert_f(__gem_execbuf(i915, &execbuf) == 0,
-		     "execbuff failed with object.offset=%llx\n",
+		     "execbuf failed with object.offset=%llx\n",
 		     object.offset);
 
 	if (gtt >> 32) {
 		object.offset = (1ull << 32) - sz;
 		igt_assert_f(__gem_execbuf(i915, &execbuf) == 0,
-			     "execbuff failed with object.offset=%llx\n",
+			     "execbuf failed with object.offset=%llx\n",
 			     object.offset);
 	}
 
 	if ((gtt - sz) >> 32) {
 		object.offset = 1ull << 32;
 		igt_assert_f(__gem_execbuf(i915, &execbuf) == 0,
-			     "execbuff failed with object.offset=%llx\n",
+			     "execbuf failed with object.offset=%llx\n",
 			     object.offset);
 	}
 
 	object.offset = gtt - sz;
 	object.offset = gen8_canonical_addr(object.offset);
 	igt_assert_f(__gem_execbuf(i915, &execbuf) == 0,
-		     "execbuff failed with object.offset=%llx\n",
+		     "execbuf failed with object.offset=%llx\n",
 		     object.offset);
 
 	gem_close(i915, object.handle);
@@ -191,6 +193,39 @@ static void test_32b_last_page(int i915)
 	gem_close(i915, object.handle);
 }
 
+static void test_full(int i915)
+{
+	uint64_t sz, gtt = gem_aperture_size(i915);
+	struct drm_i915_gem_exec_object2 object = {
+		.handle = batch_create(i915, &sz),
+		.flags = EXEC_OBJECT_PINNED,
+	};
+	struct drm_i915_gem_execbuffer2 execbuf = {
+		.buffers_ptr = to_user_pointer(&object),
+		.buffer_count = 1,
+	};
+
+	/* Under full-ppgtt, we have complete control of the GTT */
+
+	object.pad_to_size = gtt;
+	if (object.pad_to_size > LIMIT_32b)
+		object.pad_to_size = LIMIT_32b;
+	igt_assert_f(__gem_execbuf(i915, &execbuf) == 0,
+		     "[32b] execbuf failed with offset 0 and object.pad_to_size=%llx\n",
+		     object.pad_to_size);
+
+	if (object.pad_to_size < gtt) {
+		object.flags |= EXEC_OBJECT_SUPPORTS_48B_ADDRESS;
+		object.pad_to_size = gtt;
+
+		igt_assert_f(__gem_execbuf(i915, &execbuf) == 0,
+			     "[48b] execbuf failed with offset 0 and object.pad_to_size=%llx\n",
+			     object.pad_to_size);
+	}
+
+	gem_close(i915, object.handle);
+}
+
 static void test_softpin(int fd)
 {
 	const uint32_t size = 1024 * 1024;
@@ -653,6 +688,7 @@ igt_main
 
 	igt_subtest("invalid")
 		test_invalid(fd);
+
 	igt_subtest("zero") {
 		igt_require(gem_uses_full_ppgtt(fd));
 		test_zero(fd);
@@ -661,6 +697,11 @@ igt_main
 		igt_require(gem_uses_full_ppgtt(fd));
 		test_32b_last_page(fd);
 	}
+	igt_subtest("full") {
+		igt_require(gem_uses_full_ppgtt(fd));
+		test_full(fd);
+	}
+
 	igt_subtest("softpin")
 		test_softpin(fd);
 	igt_subtest("overlap")
-- 
2.30.0.rc1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
