Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F15C24D8D7
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Aug 2020 17:38:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D042E6E983;
	Fri, 21 Aug 2020 15:38:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82B836E87B;
 Fri, 21 Aug 2020 15:38:47 +0000 (UTC)
IronPort-SDR: kFs8a7r4jmrQ1AtF6s2DGVMR8qy+/7/d/f5FLxSlN47pM9Ul9JlVYL6c9dYIVofgGm/JpRgLLK
 1AkV95YdbE1w==
X-IronPort-AV: E=McAfee;i="6000,8403,9719"; a="240381907"
X-IronPort-AV: E=Sophos;i="5.76,337,1592895600"; d="scan'208";a="240381907"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2020 08:38:47 -0700
IronPort-SDR: AHUbjR49hasvaAVEv3Qerr0CTpFXliqJszqpKfmbUabL/tR3UgtZUJ89t1MCdm+kdxsejmsggL
 XO3e5Z/zzZLg==
X-IronPort-AV: E=Sophos;i="5.76,337,1592895600"; d="scan'208";a="473086695"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2020 08:38:45 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 21 Aug 2020 17:38:00 +0200
Message-Id: <20200821153807.18613-14-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200821153807.18613-1-janusz.krzysztofik@linux.intel.com>
References: <20200821153807.18613-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v4 13/20] tests/core_hotunplug: Let the
 driver time out essential sysfs operations
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
Cc: =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal.winiarski@intel.com>,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The test now arms a timer before performing each driver unbind / rebind
or device unplug / bus rescan sysfs operation.  Then in case of issues
we may prevent the driver from showing us if and how it can handle
them.

Don't arm the timer before sysfs operations which are essential for a
subtest.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/core_hotunplug.c | 38 ++++++++++++++++++++------------------
 1 file changed, 20 insertions(+), 18 deletions(-)

diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
index e048f3a15..572c66474 100644
--- a/tests/core_hotunplug.c
+++ b/tests/core_hotunplug.c
@@ -115,29 +115,31 @@ static void prepare(struct hotunplug *priv)
 }
 
 /* Unbind the driver from the device */
-static void driver_unbind(struct hotunplug *priv, const char *prefix)
+static void driver_unbind(struct hotunplug *priv, const char *prefix,
+			  int timeout)
 {
 	igt_debug("%sunbinding the driver from the device\n", prefix);
 	priv->failure = "Driver unbind failure!";
 
-	igt_set_timeout(60, "Driver unbind timeout!");
+	igt_set_timeout(timeout, "Driver unbind timeout!");
 	igt_sysfs_set(priv->fd.sysfs_drv, "unbind", priv->dev_bus_addr);
 	igt_reset_timeout();
 }
 
 /* Re-bind the driver to the device */
-static void driver_bind(struct hotunplug *priv)
+static void driver_bind(struct hotunplug *priv, int timeout)
 {
 	igt_debug("rebinding the driver to the device\n");
 	priv->failure = "Driver re-bind failure!";
 
-	igt_set_timeout(60, "Driver re-bind timeout!");
+	igt_set_timeout(timeout, "Driver re-bind timeout!");
 	igt_sysfs_set(priv->fd.sysfs_drv, "bind", priv->dev_bus_addr);
 	igt_reset_timeout();
 }
 
 /* Remove (virtually unplug) the device from its bus */
-static void device_unplug(struct hotunplug *priv, const char *prefix)
+static void device_unplug(struct hotunplug *priv, const char *prefix,
+			  int timeout)
 {
 	igt_require(priv->fd.sysfs_dev == -1);
 
@@ -148,7 +150,7 @@ static void device_unplug(struct hotunplug *priv, const char *prefix)
 	igt_debug("%sunplugging the device\n", prefix);
 	priv->failure = "Device unplug failure!";
 
-	igt_set_timeout(60, "Device unplug timeout!");
+	igt_set_timeout(timeout, "Device unplug timeout!");
 	igt_sysfs_set(priv->fd.sysfs_dev, "remove", "1");
 	igt_reset_timeout();
 
@@ -157,12 +159,12 @@ static void device_unplug(struct hotunplug *priv, const char *prefix)
 }
 
 /* Re-discover the device by rescanning its bus */
-static void bus_rescan(struct hotunplug *priv)
+static void bus_rescan(struct hotunplug *priv, int timeout)
 {
 	igt_debug("rediscovering the device\n");
 	priv->failure = "Bus rescan failure!";
 
-	igt_set_timeout(60, "Bus rescan timeout!");
+	igt_set_timeout(timeout, "Bus rescan timeout!");
 	igt_sysfs_set(priv->fd.sysfs_bus, "../rescan", "1");
 	igt_reset_timeout();
 }
@@ -209,10 +211,10 @@ static void recover(struct hotunplug *priv)
 	cleanup(priv);
 
 	if (faccessat(priv->fd.sysfs_bus, priv->dev_bus_addr, F_OK, 0))
-		bus_rescan(priv);
+		bus_rescan(priv, 60);
 
 	else if (faccessat(priv->fd.sysfs_drv, priv->dev_bus_addr, F_OK, 0))
-		driver_bind(priv);
+		driver_bind(priv, 60);
 
 	if (priv->failure)
 		healthcheck(priv);
@@ -245,18 +247,18 @@ static void set_filter_from_device(int fd)
 
 static void unbind_rebind(struct hotunplug *priv)
 {
-	driver_unbind(priv, "");
+	driver_unbind(priv, "", 0);
 
-	driver_bind(priv);
+	driver_bind(priv, 0);
 
 	healthcheck(priv);
 }
 
 static void unplug_rescan(struct hotunplug *priv)
 {
-	device_unplug(priv, "");
+	device_unplug(priv, "", 0);
 
-	bus_rescan(priv);
+	bus_rescan(priv, 0);
 
 	healthcheck(priv);
 }
@@ -265,9 +267,9 @@ static void hotunbind_lateclose(struct hotunplug *priv)
 {
 	priv->fd.drm = local_drm_open_driver("", " for hotunbind");
 
-	driver_unbind(priv, "hot ");
+	driver_unbind(priv, "hot ", 0);
 
-	driver_bind(priv);
+	driver_bind(priv, 60);
 
 	igt_debug("late closing the unbound device instance\n");
 	priv->fd.drm = close_device(priv->fd.drm);
@@ -278,9 +280,9 @@ static void hotunplug_lateclose(struct hotunplug *priv)
 {
 	priv->fd.drm = local_drm_open_driver("", " for hotunplug");
 
-	device_unplug(priv, "hot ");
+	device_unplug(priv, "hot ", 0);
 
-	bus_rescan(priv);
+	bus_rescan(priv, 60);
 
 	igt_debug("late closing the removed device instance\n");
 	priv->fd.drm = close_device(priv->fd.drm);
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
