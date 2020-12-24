Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 461402E25EF
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Dec 2020 11:29:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A421789F2E;
	Thu, 24 Dec 2020 10:29:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF1F289F2A;
 Thu, 24 Dec 2020 10:29:16 +0000 (UTC)
IronPort-SDR: K2rYyP8mftZ9AnQoV8ePp1a/5FAG4Sj+jWMYl6nECcer0EJddthidRxJYBOoXQeDP8/zuSF4rK
 FsMksIGciQdQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9844"; a="240218983"
X-IronPort-AV: E=Sophos;i="5.78,444,1599548400"; d="scan'208";a="240218983"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Dec 2020 02:29:13 -0800
IronPort-SDR: 2kPlzD93P+krzSMzszkbub1G6CXAEmvyI8p02R1YxUkKuAh/TFWbgIWD0fv/gPgshbKfyXRkIT
 7tnqHeG2sBQQ==
X-IronPort-AV: E=Sophos;i="5.78,444,1599548400"; d="scan'208";a="374348457"
Received: from vmangan-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.26.220])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Dec 2020 02:29:12 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu, 24 Dec 2020 10:29:05 +0000
Message-Id: <20201224102905.356576-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] i915/tests: shadow peek
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The shadow batch needs to be in the user visible ppGTT, so make sure we
are not leaking anything, if we can guess where the shadow will be
placed.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
---
 tests/i915/gen9_exec_parse.c | 129 +++++++++++++++++++++++++++++++++++
 1 file changed, 129 insertions(+)

diff --git a/tests/i915/gen9_exec_parse.c b/tests/i915/gen9_exec_parse.c
index 087d6f35..6f54c4e1 100644
--- a/tests/i915/gen9_exec_parse.c
+++ b/tests/i915/gen9_exec_parse.c
@@ -1051,6 +1051,132 @@ static void test_rejected(int i915, uint32_t handle, bool ctx_param)
 	}
 }
 
