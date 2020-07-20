Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 37C94225E4F
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jul 2020 14:19:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75BA06E3D3;
	Mon, 20 Jul 2020 12:19:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22B076E3CB;
 Mon, 20 Jul 2020 12:19:34 +0000 (UTC)
IronPort-SDR: J7EYtfbc7nfHIVYecScUwAYcrn7n6lzMnYKwFACStq44kkSLNyDVyX4QOxYA9VFnLkNyF8ibz5
 bKyZ1yKnVHPg==
X-IronPort-AV: E=McAfee;i="6000,8403,9687"; a="129463954"
X-IronPort-AV: E=Sophos;i="5.75,374,1589266800"; d="scan'208";a="129463954"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2020 05:19:33 -0700
IronPort-SDR: B4rDnsR/eEU75P/KO7LsSLLJ8x3HXLRalUi3uKrix3Pw6n7RB93fdX0wlHhq0fcT7lKK0JilrM
 6oQIwYNrvh3A==
X-IronPort-AV: E=Sophos;i="5.75,375,1589266800"; d="scan'208";a="461669598"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2020 05:19:32 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 20 Jul 2020 14:18:56 +0200
Message-Id: <20200720121908.28124-4-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200720121908.28124-1-janusz.krzysztofik@linux.intel.com>
References: <20200720121908.28124-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATH i-g-t 03/15] tests/core_hotunplug:
 Consolidate duplicated debug messages
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

Some debug messages which designate specific test operations, or their
greater parts at least, sound always the same, no matter which subtest
they are called from.  Emit them, possibly updated with subtest
specified modifiers, from inside respective helpers instead of
duplicating them in subtest bodies.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/core_hotunplug.c | 29 +++++++++++++++--------------
 1 file changed, 15 insertions(+), 14 deletions(-)

diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
index a4071f51e..557f9e3fa 100644
--- a/tests/core_hotunplug.c
+++ b/tests/core_hotunplug.c
@@ -90,8 +90,11 @@ static void prepare(struct hotunplug *priv, char *buf, int buflen)
 static const char *failure;
 
 /* Unbind the driver from the device */
-static void driver_unbind(int fd_sysfs_drv, const char *dev_bus_addr)
+static void driver_unbind(int fd_sysfs_drv, const char *dev_bus_addr,
+			  const char *prefix)
 {
+	igt_debug("%sunbinding the driver from the device\n", prefix);
+
 	failure = "Driver unbind timeout!";
 	igt_set_timeout(60, failure);
 	igt_sysfs_set(fd_sysfs_drv, "unbind", dev_bus_addr);
@@ -104,6 +107,8 @@ static void driver_unbind(int fd_sysfs_drv, const char *dev_bus_addr)
 /* Re-bind the driver to the device */
 static void driver_bind(int fd_sysfs_drv, const char *dev_bus_addr)
 {
+	igt_debug("rebinding the driver to the device\n");
+
 	failure = "Driver re-bind timeout!";
 	igt_set_timeout(60, failure);
 	igt_sysfs_set(fd_sysfs_drv, "bind", dev_bus_addr);
@@ -114,8 +119,10 @@ static void driver_bind(int fd_sysfs_drv, const char *dev_bus_addr)
 }
 
 /* Remove (virtually unplug) the device from its bus */
-static void device_unplug(int fd_sysfs_dev)
+static void device_unplug(int fd_sysfs_dev, const char *prefix)
 {
+	igt_debug("%sunplugging the device\n", prefix);
+
 	failure = "Device unplug timeout!";
 	igt_set_timeout(60, failure);
 	igt_sysfs_set(fd_sysfs_dev, "device/remove", "1");
@@ -128,6 +135,8 @@ static void device_unplug(int fd_sysfs_dev)
 /* Re-discover the device by rescanning its bus */
 static void bus_rescan(int fd_sysfs_bus)
 {
+	igt_debug("recovering the device\n");
+
 	failure = "Bus rescan timeout!";
 	igt_set_timeout(60, failure);
 	igt_sysfs_set(fd_sysfs_bus, "rescan", "1");
@@ -184,10 +193,8 @@ static void unbind_rebind(void)
 	igt_debug("closing the device\n");
 	close(priv.fd.drm);
 
-	igt_debug("unbinding the driver from the device\n");
-	driver_unbind(priv.fd.sysfs_drv, priv.dev_bus_addr);
+	driver_unbind(priv.fd.sysfs_drv, priv.dev_bus_addr, "");
 
-	igt_debug("rebinding the driver to the device\n");
 	driver_bind(priv.fd.sysfs_drv, priv.dev_bus_addr);
 
 	healthcheck();
@@ -202,10 +209,8 @@ static void unplug_rescan(void)
 	igt_debug("closing the device\n");
 	close(priv.fd.drm);
 
-	igt_debug("unplugging the device\n");
-	device_unplug(priv.fd.sysfs_dev);
+	device_unplug(priv.fd.sysfs_dev, "");
 
-	igt_debug("recovering the device\n");
 	bus_rescan(priv.fd.sysfs_bus);
 
 	healthcheck();
@@ -218,10 +223,8 @@ static void hotunbind_lateclose(void)
 
 	prepare(&priv, buf, sizeof(buf));
 
-	igt_debug("hot unbinding the driver from the device\n");
-	driver_unbind(priv.fd.sysfs_drv, priv.dev_bus_addr);
+	driver_unbind(priv.fd.sysfs_drv, priv.dev_bus_addr, "hot ");
 
-	igt_debug("rebinding the driver to the device\n");
 	driver_bind(priv.fd.sysfs_drv, priv.dev_bus_addr);
 
 	igt_debug("late closing the unbound device instance\n");
@@ -236,10 +239,8 @@ static void hotunplug_lateclose(void)
 
 	prepare(&priv, NULL, 0);
 
-	igt_debug("hot unplugging the device\n");
-	device_unplug(priv.fd.sysfs_dev);
+	device_unplug(priv.fd.sysfs_dev, "hot ");
 
-	igt_debug("recovering the device\n");
 	bus_rescan(priv.fd.sysfs_bus);
 
 	igt_debug("late closing the removed device instance\n");
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
