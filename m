Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 986426342F9
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 18:49:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35EF210E430;
	Tue, 22 Nov 2022 17:49:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23C4C10E42F;
 Tue, 22 Nov 2022 17:49:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669139354; x=1700675354;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2WMxka0+h1cIAzVcFkVw+Zp3Q3gTzRStbYl00FQyrnI=;
 b=n+iYUrAQmBp08y1JV8SF99ktZkWDfV1A8ZY2vYm41QkH0TmKUQKDTsxg
 09Fdex1RGuc3M4P9QByI7aScH8XKiW05Nj4pLsiBd21lS6+U9mh2k6qIf
 4htVlt2aa15RBse3Pkyo9hpSdo4i1cI635+4knzqVejp+8y/DTWKp8kUq
 UG22VsKNWAsHB8c0au0cXn6buGMQkdvVkysHFNn9yd0if0mlnxtzHfPgq
 c8vrCdgfO28YTycmDHAjvQ2Bxc+EHnL95uRsM04H5E5EuS7axkrk0nJn4
 IO+j+ehAV+wm12jGRFvXRr135y65Jg6Q4pcsvi2GIYgMmvSvKASRyqyJi Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="301426907"
X-IronPort-AV: E=Sophos;i="5.96,184,1665471600"; d="scan'208";a="301426907"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 09:49:03 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="783921435"
X-IronPort-AV: E=Sophos;i="5.96,184,1665471600"; d="scan'208";a="783921435"
Received: from joneil2-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.1.134])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 09:49:01 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue, 22 Nov 2022 17:47:58 +0000
Message-Id: <20221122174758.74187-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] tests/i915/gem_shrink: verify GTT
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

References: https://gitlab.freedesktop.org/drm/intel/-/issues/7570
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>
---
 tests/i915/gem_shrink.c | 107 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 107 insertions(+)

diff --git a/tests/i915/gem_shrink.c b/tests/i915/gem_shrink.c
index 380d2c84..f1630081 100644
--- a/tests/i915/gem_shrink.c
+++ b/tests/i915/gem_shrink.c
@@ -402,6 +402,109 @@ static void reclaim(unsigned engine, int timeout)
 	close(fd);
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
+static void upload(int fd, uint32_t handle, uint32_t in_fence, uint32_t ctx_id)
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
+	exec[0].flags = EXEC_OBJECT_SUPPORTS_48B_ADDRESS |
+		EXEC_OBJECT_PAD_TO_SIZE;
+	exec[0].pad_to_size = gem_aperture_size(fd) - PAGE_SIZE;
+
+	gem_execbuf(fd, &execbuf);
+}
+
+static void shrink_vs_evict(void)
+{
+	const unsigned int nproc = sysconf(_SC_NPROCESSORS_ONLN) + 1;
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
+	handle1 = gem_create(fd, 1u << 21);
+
+	spinner = igt_spin_new(fd,
+			       .ahnd = ahnd,
+			       .flags = IGT_SPIN_FENCE_OUT);
+	/*
+	 * Create several VMs to ensure we don't block on the same vm lock. The
+	 * goal of the test is to ensure that object lock contention doesn't
+	 * somehow result in -ENOSPC from execbuf, if we need to trigger GTT
+	 * eviction.
+	 */
+	for (i = 0; i < nproc; i++) {
+		ctx_arr[i] = intel_ctx_create_all_physical(fd);
+		upload(fd, handle1, spinner->execbuf.rsvd2 >> 32,
+		       ctx_arr[i]->id);
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
+		 * This object should take up the entire address space, as per
+		 * pad_to_size. The kernel should have no choice but to GTT
+		 * evict handle1 during the execbuf (from the chosen vm that
+		 * is), which is currently still busy spinning.
+		 *
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
+		upload(fd, handle2, 0, ctx_arr[child]->id);
+		gem_close(fd, handle2);
+	}
+
+	igt_waitchildren();
+
+	for (i = 0; i < nproc; i++)
+		intel_ctx_destroy(fd, ctx_arr[i]);
+
+	igt_spin_free(fd, spinner);
+	gem_close(fd, handle1);
+}
+
 igt_main
 {
 	const struct test {
@@ -462,6 +565,10 @@ igt_main
 	igt_subtest("reclaim")
 		reclaim(I915_EXEC_DEFAULT, 2);
 
+	igt_describe("Verify GTT eviction can't randomly fail due to object lock contention\n");
+	igt_subtest("shrink-vs-evict")
+		shrink_vs_evict();
+
 	for(const struct test *t = tests; t->name; t++) {
 		for(const struct mode *m = modes; m->suffix; m++) {
 			igt_subtest_f("%s%s", t->name, m->suffix) {
-- 
2.38.1

