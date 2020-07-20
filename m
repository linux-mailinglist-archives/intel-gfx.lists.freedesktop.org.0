Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B404D225E51
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jul 2020 14:19:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03DD46E3D8;
	Mon, 20 Jul 2020 12:19:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A82F6E3D8;
 Mon, 20 Jul 2020 12:19:41 +0000 (UTC)
IronPort-SDR: wQwRkoUz4Y60O2owHYbkjgOxQD4wDfT+ppGEEUtVUEVdTWRYwYXXhy9oY91Lhs9y9921sDSFok
 Fk4yHOWwIKgw==
X-IronPort-AV: E=McAfee;i="6000,8403,9687"; a="129463963"
X-IronPort-AV: E=Sophos;i="5.75,374,1589266800"; d="scan'208";a="129463963"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2020 05:19:40 -0700
IronPort-SDR: PFhzulEKIARNR+3+CqsOYlW/nwtl5vxH+wmVvCI84MSw/kcpaKykDCrb1NlFPabca8phw3JGph
 sfSdABsESRVw==
X-IronPort-AV: E=Sophos;i="5.75,375,1589266800"; d="scan'208";a="461669640"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2020 05:19:39 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 20 Jul 2020 14:19:00 +0200
Message-Id: <20200720121908.28124-8-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200720121908.28124-1-janusz.krzysztofik@linux.intel.com>
References: <20200720121908.28124-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATH i-g-t 07/15] tests/core_hotunplug: Pass
 errors via a data structure field
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
Cc: intel-gfx@lists.freedesktop.org,
 =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal.winiarski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

A pointer to fatal error messages can be passed around via hotunplug
structure, no need to declare it as global.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/core_hotunplug.c | 92 +++++++++++++++++++++---------------------
 1 file changed, 45 insertions(+), 47 deletions(-)

diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
index 0e61da2d0..6070b7d95 100644
--- a/tests/core_hotunplug.c
+++ b/tests/core_hotunplug.c
@@ -45,6 +45,7 @@ struct hotunplug {
 		int sysfs_drv;
 	} fd;
 	const char *dev_bus_addr;
+	const char *failure;
 };
 
 /* Helpers */
@@ -87,66 +88,63 @@ static void prepare(struct hotunplug *priv, char *buf, int buflen)
 	}
 }
 
-static const char *failure;
-
 /* Unbind the driver from the device */
-static void driver_unbind(int fd_sysfs_drv, const char *dev_bus_addr,
-			  const char *prefix)
+static void driver_unbind(struct hotunplug *priv, const char *prefix)
 {
 	igt_debug("%sunbinding the driver from the device\n", prefix);
 
-	failure = "Driver unbind timeout!";
-	igt_set_timeout(60, failure);
-	igt_sysfs_set(fd_sysfs_drv, "unbind", dev_bus_addr);
+	priv->failure = "Driver unbind timeout!";
+	igt_set_timeout(60, priv->failure);
+	igt_sysfs_set(priv->fd.sysfs_drv, "unbind", priv->dev_bus_addr);
 	igt_reset_timeout();
-	failure = NULL;
+	priv->failure = NULL;
 
-	/* don't close fd_sysfs_drv, it will be used for driver rebinding */
+	/* don't close fd.sysfs_drv, it will be used for driver rebinding */
 }
 
 /* Re-bind the driver to the device */
-static void driver_bind(int fd_sysfs_drv, const char *dev_bus_addr)
+static void driver_bind(struct hotunplug *priv)
 {
 	igt_debug("rebinding the driver to the device\n");
 
-	failure = "Driver re-bind timeout!";
-	igt_set_timeout(60, failure);
-	igt_sysfs_set(fd_sysfs_drv, "bind", dev_bus_addr);
+	priv->failure = "Driver re-bind timeout!";
+	igt_set_timeout(60, priv->failure);
+	igt_sysfs_set(priv->fd.sysfs_drv, "bind", priv->dev_bus_addr);
 	igt_reset_timeout();
-	failure = NULL;
+	priv->failure = NULL;
 
-	close(fd_sysfs_drv);
+	close(priv->fd.sysfs_drv);
 }
 
 /* Remove (virtually unplug) the device from its bus */
-static void device_unplug(int fd_sysfs_dev, const char *prefix)
+static void device_unplug(struct hotunplug *priv, const char *prefix)
 {
 	igt_debug("%sunplugging the device\n", prefix);
 
-	failure = "Device unplug timeout!";
-	igt_set_timeout(60, failure);
-	igt_sysfs_set(fd_sysfs_dev, "device/remove", "1");
+	priv->failure = "Device unplug timeout!";
+	igt_set_timeout(60, priv->failure);
+	igt_sysfs_set(priv->fd.sysfs_dev, "device/remove", "1");
 	igt_reset_timeout();
-	failure = NULL;
+	priv->failure = NULL;
 
-	close(fd_sysfs_dev);
+	close(priv->fd.sysfs_dev);
 }
 
 /* Re-discover the device by rescanning its bus */
