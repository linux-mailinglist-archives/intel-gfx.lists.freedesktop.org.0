Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DFCCB265DF2
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Sep 2020 12:31:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 585A16EA02;
	Fri, 11 Sep 2020 10:31:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F19F6EA0B;
 Fri, 11 Sep 2020 10:31:41 +0000 (UTC)
IronPort-SDR: YkEgl7SPY59jiz8wmui6csc15woejIyV/HeFNKSR/vdv2Qi5MWhwrxgsXcbZKKoyCRYqIDzVjA
 cQJQSCVlOGxQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9740"; a="156185797"
X-IronPort-AV: E=Sophos;i="5.76,414,1592895600"; d="scan'208";a="156185797"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 03:31:41 -0700
IronPort-SDR: LLR/NtArDeP083NPHzcsVIg8LdFBWcIV0gTZziPRL6lhV0sSqR0kUYDBvxYBRdsmJZXUmHDIub
 BQXXeyps2/Eg==
X-IronPort-AV: E=Sophos;i="5.76,414,1592895600"; d="scan'208";a="334474876"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 03:31:38 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 11 Sep 2020 12:30:37 +0200
Message-Id: <20200911103039.4574-23-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200911103039.4574-1-janusz.krzysztofik@linux.intel.com>
References: <20200911103039.4574-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v6 22/24] tests/core_hotunplug: Duplicate
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
v5: Refresh.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/core_hotunplug.c | 24 +++++++++++++++---------
 1 file changed, 15 insertions(+), 9 deletions(-)

diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
index 3e2a76ddb..67e67627f 100644
--- a/tests/core_hotunplug.c
+++ b/tests/core_hotunplug.c
@@ -53,6 +53,12 @@ struct hotunplug {
 
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
@@ -62,8 +68,8 @@ static int local_drm_open_driver(bool render, const char *when, const char *why)
 {
 	int fd_drm;
 
-	igt_debug("%sopening %s device%s\n", when, render ? "render" : "DRM",
-		  why);
+	local_debug("%sopening %s device%s\n", when, render ? "render" : "DRM",
+		    why);
 
 	fd_drm = render ? __drm_open_driver_render(DRIVER_ANY) :
 			  __drm_open_driver(DRIVER_ANY);
@@ -86,7 +92,7 @@ static int close_device(int fd_drm, const char *when, const char *which)
 	if (fd_drm < 0)	/* not open - return current status */
 		return fd_drm;
 
-	igt_debug("%sclosing %sdevice instance\n", when, which);
+	local_debug("%sclosing %sdevice instance\n", when, which);
 	return local_close(fd_drm, "Device close failed");
 }
 
@@ -128,7 +134,7 @@ static void prepare(struct hotunplug *priv)
 static void driver_unbind(struct hotunplug *priv, const char *prefix,
 			  int timeout)
 {
-	igt_debug("%sunbinding the driver from the device\n", prefix);
+	local_debug("%sunbinding the driver from the device\n", prefix);
 	priv->failure = "Driver unbind failure!";
 
 	igt_set_timeout(timeout, "Driver unbind timeout!");
@@ -144,7 +150,7 @@ static void driver_unbind(struct hotunplug *priv, const char *prefix,
 /* Re-bind the driver to the device */
 static void driver_bind(struct hotunplug *priv, int timeout)
 {
-	igt_debug("rebinding the driver to the device\n");
+	local_debug("%s\n", "rebinding the driver to the device");
 	priv->failure = "Driver re-bind failure!";
 
 	igt_set_timeout(timeout, "Driver re-bind timeout!");
@@ -168,7 +174,7 @@ static void device_unplug(struct hotunplug *priv, const char *prefix,
 				    O_DIRECTORY);
 	igt_assert_fd(priv->fd.sysfs_dev);
 
-	igt_debug("%sunplugging the device\n", prefix);
+	local_debug("%sunplugging the device\n", prefix);
 	priv->failure = "Device unplug failure!";
 
 	igt_set_timeout(timeout, "Device unplug timeout!");
@@ -186,7 +192,7 @@ static void device_unplug(struct hotunplug *priv, const char *prefix,
 /* Re-discover the device by rescanning its bus */
 static void bus_rescan(struct hotunplug *priv, int timeout)
 {
-	igt_debug("rediscovering the device\n");
+	local_debug("%s\n", "rediscovering the device");
 	priv->failure = "Bus rescan failure!";
 
 	igt_set_timeout(timeout, "Bus rescan timeout!");
@@ -241,7 +247,7 @@ static int local_i915_healthcheck(int i915, const char *prefix)
 	if (hang_detected)
 		return -EIO;
 
-	igt_debug("%srunning i915 GPU healthcheck\n", prefix);
+	local_debug("%s%s\n", prefix, "running i915 GPU healthcheck");
 
 	if (local_i915_is_wedged(i915))
 		return -EIO;
@@ -276,7 +282,7 @@ static int local_i915_recover(int i915)
 	if (!local_i915_healthcheck(i915, "re-"))
 		return 0;
 
-	igt_debug("forcing i915 GPU reset\n");
+	local_debug("%s\n", "forcing i915 GPU reset");
 	igt_force_gpu_reset(i915);
 
 	hang_detected = false;
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
