Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE2321222B7
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 04:49:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 404646E935;
	Tue, 17 Dec 2019 03:49:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 235E66E935;
 Tue, 17 Dec 2019 03:49:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Dec 2019 19:49:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,324,1571727600"; d="scan'208";a="227345461"
Received: from jhli-desk1.jf.intel.com ([10.7.198.163])
 by orsmga002.jf.intel.com with ESMTP; 16 Dec 2019 19:49:38 -0800
From: Juston Li <juston.li@intel.com>
To: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 ville.syrjala@linux.intel.com, daniel@ffwll.ch
Date: Mon, 16 Dec 2019 19:48:40 -0800
Message-Id: <20191217034836.3936-2-juston.li@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191217034836.3936-1-juston.li@intel.com>
References: <20191217034836.3936-1-juston.li@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 i-g-t 2/2] tests/kms_getfb: Add getfb2 tests
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
Cc: Daniel Stone <daniels@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Daniel Stone <daniels@collabora.com>

Mirroring addfb2, add tests for the new ioctl which will return us
information about framebuffers containing multiple buffers, as well as
modifiers.

Changes since v3:
- Add subtests to ensure handles aren't returned for non-root and
  non-master callers
- Fix getfb2-handle-not-fb to use getfb2

Changes since v1:
- Add test that uses getfb2 output to call addfb2 as suggested by Ville

Signed-off-by: Daniel Stone <daniels@collabora.com>
Signed-off-by: Juston Li <juston.li@intel.com>
---
 tests/kms_getfb.c | 160 ++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 160 insertions(+)

diff --git a/tests/kms_getfb.c b/tests/kms_getfb.c
index ca0b01c05e5c..ffd8f9117c92 100644
--- a/tests/kms_getfb.c
+++ b/tests/kms_getfb.c
@@ -40,6 +40,8 @@
 #include "drm.h"
 #include "drm_fourcc.h"
 
+#include "igt_device.h"
+
 static bool has_getfb_iface(int fd)
 {
 	struct drm_mode_fb_cmd arg = { };
@@ -228,6 +230,158 @@ static void test_duplicate_handles(int fd)
 	}
 }
 
