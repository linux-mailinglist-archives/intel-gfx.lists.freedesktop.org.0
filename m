Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A511C552FC2
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jun 2022 12:30:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28D2410F97A;
	Tue, 21 Jun 2022 10:30:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14D7610F967;
 Tue, 21 Jun 2022 10:30:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655807441; x=1687343441;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9KoHFkepKyVXneyd6lqsJ4Gm8931zt4tbEXLlMsiJyk=;
 b=S7tDj9Dmx0APc3k2q5fWlib/s3Ad5/NWMk5MgW+TZuCsM4XTJaynt9pX
 rNglVXpfpdSLxORCPmvkn9mmyMs9FTiZt18AZO2AAyc5otqkTZt0e2P4i
 Zs+0PQaWC7TySK2AMzohRNSx2RBm3XMtdqrmSaZ6cPix8BR4F8XzBihUU
 lb+WfFOfZailYVZ6VHDSMJiuYq8tfpDT4kjonx5H8ACxEsxrjqRRMcBXn
 /Dy+PtQ1qMNL1eBNJ9OWPL2cgnTlfe1MDdT7wJhZk/0AeJpluU6uaKvtq
 owTJ6ugwkjoZtC3xZGc4WppFad14wgxVbr6u9y8fpc5Nwn1hSymM0NgVm g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="280816969"
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="280816969"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2022 03:30:24 -0700
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="591596285"
Received: from jasonmor-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.200.10])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2022 03:30:22 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue, 21 Jun 2022 11:30:00 +0100
Message-Id: <20220621103001.184373-9-matthew.auld@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220621103001.184373-1-matthew.auld@intel.com>
References: <20220621103001.184373-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v2 8/9] tests/i915/capture: handle uapi
 changes
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
 intel-gfx@lists.freedesktop.org, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We should mark the objects that need to be captured with
NEEDS_CPU_ACCESS to ensure we can capture them if they are allocated in
lmem. We also need to consider that capture only properly works on
non-recoverable context, for discrete platforms. We can now also expect
CPU invisible objects to be skipped, for now at least.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
---
 tests/i915/gem_exec_capture.c | 145 ++++++++++++++++++++++++++++++++--
 1 file changed, 138 insertions(+), 7 deletions(-)

