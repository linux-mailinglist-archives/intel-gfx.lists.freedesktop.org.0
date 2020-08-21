Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2387124D8E0
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Aug 2020 17:39:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 171166EADD;
	Fri, 21 Aug 2020 15:39:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56AAD6E829;
 Fri, 21 Aug 2020 15:38:59 +0000 (UTC)
IronPort-SDR: xaTUvfe6DgfzfQUtS2jEhAvzqh1sHTevyIpUPLEiwIb3Zd98/RzVON6w42+P/wizWkwG+q8hu/
 NSLwPcGtL77w==
X-IronPort-AV: E=McAfee;i="6000,8403,9719"; a="240381947"
X-IronPort-AV: E=Sophos;i="5.76,337,1592895600"; d="scan'208";a="240381947"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2020 08:38:59 -0700
IronPort-SDR: 4y76+wbC4s28Fr+gzhy5OMkRZcFuUgmW6qCy6Z55hRY3bFh4+08l7ELBNSdpbqomaXzuZfNbPo
 La1jtS/SiNqA==
X-IronPort-AV: E=Sophos;i="5.76,337,1592895600"; d="scan'208";a="473086788"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2020 08:38:57 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 21 Aug 2020 17:38:06 +0200
Message-Id: <20200821153807.18613-20-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200821153807.18613-1-janusz.krzysztofik@linux.intel.com>
References: <20200821153807.18613-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v4 19/20] tests/core_hotunplug: Duplicate
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

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/core_hotunplug.c | 32 +++++++++++++++++++-------------
 1 file changed, 19 insertions(+), 13 deletions(-)

diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
index f919fa6de..ae7fe18ad 100644
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
@@ -120,7 +126,7 @@ static void prepare(struct hotunplug *priv)
 static void driver_unbind(struct hotunplug *priv, const char *prefix,
 			  int timeout)
 {
-	igt_debug("%sunbinding the driver from the device\n", prefix);
+	local_debug("%sunbinding the driver from the device\n", prefix);
 	priv->failure = "Driver unbind failure!";
 
 	igt_set_timeout(timeout, "Driver unbind timeout!");
@@ -136,7 +142,7 @@ static void driver_unbind(struct hotunplug *priv, const char *prefix,
 /* Re-bind the driver to the device */
 static void driver_bind(struct hotunplug *priv, int timeout)
 {
-	igt_debug("rebinding the driver to the device\n");
+	local_debug("%s\n", "rebinding the driver to the device");
 	priv->failure = "Driver re-bind failure!";
 
 	igt_set_timeout(timeout, "Driver re-bind timeout!");
@@ -160,7 +166,7 @@ static void device_unplug(struct hotunplug *priv, const char *prefix,
 				    O_DIRECTORY);
 	igt_assert_fd(priv->fd.sysfs_dev);
 
-	igt_debug("%sunplugging the device\n", prefix);
+	local_debug("%sunplugging the device\n", prefix);
 	priv->failure = "Device unplug failure!";
 
 	igt_set_timeout(timeout, "Device unplug timeout!");
@@ -178,7 +184,7 @@ static void device_unplug(struct hotunplug *priv, const char *prefix,
 /* Re-discover the device by rescanning its bus */
 static void bus_rescan(struct hotunplug *priv, int timeout)
 {
-	igt_debug("rediscovering the device\n");
+	local_debug("%s\n", "rediscovering the device");
 	priv->failure = "Bus rescan failure!";
 
 	igt_set_timeout(timeout, "Bus rescan timeout!");
@@ -231,7 +237,7 @@ static int local_i915_healthcheck(int i915)
 	if (hang_detected)
 		return -EIO;
 
-	igt_debug("running i915 GPU healthcheck\n");
+	local_debug("%s\n", "running i915 GPU healthcheck");
 
 	if (local_i915_is_wedged(i915))
 		return -EIO;
@@ -262,7 +268,7 @@ static int local_i915_healthcheck(int i915)
 
 static int local_i915_recover(int i915)
 {
-	igt_debug("forcing i915 GPU reset\n");
+	local_debug("%s\n", "forcing i915 GPU reset");
 
 	igt_force_gpu_reset(i915);
 	hang_detected = false;
@@ -369,7 +375,7 @@ static void hotunbind_lateclose(struct hotunplug *priv)
 
 	driver_unbind(priv, "hot ", 0);
 
-	igt_debug("late closing the unbound device instance\n");
+	local_debug("%s\n", "late closing the unbound device instance");
 	priv->fd.drm = close_device(priv->fd.drm);
 	igt_assert_eq(priv->fd.drm, -1);
 }
@@ -380,7 +386,7 @@ static void hotunplug_lateclose(struct hotunplug *priv)
 
 	device_unplug(priv, "hot ", 0);
 
-	igt_debug("late closing the removed device instance\n");
+	local_debug("%s\n", "late closing the removed device instance");
 	priv->fd.drm = close_device(priv->fd.drm);
 	igt_assert_eq(priv->fd.drm, -1);
 }
@@ -391,7 +397,7 @@ static void hotunbind_rebind(struct hotunplug *priv)
 
 	driver_unbind(priv, "hot ", 60);
 
-	igt_debug("late closing the unbound device instance\n");
+	local_debug("%s\n", "late closing the unbound device instance");
 	priv->fd.drm = close_device(priv->fd.drm);
 	igt_assert_eq(priv->fd.drm, -1);
 
@@ -406,7 +412,7 @@ static void hotunplug_rescan(struct hotunplug *priv)
 
 	device_unplug(priv, "hot ", 60);
 
-	igt_debug("late closing the removed device instance\n");
+	local_debug("%s\n", "late closing the removed device instance");
 	priv->fd.drm = close_device(priv->fd.drm);
 	igt_assert_eq(priv->fd.drm, -1);
 
@@ -423,7 +429,7 @@ static void hotrebind_lateclose(struct hotunplug *priv)
 
 	driver_bind(priv, 0);
 
-	igt_debug("late closing the unbound device instance\n");
+	local_debug("%s\n", "late closing the unbound device instance");
 	priv->fd.drm = close_device(priv->fd.drm);
 	igt_assert_eq(priv->fd.drm, -1);
 
@@ -438,7 +444,7 @@ static void hotreplug_lateclose(struct hotunplug *priv)
 
 	bus_rescan(priv, 0);
 
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
