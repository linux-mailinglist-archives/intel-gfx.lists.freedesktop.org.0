Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C3A3225E56
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jul 2020 14:19:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD5496E3E1;
	Mon, 20 Jul 2020 12:19:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C59A46E3D8;
 Mon, 20 Jul 2020 12:19:39 +0000 (UTC)
IronPort-SDR: GqNapkU7cMQ554u7t+aayqHmOjWn/WDLCO6GEUkDi9Mqeslq0CRI0QZitI5ogLIFiQ0kn9Ly45
 UwPdfJl3/gZw==
X-IronPort-AV: E=McAfee;i="6000,8403,9687"; a="129463961"
X-IronPort-AV: E=Sophos;i="5.75,374,1589266800"; d="scan'208";a="129463961"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2020 05:19:39 -0700
IronPort-SDR: e1xgmOMQOS8F37IZ4EAz+cALj12UBLHiyUM3uff9XNlqsBNcTbEQ9z8qFjOGXXnrqUh+kBmjS2
 QX4tdFniL2PQ==
X-IronPort-AV: E=Sophos;i="5.75,375,1589266800"; d="scan'208";a="461669631"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2020 05:19:37 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 20 Jul 2020 14:18:59 +0200
Message-Id: <20200720121908.28124-7-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200720121908.28124-1-janusz.krzysztofik@linux.intel.com>
References: <20200720121908.28124-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATH i-g-t 06/15] tests/core_hotunplug: Maintain a
 single data structure instance
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

The following changes to the test are planned:
- avoid global variables,
- skip subtest after device close errors,
- prepare invariant data only once per test run,
- move device health checks to igt_fixture sections,
- try to recover from subtest failures instead of aborting.
For that to be possible, maintain a single instance of hotunplug
structure at igt_main level and pass it down to subtests.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/core_hotunplug.c | 56 ++++++++++++++++++++----------------------
 1 file changed, 26 insertions(+), 30 deletions(-)

diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
index cac88c2f3..0e61da2d0 100644
--- a/tests/core_hotunplug.c
+++ b/tests/core_hotunplug.c
@@ -183,68 +183,62 @@ static void set_filter_from_device(int fd)
 
 /* Subtests */
 
-static void unbind_rebind(void)
+static void unbind_rebind(struct hotunplug *priv)
 {
-	struct hotunplug priv;
 	char buf[PATH_MAX];
 
-	prepare(&priv, buf, sizeof(buf));
+	prepare(priv, buf, sizeof(buf));
 
 	igt_debug("closing the device\n");
-	close(priv.fd.drm);
+	close(priv->fd.drm);
 
-	driver_unbind(priv.fd.sysfs_drv, priv.dev_bus_addr, "");
+	driver_unbind(priv->fd.sysfs_drv, priv->dev_bus_addr, "");
 
-	driver_bind(priv.fd.sysfs_drv, priv.dev_bus_addr);
+	driver_bind(priv->fd.sysfs_drv, priv->dev_bus_addr);
 
 	healthcheck();
 }
 
-static void unplug_rescan(void)
+static void unplug_rescan(struct hotunplug *priv)
 {
-	struct hotunplug priv;
-
-	prepare(&priv, NULL, 0);
+	prepare(priv, NULL, 0);
 
 	igt_debug("closing the device\n");
-	close(priv.fd.drm);
+	close(priv->fd.drm);
 
-	device_unplug(priv.fd.sysfs_dev, "");
+	device_unplug(priv->fd.sysfs_dev, "");
 
-	bus_rescan(priv.fd.sysfs_bus);
+	bus_rescan(priv->fd.sysfs_bus);
 
 	healthcheck();
 }
 
-static void hotunbind_lateclose(void)
+static void hotunbind_lateclose(struct hotunplug *priv)
 {
-	struct hotunplug priv;
 	char buf[PATH_MAX];
 
-	prepare(&priv, buf, sizeof(buf));
+	prepare(priv, buf, sizeof(buf));
 
-	driver_unbind(priv.fd.sysfs_drv, priv.dev_bus_addr, "hot ");
+	driver_unbind(priv->fd.sysfs_drv, priv->dev_bus_addr, "hot ");
 
-	driver_bind(priv.fd.sysfs_drv, priv.dev_bus_addr);
+	driver_bind(priv->fd.sysfs_drv, priv->dev_bus_addr);
 
 	igt_debug("late closing the unbound device instance\n");
-	close(priv.fd.drm);
+	close(priv->fd.drm);
 
 	healthcheck();
 }
 
-static void hotunplug_lateclose(void)
+static void hotunplug_lateclose(struct hotunplug *priv)
 {
-	struct hotunplug priv;
-
-	prepare(&priv, NULL, 0);
+	prepare(priv, NULL, 0);
 
-	device_unplug(priv.fd.sysfs_dev, "hot ");
+	device_unplug(priv->fd.sysfs_dev, "hot ");
 
-	bus_rescan(priv.fd.sysfs_bus);
+	bus_rescan(priv->fd.sysfs_bus);
 
 	igt_debug("late closing the removed device instance\n");
-	close(priv.fd.drm);
+	close(priv->fd.drm);
 
 	healthcheck();
 }
@@ -253,6 +247,8 @@ static void hotunplug_lateclose(void)
 
 igt_main
 {
+	struct hotunplug priv;
+
 	igt_fixture {
 		int fd_drm;
 
@@ -275,28 +271,28 @@ igt_main
 
 	igt_describe("Check if the driver can be cleanly unbound from a device believed to be closed");
 	igt_subtest("unbind-rebind")
-		unbind_rebind();
+		unbind_rebind(&priv);
 
 	igt_fixture
 		igt_abort_on_f(failure, "%s\n", failure);
 
 	igt_describe("Check if a device believed to be closed can be cleanly unplugged");
 	igt_subtest("unplug-rescan")
-		unplug_rescan();
+		unplug_rescan(&priv);
 
 	igt_fixture
 		igt_abort_on_f(failure, "%s\n", failure);
 
 	igt_describe("Check if the driver can be cleanly unbound from a still open device, then released");
 	igt_subtest("hotunbind-lateclose")
-		hotunbind_lateclose();
+		hotunbind_lateclose(&priv);
 
 	igt_fixture
 		igt_abort_on_f(failure, "%s\n", failure);
 
 	igt_describe("Check if a still open device can be cleanly unplugged, then released");
 	igt_subtest("hotunplug-lateclose")
-		hotunplug_lateclose();
+		hotunplug_lateclose(&priv);
 
 	igt_fixture
 		igt_abort_on_f(failure, "%s\n", failure);
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
