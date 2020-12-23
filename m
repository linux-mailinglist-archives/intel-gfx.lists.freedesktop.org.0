Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 087DD2E1F4A
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Dec 2020 17:12:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 182916E947;
	Wed, 23 Dec 2020 16:12:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7412F6E944;
 Wed, 23 Dec 2020 16:12:06 +0000 (UTC)
IronPort-SDR: PBZXSTCaU4CUAkoKJdvuPMo0nFe6xLYLMZ3AigUuHyYOHdJam20/mUUCd0ZlajJTtLKBOS1tLZ
 xhuaPQtbZWXw==
X-IronPort-AV: E=McAfee;i="6000,8403,9844"; a="173465210"
X-IronPort-AV: E=Sophos;i="5.78,441,1599548400"; d="scan'208";a="173465210"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2020 08:12:05 -0800
IronPort-SDR: vwwD3yTC6dRePjAX9kEGu3BrH4pJ7AOlNhWaAFVmf291NqiKh0xeNCVqTVhm3hfRG2n7/07Ya5
 5aDKkNLN/xgw==
X-IronPort-AV: E=Sophos;i="5.78,441,1599548400"; d="scan'208";a="374044847"
Received: from sjpotts-mobl1.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.251.92.119])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2020 08:12:04 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 23 Dec 2020 16:11:52 +0000
Message-Id: <20201223161152.289279-1-matthew.auld@intel.com>
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
 tests/i915/gen9_exec_parse.c | 86 ++++++++++++++++++++++++++++++++++++
 1 file changed, 86 insertions(+)

diff --git a/tests/i915/gen9_exec_parse.c b/tests/i915/gen9_exec_parse.c
index 087d6f35..985ae6c0 100644
--- a/tests/i915/gen9_exec_parse.c
+++ b/tests/i915/gen9_exec_parse.c
@@ -1051,6 +1051,89 @@ static void test_rejected(int i915, uint32_t handle, bool ctx_param)
 	}
 }
 
+#define PAGE_SHIFT 12
+#define PAGE_SIZE (1ULL << 12)
+
+static inline uint32_t copy_shadow(uint32_t *batch, uint32_t len,
+				   uint32_t src, uint32_t dst)
+{
+        unsigned int i = 0;
+
+#define COPY_BLT_CMD            (2<<29|0x53<<22)
+#define BLT_WRITE_ALPHA         (1<<21)
+#define BLT_WRITE_RGB           (1<<20)
+	batch[i++] = COPY_BLT_CMD | BLT_WRITE_ALPHA | BLT_WRITE_RGB | 8;
+	batch[i++] = 0xcc << 16 | 1 << 25 | 1 << 24 | PAGE_SIZE;
+	batch[i++] = 0;
+	batch[i++] = len >> PAGE_SHIFT << 16 | PAGE_SIZE / 4;
+	batch[i++] = dst;
+	batch[i++] = 0;
+	batch[i++] = 0;
+	batch[i++] = PAGE_SIZE;
+	batch[i++] = src;
+	batch[i++] = 0;
+	batch[i++] = MI_BATCH_BUFFER_END;
+	batch[i++] = 0;
+
+	return i * sizeof(uint32_t);
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
+	exec[0].flags = EXEC_OBJECT_PINNED;
+	exec[0].offset = 0;
+
+	exec[1].handle = gem_create(fd, size); /* batch */
+	exec[1].flags = EXEC_OBJECT_PINNED;
+	exec[1].offset = size;
+
+	vaddr = gem_mmap__wc(fd, exec[1].handle, 0, size, PROT_WRITE);
+
+	len = copy_shadow(vaddr,
+			  size,
+			  exec[1].offset + size, /* expected shadow location */
+			  exec[0].offset);
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
+	/*
+	 * Since batch_len is smaller than PAGE_SIZE, we should expect the extra
+	 * dwords to be zeroed. Even though this doesn't affect execution, we
+	 * don't want to be leaking stuff by accident.
+	 */
+	for (i = len / sizeof(uint32_t); i < size / sizeof(uint32_t); i++)
+		igt_assert_eq(vaddr[i], 0);
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
@@ -1138,6 +1221,9 @@ igt_main
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
