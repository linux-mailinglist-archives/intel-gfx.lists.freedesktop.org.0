Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 957C37049FD
	for <lists+intel-gfx@lfdr.de>; Tue, 16 May 2023 12:05:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFF6210E33F;
	Tue, 16 May 2023 10:05:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBFC410E20B;
 Tue, 16 May 2023 10:05:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684231531; x=1715767531;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tR3G7Pts09x0WP1Hz1n0NWQbVy4UmwZZkVMDVAsVmXg=;
 b=MEoyFyWqtgY2glvk6JQZALII9SOlKIJzIxxWg0JQwmK6UHj81fKYhRbi
 mmAY22gUlSHH4PMZ0cLjaAvYCgBIf2F189MvTxwl6I0mRooaDT1pvckve
 OnbuGirWKBUFoECD5KCnDoJbE1lheD63XuwL3Rcg5s49oRa1+0Rwq3P8r
 JF67n3nQAg1uSPKChvrhB/2N2J/5wfdpEu0A7m/wrvnk3llY3XYUDeLIe
 9ulOe3zvmu5qfLJf1gsiK6yC9cJLy9dcYJBZ9DrhiQOGfzGIBXAIdiDCP
 +bXQz1trvbsTC1vOcWeEzR1xGXhBpa2zjeos9XWKacv8zKS8G4pJAj3Me A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="351469777"
X-IronPort-AV: E=Sophos;i="5.99,278,1677571200"; d="scan'208";a="351469777"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 03:05:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="875569326"
X-IronPort-AV: E=Sophos;i="5.99,278,1677571200"; d="scan'208";a="875569326"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.29.27])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 03:05:26 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue, 16 May 2023 12:05:11 +0200
Message-Id: <20230516100511.33150-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v2] tests/i915: Exercise coherency of
 mmapped frame buffers
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
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Visible glitches have been observed when running graphics applications on
Linux under Xen hypervisor.  Those observations have been confirmed with
failures from kms_pwrite_crc IGT test that verifies data coherency of DRM
frame buffer objects using hardware CRC checksums calculated by display
controllers, exposed to userspace via debugfs.  Since not all applications
exhibit the issue, we need to exercise more methods than just pwrite in
order to identify all affected processing paths.

Create a new test focused on exercising coherency of future scanout
buffers populated over mmap.  Cover all available mmap methods and caching
modes expected to be device coherent.

v2: Drop unused functions -- left-overs from unsuccessful negative subtest
    attempts requiring consistent crc mismatches in non-coherent modes,
  - since all subtests now call igt_assert_crc_equal(), move it from
    subtest bodies to an updated and renamed helper,
  - drop "derived from ..." info from copyrights comment (Kamil),
  - fix order of includes (Kamil),
  - fix whitespace (Kamil),
  - Cc: Bhanuprakash (Kamil).

Link: https://gitlab.freedesktop.org/drm/intel/-/issues/7648
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
---
 tests/i915/kms_fb_coherency.c | 305 ++++++++++++++++++++++++++++++++++
 tests/meson.build             |   1 +
 2 files changed, 306 insertions(+)
 create mode 100644 tests/i915/kms_fb_coherency.c

