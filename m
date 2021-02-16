Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B819931CBF8
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Feb 2021 15:32:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 667A16E1B1;
	Tue, 16 Feb 2021 14:32:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 627EA89D9A;
 Tue, 16 Feb 2021 14:32:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from haswell.alporthouse.com (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23881917-1500050 
 for multiple; Tue, 16 Feb 2021 14:32:22 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 16 Feb 2021 14:32:20 +0000
Message-Id: <20210216143220.98382-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_reloc: Verify relocations
 with pinned scanout framebuffers
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
Cc: igt-dev@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In light of the VT-d workarounds, we may introduce padding around the
scanout vma. This should not affect relocations referencing the scanout
on !full-ppgtt where we leak the GGTT address of scanout to users.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Auld <matthew.auld@intel.com>
---
 tests/i915/gem_exec_reloc.c | 102 ++++++++++++++++++++++++++++++++++++
 1 file changed, 102 insertions(+)

diff --git a/tests/i915/gem_exec_reloc.c b/tests/i915/gem_exec_reloc.c
index cc9b8cd6d..98960bb84 100644
--- a/tests/i915/gem_exec_reloc.c
+++ b/tests/i915/gem_exec_reloc.c
@@ -26,7 +26,9 @@
 
 #include "i915/gem.h"
 #include "igt.h"
+#include "igt_device.h"
 #include "igt_dummyload.h"
+#include "igt_kms.h"
 #include "sw_sync.h"
 
 IGT_TEST_DESCRIPTION("Basic sanity check of execbuf-ioctl relocations.");
@@ -1286,6 +1288,83 @@ static void concurrent(int i915, int num_common)
 	igt_assert_eq(result, 0);
 }
 
+static uint32_t
+pin_scanout(igt_display_t *dpy, igt_output_t *output, struct igt_fb *fb)
+{
+	drmModeModeInfoPtr mode;
+	igt_plane_t *primary;
+
+	mode = igt_output_get_mode(output);
+
+	igt_create_pattern_fb(dpy->drm_fd, mode->hdisplay, mode->vdisplay,
+			      DRM_FORMAT_XRGB8888,
+			      LOCAL_I915_FORMAT_MOD_X_TILED, fb);
+
+	primary = igt_output_get_plane_type(output, DRM_PLANE_TYPE_PRIMARY);
+	igt_plane_set_fb(primary, fb);
+
+	igt_display_commit2(dpy, COMMIT_LEGACY);
+
+	return fb->gem_handle;
+}
+
+static void scanout(int i915,
+		    igt_display_t *dpy,
+		    const struct intel_execution_engine2 *e)
+{
+	struct drm_i915_gem_relocation_entry reloc;
+	struct drm_i915_gem_exec_object2 obj[2] = {
+		[1] = { .handle = batch_create(i915) },
+	};
+	struct drm_i915_gem_execbuffer2 execbuf = {
+		.buffers_ptr = to_user_pointer(obj),
+		.buffer_count = 2,
+	};
+	igt_output_t *output;
+	struct igt_fb fb;
+	uint64_t *map;
+
+	igt_display_reset(dpy);
+
+	output = igt_get_single_output_for_pipe(dpy, PIPE_A);
+	igt_require(output);
+	igt_output_set_pipe(output, PIPE_A);
+
+	/*
+	 * Find where the scanout is in our GTT; on !full-ppgtt this will be
+	 * the actual GGTT address of the scanout.
+	 */
+	obj[0].handle = pin_scanout(dpy, output, &fb);
+	gem_execbuf(i915, &execbuf);
+	igt_info("Scanout GTT address: %#llx\n", obj[0].offset);
+
+	/* Relocations should match the scanout address */
+	reloc.target_handle = obj[0].handle;
+	reloc.delta = 0;
+	reloc.presumed_offset = -1;
+	reloc.offset = 4000;
+	obj[1].relocation_count = 1;
+	obj[1].relocs_ptr = to_user_pointer(&reloc);
+	gem_execbuf(i915, &execbuf);
+	igt_info("Reloc address: %#llx\n", reloc.presumed_offset);
+	igt_assert_eq_u64(reloc.presumed_offset, obj[0].offset);
+
+	gem_sync(i915, obj[1].handle);
+	map = gem_mmap__device_coherent(i915, obj[1].handle,
+					0, 4096, PROT_WRITE);
+	igt_assert_eq_u64(map[500], obj[0].offset);
+	munmap(map, 4096);
+
+	/* And finally softpinning with the scanout address should work */
+	obj[0].flags |= EXEC_OBJECT_PINNED;
+	obj[1].relocation_count = 0;
+	gem_execbuf(i915, &execbuf);
+	igt_assert_eq_u64(obj[0].offset, reloc.presumed_offset);
+
+	gem_close(i915, obj[1].handle);
+	igt_remove_fb(dpy->drm_fd, &fb);
+}
+
 #define I915_GEM_GPU_DOMAINS \
 	(I915_GEM_DOMAIN_RENDER | \
 	 I915_GEM_DOMAIN_SAMPLER | \
@@ -1511,6 +1590,29 @@ igt_main
 	igt_subtest("invalid-domains")
 		invalid_domains(fd);
 
+	igt_subtest_group {
+		igt_display_t display = {
+			.drm_fd = fd,
+			.n_pipes = IGT_MAX_PIPES
+		};
+
+		igt_fixture {
+			igt_device_set_master(fd);
+			kmstest_set_vt_graphics_mode();
+			igt_display_require(&display, fd);
+		}
+
+		igt_subtest_with_dynamic("basic-scanout") {
+			__for_each_physical_engine(fd, e) {
+				igt_dynamic_f("%s", e->name)
+					scanout(fd, &display, e);
+			}
+		}
+
+		igt_fixture
+			igt_display_fini(&display);
+	}
+
 	igt_fixture
 		close(fd);
 }
-- 
2.30.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
