Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD7F22E2612
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Dec 2020 12:15:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9206489BFD;
	Thu, 24 Dec 2020 11:15:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4B9B89BFD;
 Thu, 24 Dec 2020 11:15:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23421940-1500050 
 for multiple; Thu, 24 Dec 2020 11:15:34 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Dec 2020 11:15:34 +0000
Message-Id: <20201224111534.3721798-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.30.0.rc1
In-Reply-To: <20201224110158.3560769-1-chris@chris-wilson.co.uk>
References: <20201224110158.3560769-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v2] i915/gem_softpin: Test total occupancy
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
 tests/i915/gem_softpin.c | 89 ++++++++++++++++++++++++++++++++++------
 1 file changed, 77 insertions(+), 12 deletions(-)

diff --git a/tests/i915/gem_softpin.c b/tests/i915/gem_softpin.c
index f761a6839..7faae4309 100644
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
@@ -127,32 +129,31 @@ static void test_zero(int i915)
 		.buffer_count = 1,
 	};
 
-	/* Under full-ppgtt, we have complete control of the GTT */
 	igt_info("Object size:%"PRIx64", GTT size:%"PRIx64"\n", sz, gtt);
 
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
@@ -191,6 +192,60 @@ static void test_32b_last_page(int i915)
 	gem_close(i915, object.handle);
 }
 
+static void test_full(int i915)
+{
+	uint64_t sz, gtt = gem_aperture_size(i915);
+	struct drm_i915_gem_exec_object2 obj[2] = {
+		/* Use two objects so we can test .pad_to_size works */
+		{
+			.handle = batch_create(i915, &sz),
+			.flags = EXEC_OBJECT_PINNED,
+		},
+		{
+			.handle = batch_create(i915, &sz),
+			.flags = EXEC_OBJECT_PINNED,
+		},
+	};
+	struct drm_i915_gem_execbuffer2 execbuf = {
+		.buffers_ptr = to_user_pointer(obj),
+		.buffer_count = ARRAY_SIZE(obj),
+	};
+
+	obj[0].pad_to_size = gtt - sz;
+	if (obj[0].pad_to_size > LIMIT_32b - sz)
+		obj[0].pad_to_size = LIMIT_32b - sz;
+
+	obj[1].offset = sz;
+	igt_assert_f(__gem_execbuf(i915, &execbuf) == -ENOSPC,
+		     "[32b] execbuf succeeded with obj[1].offset=%llu and obj[0].pad_to_size=%llx\n",
+		     obj[1].offset, obj[0].pad_to_size);
+
+	obj[1].offset = obj[0].pad_to_size;
+	igt_assert_f(__gem_execbuf(i915, &execbuf) == 0,
+		     "[32b] execbuf failed with obj[1].offset=%llu and obj[0].pad_to_size=%llx\n",
+		     obj[1].offset, obj[0].pad_to_size);
+
+	if (obj[1].offset + sz < gtt) {
+		obj[0].flags |= EXEC_OBJECT_SUPPORTS_48B_ADDRESS;
+		obj[1].flags |= EXEC_OBJECT_SUPPORTS_48B_ADDRESS;
+
+		obj[0].pad_to_size = gtt - sz;
+
+		obj[1].offset = obj[0].pad_to_size - sz;
+		igt_assert_f(__gem_execbuf(i915, &execbuf) == -ENOSPC,
+			     "[48b] execbuf succeeded with obj[1].offset=%llu and obj[0].pad_to_size=%llx\n",
+			     obj[1].offset, obj[0].pad_to_size);
+
+		obj[1].offset = obj[0].pad_to_size;
+		igt_assert_f(__gem_execbuf(i915, &execbuf) == 0,
+			     "[48b] execbuf failed with obj[1].offset=%llu and obj[0].pad_to_size=%llx\n",
+		     obj[1].offset, obj[0].pad_to_size);
+	}
+
+	gem_close(i915, obj[1].handle);
+	gem_close(i915, obj[0].handle);
+}
+
 static void test_softpin(int fd)
 {
 	const uint32_t size = 1024 * 1024;
@@ -653,14 +708,24 @@ igt_main
 
 	igt_subtest("invalid")
 		test_invalid(fd);
-	igt_subtest("zero") {
-		igt_require(gem_uses_full_ppgtt(fd));
-		test_zero(fd);
-	}
-	igt_subtest("32b-excludes-last-page") {
-		igt_require(gem_uses_full_ppgtt(fd));
-		test_32b_last_page(fd);
+
+	igt_subtest_group {
+		/* Under full-ppgtt, we have complete control of the GTT */
+
+		igt_fixture {
+			igt_require(gem_uses_full_ppgtt(fd));
+		}
+
+		igt_subtest("zero")
+			test_zero(fd);
+
+		igt_subtest("32b-excludes-last-page")
+			test_32b_last_page(fd);
+
+		igt_subtest("full")
+			test_full(fd);
 	}
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