diff --git a/tests/i915/gem_exec_capture.c b/tests/i915/gem_exec_capture.c
index 89534146..84c24226 100644
--- a/tests/i915/gem_exec_capture.c
+++ b/tests/i915/gem_exec_capture.c
@@ -268,13 +268,13 @@ static void __capture1(int fd, int dir, uint64_t ahnd, const intel_ctx_t *ctx,
 	saved_engine = configure_hangs(fd, e, ctx->id);
 
 	memset(obj, 0, sizeof(obj));
-	obj[SCRATCH].handle = gem_create_in_memory_regions(fd, 4096, region);
+	obj[SCRATCH].handle = gem_create_with_cpu_access_in_memory_regions(fd, 4096, region);
 	obj[SCRATCH].flags = EXEC_OBJECT_WRITE;
 	obj[CAPTURE].handle = target;
 	obj[CAPTURE].flags = EXEC_OBJECT_CAPTURE;
 	obj[NOCAPTURE].handle = gem_create(fd, 4096);
 
-	obj[BATCH].handle = gem_create_in_memory_regions(fd, 4096, region);
+	obj[BATCH].handle = gem_create_with_cpu_access_in_memory_regions(fd, 4096, region);
 	obj[BATCH].relocs_ptr = (uintptr_t)reloc;
 	obj[BATCH].relocation_count = !ahnd ? ARRAY_SIZE(reloc) : 0;
 
@@ -389,7 +389,7 @@ static void capture(int fd, int dir, const intel_ctx_t *ctx,
 	uint32_t handle;
 	uint64_t ahnd, obj_size = 4096;
 
-	igt_assert_eq(__gem_create_in_memory_regions(fd, &handle, &obj_size, region), 0);
+	igt_assert_eq(__gem_create_with_cpu_access_in_memory_regions(fd, &handle, &obj_size, region), 0);
 	ahnd = get_reloc_ahnd(fd, ctx->id);
 
 	__capture1(fd, dir, ahnd, ctx, e, handle, obj_size, region);
@@ -415,7 +415,8 @@ static struct offset *
 __captureN(int fd, int dir, uint64_t ahnd, const intel_ctx_t *ctx,
 	   const struct intel_execution_engine2 *e,
 	   unsigned int size, int count,
-	   unsigned int flags, int *_fence_out)
+	   unsigned int flags, int *_fence_out, uint32_t region,
+	   bool force_cpu_access)
 #define INCREMENTAL 0x1
 #define ASYNC 0x2
 {
@@ -441,7 +442,10 @@ __captureN(int fd, int dir, uint64_t ahnd, const intel_ctx_t *ctx,
 	obj[0].flags = EXEC_OBJECT_WRITE | (ahnd ? EXEC_OBJECT_PINNED : 0);
 
 	for (i = 0; i < count; i++) {
-		obj[i + 1].handle = gem_create(fd, size);
+		if (force_cpu_access)
+			obj[i + 1].handle = gem_create_with_cpu_access_in_memory_regions(fd, size, region);
+		else
+			obj[i + 1].handle = gem_create_in_memory_regions(fd, size, region);
 		obj[i + 1].offset = get_offset(ahnd, obj[i + 1].handle, size, 0);
 		obj[i + 1].flags =
 			EXEC_OBJECT_CAPTURE | EXEC_OBJECT_SUPPORTS_48B_ADDRESS;
@@ -595,6 +599,16 @@ static void many(int fd, int dir, uint64_t size, unsigned int flags)
 	struct gem_engine_properties saved_engine;
 
 	find_first_available_engine(fd, ctx, e, saved_engine);
+	if (gem_has_lmem(fd) ||
+	    intel_display_ver(intel_get_drm_devid(fd)) > 12) {
+		struct drm_i915_gem_context_param param = {
+			.ctx_id = ctx->id,
+			.param = I915_CONTEXT_PARAM_RECOVERABLE,
+			.value = 0,
+		};
+
+		gem_context_set_param(fd, &param);
+	}
 
 	gtt = gem_aperture_size(fd) / size;
 	ram = (igt_get_avail_ram_mb() << 20) / size;
@@ -607,7 +621,8 @@ static void many(int fd, int dir, uint64_t size, unsigned int flags)
 	igt_require_memory(count, size, CHECK_RAM);
 	ahnd = get_reloc_ahnd(fd, ctx->id);
 
-	offsets = __captureN(fd, dir, ahnd, ctx, e, size, count, flags, NULL);
+	offsets = __captureN(fd, dir, ahnd, ctx, e, size, count, flags, NULL,
+			     REGION_SMEM, true);
 
 	blobs = check_error_state(dir, offsets, count, size, !!(flags & INCREMENTAL));
 	igt_info("Captured %lu %"PRId64"-blobs out of a total of %lu\n",
@@ -677,7 +692,8 @@ static void prioinv(int fd, int dir, const intel_ctx_t *ctx,
 		/* Reopen the allocator in the new process. */
 		ahnd = get_reloc_ahnd(fd, ctx2->id);
 
-		free(__captureN(fd, dir, ahnd, ctx2, e, size, count, ASYNC, &fence_out));
+		free(__captureN(fd, dir, ahnd, ctx2, e, size, count, ASYNC,
+				&fence_out, REGION_SMEM, true));
 		put_ahnd(ahnd);
 
 		write(link[1], &fd, sizeof(fd)); /* wake the parent up */
@@ -720,6 +736,16 @@ static void userptr(int fd, int dir)
 	struct gem_engine_properties saved_engine;
 
 	find_first_available_engine(fd, ctx, e, saved_engine);
+	if (gem_has_lmem(fd) ||
+	    intel_display_ver(intel_get_drm_devid(fd)) > 12) {
+		struct drm_i915_gem_context_param param = {
+			.ctx_id = ctx->id,
+			.param = I915_CONTEXT_PARAM_RECOVERABLE,
+			.value = 0,
+		};
+
+		gem_context_set_param(fd, &param);
+	}
 
 	igt_assert(posix_memalign(&ptr, obj_size, obj_size) == 0);
 	memset(ptr, 0, obj_size);
@@ -735,6 +761,84 @@ static void userptr(int fd, int dir)
 	gem_engine_properties_restore(fd, &saved_engine);
 }
 
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
+static void capture_recoverable_discrete(int fd)
+{
+	struct drm_i915_gem_exec_object2 exec[2] = {};
+	struct drm_i915_gem_execbuffer2 execbuf = {
+		.buffers_ptr = to_user_pointer(&exec),
+		.buffer_count = 2,
+	};
+
+	/*
+	 * I915_CONTEXT_PARAM_RECOVERABLE should be enabled by default. On
+	 * discrete the kernel will only capture objects associated with the
+	 * batch, if the context we is configured as non-recoverable.
+	 */
+
+	exec[0].handle = gem_create(fd, 4096);
+	exec[0].flags = EXEC_OBJECT_CAPTURE;
+	exec[1].handle = batch_create_size(fd, 4096);
+
+	igt_assert_neq(__gem_execbuf(fd, &execbuf), 0);
+}
+
+static void capture_invisible(int fd, int dir, const intel_ctx_t *ctx,
+			      struct gem_memory_region *mr)
+{
+	struct gem_engine_properties saved_engine;
+	struct drm_i915_gem_context_param param = {
+		.param = I915_CONTEXT_PARAM_RECOVERABLE,
+		.value = 0,
+	};
+	const struct intel_execution_engine2 *e;
+	struct offset *offsets;
+	uint64_t ahnd;
+	char *error;
+
+	find_first_available_engine(fd, ctx, e, saved_engine);
+	param.ctx_id = ctx->id,
+	gem_context_set_param(fd, &param);
+
+	ahnd = get_reloc_ahnd(fd, ctx->id);
+
+	igt_assert_eq(mr->ci.memory_class, I915_MEMORY_CLASS_DEVICE);
+
+	offsets = __captureN(fd, dir, ahnd, ctx, e, 1u << 16, 100, 0, NULL,
+			     INTEL_MEMORY_REGION_ID(mr->ci.memory_class,
+						    mr->ci.memory_instance),
+			     false);
+
+	/*
+	 * Make sure the error capture code doesn't crash-and-burn if it
+	 * encounters an lmem object that can't be copied using the CPU. In such
+	 * cases such objects will be skipped, otherwise we should see crashes
+	 * here.  Allocating a number of small objects should be enough to
+	 * ensure that at least one or more end being allocated in the CPU
+	 * invisible portion.
+	 */
+
+	error = igt_sysfs_get(dir, "error");
+	igt_sysfs_set(dir, "error", "Begone!");
+	igt_assert(error);
+	igt_assert(errno != ENOMEM);
+
+	gem_engine_properties_restore(fd, &saved_engine);
+
+	free(offsets);
+	put_ahnd(ahnd);
+}
+
 static bool has_capture(int fd)
 {
 	drm_i915_getparam_t gp;
@@ -781,6 +885,16 @@ igt_main
 		gem_require_mmap_device_coherent(fd);
 		igt_require(has_capture(fd));
 		ctx = intel_ctx_create_all_physical(fd);
+		if (gem_has_lmem(fd) ||
+		    intel_display_ver(intel_get_drm_devid(fd)) > 12) {
+			struct drm_i915_gem_context_param param = {
+				.ctx_id = ctx->id,
+				.param = I915_CONTEXT_PARAM_RECOVERABLE,
+				.value = 0,
+			};
+
+			gem_context_set_param(fd, &param);
+		}
 		igt_allow_hang(fd, ctx->id, HANG_ALLOW_CAPTURE | HANG_WANT_ENGINE_RESET);
 
 		dir = igt_sysfs_open(fd);
@@ -803,6 +917,23 @@ igt_main
 		}
 	}
 
+	igt_describe("Check that the kernel doesn't crash if the pages can't be copied from the CPU during error capture.");
+	igt_subtest_with_dynamic("capture-invisible") {
+		for_each_memory_region(r, fd) {
+			igt_dynamic_f("%s", r->name) {
+				igt_require(r->cpu_size && r->cpu_size < r->size);
+				capture_invisible(fd, dir, ctx, r);
+			}
+		}
+	}
+
+	igt_describe("Verify that the kernel rejects EXEC_OBJECT_CAPTURE with recoverable contexts.");
+	igt_subtest_f("capture-recoverable") {
+		igt_require(gem_has_lmem(fd) ||
+			    intel_display_ver(intel_get_drm_devid(fd)) > 12);
+		capture_recoverable_discrete(fd);
+	}
+
 	igt_subtest_f("many-4K-zero") {
 		igt_require(gem_can_store_dword(fd, 0));
 		many(fd, dir, 1<<12, 0);
-- 
2.36.1

