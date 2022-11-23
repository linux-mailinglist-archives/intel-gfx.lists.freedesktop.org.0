Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 763F163669B
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 18:09:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0364210E5C2;
	Wed, 23 Nov 2022 17:09:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D059810E5BD;
 Wed, 23 Nov 2022 17:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669223348; x=1700759348;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TARmqixT51wHHOjwSr0I+WvspPh07sGPyIgCi7IQna8=;
 b=H7ct+4tgt5O3x5gwBPO1HfkpxTUcTCE4iV7NIRUy19nOSb7s5b3BaCKu
 DURvSc8bhOb4U9mbmGNy7oxRKyw95CHrgSd6ycLxU9tJlKFspaiQMf7q1
 aGUiKFEEHQWwj7yEibU/j4Pl7MZSVMnQ0oT33PDAEM+yAP+xyHHXiRYPD
 XtpxeSvh8ycOXSt/Ve7ne46UOFTlXd1DW9TMIwpur8jdnF2IXEGmmrAP/
 bqbz5M4l3V5xuq91va4JwidXI5pGnlRvFtav2PYnhK45mVYLbWtExpqHI
 SRp/tfI04zyUMfU4eJ4wye7EdNc7SltHnJzdxqnGpUPTn22+tp0zgNQFQ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="301676843"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="301676843"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 09:08:52 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="644183759"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="644183759"
Received: from shanew6x-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.16.236])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 09:08:50 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 23 Nov 2022 17:08:42 +0000
Message-Id: <20221123170842.180340-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v2] tests/i915/gem_ppgtt: verify GTT
 eviction with contended locks
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
Cc: intel-gfx@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We should still be able to GTT evict objects during execbuf (old
bindings can linger around), even if there is object lock contention. In
the worst case the execbuf should just wait on the contented locks.
Returning -ENOSPC smells like a regression from past behaviour, and
seems to break userspace.

v2:
  - Add coverage for explicit softpin
  - Add timeout for the spinner

References: https://gitlab.freedesktop.org/drm/intel/-/issues/7570
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>
---
 tests/i915/gem_ppgtt.c | 120 +++++++++++++++++++++++++++++++++++++++++
 1 file changed, 120 insertions(+)

diff --git a/tests/i915/gem_ppgtt.c b/tests/i915/gem_ppgtt.c
index 9673ce22..c0b954e0 100644
--- a/tests/i915/gem_ppgtt.c
+++ b/tests/i915/gem_ppgtt.c
@@ -255,6 +255,118 @@ static void flink_and_close(void)
 	close(fd2);
 }
 
+#define PAGE_SIZE 4096
+
+static uint32_t batch_create_size(int fd, uint64_t size)
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
+#define IGT_USE_ANY	0x1
+#define IGT_USE_PINNED	0x2
+static void upload(int fd, uint32_t handle, uint32_t in_fence, uint32_t ctx_id,
+		   unsigned int flags)
+{
+	struct drm_i915_gem_exec_object2 exec[2] = {};
+	struct drm_i915_gem_execbuffer2 execbuf = {
+		.buffers_ptr = to_user_pointer(&exec),
+		.buffer_count = 1,
+		.rsvd1 = ctx_id,
+	};
+
+	if (in_fence) {
+		execbuf.rsvd2 = in_fence;
+		execbuf.flags = I915_EXEC_FENCE_IN;
+	}
+
+	exec[0].handle = handle;
+	exec[0].flags = EXEC_OBJECT_SUPPORTS_48B_ADDRESS;
+
+	if (flags & IGT_USE_PINNED)
+		exec[0].flags |= EXEC_OBJECT_PINNED; /* offset = 0 */
+
+	if (flags & IGT_USE_ANY) {
+		exec[0].flags |= EXEC_OBJECT_PAD_TO_SIZE;
+		exec[0].pad_to_size = gem_aperture_size(fd);
+	}
+
+	gem_execbuf(fd, &execbuf);
+}
+
+static void shrink_vs_evict(unsigned int flags)
+{
+	const unsigned int nproc = sysconf(_SC_NPROCESSORS_ONLN) + 1;
+	const uint64_t timeout_5s = 5000000000LL;
+	int fd = drm_open_driver(DRIVER_INTEL);
+	uint64_t ahnd = get_reloc_ahnd(fd, 0);
+	const intel_ctx_t *ctx_arr[nproc];
+	igt_spin_t *spinner;
+	uint32_t handle1;
+	int i;
+
+	igt_require(gem_uses_full_ppgtt(fd));
+
+	igt_drop_caches_set(fd, DROP_ALL);
+
+	handle1 = gem_create(fd, PAGE_SIZE);
+
+	spinner = igt_spin_new(fd,
+			       .ahnd = ahnd,
+			       .flags = IGT_SPIN_FENCE_OUT);
+	igt_spin_set_timeout(spinner, timeout_5s);
+
+	/*
+	 * Create several VMs to ensure we don't block on the same vm lock. The
+	 * goal of the test is to ensure that object lock contention doesn't
+	 * somehow result in -ENOSPC from execbuf, if we need to trigger GTT
+	 * eviction.
+	 */
+	for (i = 0; i < nproc; i++) {
+		ctx_arr[i] = intel_ctx_create(fd, NULL);
+
+		upload(fd, handle1, spinner->execbuf.rsvd2 >> 32,
+		       ctx_arr[i]->id, flags);
+	}
+
+	igt_fork(child, 1)
+		igt_drop_caches_set(fd, DROP_ALL);
+
+	sleep(2); /* Give the shrinker time to find handle1 */
+
+	igt_fork(child, nproc) {
+		uint32_t handle2 = gem_create(fd, PAGE_SIZE);
+
+		/*
+		 * One of these forks will be stuck on the vm mutex, since the
+		 * shrinker is holding it (along with the object lock) while
+		 * trying to unbind the chosen vma, but is blocked by the
+		 * spinner. The rest should only block waiting to grab the
+		 * object lock for handle1, before then trying to GTT evict it
+		 * from their respective vm. In either case the contention of
+		 * the vm->mutex or object lock should never result in -ENOSPC
+		 * or some other error.
+		 */
+		handle2 = batch_create_size(fd, PAGE_SIZE);
+
+		upload(fd, handle2, 0, ctx_arr[child]->id, flags);
+		gem_close(fd, handle2);
+	}
+
+	igt_waitchildren();
+	igt_spin_free(fd, spinner);
+
+	for (i = 0; i < nproc; i++)
+		intel_ctx_destroy(fd, ctx_arr[i]);
+
+	gem_close(fd, handle1);
+}
+
 static bool has_contexts(void)
 {
 	bool result;
@@ -331,4 +443,12 @@ igt_main
 
 	igt_subtest("flink-and-close-vma-leak")
 		flink_and_close();
+
+	igt_describe("Verify GTT eviction can't randomly fail due to object lock contention");
+	igt_subtest_group {
+		igt_subtest("shrink-vs-evict-any")
+			shrink_vs_evict(IGT_USE_ANY);
+		igt_subtest("shrink-vs-evict-pinned")
+			shrink_vs_evict(IGT_USE_PINNED);
+	}
 }
-- 
2.38.1