+static void test_getfb2(int fd)
+{
+	struct drm_mode_fb_cmd2 add_basic = {};
+
+	igt_fixture {
+		struct drm_mode_fb_cmd2 get = {};
+
+		add_basic.width = 1024;
+		add_basic.height = 1024;
+		add_basic.pixel_format = DRM_FORMAT_XRGB8888;
+		add_basic.pitches[0] = 1024*4;
+		add_basic.handles[0] = igt_create_bo_with_dimensions(fd, 1024, 1024,
+			DRM_FORMAT_XRGB8888, 0, 0, NULL, NULL, NULL);
+		igt_assert(add_basic.handles[0]);
+		do_ioctl(fd, DRM_IOCTL_MODE_ADDFB2, &add_basic);
+
+		get.fb_id = add_basic.fb_id;
+		do_ioctl(fd, DRM_IOCTL_MODE_GETFB2, &get);
+		igt_assert_neq_u32(get.handles[0], 0);
+		gem_close(fd, get.handles[0]);
+	}
+
+	igt_subtest("getfb2-handle-zero") {
+		struct drm_mode_fb_cmd2 get = {};
+		do_ioctl_err(fd, DRM_IOCTL_MODE_GETFB2, &get, ENOENT);
+	}
+
+	igt_subtest("getfb2-handle-closed") {
+		struct drm_mode_fb_cmd2 add = add_basic;
+		struct drm_mode_fb_cmd2 get = { };
+
+		add.handles[0] = igt_create_bo_with_dimensions(fd, 1024, 1024,
+			DRM_FORMAT_XRGB8888, 0, 0, NULL, NULL, NULL);
+		igt_assert(add.handles[0]);
+		do_ioctl(fd, DRM_IOCTL_MODE_ADDFB2, &add);
+		do_ioctl(fd, DRM_IOCTL_MODE_RMFB, &add.fb_id);
+
+		get.fb_id = add.fb_id;
+		do_ioctl_err(fd, DRM_IOCTL_MODE_GETFB2, &get, ENOENT);
+		gem_close(fd, add.handles[0]);
+	}
+
+	igt_subtest("getfb2-handle-not-fb") {
+		struct drm_mode_fb_cmd2 get = { .fb_id = get_any_prop_id(fd) };
+		igt_require(get.fb_id > 0);
+		do_ioctl_err(fd, DRM_IOCTL_MODE_GETFB2, &get, ENOENT);
+	}
+
+	igt_subtest("getfb2-accept-ccs") {
+		struct drm_mode_fb_cmd2 add_ccs = { };
+		struct drm_mode_fb_cmd2 get = { };
+		int i;
+
+		get_ccs_fb(fd, &add_ccs);
+		igt_require(add_ccs.fb_id != 0);
+		get.fb_id = add_ccs.fb_id;
+		do_ioctl(fd, DRM_IOCTL_MODE_GETFB2, &get);
+
+		igt_assert_eq_u32(get.width, add_ccs.width);
+		igt_assert_eq_u32(get.height, add_ccs.height);
+		igt_assert(get.flags & DRM_MODE_FB_MODIFIERS);
+
+		for (i = 0; i < ARRAY_SIZE(get.handles); i++) {
+			igt_assert_eq_u32(get.pitches[i], add_ccs.pitches[i]);
+			igt_assert_eq_u32(get.offsets[i], add_ccs.offsets[i]);
+			if (add_ccs.handles[i] != 0) {
+				igt_assert_neq_u32(get.handles[i], 0);
+				igt_assert_neq_u32(get.handles[i],
+						   add_ccs.handles[i]);
+				igt_assert_eq_u64(get.modifier[i],
+						  add_ccs.modifier[i]);
+			} else {
+				igt_assert_eq_u32(get.handles[i], 0);
+				igt_assert_eq_u64(get.modifier[i], 0);
+			}
+		}
+		igt_assert_eq_u32(get.handles[0], get.handles[1]);
+
+		do_ioctl(fd, DRM_IOCTL_MODE_RMFB, &get.fb_id);
+		gem_close(fd, add_ccs.handles[0]);
+		gem_close(fd, get.handles[0]);
+	}
+
+	igt_subtest("getfb2-into-addfb2") {
+		struct drm_mode_fb_cmd2 cmd = { };
+
+		cmd.fb_id = add_basic.fb_id;
+		do_ioctl(fd, DRM_IOCTL_MODE_GETFB2, &cmd);
+		do_ioctl(fd, DRM_IOCTL_MODE_ADDFB2, &cmd);
+
+		do_ioctl(fd, DRM_IOCTL_MODE_RMFB, &cmd.fb_id);
+		gem_close(fd, cmd.handles[0]);
+	}
+
+	igt_fixture {
+		do_ioctl(fd, DRM_IOCTL_MODE_RMFB, &add_basic.fb_id);
+		gem_close(fd, add_basic.handles[0]);
+	}
+}
+
+static void test_handle_protection(void) {
+	int non_master_fd;
+	struct drm_mode_fb_cmd2 non_master_add = {};
+
+	igt_fixture {
+		non_master_fd = drm_open_driver(DRIVER_ANY);
+
+		non_master_add.width = 1024;
+		non_master_add.height = 1024;
+		non_master_add.pixel_format = DRM_FORMAT_XRGB8888;
+		non_master_add.pitches[0] = 1024*4;
+		non_master_add.handles[0] = igt_create_bo_with_dimensions(non_master_fd, 1024, 1024,
+			DRM_FORMAT_XRGB8888, 0, 0, NULL, NULL, NULL);
+		igt_require(non_master_add.handles[0] != 0);
+		do_ioctl(non_master_fd, DRM_IOCTL_MODE_ADDFB2, &non_master_add);
+	}
+
+	igt_subtest("getfb-handle-protection") {
+		struct drm_mode_fb_cmd get = { .fb_id = non_master_add.fb_id};
+
+		igt_fork(child, 1) {
+			igt_drop_root();
+
+			do_ioctl(non_master_fd, DRM_IOCTL_MODE_GETFB, &get);
+			/* ioctl succeeds but handle should be 0 */
+			igt_assert_eq_u32(get.handle, 0);
+		}
+		igt_waitchildren();
+	}
+
+	igt_subtest("getfb2-handle-protection") {
+		struct drm_mode_fb_cmd2 get = { .fb_id = non_master_add.fb_id};
+		int i;
+
+		igt_fork(child, 1) {
+			igt_drop_root();
+
+			do_ioctl(non_master_fd, DRM_IOCTL_MODE_GETFB2, &get);
+			/* ioctl succeeds but handles should be 0 */
+			for (i = 0; i < ARRAY_SIZE(get.handles); i++) {
+				igt_assert_eq_u32(get.handles[i], 0);
+			}
+		}
+		igt_waitchildren();
+	}
+
+	igt_fixture {
+		do_ioctl(non_master_fd, DRM_IOCTL_MODE_RMFB, &non_master_add.fb_id);
+		gem_close(non_master_fd, non_master_add.handles[0]);
+	}
+}
+
 igt_main
 {
 	int fd;
@@ -243,6 +397,12 @@ igt_main
 	igt_subtest_group
 		test_duplicate_handles(fd);
 
+	igt_subtest_group
+		test_getfb2(fd);
+
+	igt_subtest_group
+		test_handle_protection();
+
 	igt_fixture
 		close(fd);
 }
-- 
2.21.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
