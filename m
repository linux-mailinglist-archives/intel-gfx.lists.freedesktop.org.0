Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90A71256F92
	for <lists+intel-gfx@lfdr.de>; Sun, 30 Aug 2020 19:45:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E914F6E095;
	Sun, 30 Aug 2020 17:45:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x72d.google.com (mail-qk1-x72d.google.com
 [IPv6:2607:f8b0:4864:20::72d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB7226E095;
 Sun, 30 Aug 2020 17:45:17 +0000 (UTC)
Received: by mail-qk1-x72d.google.com with SMTP id o64so4215575qkb.10;
 Sun, 30 Aug 2020 10:45:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7qwbVyE/szLKsTRrl4rkeRmJ4QwVV9ZxcbDeaYEHz64=;
 b=gKarT9nd35c/QzoUOcUHYnBdKp7asjnkPjmyz1kzodBetPV5RMxqWHClw/s0kjmyUT
 Ap1KQjXAaus3OmnvzYtNqERLvDT6ycF8CV6xQa8zNvggM7FSpetGZBveOCOXyqLvakjl
 +9r4f22l48zb8astS5vhxRwF5DYtCGjmZrfcXHSljx05RWlM3vsMN+C841Br5XPSA+6W
 A+8nPyiBQIxjb6NoAkfu8ie8S7Xd4O6MmUWgrUK4egOCN0FXZ4DPDn3hW1nvh5pyIF0W
 n1gGVvztA5bczrQcC9afrOnAzCngAIXHXnFyoevO4xRENxbACJ6nXrmH0qa5eptfbW1I
 MEZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7qwbVyE/szLKsTRrl4rkeRmJ4QwVV9ZxcbDeaYEHz64=;
 b=s9Q18BM+AmGSLkjwAk8PSnPv63B+yDq6QW7AX9yNM2dzxS8KH30KuJ8jIkwd08ZN3W
 7aqcyi4rgP6Gwypq7ZCRYXNvhwXG/2sJmfRCAmMB1MgE7gLvATP1VjPqjWRfn2zvKXLf
 zd3da9IHYNkEpbN2qHhi9eEtpFj8YFYslxx589PWaNI22u/oD/r8mVRr/cbv6G/unoD6
 mPmSUCIp+Mnbn/x/epB1jL2zV1U7Gv1M9ouINd46FoPJ1vBWWw/UTmGzVA/ysqXOZKzn
 uvXCM4/bgDpU16GIVJGyXRrHt3huLZ0fIYd46g1JumwvixRX03oZ9T80UpwXkdhaWHGV
 TTXg==
X-Gm-Message-State: AOAM530b6Oww7usT5cj7bUkUu/S3tmduC1ElhXJGiCdZIxzh/CMsOhEM
 FfWAD/Zjw9slDTcg0W1ilRpWqGujB+Xo4w==
X-Google-Smtp-Source: ABdhPJyaQ090TKycfBw2ZLwEX4ihQ6+PdgOluXsSM6D/p2sin3mF/q5ZyLrvvGDNxGB3d6LRTg4qRA==
X-Received: by 2002:a37:4811:: with SMTP id v17mr7833412qka.166.1598809516621; 
 Sun, 30 Aug 2020 10:45:16 -0700 (PDT)
Received: from atma2.hitronhub.home ([2607:fea8:56e0:6d60::2db6])
 by smtp.gmail.com with ESMTPSA id l1sm6797662qtp.96.2020.08.30.10.45.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 30 Aug 2020 10:45:16 -0700 (PDT)
From: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
To: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 nd <nd@arm.com>
Date: Sun, 30 Aug 2020 13:44:08 -0400
Message-Id: <20200830174410.256533-3-rodrigosiqueiramelo@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200830174410.256533-1-rodrigosiqueiramelo@gmail.com>
References: <20200830174410.256533-1-rodrigosiqueiramelo@gmail.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v9 2/4] kms_writeback: Add initial
 writeback tests
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
Cc: Brian Starkey <rodrigosiqueiramelo@gmail.com>,
 Simon Ser <contact@emersion.fr>, melissa.srw@gmail.com,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Brian Starkey <rodrigosiqueiramelo@gmail.com>

Add tests for the WRITEBACK_PIXEL_FORMATS, WRITEBACK_OUT_FENCE_PTR and
WRITEBACK_FB_ID properties on writeback connectors, ensuring their
behaviour is correct.

Changes since V8:
* Remove unnecessary fence cleanup on prepare commit.

Changes since V7 (Maxime Ripard and Petri Latvala):
* Utilizes `to_user_pointer` to avoid cast compilation error on ARM 32
  bits.

Changes since V6 (Simon Ser):
* Add igt_describe per sub-test
* Remove kmstest_force_connector from kms_writeback_get_output, since
  userspace will not do this sort of operation
* Add an igt_debug statement in case we don't use a specific writeback
  connector
* Drop flag parameter from do_writeback_test
* Rename invalid_out_fence to test_invalid_parameters
* Drop invalid_fb from writeback_fb_id
* Assert if plane is null on igt_fixture
* Replace all occurrences of igt_fb_mod_to_tiling(0) by
  DRM_FORMAT_MOD_LINEAR
* Rename invalid_fb to invalid_output_fb in the sub-test related to
  "writeback-invalid-out-fence"
* Replace ret by fb_id in igt_main

Reviewed-by: Liviu Dudau <liviu.dudau@arm.com>
Signed-off-by: Brian Starkey <brian.starkey@arm.com>
[rebased and updated do_writeback_test() function to address feedback]
Signed-off-by: Liviu Dudau <liviu.dudau@arm.com>
Signed-off-by: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
---
 tests/Makefile.sources |   1 +
 tests/kms_writeback.c  | 316 +++++++++++++++++++++++++++++++++++++++++
 tests/meson.build      |   1 +
 3 files changed, 318 insertions(+)
 create mode 100644 tests/kms_writeback.c

diff --git a/tests/Makefile.sources b/tests/Makefile.sources
index 269b506d..6ae95155 100644
--- a/tests/Makefile.sources
+++ b/tests/Makefile.sources
@@ -89,6 +89,7 @@ TESTS_progs = \
 	kms_universal_plane \
 	kms_vblank \
 	kms_vrr \
+	kms_writeback \
 	meta_test \
 	prime_busy \
 	prime_mmap \
diff --git a/tests/kms_writeback.c b/tests/kms_writeback.c
new file mode 100644
index 00000000..f8025538
--- /dev/null
+++ b/tests/kms_writeback.c
@@ -0,0 +1,316 @@
+/*
+ * (C) COPYRIGHT 2017 ARM Limited. All rights reserved.
+ *
+ * Permission is hereby granted, free of charge, to any person obtaining a
+ * copy of this software and associated documentation files (the "Software"),
+ * to deal in the Software without restriction, including without limitation
+ * the rights to use, copy, modify, merge, publish, distribute, sublicense,
+ * and/or sell copies of the Software, and to permit persons to whom the
+ * Software is furnished to do so, subject to the following conditions:
+ *
+ * The above copyright notice and this permission notice (including the next
+ * paragraph) shall be included in all copies or substantial portions of the
+ * Software.
+ *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
+ * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
+ * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
+ * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
+ * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
+ * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
+ * IN THE SOFTWARE.
+ *
+ */
+
+#include <errno.h>
+#include <stdbool.h>
+#include <stdio.h>
+#include <string.h>
+
+#include "igt.h"
+#include "igt_core.h"
+#include "igt_fb.h"
+
+static drmModePropertyBlobRes *get_writeback_formats_blob(igt_output_t *output)
+{
+	drmModePropertyBlobRes *blob = NULL;
+	uint64_t blob_id;
+	int ret;
+
+	ret = kmstest_get_property(output->display->drm_fd,
+				   output->config.connector->connector_id,
+				   DRM_MODE_OBJECT_CONNECTOR,
+				   igt_connector_prop_names[IGT_CONNECTOR_WRITEBACK_PIXEL_FORMATS],
+				   NULL, &blob_id, NULL);
+	if (ret)
+		blob = drmModeGetPropertyBlob(output->display->drm_fd, blob_id);
+
+	igt_assert(blob);
+
+	return blob;
+}
+
+static bool check_writeback_config(igt_display_t *display, igt_output_t *output)
+{
+	igt_fb_t input_fb, output_fb;
+	igt_plane_t *plane;
+	uint32_t writeback_format = DRM_FORMAT_XRGB8888;
+	uint64_t tiling = DRM_FORMAT_MOD_LINEAR;
+	int width, height, ret;
+	drmModeModeInfo override_mode = {
+		.clock = 25175,
+		.hdisplay = 640,
+		.hsync_start = 656,
+		.hsync_end = 752,
+		.htotal = 800,
+		.hskew = 0,
+		.vdisplay = 480,
+		.vsync_start = 490,
+		.vsync_end = 492,
+		.vtotal = 525,
+		.vscan = 0,
+		.vrefresh = 60,
+		.flags = DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC,
+		.name = {"640x480-60"},
+	};
+	igt_output_override_mode(output, &override_mode);
+
+	width = override_mode.hdisplay;
+	height = override_mode.vdisplay;
+
+	ret = igt_create_fb(display->drm_fd, width, height, DRM_FORMAT_XRGB8888, tiling, &input_fb);
+	igt_assert(ret >= 0);
+
+	ret = igt_create_fb(display->drm_fd, width, height, writeback_format, tiling, &output_fb);
+	igt_assert(ret >= 0);
+
+	plane = igt_output_get_plane_type(output, DRM_PLANE_TYPE_PRIMARY);
+	igt_plane_set_fb(plane, &input_fb);
+	igt_output_set_writeback_fb(output, &output_fb);
+
+	ret = igt_display_try_commit_atomic(display, DRM_MODE_ATOMIC_TEST_ONLY |
+					    DRM_MODE_ATOMIC_ALLOW_MODESET, NULL);
+	igt_plane_set_fb(plane, NULL);
+	igt_remove_fb(display->drm_fd, &input_fb);
+	igt_remove_fb(display->drm_fd, &output_fb);
+
+	return !ret;
+}
+
+static igt_output_t *kms_writeback_get_output(igt_display_t *display)
+{
+	int i;
+
+	for (i = 0; i < display->n_outputs; i++) {
+		igt_output_t *output = &display->outputs[i];
+		int j;
+
+		if (output->config.connector->connector_type != DRM_MODE_CONNECTOR_WRITEBACK)
+			continue;
+
+		for (j = 0; j < igt_display_get_n_pipes(display); j++) {
+			igt_output_set_pipe(output, j);
+
+			if (check_writeback_config(display, output)) {
+				igt_debug("Using connector %u:%s on pipe %d\n",
+					  output->config.connector->connector_id,
+					  output->name, j);
+				return output;
+			}
+		}
+
+		igt_debug("We found %u:%s, but this test will not be able to use it.\n",
+			  output->config.connector->connector_id, output->name);
+
+		/* Restore any connectors we don't use, so we don't trip on them later */
+		kmstest_force_connector(display->drm_fd, output->config.connector, FORCE_CONNECTOR_UNSPECIFIED);
+	}
+
+	return NULL;
+}
+
+static void check_writeback_fb_id(igt_output_t *output)
+{
+	uint64_t check_fb_id;
+
+	check_fb_id = igt_output_get_prop(output, IGT_CONNECTOR_WRITEBACK_FB_ID);
+	igt_assert(check_fb_id == 0);
+}
+
+static int do_writeback_test(igt_output_t *output, uint32_t fb_id,
+			     int32_t *out_fence_ptr, bool ptr_valid)
+{
+	int ret;
+	igt_display_t *display = output->display;
+	struct kmstest_connector_config *config = &output->config;
+
+	igt_output_set_prop_value(output, IGT_CONNECTOR_CRTC_ID, config->crtc->crtc_id);
+	igt_output_set_prop_value(output, IGT_CONNECTOR_WRITEBACK_FB_ID, fb_id);
+	igt_output_set_prop_value(output, IGT_CONNECTOR_WRITEBACK_OUT_FENCE_PTR, to_user_pointer(out_fence_ptr));
+
+	if (ptr_valid)
+		*out_fence_ptr = 0;
+
+	ret = igt_display_try_commit_atomic(display, DRM_MODE_ATOMIC_ALLOW_MODESET, NULL);
+
+	if (ptr_valid)
+		igt_assert(*out_fence_ptr == -1);
+
+	/* WRITEBACK_FB_ID must always read as zero */
+	check_writeback_fb_id(output);
+
+	return ret;
+}
+
+static void test_invalid_parameters(igt_output_t *output, igt_fb_t *valid_fb, igt_fb_t *invalid_fb)
+{
+	int i, ret;
+	int32_t out_fence;
+	struct {
+		uint32_t fb_id;
+		bool ptr_valid;
+		int32_t *out_fence_ptr;
+	} invalid_tests[] = {
+		{
+			/* No output buffer, but the WRITEBACK_OUT_FENCE_PTR set. */
+			.fb_id = 0,
+			.ptr_valid = true,
+			.out_fence_ptr = &out_fence,
+		},
+		{
+			/* Invalid output buffer. */
+			.fb_id = invalid_fb->fb_id,
+			.ptr_valid = true,
+			.out_fence_ptr = &out_fence,
+		},
+		{
+			/* Invalid WRITEBACK_OUT_FENCE_PTR. */
+			.fb_id = valid_fb->fb_id,
+			.ptr_valid = false,
+			.out_fence_ptr = (int32_t *)0x8,
+		},
+	};
+
+	for (i = 0; i < ARRAY_SIZE(invalid_tests); i++) {
+		ret = do_writeback_test(output, invalid_tests[i].fb_id,
+					invalid_tests[i].out_fence_ptr,
+					invalid_tests[i].ptr_valid);
+		igt_assert(ret != 0);
+	}
+}
+
+static void writeback_fb_id(igt_output_t *output, igt_fb_t *valid_fb, igt_fb_t *invalid_fb)
+{
+
+	int ret;
+
+	/* Invalid object for WRITEBACK_FB_ID */
+	ret = do_writeback_test(output, output->id, NULL, false);
+	igt_assert(ret == -EINVAL);
+
+	/* Zero WRITEBACK_FB_ID */
+	ret = do_writeback_test(output, 0, NULL, false);
+	igt_assert(ret == 0);
+
+	/* Valid output buffer */
+	ret = do_writeback_test(output, valid_fb->fb_id, NULL, false);
+	igt_assert(ret == 0);
+}
+
+igt_main
+{
+	igt_display_t display;
+	igt_output_t *output;
+	igt_plane_t *plane;
+	igt_fb_t input_fb;
+	drmModeModeInfo mode;
+	unsigned int fb_id;
+
+	memset(&display, 0, sizeof(display));
+
+	igt_fixture {
+		display.drm_fd = drm_open_driver_master(DRIVER_ANY);
+		igt_display_require(&display, display.drm_fd);
+
+		kmstest_set_vt_graphics_mode();
+
+		igt_display_require(&display, display.drm_fd);
+
+		igt_require(display.is_atomic);
+
+		output = kms_writeback_get_output(&display);
+		igt_require(output);
+
+		if (output->use_override_mode)
+			memcpy(&mode, &output->override_mode, sizeof(mode));
+		else
+			memcpy(&mode, &output->config.default_mode, sizeof(mode));
+
+		plane = igt_output_get_plane_type(output, DRM_PLANE_TYPE_PRIMARY);
+		igt_assert(plane);
+
+		fb_id = igt_create_fb(display.drm_fd, mode.hdisplay,
+				      mode.vdisplay,
+				      DRM_FORMAT_XRGB8888,
+				      DRM_FORMAT_MOD_LINEAR,
+				      &input_fb);
+		igt_assert(fb_id >= 0);
+		igt_plane_set_fb(plane, &input_fb);
+	}
+
+	igt_describe("Check the writeback format");
+	igt_subtest("writeback-pixel-formats") {
+		drmModePropertyBlobRes *formats_blob = get_writeback_formats_blob(output);
+		const char *valid_chars = "0123456 ABCGNRUVXY";
+		unsigned int i;
+		char *c;
+
+		/*
+		 * We don't have a comprehensive list of formats, so just check
+		 * that the blob length is sensible and that it doesn't contain
+		 * any outlandish characters
+		 */
+		igt_assert(!(formats_blob->length % 4));
+		c = formats_blob->data;
+		for (i = 0; i < formats_blob->length; i++)
+			igt_assert_f(strchr(valid_chars, c[i]),
+				     "Unexpected character %c\n", c[i]);
+		drmModeFreePropertyBlob(formats_blob);
+	}
+
+	igt_describe("Writeback has a couple of parameters linked together"
+		     "(output framebuffer and fence); this test goes through"
+		     "the combination of possible bad options");
+	igt_subtest("writeback-invalid-parameters") {
+		igt_fb_t invalid_output_fb;
+		fb_id = igt_create_fb(display.drm_fd, mode.hdisplay / 2,
+				      mode.vdisplay / 2,
+				      DRM_FORMAT_XRGB8888,
+				      DRM_FORMAT_MOD_LINEAR,
+				      &invalid_output_fb);
+		igt_require(fb_id > 0);
+
+		test_invalid_parameters(output, &input_fb, &invalid_output_fb);
+
+		igt_remove_fb(display.drm_fd, &invalid_output_fb);
+	}
+
+	igt_describe("Validate WRITEBACK_FB_ID with valid and invalid options");
+	igt_subtest("writeback-fb-id") {
+		igt_fb_t output_fb;
+		fb_id = igt_create_fb(display.drm_fd, mode.hdisplay, mode.vdisplay,
+				      DRM_FORMAT_XRGB8888,
+				      DRM_FORMAT_MOD_LINEAR,
+				      &output_fb);
+		igt_require(fb_id > 0);
+
+		writeback_fb_id(output, &input_fb, &output_fb);
+
+		igt_remove_fb(display.drm_fd, &output_fb);
+	}
+
+	igt_fixture {
+		igt_remove_fb(display.drm_fd, &input_fb);
+		igt_display_fini(&display);
+	}
+}
diff --git a/tests/meson.build b/tests/meson.build
index 684de043..5eb2d2fc 100644
--- a/tests/meson.build
+++ b/tests/meson.build
@@ -73,6 +73,7 @@ test_progs = [
 	'kms_universal_plane',
 	'kms_vblank',
 	'kms_vrr',
+	'kms_writeback',
 	'meta_test',
 	'panfrost_get_param',
 	'panfrost_gem_new',
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
