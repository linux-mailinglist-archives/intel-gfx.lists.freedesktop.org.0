Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F0DD4BDA26
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Feb 2022 15:16:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49ECA10E343;
	Mon, 21 Feb 2022 14:16:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEFF610E344;
 Mon, 21 Feb 2022 14:16:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645453004; x=1676989004;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gmKm1K1NNqB2xjQ8t193Wm7FiYCzzg4UVyl8de03ql0=;
 b=B505Tywt3FQnFazDR5RgHFgImHI3QWLoaNw9r7wlbx5ioTmSDOPL+bst
 cSvTv8ORdpnRuWfJCVGVeed6la4gdXRt0sJWZUw57vfYKoLuPxLFJlr93
 ZIg+UjMLlFrHQIN4ITBl++NaAZu2F9qXcOiPQ+fnTDdNkaltCDM0RJaA+
 jpsRU/lB9P3Zl82hrUIQHFqmXy7b/56R4CGeFBtlYClgSWriVGn0yapkg
 1vSCDFpsMXY4bMiWWfdic5wk2z2MIxDcW77U38gHpKy4yTSvP4qimQhI/
 0tKW9Y7anexitkAA3Tkue5aEzb0dO1u7qu72Z2//WRjAEo6PSoqS2UnpG Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10264"; a="251467160"
X-IronPort-AV: E=Sophos;i="5.88,385,1635231600"; d="scan'208";a="251467160"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 06:16:42 -0800
X-IronPort-AV: E=Sophos;i="5.88,385,1635231600"; d="scan'208";a="606400543"
Received: from joeyegax-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.23.97])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 06:16:41 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 21 Feb 2022 14:16:19 +0000
Message-Id: <20220221141620.2490914-6-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220221141620.2490914-1-matthew.auld@intel.com>
References: <20220221141620.2490914-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v2 5/6] i915/tests/capture: add a negative
 test for NEEDS_CPU_ACCESS
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Sanity check that the kernel does indeed reject LMEM buffers marked with
EXEC_OBJECT_CAPTURE, that are not also marked with NEEDS_CPU_ACCESS.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 tests/i915/gem_exec_capture.c | 69 +++++++++++++++++++++++++++++++++++
 1 file changed, 69 insertions(+)

diff --git a/tests/i915/gem_exec_capture.c b/tests/i915/gem_exec_capture.c
index 24ba6036..09187f62 100644
--- a/tests/i915/gem_exec_capture.c
+++ b/tests/i915/gem_exec_capture.c
@@ -735,6 +735,71 @@ static void userptr(int fd, int dir)
 	gem_engine_properties_restore(fd, &saved_engine);
 }
 
+static bool supports_needs_cpu_access(int fd)
+{
+	struct drm_i915_gem_memory_class_instance regions[] = {
+		{ I915_MEMORY_CLASS_DEVICE, },
+		{ I915_MEMORY_CLASS_SYSTEM, },
+	};
+	struct drm_i915_gem_create_ext_memory_regions setparam_region = {
+		.base = { .name = I915_GEM_CREATE_EXT_MEMORY_REGIONS },
+		.regions = to_user_pointer(&regions),
+		.num_regions = ARRAY_SIZE(regions),
+	};
+	uint64_t size = 4096;
+	uint32_t handle;
+	int ret;
+
+	ret = __gem_create_ext(fd, &size,
+			       I915_GEM_CREATE_EXT_FLAG_NEEDS_CPU_ACCESS,
+			       &handle, &setparam_region.base);
+	if (!ret) {
+		gem_close(fd, handle);
+		igt_assert(gem_has_lmem(fd)); /* Should be dgpu only */
+	}
+
+	return ret == 0;
+}
+
+static void capture_no_cpu_access(int fd)
+{
+	struct drm_i915_gem_exec_object2 exec = {
+		.flags = EXEC_OBJECT_CAPTURE,
+	};
+	struct drm_i915_gem_execbuffer2 execbuf = {
+		.buffers_ptr = to_user_pointer(&exec),
+		.buffer_count = 1,
+	};
+	uint64_t size = 4096;
+	uint32_t handle;
+	int ret;
+
+	igt_require(gem_has_lmem(fd));
+	igt_require(supports_needs_cpu_access(fd));
+
+	/*
+	 * Sanity check that execbuf rejects EXEC_OBJECT_CAPTURE marked BO, that
+	 * is not also tagged with I915_GEM_CREATE_EXT_FLAG_NEEDS_CPU_ACCESS, if
+	 * it can be placed in LMEM. This is only relevant for Dg2+.
+	 */
+
+	igt_require(__gem_create_in_memory_regions(fd, &handle, &size,
+						   REGION_LMEM(0)) == 0);
+
+	exec.handle = handle;
+	ret = __gem_execbuf(fd, &execbuf);
+	if (IS_DG1(fd)) /* Should be no impact on existing ABI */
+		igt_assert(ret == 0);
+	else
+		igt_assert(ret == -EINVAL);
+
+	/* SMEM only buffers should work as normal */
+	igt_assert(__gem_create_in_memory_regions(fd, &handle, &size,
+						  REGION_SMEM) == 0);
+	exec.handle = handle;
+	igt_assert(__gem_execbuf(fd, &execbuf) == 0);
+}
+
 static bool has_capture(int fd)
 {
 	drm_i915_getparam_t gp;
@@ -839,6 +904,10 @@ igt_main
 		igt_dynamic_f("%s", (e)->name)
 			prioinv(fd, dir, ctx, e);
 
+	igt_describe("Verify the ABI contract when using EXEC_OBJECT_CAPTURE without I915_GEM_CREATE_EXT_FLAG_NEEDS_CPU_ACCESS");
+	igt_subtest_f("capture-non-cpu-access")
+		capture_no_cpu_access(fd);
+
 	igt_fixture {
 		close(dir);
 		igt_disallow_hang(fd, hang);
-- 
2.34.1