+#define PAGE_SHIFT 12
+#define PAGE_SIZE (1ULL << 12)
+
+static inline uint32_t fill_and_copy_shadow(uint32_t *batch, uint32_t len,
+					    uintptr_t src, uintptr_t dst)
+{
+        unsigned int i = 0;
+
+#define XY_COLOR_BLT_CMD        (2 << 29 | 0x50 << 22)
+#define BLT_WRITE_ALPHA         (1<<21)
+#define BLT_WRITE_RGB           (1<<20)
+	batch[i++] = XY_COLOR_BLT_CMD | BLT_WRITE_ALPHA | BLT_WRITE_RGB | (7 - 2);
+	batch[i++] = 0xf0 << 16 | 1 << 25 | 1 << 24 | PAGE_SIZE;
+	batch[i++] = 0;
+	batch[i++] = len >> PAGE_SHIFT << 16 | PAGE_SIZE / 4;
+	batch[i++] = lower_32_bits(dst);
+	batch[i++] = upper_32_bits(dst);
+
+	batch[i++] = 0xdeadbeaf;
+	batch[i++] = 0;
+
+#define COPY_BLT_CMD            (2<<29|0x53<<22)
+	batch[i++] = COPY_BLT_CMD | BLT_WRITE_ALPHA | BLT_WRITE_RGB | 8;
+	batch[i++] = 0xcc << 16 | 1 << 25 | 1 << 24 | PAGE_SIZE;
+	batch[i++] = 0;
+	batch[i++] = len >> PAGE_SHIFT << 16 | PAGE_SIZE / 4;
+	batch[i++] = lower_32_bits(dst);
+	batch[i++] = upper_32_bits(dst);
+	batch[i++] = 0;
+	batch[i++] = PAGE_SIZE;
+	batch[i++] = lower_32_bits(src);
+	batch[i++] = upper_32_bits(src);
+
+	batch[i++] = MI_BATCH_BUFFER_END;
+	batch[i++] = 0;
+
+	return i * sizeof(uint32_t);
+}
+
+static inline uint64_t sign_extend(uint64_t x, int index)
+{
+	int shift = 63 - index;
+	return (int64_t)(x << shift) >> shift;
+}
+
+static uint64_t gen8_canonical_address(uint64_t address)
+{
+	return sign_extend(address, 47);
+}
+
+static void test_shadow_peek(int fd)
+{
+	uint64_t size = PAGE_SIZE;
+	struct drm_i915_gem_exec_object2 exec[2] = {};
+	struct drm_i915_gem_execbuffer2 execbuf = {
+		.buffers_ptr = to_user_pointer(exec),
+		.buffer_count = 2,
+	};
+	uint32_t *vaddr;
+	uint32_t len;
+	int i;
+
+	exec[0].handle = gem_create(fd, size); /* scratch for shadow */
+	exec[0].flags = EXEC_OBJECT_PINNED |
+			EXEC_OBJECT_SUPPORTS_48B_ADDRESS |
+			EXEC_OBJECT_PAD_TO_SIZE;
+	exec[0].offset = 0;
+	/*
+	 * Ensure the shadow has no place to hide, if say it were placed
+	 * randomly within the address space. We leave enough space for our
+	 * batch, which leaves exactly one perfect sized hole for the shadow to
+	 * occupy later.
+	 *
+	 * Note that pad_to_size is just the node.size for the vma, which means
+	 * we can easily occupy the entire 48b ppGTT, if we want, without
+	 * needing an insane amount of physical memory.
+	 */
+	exec[0].pad_to_size = gem_aperture_size(fd) - 2 * size;
+
+	exec[1].handle = gem_create(fd, size); /* batch */
+	exec[1].flags = EXEC_OBJECT_PINNED | EXEC_OBJECT_SUPPORTS_48B_ADDRESS;
+	exec[1].offset = gen8_canonical_address(exec[0].pad_to_size);
+
+	vaddr = gem_mmap__wc(fd, exec[1].handle, 0, size, PROT_WRITE);
+
+	len = fill_and_copy_shadow(vaddr,
+				   size,
+				   exec[0].pad_to_size + size, /* shadow location */
+				   exec[0].offset);
+
+	munmap(vaddr, size);
+
+	execbuf.flags = I915_EXEC_BLT;
+	execbuf.batch_start_offset = 0;
+	execbuf.batch_len = len;
+
+	igt_assert_eq(__gem_execbuf(fd, &execbuf), 0);
+	gem_sync(fd, exec[1].handle);
+
+	gem_set_domain(fd, exec[0].handle,
+		       I915_GEM_DOMAIN_CPU,
+		       I915_GEM_DOMAIN_CPU);
+
+	vaddr = gem_mmap__cpu(fd, exec[0].handle, 0, size, PROT_READ);
+
+
+	/* Shadow batch is meant to be read-only */
+	for (i = 0; i < len / sizeof(uint32_t); i++) {
+		if (i != 6)
+			igt_assert_neq_u32(vaddr[i], 0xdeadbeaf);
+	}
+
+	/*
+	 * Since batch_len is smaller than PAGE_SIZE, we should expect the extra
+	 * dwords to be zeroed. Even though this doesn't affect execution, we
+	 * don't want to be leaking stuff by accident.
+	 */
+	for (i = len / sizeof(uint32_t); i < size / sizeof(uint32_t); i++)
+		igt_assert_eq_u32(vaddr[i], 0);
+
+	munmap(vaddr, size);
+
+	for (i = 0; i < ARRAY_SIZE(exec); i++)
+		gem_close(fd, exec[i].handle);
+}
+
 igt_main
 {
 	uint32_t handle;
@@ -1138,6 +1264,9 @@ igt_main
 	igt_subtest("bb-oversize")
 		test_bb_oversize(i915);
 
+	igt_subtest("shadow-peek")
+		test_shadow_peek(i915);
+
 	igt_fixture {
 		igt_stop_hang_detector();
 		gem_close(i915, handle);
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
