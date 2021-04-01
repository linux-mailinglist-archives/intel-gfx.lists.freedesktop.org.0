Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96E9F3515A9
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Apr 2021 16:37:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 538326ECCE;
	Thu,  1 Apr 2021 14:37:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 428BE6ECCB;
 Thu,  1 Apr 2021 14:37:29 +0000 (UTC)
IronPort-SDR: QD3qMpsFJmOR3jtu8Lz/03mIcwTFhIqWXsZc9vSSM/0S5PtE54HR64+9+RJY3QMBzMOFyyPNX8
 6wMYIfrZBywQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9941"; a="188996614"
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400"; d="scan'208";a="188996614"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2021 07:37:29 -0700
IronPort-SDR: vHuGWJxy7iph/g+E/KV9FHMb/0fKzTu+hmOxTR0MPhbUW7F30xfyCR5PClAqj6reuKdJVeFzoG
 cY6ysW9r9DWQ==
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400"; d="scan'208";a="419225314"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.28.167])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2021 07:37:27 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu,  1 Apr 2021 16:36:41 +0200
Message-Id: <20210401143643.7867-4-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210401143643.7867-1-janusz.krzysztofik@linux.intel.com>
References: <20210401143643.7867-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH i-g-t 4/6] tests/core_hotunplug: Add
 'userptr GEM object' variants
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

Verify if userptr GM objects are cleaned up equally well as regular
GEM objects on device hotunbind / hotunplug.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/core_hotunplug.c | 90 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 90 insertions(+)

diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
index 7f61b4446..6f3b3b3d3 100644
--- a/tests/core_hotunplug.c
+++ b/tests/core_hotunplug.c
@@ -716,6 +716,72 @@ static void gem_hotunplug_lateclose(struct hotunplug *priv)
 	igt_assert_eq(priv->fd.drm, -1);
 }
 
+static void userptr_hotunbind_lateclose(struct hotunplug *priv)
+{
+	uint32_t handle;
+	void *ptr;
+
+	igt_require(priv->fd.drm = -1);
+	priv->fd.drm = local_drm_open_driver(false, "pre-", " for prerequisites check");
+
+	igt_require_intel(priv->fd.drm);
+	igt_require_gem(priv->fd.drm);
+	igt_assert_eq(posix_memalign(&ptr, 4096, 4096), 0);
+	igt_require(!__gem_userptr(priv->fd.drm, ptr, 4096, 0, 0, &handle));
+	gem_close(priv->fd.drm, handle);
+	priv->fd.drm = close_device(priv->fd.drm, "", "pre-checked ");
+
+	pre_check(priv);
+
+	priv->fd.drm = local_drm_open_driver(false, "", " for hot unbind");
+
+	local_debug("%s\n", "creating a userptr GEM object");
+	gem_userptr(priv->fd.drm, ptr, 4096, 0, 0, &handle);
+
+	driver_unbind(priv, "hot ", 0);
+
+	local_debug("%s\n", "trying to late remove the object");
+	igt_assert_eq(local_gem_close(priv->fd.drm, handle), -ENODEV);
+
+	priv->fd.drm = close_device(priv->fd.drm, "late ", "unbound ");
+	igt_assert_eq(priv->fd.drm, -1);
+
+	igt_fail_on_f(munmap(ptr, 4096), "Userptr unmap failure!");
+}
+
+static void userptr_hotunplug_lateclose(struct hotunplug *priv)
+{
+	uint32_t handle;
+	void *ptr;
+
+	igt_require(priv->fd.drm = -1);
+	priv->fd.drm = local_drm_open_driver(false, "pre-", " for prerequisites check");
+
+	igt_require_intel(priv->fd.drm);
+	igt_require_gem(priv->fd.drm);
+	igt_assert_eq(posix_memalign(&ptr, 4096, 4096), 0);
+	igt_require(!__gem_userptr(priv->fd.drm, ptr, 4096, 0, 0, &handle));
+	gem_close(priv->fd.drm, handle);
+	priv->fd.drm = close_device(priv->fd.drm, "", "pre-checked ");
+
+	pre_check(priv);
+
+	priv->fd.drm = local_drm_open_driver(false, "", " for hot unplug");
+
+	local_debug("%s\n", "creating a userptr GEM object");
+	gem_userptr(priv->fd.drm, ptr, 4096, 0, 0, &handle);
+
+	device_unplug(priv, "hot ", 0);
+
+	local_debug("%s\n", "trying to late remove the object");
+	igt_assert_eq(local_gem_close(priv->fd.drm, handle), -ENODEV);
+
+	priv->fd.drm = close_device(priv->fd.drm, "late ", "removed ");
+	igt_assert_eq(priv->fd.drm, -1);
+
+	igt_fail_on_f(munmap(ptr, 4096), "Userptr unmap failure!");
+}
+
 /* Main */
 
 igt_main
@@ -925,6 +991,30 @@ igt_main
 			recover(&priv);
 	}
 
+	igt_fixture
+		post_healthcheck(&priv);
+
+	igt_subtest_group {
+		igt_describe("Check if the driver can be cleanly unbound from a device with a still open userptr GEM object, then released");
+		igt_subtest("userptr-hotunbind-lateclose")
+			userptr_hotunbind_lateclose(&priv);
+
+		igt_fixture
+			recover(&priv);
+	}
+
+	igt_fixture
+		post_healthcheck(&priv);
+
+	igt_subtest_group {
+		igt_describe("Check if a device with a still open userptr GEM object can be cleanly unplugged, then released");
+		igt_subtest("userptr-hotunplug-lateclose")
+			userptr_hotunplug_lateclose(&priv);
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