-static void bus_rescan(int fd_sysfs_bus)
+static void bus_rescan(struct hotunplug *priv)
 {
 	igt_debug("recovering the device\n");
 
-	failure = "Bus rescan timeout!";
-	igt_set_timeout(60, failure);
-	igt_sysfs_set(fd_sysfs_bus, "rescan", "1");
+	priv->failure = "Bus rescan timeout!";
+	igt_set_timeout(60, priv->failure);
+	igt_sysfs_set(priv->fd.sysfs_bus, "rescan", "1");
 	igt_reset_timeout();
-	failure = NULL;
+	priv->failure = NULL;
 
-	close(fd_sysfs_bus);
+	close(priv->fd.sysfs_bus);
 }
 
-static void healthcheck(void)
+static void healthcheck(struct hotunplug *priv)
 {
 	int fd_drm;
 
@@ -158,9 +156,9 @@ static void healthcheck(void)
 	igt_abort_on_f(fd_drm < 0, "Device reopen failure\n");
 
 	if (is_i915_device(fd_drm)) {
-		failure = "GEM failure";
+		priv->failure = "GEM failure";
 		igt_require_gem(fd_drm);
-		failure = NULL;
+		priv->failure = NULL;
 	}
 
 	close(fd_drm);
@@ -192,11 +190,11 @@ static void unbind_rebind(struct hotunplug *priv)
 	igt_debug("closing the device\n");
 	close(priv->fd.drm);
 
-	driver_unbind(priv->fd.sysfs_drv, priv->dev_bus_addr, "");
+	driver_unbind(priv, "");
 
-	driver_bind(priv->fd.sysfs_drv, priv->dev_bus_addr);
+	driver_bind(priv);
 
-	healthcheck();
+	healthcheck(priv);
 }
 
 static void unplug_rescan(struct hotunplug *priv)
@@ -206,11 +204,11 @@ static void unplug_rescan(struct hotunplug *priv)
 	igt_debug("closing the device\n");
 	close(priv->fd.drm);
 
-	device_unplug(priv->fd.sysfs_dev, "");
+	device_unplug(priv, "");
 
-	bus_rescan(priv->fd.sysfs_bus);
+	bus_rescan(priv);
 
-	healthcheck();
+	healthcheck(priv);
 }
 
 static void hotunbind_lateclose(struct hotunplug *priv)
@@ -219,35 +217,35 @@ static void hotunbind_lateclose(struct hotunplug *priv)
 
 	prepare(priv, buf, sizeof(buf));
 
-	driver_unbind(priv->fd.sysfs_drv, priv->dev_bus_addr, "hot ");
+	driver_unbind(priv, "hot ");
 
-	driver_bind(priv->fd.sysfs_drv, priv->dev_bus_addr);
+	driver_bind(priv);
 
 	igt_debug("late closing the unbound device instance\n");
 	close(priv->fd.drm);
 
-	healthcheck();
+	healthcheck(priv);
 }
 
 static void hotunplug_lateclose(struct hotunplug *priv)
 {
 	prepare(priv, NULL, 0);
 
-	device_unplug(priv->fd.sysfs_dev, "hot ");
+	device_unplug(priv, "hot ");
 
-	bus_rescan(priv->fd.sysfs_bus);
+	bus_rescan(priv);
 
 	igt_debug("late closing the removed device instance\n");
 	close(priv->fd.drm);
 
-	healthcheck();
+	healthcheck(priv);
 }
 
 /* Main */
 
 igt_main
 {
-	struct hotunplug priv;
+	struct hotunplug priv = { .failure = NULL, };
 
 	igt_fixture {
 		int fd_drm;
@@ -274,26 +272,26 @@ igt_main
 		unbind_rebind(&priv);
 
 	igt_fixture
-		igt_abort_on_f(failure, "%s\n", failure);
+		igt_abort_on_f(priv.failure, "%s\n", priv.failure);
 
 	igt_describe("Check if a device believed to be closed can be cleanly unplugged");
 	igt_subtest("unplug-rescan")
 		unplug_rescan(&priv);
 
 	igt_fixture
-		igt_abort_on_f(failure, "%s\n", failure);
+		igt_abort_on_f(priv.failure, "%s\n", priv.failure);
 
 	igt_describe("Check if the driver can be cleanly unbound from a still open device, then released");
 	igt_subtest("hotunbind-lateclose")
 		hotunbind_lateclose(&priv);
 
 	igt_fixture
-		igt_abort_on_f(failure, "%s\n", failure);
+		igt_abort_on_f(priv.failure, "%s\n", priv.failure);
 
 	igt_describe("Check if a still open device can be cleanly unplugged, then released");
 	igt_subtest("hotunplug-lateclose")
 		hotunplug_lateclose(&priv);
 
 	igt_fixture
-		igt_abort_on_f(failure, "%s\n", failure);
+		igt_abort_on_f(priv.failure, "%s\n", priv.failure);
 }
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
