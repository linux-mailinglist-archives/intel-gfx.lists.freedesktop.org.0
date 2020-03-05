Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DF0B17B00A
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 21:53:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A51BA6EBD6;
	Thu,  5 Mar 2020 20:53:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D4A96EBD6;
 Thu,  5 Mar 2020 20:53:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Mar 2020 12:53:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,519,1574150400"; d="scan'208";a="240942799"
Received: from ntitus-mobl1.ti.intel.com (HELO mwahaha-bdw.ger.corp.intel.com)
 ([10.252.24.210])
 by orsmga003.jf.intel.com with ESMTP; 05 Mar 2020 12:53:26 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu,  5 Mar 2020 20:53:25 +0000
Message-Id: <20200305205325.218702-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] i915/gem_exec_params: add test_invalid_batch
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

Sanity check that kernel rejects invalid batch_start_offset and
batch_len.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_exec_params.c | 47 ++++++++++++++++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/tests/i915/gem_exec_params.c b/tests/i915/gem_exec_params.c
index cf7ea306..45581738 100644
--- a/tests/i915/gem_exec_params.c
+++ b/tests/i915/gem_exec_params.c
@@ -268,6 +268,50 @@ static void mmapped(int i915)
 	gem_close(i915, buf);
 }
 
+static uint32_t batch_create_size(int fd, uint32_t size)
+{
+	const uint32_t bbe = MI_BATCH_BUFFER_END;
+	uint32_t handle;
+
+	handle = gem_create(fd, size);
+	gem_write(fd, handle, 0, &bbe, sizeof(bbe));
+
+	return handle;
+}
+
+static void __invalid_batch_start(int fd,
+				  struct drm_i915_gem_execbuffer2 *execbuf,
+				  uint32_t start_offset,
+				  uint32_t batch_len)
+{
+	execbuf->batch_start_offset = start_offset;
+	execbuf->batch_len = batch_len;
+	igt_assert_eq(__gem_execbuf(fd, execbuf), -EINVAL);
+}
+
+static void test_invalid_batch_start(int fd)
+{
+	uint32_t size = 4096;
+	struct drm_i915_gem_exec_object2 exec = {
+		.handle = batch_create_size(fd, size),
+	};
+	struct drm_i915_gem_execbuffer2 execbuf = {
+		.buffers_ptr = to_user_pointer(&exec),
+		.buffer_count = 1,
+	};
+
+	__invalid_batch_start(fd, &execbuf, 0, -1);
+	__invalid_batch_start(fd, &execbuf, -1, 0);
+	__invalid_batch_start(fd, &execbuf, -1, -1);
+	__invalid_batch_start(fd, &execbuf, -1U & ~0x7, 0);
+	__invalid_batch_start(fd, &execbuf, 0, -1U & ~0x7);
+	__invalid_batch_start(fd, &execbuf, size, 0);
+	__invalid_batch_start(fd, &execbuf, size, size);
+
+	gem_sync(fd, exec.handle);
+	gem_close(fd, exec.handle);
+}
+
 struct drm_i915_gem_execbuffer2 execbuf;
 struct drm_i915_gem_exec_object2 gem_exec[1];
 uint32_t batch[2] = {MI_BATCH_BUFFER_END};
@@ -507,6 +551,9 @@ igt_main
 	igt_subtest("batch-first")
 		test_batch_first(fd);
 
+	igt_subtest("invalid-batch-start-offset")
+		test_invalid_batch_start(fd);
+
 #define DIRT(name) \
 	igt_subtest(#name "-dirt") { \
 		execbuf.flags = 0; \
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
