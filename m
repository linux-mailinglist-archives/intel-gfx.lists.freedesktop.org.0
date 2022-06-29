Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D9BB5560A0F
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jun 2022 21:11:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D3FD10ED73;
	Wed, 29 Jun 2022 19:11:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA0A310ED7B;
 Wed, 29 Jun 2022 19:11:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656529905; x=1688065905;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0JKK+CNtp+4TCJ/r8eicGjsRTqrPSmhohxLQiuQxA0Y=;
 b=Cmlbd4zkVrJexJcoAwRSgZIeoyCMW5oNU5eYSgmRfVtCG0c0csIG/yC6
 UqxkrdpB2ZrQqQBCZyFiN8EZ3wWWnIacVsQKEM9XWINfsA+gVRm7hEsDr
 aiPXnDKyLTkZbW7HAiPun+QCBbzige4W7NnlQMjH9rWdOZSUZRtKq07kD
 jp22avmkmI/3v53wIIA8VwLjRCUEiWSJ5sqJholnODiVB4Gw3fe9FViTJ
 7SLh59QFLac++hf4rdGJ/dnvAEDJ6wEmx/g/xDoAAB2Cv++qIDuxDfv6D
 RIfnxDgRomBv/fhgzMD1h2SrRzPlbGa3BUUFWyfoEokv5cvVg1y01EtJW g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="368439223"
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="368439223"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 12:07:19 -0700
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="733297162"
Received: from nwalsh-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.202.136])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 12:07:18 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 29 Jun 2022 20:06:57 +0100
Message-Id: <20220629190658.395463-8-matthew.auld@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220629190658.395463-1-matthew.auld@intel.com>
References: <20220629190658.395463-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 8/9] tests/i915/capture: handle uapi
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We should mark the objects that need to be captured with
NEEDS_CPU_ACCESS to ensure we can capture them if they are allocated in
lmem. We also need to consider that capture only properly works on
non-recoverable context, for discrete platforms. We can now also expect
CPU invisible objects to be skipped, for now at least.

v2: try to make it backwards compat

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
---
 tests/i915/gem_exec_capture.c | 176 ++++++++++++++++++++++++++++++++--
 1 file changed, 169 insertions(+), 7 deletions(-)

diff --git a/tests/i915/gem_exec_capture.c b/tests/i915/gem_exec_capture.c
index 89534146..c2639082 100644
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
@@ -574,6 +578,41 @@ __captureN(int fd, int dir, uint64_t ahnd, const intel_ctx_t *ctx,
 	return offsets;
 }
 
+/*
+ * FIXME: remove once the kernel changes have landed and everything has settled.
+ * The change here is non-backwards compatible, and we don't want to upset CI.
+*/
+#define probed_cpu_visible_size rsvd1[0]
+static bool kernel_supports_probed_size(int fd)
+{
+	struct drm_i915_query_memory_regions *regions;
+	int i, ret = false;
+
+	regions = gem_get_query_memory_regions(fd);
+	igt_assert(regions);
+	igt_assert(regions->num_regions);
+
+	for (i = 0; i < regions->num_regions; i++) {
+		struct drm_i915_memory_region_info info = regions->regions[i];
+
+		if (info.probed_cpu_visible_size) {
+			ret = true;
+			break;
+		}
+	}
+
+	free(regions);
+	return ret;
+}
+
+static bool needs_recoverable_ctx(int fd)
+{
+	if (!kernel_supports_probed_size(fd))
+		return false;
+
+	return gem_has_lmem(fd) || intel_display_ver(intel_get_drm_devid(fd)) > 12;
+}
+
 #define find_first_available_engine(fd, ctx, e, saved) \
 	do { \
 		ctx = intel_ctx_create_all_physical(fd); \
@@ -595,6 +634,15 @@ static void many(int fd, int dir, uint64_t size, unsigned int flags)
 	struct gem_engine_properties saved_engine;
 
 	find_first_available_engine(fd, ctx, e, saved_engine);
+	if (needs_recoverable_ctx(fd)) {
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
@@ -607,7 +655,8 @@ static void many(int fd, int dir, uint64_t size, unsigned int flags)
 	igt_require_memory(count, size, CHECK_RAM);
 	ahnd = get_reloc_ahnd(fd, ctx->id);
 
-	offsets = __captureN(fd, dir, ahnd, ctx, e, size, count, flags, NULL);
+	offsets = __captureN(fd, dir, ahnd, ctx, e, size, count, flags, NULL,
+			     REGION_SMEM, true);
 
 	blobs = check_error_state(dir, offsets, count, size, !!(flags & INCREMENTAL));
 	igt_info("Captured %lu %"PRId64"-blobs out of a total of %lu\n",
@@ -677,7 +726,8 @@ static void prioinv(int fd, int dir, const intel_ctx_t *ctx,
 		/* Reopen the allocator in the new process. */
 		ahnd = get_reloc_ahnd(fd, ctx2->id);
 
-		free(__captureN(fd, dir, ahnd, ctx2, e, size, count, ASYNC, &fence_out));
+		free(__captureN(fd, dir, ahnd, ctx2, e, size, count, ASYNC,
+				&fence_out, REGION_SMEM, true));
 		put_ahnd(ahnd);
 
 		write(link[1], &fd, sizeof(fd)); /* wake the parent up */
@@ -720,6 +770,15 @@ static void userptr(int fd, int dir)
 	struct gem_engine_properties saved_engine;
 
 	find_first_available_engine(fd, ctx, e, saved_engine);
+	if (needs_recoverable_ctx(fd)) {
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
@@ -735,6 +794,84 @@ static void userptr(int fd, int dir)
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
@@ -781,6 +918,15 @@ igt_main
 		gem_require_mmap_device_coherent(fd);
 		igt_require(has_capture(fd));
 		ctx = intel_ctx_create_all_physical(fd);
+		if (needs_recoverable_ctx(fd)) {
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
@@ -803,6 +949,22 @@ igt_main
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
+		igt_require(needs_recoverable_ctx(fd));
+		capture_recoverable_discrete(fd);
+	}
+
 	igt_subtest_f("many-4K-zero") {
 		igt_require(gem_can_store_dword(fd, 0));
 		many(fd, dir, 1<<12, 0);
-- 
2.36.1

