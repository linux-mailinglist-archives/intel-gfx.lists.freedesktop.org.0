Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 324E32FB46E
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 09:43:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B0666E850;
	Tue, 19 Jan 2021 08:43:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 514BF6E850;
 Tue, 19 Jan 2021 08:43:35 +0000 (UTC)
IronPort-SDR: vksi/vl/U+yGHai4MeVV0zE4gRuc0me9zxsRLEO88WptAgmsbc/8xWQ2cVOM9NmcjM2bU8i2+e
 u/pZOpxstHQQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9868"; a="158669422"
X-IronPort-AV: E=Sophos;i="5.79,358,1602572400"; d="scan'208";a="158669422"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2021 00:43:29 -0800
IronPort-SDR: tXbXt6QzUtDSMeOmMZhh5AIMBjfVFcOlEUuzor+nlYNLTdzl7h4OM1iUl0GcXkdRxx7QXrEAE8
 osc8nPn3fdMA==
X-IronPort-AV: E=Sophos;i="5.79,358,1602572400"; d="scan'208";a="466611625"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2021 00:43:27 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue, 19 Jan 2021 09:42:57 +0100
Message-Id: <20210119084257.25552-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] tests/core_hotunplug: Reduce debug noise
 on stdout
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

Since igt_fixture sections are processed unconditionally regardless of
which subtest has been requested, they can now emit a lot of unrelated
debug messages which can make the picture less clear.  Avoid emitting
those messages from outside igt_subtest sections.

Move device close status prerequisite checks from igt_fixture sections
into subtest execution paths.  For simplicity, pass any device close
errors, including those from health checks, to next sections via a
single .fd.drm data structure field.

Moreover, postpone initial device health check until first actually
selected subtest is started.  In order to let that subtest skip on
unsuccessful initial health check, not fail, move the decision whether
to fail or skip on error from the health check helper to its users.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/core_hotunplug.c | 86 +++++++++++++++++++++++-------------------
 1 file changed, 48 insertions(+), 38 deletions(-)

diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
index 91506fa72..e7d2a4472 100644
--- a/tests/core_hotunplug.c
+++ b/tests/core_hotunplug.c
@@ -49,6 +49,7 @@ struct hotunplug {
 	} fd;	/* >= 0: valid fd, == -1: closed, < -1: close failed */
 	const char *dev_bus_addr;
 	const char *failure;
+	bool need_healthcheck;
 };
 
 /* Helpers */
@@ -210,6 +211,12 @@ static void cleanup(struct hotunplug *priv)
 	priv->fd.drm = close_device(priv->fd.drm, "post ", "exercised ");
 	priv->fd.drm_hc = close_device(priv->fd.drm_hc, "post ",
 							"health checked ");
+	/* pass device close errors to next sections via priv->fd.drm */
+	if (priv->fd.drm_hc < -1) {
+		priv->fd.drm = priv->fd.drm_hc;
+		priv->fd.drm_hc = -1;
+	}
+
 	priv->fd.sysfs_dev = close_sysfs(priv->fd.sysfs_dev);
 }
 
@@ -346,9 +353,9 @@ static void node_healthcheck(struct hotunplug *priv, unsigned flags)
 
 		priv->failure = "Device sysfs healthckeck failure!";
 		local_debug("%s\n", "running device sysfs healthcheck");
-		igt_assert(igt_sysfs_path(fd_drm, path, sizeof(path)));
-		igt_assert(igt_debugfs_path(fd_drm, path, sizeof(path)));
-		priv->failure = NULL;
+		if (igt_sysfs_path(fd_drm, path, sizeof(path)) &&
+		    igt_debugfs_path(fd_drm, path, sizeof(path)))
+			priv->failure = NULL;
 	}
 
 	fd_drm = close_device(fd_drm, "", "health checked ");
@@ -356,7 +363,7 @@ static void node_healthcheck(struct hotunplug *priv, unsigned flags)
 		priv->fd.drm_hc = fd_drm;
 }
 
-static void healthcheck(struct hotunplug *priv, bool recover)
+static bool healthcheck(struct hotunplug *priv, bool recover)
 {
 	/* device name may have changed, rebuild IGT device list */
 	igt_devices_scan(true);
@@ -366,8 +373,19 @@ static void healthcheck(struct hotunplug *priv, bool recover)
 		node_healthcheck(priv,
 				 FLAG_RENDER | (recover ? FLAG_RECOVER : 0));
 
-	/* not only request igt_abort on failure, also fail the health check */
-	igt_fail_on_f(priv->failure, "%s\n", priv->failure);
+	return !priv->failure;
+}
+
+static void pre_check(struct hotunplug *priv)
+{
+	igt_require(priv->fd.drm == -1);
+
+	if (priv->need_healthcheck) {
+		igt_require_f(healthcheck(priv, false), "%s\n", priv->failure);
+		priv->need_healthcheck = false;
+
+		igt_require(priv->fd.drm_hc == -1);
+	}
 }
 
 static void recover(struct hotunplug *priv)
@@ -386,7 +404,7 @@ static void recover(struct hotunplug *priv)
 		driver_bind(priv, 60);
 
 	if (priv->failure)
-		healthcheck(priv, true);
+		igt_assert_f(healthcheck(priv, true), "%s\n", priv->failure);
 }
 
 static void post_healthcheck(struct hotunplug *priv)
@@ -394,8 +412,6 @@ static void post_healthcheck(struct hotunplug *priv)
 	igt_abort_on_f(priv->failure, "%s\n", priv->failure);
 
 	cleanup(priv);
-	igt_require(priv->fd.drm == -1);
-	igt_require(priv->fd.drm_hc == -1);
 }
 
 static void set_filter_from_device(int fd)
