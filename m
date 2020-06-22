Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C612203A93
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2020 17:19:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 225F86E82C;
	Mon, 22 Jun 2020 15:19:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 307116E82C;
 Mon, 22 Jun 2020 15:19:02 +0000 (UTC)
IronPort-SDR: 1jP/WIfvYgTxyQiKsPdr6+B2LA00qcHZAWXoaydp0prgwttakBvBCPooCTu9/YVG5uaggWUTno
 cuq/c2LbUYow==
X-IronPort-AV: E=McAfee;i="6000,8403,9659"; a="145296424"
X-IronPort-AV: E=Sophos;i="5.75,267,1589266800"; d="scan'208";a="145296424"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 08:19:02 -0700
IronPort-SDR: 8kYLAIsRxdBqRdzBk7J88VQdrwoe4/uD3+gscyJOTZkyeM928heghRcD8muYa0QeqKhAUwpT5/
 BbYuB/FfC1IQ==
X-IronPort-AV: E=Sophos;i="5.75,267,1589266800"; d="scan'208";a="451871651"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 08:19:00 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 22 Jun 2020 17:18:39 +0200
Message-Id: <20200622151845.4520-3-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200622151845.4520-1-janusz.krzysztofik@linux.intel.com>
References: <20200622151845.4520-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH i-g-t 2/8] tests/core_hotunplug: Use PCI
 device sysfs entry, not DRM
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

Future subtests may want to access PCI attributes of the device after
driver unbind.  Refactor prepare() helper.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/core_hotunplug.c | 68 +++++++++++++++++++++++++-----------------
 1 file changed, 40 insertions(+), 28 deletions(-)

diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
index 187168009..c7213d728 100644
--- a/tests/core_hotunplug.c
+++ b/tests/core_hotunplug.c
@@ -54,42 +54,54 @@ struct hotunplug {
 	igt_kmsg(KMSG_DEBUG "%s: %s: %s\n", igt_test_name(), __func__, msg); \
 })
 
-static void prepare_for_unbind(struct hotunplug *priv, char *buf, int buflen)
+static inline int prepare_common(struct hotunplug *priv)
 {
-	int len;
+	int fd_sysfs_drm;
+
+	local_debug("opening device");
+	priv->fd.drm = __drm_open_driver(DRIVER_ANY);
+	igt_assert(priv->fd.drm >= 0);
+
+	fd_sysfs_drm = igt_sysfs_open(priv->fd.drm);
+	igt_assert(fd_sysfs_drm >= 0);
+
+	return fd_sysfs_drm;
+}
+
+static inline void prepare_for_rebind(struct hotunplug *priv,
+				      char *buf, int buflen)
+{
+	int fd_sysfs_drm, len;
 
 	igt_assert(buflen);
 
-	priv->fd.sysfs_drv = openat(priv->fd.sysfs_dev, "device/driver",
-				    O_DIRECTORY);
-	igt_assert(priv->fd.sysfs_drv >= 0);
+	fd_sysfs_drm = prepare_common(priv);
+
+	priv->fd.sysfs_drv = openat(fd_sysfs_drm, "device/driver", O_DIRECTORY);
 
-	len = readlinkat(priv->fd.sysfs_dev, "device", buf, buflen - 1);
+	len = readlinkat(fd_sysfs_drm, "device", buf, buflen - 1);
 	buf[len] = '\0';
 	priv->dev_bus_addr = strrchr(buf, '/');
-	igt_assert(priv->dev_bus_addr++);
 
-	/* sysfs_dev no longer needed */
-	close(priv->fd.sysfs_dev);
+	close(fd_sysfs_drm);
+
+	igt_assert(priv->fd.sysfs_drv >= 0);
+	igt_assert(priv->dev_bus_addr++);
 }
 
-static inline void prepare(struct hotunplug *priv, char *buf, int buflen)
+static inline void prepare_for_rescan(struct hotunplug *priv)
 {
-	local_debug("opening device");
-	priv->fd.drm = __drm_open_driver(DRIVER_ANY);
-	igt_assert(priv->fd.drm >= 0);
+	int fd_sysfs_drm = prepare_common(priv);
 
-	priv->fd.sysfs_dev = igt_sysfs_open(priv->fd.drm);
-	igt_assert(priv->fd.sysfs_dev >= 0);
+	priv->fd.sysfs_dev = openat(fd_sysfs_drm, "device", O_DIRECTORY);
 
-	if (buf) {
-		prepare_for_unbind(priv, buf, buflen);
-	} else {
-		/* prepare for bus rescan */
-		priv->fd.sysfs_bus = openat(priv->fd.sysfs_dev,
-					    "device/subsystem", O_DIRECTORY);
-		igt_assert(priv->fd.sysfs_bus >= 0);
-	}
+	priv->fd.sysfs_bus = openat(fd_sysfs_drm, "device/subsystem",
+				    O_DIRECTORY);
+
+	close(fd_sysfs_drm);
+
+	igt_assert(priv->fd.sysfs_dev >= 0);
+	igt_assert(priv->fd.sysfs_bus >= 0);
 }
 
 static const char *failure;
@@ -123,7 +135,7 @@ static void device_unplug(int fd_sysfs_dev)
 {
 	failure = "Device unplug timeout!";
 	igt_set_timeout(60, failure);
-	igt_sysfs_set(fd_sysfs_dev, "device/remove", "1");
+	igt_sysfs_set(fd_sysfs_dev, "remove", "1");
 	igt_reset_timeout();
 	failure = NULL;
 
@@ -183,7 +195,7 @@ static void unbind_rebind(void)
 	struct hotunplug priv;
 	char buf[PATH_MAX];
 
-	prepare(&priv, buf, sizeof(buf));
+	prepare_for_rebind(&priv, buf, sizeof(buf));
 
 	local_debug("closing the device");
 	close(priv.fd.drm);
@@ -201,7 +213,7 @@ static void unplug_rescan(void)
 {
 	struct hotunplug priv;
 
-	prepare(&priv, NULL, 0);
+	prepare_for_rescan(&priv);
 
 	local_debug("closing the device");
 	close(priv.fd.drm);
@@ -220,7 +232,7 @@ static void hotunbind_lateclose(void)
 	struct hotunplug priv;
 	char buf[PATH_MAX];
 
-	prepare(&priv, buf, sizeof(buf));
+	prepare_for_rebind(&priv, buf, sizeof(buf));
 
 	local_debug("hot unbinding the driver from the device");
 	driver_unbind(priv.fd.sysfs_drv, priv.dev_bus_addr);
@@ -238,7 +250,7 @@ static void hotunplug_lateclose(void)
 {
 	struct hotunplug priv;
 
-	prepare(&priv, NULL, 0);
+	prepare_for_rescan(&priv);
 
 	local_debug("hot unplugging the device");
 	device_unplug(priv.fd.sysfs_dev);
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