diff --git a/tests/i915/kms_fb_coherency.c b/tests/i915/kms_fb_coherency.c
new file mode 100644
index 0000000000..b3f055c2b1
--- /dev/null
+++ b/tests/i915/kms_fb_coherency.c
@@ -0,0 +1,305 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+/**
+ * TEST: kms_fb_coherency
+ * Description: Exercise coherency of future scanout buffer objects
+ */
+
+#include <errno.h>
+#include <limits.h>
+#include <stdbool.h>
+#include <stdio.h>
+#include <string.h>
+
+#include "igt.h"
+
+typedef struct {
+	int drm_fd;
+	igt_display_t display;
+	struct igt_fb fb[2];
+	igt_output_t *output;
+	igt_plane_t *primary;
+	enum pipe pipe;
+	igt_crc_t ref_crc;
+	igt_pipe_crc_t *pipe_crc;
+	uint32_t devid;
+} data_t;
+
+static void prepare_crtc(data_t *data)
+{
+	igt_display_t *display = &data->display;
+	igt_output_t *output = data->output;
+	drmModeModeInfo *mode;
+
+	igt_display_reset(display);
+	/* select the pipe we want to use */
+	igt_output_set_pipe(output, data->pipe);
+
+	mode = igt_output_get_mode(output);
+
+	/* create a white reference fb and flip to it */
+	igt_create_color_fb(data->drm_fd, mode->hdisplay, mode->vdisplay,
+			    DRM_FORMAT_XRGB8888, DRM_FORMAT_MOD_LINEAR,
+			    1.0, 1.0, 1.0, &data->fb[0]);
+
+	data->primary = igt_output_get_plane_type(output, DRM_PLANE_TYPE_PRIMARY);
+
+	igt_plane_set_fb(data->primary, &data->fb[0]);
+	igt_display_commit(display);
+
+	if (data->pipe_crc)
+		igt_pipe_crc_free(data->pipe_crc);
+
+	data->pipe_crc = igt_pipe_crc_new(data->drm_fd, data->pipe,
+					  IGT_PIPE_CRC_SOURCE_AUTO);
+
+	/* get reference crc for the white fb */
+	igt_pipe_crc_collect_crc(data->pipe_crc, &data->ref_crc);
+}
+
+static struct igt_fb *prepare_fb(data_t *data)
+{
+	igt_output_t *output = data->output;
+	struct igt_fb *fb = &data->fb[1];
+	drmModeModeInfo *mode;
+
+	prepare_crtc(data);
+
+	mode = igt_output_get_mode(output);
+
+	/* create a non-white fb we can overwrite later */
+	igt_create_pattern_fb(data->drm_fd, mode->hdisplay, mode->vdisplay,
+			      DRM_FORMAT_XRGB8888, DRM_FORMAT_MOD_LINEAR, fb);
+
+	/* flip to it to make it UC/WC and fully flushed */
+	drmModeSetPlane(data->drm_fd,
+			data->primary->drm_plane->plane_id,
+			output->config.crtc->crtc_id,
+			fb->fb_id, 0,
+			0, 0, fb->width, fb->height,
+			0, 0, fb->width << 16, fb->height << 16);
+
+	/* flip back the original white buffer */
+	drmModeSetPlane(data->drm_fd,
+			data->primary->drm_plane->plane_id,
+			output->config.crtc->crtc_id,
+			data->fb[0].fb_id, 0,
+			0, 0, fb->width, fb->height,
+			0, 0, fb->width << 16, fb->height << 16);
+
+	if (!gem_has_lmem(data->drm_fd)) {
+		uint32_t caching;
+
+		/* make sure caching mode has become UC/WT */
+		caching = gem_get_caching(data->drm_fd, fb->gem_handle);
+		igt_assert(caching == I915_CACHING_NONE ||
+			   caching == I915_CACHING_DISPLAY);
+	}
+
+	return fb;
+}
+
+static void check_buf_crc(data_t *data, void *buf, igt_fb_t *fb)
+{
+	igt_crc_t crc;
+
+	/* use memset to make the mmapped fb all white */
+	memset(buf, 0xff, fb->size);
+	munmap(buf, fb->size);
+
+	/* and flip to it */
+	drmModeSetPlane(data->drm_fd,
+			data->primary->drm_plane->plane_id,
+			data->output->config.crtc->crtc_id,
+			fb->fb_id, 0,
+			0, 0, fb->width, fb->height,
+			0, 0, fb->width << 16, fb->height << 16);
+
+	/* check that the crc is as expected, which requires that caches got flushed */
+	igt_pipe_crc_collect_crc(data->pipe_crc, &crc);
+	igt_assert_crc_equal(&crc, &data->ref_crc);
+}
+
+static void cleanup_crtc(data_t *data)
+{
+	igt_display_t *display = &data->display;
+	igt_output_t *output = data->output;
+
+	igt_pipe_crc_free(data->pipe_crc);
+	data->pipe_crc = NULL;
+
+	igt_plane_set_fb(data->primary, NULL);
+
+	igt_output_set_pipe(output, PIPE_ANY);
+	igt_display_commit(display);
+
+	igt_remove_fb(data->drm_fd, &data->fb[0]);
+	igt_remove_fb(data->drm_fd, &data->fb[1]);
+}
+
+static void test_mmap_gtt(data_t *data)
+{
+	igt_fb_t *fb;
+	void *buf;
+
+	gem_require_mappable_ggtt(data->drm_fd);
+
+	fb = prepare_fb(data);
+
+	buf = gem_mmap__gtt(data->drm_fd, fb->gem_handle, fb->size, PROT_WRITE);
+
+	check_buf_crc(data, buf, fb);
+}
+
+static void test_mmap_offset_wc(data_t *data)
+{
+	igt_fb_t *fb;
+	void *buf;
+
+	igt_require(gem_mmap_offset__has_wc(data->drm_fd));
+
+	fb = prepare_fb(data);
+
+	buf = gem_mmap_offset__wc(data->drm_fd, fb->gem_handle, 0, fb->size, PROT_WRITE);
+
+	check_buf_crc(data, buf, fb);
+}
+
+static void test_mmap_offset_uc(data_t *data)
+{
+	igt_fb_t *fb;
+	void *buf;
+
+	igt_require(gem_has_mmap_offset(data->drm_fd));
+	igt_skip_on(gem_has_lmem(data->drm_fd));
+
+	fb = prepare_fb(data);
+
+	/* mmap the fb */
+	buf = __gem_mmap_offset(data->drm_fd, fb->gem_handle, 0, fb->size, PROT_WRITE,
+				I915_MMAP_OFFSET_UC);
+	igt_assert(buf);
+
+	check_buf_crc(data, buf, fb);
+}
+
+static void test_mmap_offset_fixed(data_t *data)
+{
+	igt_fb_t *fb;
+	void *buf;
+
+	igt_require(gem_has_lmem(data->drm_fd));
+
+	fb = prepare_fb(data);
+
+	/* mmap the fb */
+	buf = gem_mmap_offset__fixed(data->drm_fd, fb->gem_handle, 0, fb->size, PROT_WRITE);
+
+	check_buf_crc(data, buf, fb);
+}
+
+static void test_legacy_mmap_wc(data_t *data)
+{
+	igt_fb_t *fb;
+	void *buf;
+
+	igt_require(gem_has_legacy_mmap(data->drm_fd));
+	igt_require(gem_mmap__has_wc(data->drm_fd));
+
+	fb = prepare_fb(data);
+
+	/* mmap the fb */
+	buf = gem_mmap__wc(data->drm_fd, fb->gem_handle, 0, fb->size, PROT_WRITE);
+
+	check_buf_crc(data, buf, fb);
+}
+
+static void select_valid_pipe_output_combo(data_t *data)
+{
+	igt_display_t *display = &data->display;
+
+	for_each_pipe_with_valid_output(display, data->pipe, data->output) {
+		igt_display_reset(display);
+
+		igt_output_set_pipe(data->output, data->pipe);
+		if (!i915_pipe_output_combo_valid(display))
+			continue;
+
+		/* one is enough */
+		return;
+	}
+
+	igt_skip("no valid crtc/connector combinations found\n");
+}
+
+igt_main
+{
+	data_t data;
+
+	igt_fixture {
+		data.drm_fd = drm_open_driver_master(DRIVER_INTEL);
+
+		data.devid = intel_get_drm_devid(data.drm_fd);
+
+		kmstest_set_vt_graphics_mode();
+
+		igt_require_pipe_crc(data.drm_fd);
+
+		igt_display_require(&data.display, data.drm_fd);
+
+		select_valid_pipe_output_combo(&data);
+	}
+
+	/**
+	 * SUBTEST: memset-crc
+	 * Description: Use display controller CRC hardware to validate (non)coherency
+	 *		of memset operations on future scanout buffer objects
+	 *		mmapped with different mmap methods and different caching modes.
+	 */
+	igt_subtest_with_dynamic("memset-crc") {
+		if (gem_has_mappable_ggtt(data.drm_fd)) {
+			igt_dynamic("mmap-gtt")
+				test_mmap_gtt(&data);
+
+			cleanup_crtc(&data);
+		}
+
+		if (gem_mmap_offset__has_wc(data.drm_fd)) {
+			igt_dynamic("mmap-offset-wc")
+				test_mmap_offset_wc(&data);
+
+			cleanup_crtc(&data);
+		}
+
+		if (gem_has_mmap_offset(data.drm_fd)) {
+			if (gem_has_lmem(data.drm_fd)) {
+				igt_dynamic("mmap-offset-fixed")
+					test_mmap_offset_fixed(&data);
+
+				cleanup_crtc(&data);
+
+			} else {
+				igt_dynamic("mmap-offset-uc")
+					test_mmap_offset_uc(&data);
+
+				cleanup_crtc(&data);
+			}
+		}
+
+		if (gem_has_legacy_mmap(data.drm_fd) &&
+		    gem_mmap__has_wc(data.drm_fd)) {
+			igt_dynamic("mmap-legacy-wc")
+				test_legacy_mmap_wc(&data);
+
+			cleanup_crtc(&data);
+		}
+	}
+
+	igt_fixture {
+		igt_display_fini(&data.display);
+		close(data.drm_fd);
+	}
+}
diff --git a/tests/meson.build b/tests/meson.build
index 38f080f7c2..f71be1dbe5 100644
--- a/tests/meson.build
+++ b/tests/meson.build
@@ -224,6 +224,7 @@ i915_progs = [
 	'kms_ccs',
 	'kms_cdclk',
 	'kms_draw_crc',
+	'kms_fb_coherency',
 	'kms_fbcon_fbt',
 	'kms_fence_pin_leak',
 	'kms_flip_scaled_crc',
-- 
2.40.1

