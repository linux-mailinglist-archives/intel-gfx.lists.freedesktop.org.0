Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6426203A95
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2020 17:19:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 277D96E1A8;
	Mon, 22 Jun 2020 15:19:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0066B6E1A8;
 Mon, 22 Jun 2020 15:19:00 +0000 (UTC)
IronPort-SDR: DuXb7pnLdWZESqqo8995J8mXC/WTjbHh7FtvecLoBJZAtBlwtTbObSxrqLbxCN+7haDgpaaomz
 +BpSFJQqqHMw==
X-IronPort-AV: E=McAfee;i="6000,8403,9659"; a="145296418"
X-IronPort-AV: E=Sophos;i="5.75,267,1589266800"; d="scan'208";a="145296418"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 08:19:00 -0700
IronPort-SDR: /OTNsklO1814bGWfmCJRkROQ+/lz6aYDyw+VrxJllujNTZDBPVy1ulNHr7j+/D+BifFzzi74E9
 b1WEyDpHUQ1Q==
X-IronPort-AV: E=Sophos;i="5.75,267,1589266800"; d="scan'208";a="451871644"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 08:18:59 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 22 Jun 2020 17:18:38 +0200
Message-Id: <20200622151845.4520-2-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200622151845.4520-1-janusz.krzysztofik@linux.intel.com>
References: <20200622151845.4520-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH i-g-t 1/8] tests/core_hotunplug: Duplicate
 debug messages in dmesg
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

The purpose of debug messages displayed by the test is to make
identification of a subtest phase that fails more easy.  Since issues
exhibited by the test are mostly reported to dmesg, print those debug
messages to /dev/kmsg as well.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/core_hotunplug.c | 38 ++++++++++++++++++++++----------------
 1 file changed, 22 insertions(+), 16 deletions(-)

diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
index f9cfc8c3c..187168009 100644
--- a/tests/core_hotunplug.c
+++ b/tests/core_hotunplug.c
@@ -48,6 +48,12 @@ struct hotunplug {
 
 /* Helpers */
 
+#define local_debug(msg...)						     \
+({									     \
+	igt_debug("%s: %s\n", __func__, msg);				     \
+	igt_kmsg(KMSG_DEBUG "%s: %s: %s\n", igt_test_name(), __func__, msg); \
+})
+
 static void prepare_for_unbind(struct hotunplug *priv, char *buf, int buflen)
 {
 	int len;
@@ -67,9 +73,9 @@ static void prepare_for_unbind(struct hotunplug *priv, char *buf, int buflen)
 	close(priv->fd.sysfs_dev);
 }
 
-static void prepare(struct hotunplug *priv, char *buf, int buflen)
+static inline void prepare(struct hotunplug *priv, char *buf, int buflen)
 {
-	igt_debug("opening device\n");
+	local_debug("opening device");
 	priv->fd.drm = __drm_open_driver(DRIVER_ANY);
 	igt_assert(priv->fd.drm >= 0);
 
@@ -136,14 +142,14 @@ static void bus_rescan(int fd_sysfs_bus)
 	close(fd_sysfs_bus);
 }
 
-static void healthcheck(void)
+static inline void healthcheck(void)
 {
 	int fd_drm;
 
 	/* device name may have changed, rebuild IGT device list */
 	igt_devices_scan(true);
 
-	igt_debug("reopening the device\n");
+	local_debug("reopening the device");
 	fd_drm = __drm_open_driver(DRIVER_ANY);
 	igt_abort_on_f(fd_drm < 0, "Device reopen failure");
 
@@ -179,13 +185,13 @@ static void unbind_rebind(void)
 
 	prepare(&priv, buf, sizeof(buf));
 
-	igt_debug("closing the device\n");
+	local_debug("closing the device");
 	close(priv.fd.drm);
 
-	igt_debug("unbinding the driver from the device\n");
+	local_debug("unbinding the driver from the device");
 	driver_unbind(priv.fd.sysfs_drv, priv.dev_bus_addr);
 
-	igt_debug("rebinding the driver to the device\n");
+	local_debug("rebinding the driver to the device");
 	driver_bind(priv.fd.sysfs_drv, priv.dev_bus_addr);
 
 	healthcheck();
@@ -197,13 +203,13 @@ static void unplug_rescan(void)
 
 	prepare(&priv, NULL, 0);
 
-	igt_debug("closing the device\n");
+	local_debug("closing the device");
 	close(priv.fd.drm);
 
-	igt_debug("unplugging the device\n");
+	local_debug("unplugging the device");
 	device_unplug(priv.fd.sysfs_dev);
 
-	igt_debug("recovering the device\n");
+	local_debug("recovering the device");
 	bus_rescan(priv.fd.sysfs_bus);
 
 	healthcheck();
@@ -216,13 +222,13 @@ static void hotunbind_lateclose(void)
 
 	prepare(&priv, buf, sizeof(buf));
 
-	igt_debug("hot unbinding the driver from the device\n");
+	local_debug("hot unbinding the driver from the device");
 	driver_unbind(priv.fd.sysfs_drv, priv.dev_bus_addr);
 
-	igt_debug("rebinding the driver to the device\n");
+	local_debug("rebinding the driver to the device");
 	driver_bind(priv.fd.sysfs_drv, priv.dev_bus_addr);
 
-	igt_debug("late closing the unbound device instance\n");
+	local_debug("late closing the unbound device instance");
 	close(priv.fd.drm);
 
 	healthcheck();
@@ -234,13 +240,13 @@ static void hotunplug_lateclose(void)
 
 	prepare(&priv, NULL, 0);
 
-	igt_debug("hot unplugging the device\n");
+	local_debug("hot unplugging the device");
 	device_unplug(priv.fd.sysfs_dev);
 
-	igt_debug("recovering the device\n");
+	local_debug("recovering the device");
 	bus_rescan(priv.fd.sysfs_bus);
 
-	igt_debug("late closing the removed device instance\n");
+	local_debug("late closing the removed device instance");
 	close(priv.fd.drm);
 
 	healthcheck();
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
