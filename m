Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A40A4287E9F
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Oct 2020 00:22:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B3626EB44;
	Thu,  8 Oct 2020 22:22:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 944646EB44;
 Thu,  8 Oct 2020 22:22:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22662556-1500050 
 for multiple; Thu, 08 Oct 2020 23:22:34 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Oct 2020 23:22:33 +0100
Message-Id: <20201008222233.1519240-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201008221334.1478509-1-chris@chris-wilson.co.uk>
References: <20201008221334.1478509-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v2] prime_vgem: Check that we wrap the
 vgem mmap with userptr
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
Cc: igt-dev@lists.freedesktop.org, "Lahtinen,
 Joonas" <joonas.lahtinen@intel.com>, "Kondapally,
 Kalyan" <kalyan.kondapally@intel.com>, "Graunke,
 Kenneth W" <kenneth.w.graunke@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This came up in a discussion about importing virtio dma-buf, which are
themselves plain shmemfs objects and so not only backed by struct pages,
but wrappable by userptr. vgem share the same properties and so should
serve as a useful proxy for testing.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: "Graunke, Kenneth W" <kenneth.w.graunke@intel.com>,
Cc: "Lahtinen, Joonas" <joonas.lahtinen@intel.com>
Cc: "Kondapally, Kalyan" <kalyan.kondapally@intel.com>
---
v2: Reuse the imported vgem as the batch, to truly test whether we
acquire the right pages.
---
 tests/intel-ci/fast-feedback.testlist |  1 +
 tests/prime_vgem.c                    | 29 +++++++++++++++++++++++++++
 2 files changed, 30 insertions(+)

diff --git a/tests/intel-ci/fast-feedback.testlist b/tests/intel-ci/fast-feedback.testlist
index aa2eb3295..982d25834 100644
--- a/tests/intel-ci/fast-feedback.testlist
+++ b/tests/intel-ci/fast-feedback.testlist
@@ -143,6 +143,7 @@ igt@prime_vgem@basic-fence-read
 igt@prime_vgem@basic-gtt
 igt@prime_vgem@basic-read
 igt@prime_vgem@basic-write
+igt@prime_vgem@basic-userptr
 igt@vgem_basic@setversion
 igt@vgem_basic@create
 igt@vgem_basic@debugfs
diff --git a/tests/prime_vgem.c b/tests/prime_vgem.c
index 38e2026aa..3a39657e4 100644
--- a/tests/prime_vgem.c
+++ b/tests/prime_vgem.c
@@ -287,6 +287,32 @@ static void test_write(int vgem, int i915)
 	munmap(ptr, scratch.size);
 }
 
+static void test_userptr(int vgem, int i915)
+{
+	struct vgem_bo scratch;
+	struct drm_i915_gem_exec_object2 obj = {};
+	struct drm_i915_gem_execbuffer2 execbuf = {
+		.buffers_ptr = to_user_pointer(&obj),
+		.buffer_count = 1,
+	};
+	uint32_t *ptr;
+
+	scratch.width = 1024;
+	scratch.height = 1024;
+	scratch.bpp = 32;
+	vgem_create(vgem, &scratch);
+
+	ptr = vgem_mmap(vgem, &scratch, PROT_WRITE);
+	gem_close(vgem, scratch.handle);
+	*ptr = MI_BATCH_BUFFER_END;
+
+	gem_userptr(i915, ptr, scratch.size, 0, 0, &obj.handle);
+	gem_execbuf(i915, &execbuf);
+	gem_close(i915, obj.handle);
+
+	munmap(ptr, scratch.size);
+}
+
 static void test_gtt(int vgem, int i915)
 {
 	struct vgem_bo scratch;
@@ -1038,6 +1064,9 @@ igt_main
 	igt_subtest("basic-write")
 		test_write(vgem, i915);
 
+	igt_subtest("basic-userptr")
+		test_userptr(vgem, i915);
+
 	igt_subtest("basic-gtt") {
 		gem_require_mappable_ggtt(i915);
 		test_gtt(vgem, i915);
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
