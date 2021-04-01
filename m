Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 254393515A8
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Apr 2021 16:37:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88F326ECC7;
	Thu,  1 Apr 2021 14:37:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 554136ECC7;
 Thu,  1 Apr 2021 14:37:27 +0000 (UTC)
IronPort-SDR: qNeveWjnaRYqj6N0f/kIKKynBBWA54ho/FLkEa2y4cah2yRiqlUzOC92gxwpIdcg8GOx8Gv45l
 grRvFWkJikhg==
X-IronPort-AV: E=McAfee;i="6000,8403,9941"; a="188996606"
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400"; d="scan'208";a="188996606"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2021 07:37:27 -0700
IronPort-SDR: Guvucyq6SbDGxpx5kQoPOg4Yrbib9gPdsumxZtd6L36AABKZVRIZgJu7n9Ql5ngaxv7uH1gjez
 xX+27JH5V00g==
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400"; d="scan'208";a="419225302"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.28.167])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2021 07:37:25 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu,  1 Apr 2021 16:36:40 +0200
Message-Id: <20210401143643.7867-3-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210401143643.7867-1-janusz.krzysztofik@linux.intel.com>
References: <20210401143643.7867-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH i-g-t 3/6] tests/core_hotunplug: Add 'GEM
 object' variants
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

GEM objects belonging to user file descriptors still open on device
hotunbind / hotunplug may exhibit still more driver issues.  Add
subtests that implements these scenarios.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/core_hotunplug.c | 85 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 85 insertions(+)

diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
index decfcdfda..7f61b4446 100644
--- a/tests/core_hotunplug.c
+++ b/tests/core_hotunplug.c
@@ -433,6 +433,13 @@ static void set_filter_from_device(int fd)
 	igt_assert_eq(igt_device_filter_add(filter), 1);
 }
 
+static int local_gem_close(int fd, uint32_t handle)
+{
+	struct drm_gem_close close_bo = { .handle = handle, };
+
+	return igt_ioctl(fd, DRM_IOCTL_GEM_CLOSE, &close_bo) ? -errno : 0;
+}
+
 /* Subtests */
 
 static void unbind_rebind(struct hotunplug *priv)
@@ -655,6 +662,60 @@ static void vm_hotunplug_lateclose(struct hotunplug *priv)
 	igt_assert_eq(priv->fd.drm, -1);
 }
 
+static void gem_hotunbind_lateclose(struct hotunplug *priv)
+{
+	uint32_t handle;
+
+	igt_require(priv->fd.drm = -1);
+	priv->fd.drm = local_drm_open_driver(false, "pre-", " for prerequisites check");
+
+	igt_require_intel(priv->fd.drm);
+	igt_require_gem(priv->fd.drm);
+	priv->fd.drm = close_device(priv->fd.drm, "", "pre-checked ");
+
+	pre_check(priv);
+
+	priv->fd.drm = local_drm_open_driver(false, "", " for hot unbind");
+
+	local_debug("%s\n", "creating a GEM user object");
+	handle = gem_create(priv->fd.drm, 4096);
+
+	driver_unbind(priv, "hot", 0);
+
+	local_debug("%s\n", "trying to late remove the object");
+	igt_assert_eq(local_gem_close(priv->fd.drm, handle), -ENODEV);
+
+	priv->fd.drm = close_device(priv->fd.drm, "late ", "unbound ");
+	igt_assert_eq(priv->fd.drm, -1);
+}
+
+static void gem_hotunplug_lateclose(struct hotunplug *priv)
+{
+	uint32_t handle;
+
+	igt_require(priv->fd.drm = -1);
+	priv->fd.drm = local_drm_open_driver(false, "pre-", " for prerequisites check");
+
+	igt_require_intel(priv->fd.drm);
+	igt_require_gem(priv->fd.drm);
+	priv->fd.drm = close_device(priv->fd.drm, "", "pre-checked ");
+
+	pre_check(priv);
+
+	priv->fd.drm = local_drm_open_driver(false, "", " for hot unplug");
+
+	local_debug("%s\n", "creating a GEM user object");
+	handle = gem_create(priv->fd.drm, 4096);
+
+	device_unplug(priv, "hot", 0);
+
+	local_debug("%s\n", "trying to late remove the object");
+	igt_assert_eq(local_gem_close(priv->fd.drm, handle), -ENODEV);
+
+	priv->fd.drm = close_device(priv->fd.drm, "late ", "removed ");
+	igt_assert_eq(priv->fd.drm, -1);
+}
+
 /* Main */
 
 igt_main
@@ -840,6 +901,30 @@ igt_main
 			recover(&priv);
 	}
 
+	igt_fixture
+		post_healthcheck(&priv);
+
+	igt_subtest_group {
+		igt_describe("Check if the driver can be cleanly unbound from a device with a still open GEM object, then released");
+		igt_subtest("gem-hotunbind-lateclose")
+			gem_hotunbind_lateclose(&priv);
+
+		igt_fixture
+			recover(&priv);
+	}
+
+	igt_fixture
+		post_healthcheck(&priv);
+
+	igt_subtest_group {
+		igt_describe("Check if a device with a still open GEM object can be cleanly unplugged, then released");
+		igt_subtest("gem-hotunplug-lateclose")
+			gem_hotunplug_lateclose(&priv);
+
+		igt_fixture
+			recover(&priv);
+	}
+
 	igt_fixture {
 		post_healthcheck(&priv);
 
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
