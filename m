Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 134C52555E6
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Aug 2020 10:00:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 318846EBA3;
	Fri, 28 Aug 2020 08:00:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42A406EB94;
 Fri, 28 Aug 2020 08:00:28 +0000 (UTC)
IronPort-SDR: lply4t6R+6wWo4SKX0/jqU4WCmIzcI7jPjlOwVQm8W4T86wR7Hsak0jkEzC26aEMGS5oyQhKwC
 dfLgkVwNq2eA==
X-IronPort-AV: E=McAfee;i="6000,8403,9726"; a="136690274"
X-IronPort-AV: E=Sophos;i="5.76,362,1592895600"; d="scan'208";a="136690274"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2020 01:00:27 -0700
IronPort-SDR: KHiKa28ntic34j4LAGBWoEYttp9WwII+x/jhLFD6nR2f3D1EWYjCygL4GJ71mfal/1WRTY3nqP
 SLDNL5nf+3JQ==
X-IronPort-AV: E=Sophos;i="5.76,363,1592895600"; d="scan'208";a="444756033"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2020 01:00:24 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 28 Aug 2020 09:59:25 +0200
Message-Id: <20200828075927.17061-20-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200828075927.17061-1-janusz.krzysztofik@linux.intel.com>
References: <20200828075927.17061-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v5 19/21] tests/core_hotunplug: Duplicate
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
Cc: =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal.winiarski@intel.com>,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The purpose of debug messages displayed by the test is to make
identification of a subtest phase that fails more easy.  Since issues
exhibited by the test are mostly reported to dmesg, print those debug
messages to /dev/kmsg as well.

v2: Rebase on upstream.
v3: Refresh.
v4: Refresh.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/core_hotunplug.c | 28 +++++++++++++++++-----------
 1 file changed, 17 insertions(+), 11 deletions(-)

diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
index 305c57a3f..361d601af 100644
--- a/tests/core_hotunplug.c
+++ b/tests/core_hotunplug.c
@@ -52,6 +52,12 @@ struct hotunplug {
 
 /* Helpers */
 
+#define local_debug(fmt, msg...)			       \
+({							       \
+	igt_debug(fmt, msg);				       \
+	igt_kmsg(KMSG_DEBUG "%s: " fmt, igt_test_name(), msg); \
+})
+
 /**
  * Subtests must be able to close examined devices completely.  Don't
  * use drm_open_driver() since in case of an i915 device it opens it
@@ -61,7 +67,7 @@ static int local_drm_open_driver(const char *prefix, const char *suffix)
 {
 	int fd_drm;
 
-	igt_debug("%sopening device%s\n", prefix, suffix);
+	local_debug("%sopening device%s\n", prefix, suffix);
 
 	fd_drm = __drm_open_driver(DRIVER_ANY);
 	igt_assert_fd(fd_drm);
@@ -121,7 +127,7 @@ static void prepare(struct hotunplug *priv)
 static void driver_unbind(struct hotunplug *priv, const char *prefix,
 			  int timeout)
 {
-	igt_debug("%sunbinding the driver from the device\n", prefix);
+	local_debug("%sunbinding the driver from the device\n", prefix);
 	priv->failure = "Driver unbind failure!";
 
 	igt_set_timeout(timeout, "Driver unbind timeout!");
@@ -137,7 +143,7 @@ static void driver_unbind(struct hotunplug *priv, const char *prefix,
 /* Re-bind the driver to the device */
 static void driver_bind(struct hotunplug *priv, int timeout)
 {
-	igt_debug("rebinding the driver to the device\n");
+	local_debug("%s\n", "rebinding the driver to the device");
 	priv->failure = "Driver re-bind failure!";
 
 	igt_set_timeout(timeout, "Driver re-bind timeout!");
@@ -161,7 +167,7 @@ static void device_unplug(struct hotunplug *priv, const char *prefix,
 				    O_DIRECTORY);
 	igt_assert_fd(priv->fd.sysfs_dev);
 
-	igt_debug("%sunplugging the device\n", prefix);
+	local_debug("%sunplugging the device\n", prefix);
 	priv->failure = "Device unplug failure!";
 
 	igt_set_timeout(timeout, "Device unplug timeout!");
@@ -179,7 +185,7 @@ static void device_unplug(struct hotunplug *priv, const char *prefix,
 /* Re-discover the device by rescanning its bus */
 static void bus_rescan(struct hotunplug *priv, int timeout)
 {
-	igt_debug("rediscovering the device\n");
+	local_debug("%s\n", "rediscovering the device");
 	priv->failure = "Bus rescan failure!";
 
 	igt_set_timeout(timeout, "Bus rescan timeout!");
@@ -232,7 +238,7 @@ static int local_i915_healthcheck(int i915, const char *prefix)
 	if (hang_detected)
 		return -EIO;
 
-	igt_debug("%srunning i915 GPU healthcheck\n", prefix);
+	local_debug("%s%s\n", prefix, "running i915 GPU healthcheck");
 
 	if (local_i915_is_wedged(i915))
 		return -EIO;
@@ -267,7 +273,7 @@ static int local_i915_recover(int i915)
 	if (!local_i915_healthcheck(i915, "re-"))
 		return 0;
 
-	igt_debug("forcing i915 GPU reset\n");
+	local_debug("%s\n", "forcing i915 GPU reset");
 	igt_force_gpu_reset(i915);
 
 	hang_detected = false;
@@ -392,7 +398,7 @@ static void hotunbind_rebind(struct hotunplug *priv)
 
 	driver_unbind(priv, "hot ", 0);
 
-	igt_debug("late closing the unbound device instance\n");
+	local_debug("%s\n", "late closing the unbound device instance");
 	priv->fd.drm = close_device(priv->fd.drm);
 	igt_assert_eq(priv->fd.drm, -1);
 
@@ -408,7 +414,7 @@ static void hotunplug_rescan(struct hotunplug *priv)
 
 	device_unplug(priv, "hot ", 0);
 
-	igt_debug("late closing the removed device instance\n");
+	local_debug("%s\n", "late closing the removed device instance");
 	priv->fd.drm = close_device(priv->fd.drm);
 	igt_assert_eq(priv->fd.drm, -1);
 
@@ -427,7 +433,7 @@ static void hotrebind_lateclose(struct hotunplug *priv)
 
 	healthcheck(priv, false);
 
-	igt_debug("late closing the unbound device instance\n");
+	local_debug("%s\n", "late closing the unbound device instance");
 	priv->fd.drm = close_device(priv->fd.drm);
 	igt_assert_eq(priv->fd.drm, -1);
 
@@ -444,7 +450,7 @@ static void hotreplug_lateclose(struct hotunplug *priv)
 
 	healthcheck(priv, false);
 
-	igt_debug("late closing the removed device instance\n");
+	local_debug("%s\n", "late closing the removed device instance");
 	priv->fd.drm = close_device(priv->fd.drm);
 	igt_assert_eq(priv->fd.drm, -1);
 
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
