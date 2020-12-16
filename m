Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 937E22DC7F9
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Dec 2020 21:52:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0363F89A61;
	Wed, 16 Dec 2020 20:52:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E00189A61
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Dec 2020 20:52:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23348693-1500050 
 for multiple; Wed, 16 Dec 2020 20:52:32 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Dec 2020 20:52:32 +0000
Message-Id: <20201216205232.1365213-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_softpin: Check the last 32b page
 is excluded
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

In order to prevent issues with 32b stateless address, the last page
under 4G is excluded for non-48b objects.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: CQ Tang <cq.tang@intel.com>
---
 tests/i915/gem_softpin.c | 37 +++++++++++++++++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/tests/i915/gem_softpin.c b/tests/i915/gem_softpin.c
index a3e6dcac3..703beb77d 100644
--- a/tests/i915/gem_softpin.c
+++ b/tests/i915/gem_softpin.c
@@ -156,6 +156,39 @@ static void test_zero(int i915)
 	gem_close(i915, object.handle);
 }
 
+static void test_32b_last_page(int i915)
+{
+	uint64_t sz, gtt = gem_aperture_size(i915);
+	struct drm_i915_gem_exec_object2 object = {
+		.flags = EXEC_OBJECT_PINNED,
+	};
+	struct drm_i915_gem_execbuffer2 execbuf = {
+		.buffers_ptr = to_user_pointer(&object),
+		.buffer_count = 1,
+	};
+
+	/*
+	 * The last page under 32b is excluded for !48b objects in order to
+	 * prevent issues with stateless addressing.
+	 */
+
+	igt_require(gtt >= 1ull << 32);
+	object.handle = batch_create(i915, &sz),
+
+	object.offset = 1ull << 32;
+	object.offset -= sz;
+	igt_assert_f(__gem_execbuf(i915, &execbuf) == -EINVAL,
+		     "execbuf succeeded with object.offset=%llx + %"PRIx64"\n",
+		     object.offset, sz);
+
+	object.offset -= 4096;
+	igt_assert_f(__gem_execbuf(i915, &execbuf) == 0,
+		     "execbuf failed with object.offset=%llx + %"PRIx64"\n",
+		     object.offset, sz);
+
+	gem_close(i915, object.handle);
+}
+
 static void test_softpin(int fd)
 {
 	const uint32_t size = 1024 * 1024;
@@ -622,6 +655,10 @@ igt_main
 		igt_require(gem_uses_full_ppgtt(fd));
 		test_zero(fd);
 	}
+	igt_subtest("32b-excludes-last-page") {
+		igt_require(gem_uses_full_ppgtt(fd));
+		test_32b_last_page(fd);
+	}
 	igt_subtest("softpin")
 		test_softpin(fd);
 	igt_subtest("overlap")
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