@@ -417,32 +433,30 @@ static void set_filter_from_device(int fd)
 
 static void unbind_rebind(struct hotunplug *priv)
 {
-	igt_assert_eq(priv->fd.drm, -1);
-	igt_assert_eq(priv->fd.drm_hc, -1);
+	pre_check(priv);
 
 	driver_unbind(priv, "", 0);
 
 	driver_bind(priv, 0);
 
-	healthcheck(priv, false);
+	igt_assert_f(healthcheck(priv, false), "%s\n", priv->failure);
 }
 
 static void unplug_rescan(struct hotunplug *priv)
 {
-	igt_assert_eq(priv->fd.drm, -1);
-	igt_assert_eq(priv->fd.drm_hc, -1);
+	pre_check(priv);
 
 	device_unplug(priv, "", 0);
 
 	bus_rescan(priv, 0);
 
-	healthcheck(priv, false);
+	igt_assert_f(healthcheck(priv, false), "%s\n", priv->failure);
 }
 
 static void hotunbind_rebind(struct hotunplug *priv)
 {
-	igt_assert_eq(priv->fd.drm, -1);
-	igt_assert_eq(priv->fd.drm_hc, -1);
+	pre_check(priv);
+
 	priv->fd.drm = local_drm_open_driver(false, "", " for hot unbind");
 
 	driver_unbind(priv, "hot ", 0);
@@ -452,13 +466,13 @@ static void hotunbind_rebind(struct hotunplug *priv)
 
 	driver_bind(priv, 0);
 
-	healthcheck(priv, false);
+	igt_assert_f(healthcheck(priv, false), "%s\n", priv->failure);
 }
 
 static void hotunplug_rescan(struct hotunplug *priv)
 {
-	igt_assert_eq(priv->fd.drm, -1);
-	igt_assert_eq(priv->fd.drm_hc, -1);
+	pre_check(priv);
+
 	priv->fd.drm = local_drm_open_driver(false, "", " for hot unplug");
 
 	device_unplug(priv, "hot ", 0);
@@ -468,39 +482,39 @@ static void hotunplug_rescan(struct hotunplug *priv)
 
 	bus_rescan(priv, 0);
 
-	healthcheck(priv, false);
+	igt_assert_f(healthcheck(priv, false), "%s\n", priv->failure);
 }
 
 static void hotrebind(struct hotunplug *priv)
 {
-	igt_assert_eq(priv->fd.drm, -1);
-	igt_assert_eq(priv->fd.drm_hc, -1);
+	pre_check(priv);
+
 	priv->fd.drm = local_drm_open_driver(false, "", " for hot rebind");
 
 	driver_unbind(priv, "hot ", 60);
 
 	driver_bind(priv, 0);
 
-	healthcheck(priv, false);
+	igt_assert_f(healthcheck(priv, false), "%s\n", priv->failure);
 }
 
 static void hotreplug(struct hotunplug *priv)
 {
-	igt_assert_eq(priv->fd.drm, -1);
-	igt_assert_eq(priv->fd.drm_hc, -1);
+	pre_check(priv);
+
 	priv->fd.drm = local_drm_open_driver(false, "", " for hot replug");
 
 	device_unplug(priv, "hot ", 60);
 
 	bus_rescan(priv, 0);
 
-	healthcheck(priv, false);
+	igt_assert_f(healthcheck(priv, false), "%s\n", priv->failure);
 }
 
 static void hotrebind_lateclose(struct hotunplug *priv)
 {
-	igt_assert_eq(priv->fd.drm, -1);
-	igt_assert_eq(priv->fd.drm_hc, -1);
+	pre_check(priv);
+
 	priv->fd.drm = local_drm_open_driver(false, "", " for hot rebind");
 
 	driver_unbind(priv, "hot ", 60);
@@ -510,13 +524,13 @@ static void hotrebind_lateclose(struct hotunplug *priv)
 	priv->fd.drm = close_device(priv->fd.drm, "late ", "unbound ");
 	igt_assert_eq(priv->fd.drm, -1);
 
-	healthcheck(priv, false);
+	igt_assert_f(healthcheck(priv, false), "%s\n", priv->failure);
 }
 
 static void hotreplug_lateclose(struct hotunplug *priv)
 {
-	igt_assert_eq(priv->fd.drm, -1);
-	igt_assert_eq(priv->fd.drm_hc, -1);
+	pre_check(priv);
+
 	priv->fd.drm = local_drm_open_driver(false, "", " for hot replug");
 
 	device_unplug(priv, "hot ", 60);
@@ -526,7 +540,7 @@ static void hotreplug_lateclose(struct hotunplug *priv)
 	priv->fd.drm = close_device(priv->fd.drm, "late ", "removed ");
 	igt_assert_eq(priv->fd.drm, -1);
 
-	healthcheck(priv, false);
+	igt_assert_f(healthcheck(priv, false), "%s\n", priv->failure);
 }
 
 /* Main */
@@ -536,6 +550,7 @@ igt_main
 	struct hotunplug priv = {
 		.fd		= { .drm = -1, .drm_hc = -1, .sysfs_dev = -1, },
 		.failure	= NULL,
+		.need_healthcheck = true,
 	};
 
 	igt_fixture {
@@ -570,11 +585,6 @@ igt_main
 		igt_assert_eq(close_device(fd_drm, "", "selected "), -1);
 
 		prepare(&priv);
-
-		node_healthcheck(&priv, 0);
-		if (!priv.failure)
-			node_healthcheck(&priv, FLAG_RENDER);
-		igt_skip_on_f(priv.failure, "%s\n", priv.failure);
 	}
 
 	igt_subtest_group {
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
