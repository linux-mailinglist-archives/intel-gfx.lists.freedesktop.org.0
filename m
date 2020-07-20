Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E02C225E53
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jul 2020 14:19:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B42FA6E3DF;
	Mon, 20 Jul 2020 12:19:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEF0E6E3E5;
 Mon, 20 Jul 2020 12:19:42 +0000 (UTC)
IronPort-SDR: y9aUp9p87FYD0V5r1zHJtlZuBG23B25UWLJ+MwNzSzpYE+RclD897PSclAXYiems58XPvKjuqF
 jaTBuEzvAFow==
X-IronPort-AV: E=McAfee;i="6000,8403,9687"; a="129463967"
X-IronPort-AV: E=Sophos;i="5.75,374,1589266800"; d="scan'208";a="129463967"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2020 05:19:42 -0700
IronPort-SDR: 2Qi78UhKOgcWYAEvcAuDAvjLv9gYoiPUPPi4cC91KEBoevmaYgB/+KU/ta4GG5kUaWzNhOMezi
 QlegL/uO0I3g==
X-IronPort-AV: E=Sophos;i="5.75,375,1589266800"; d="scan'208";a="461669652"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2020 05:19:40 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 20 Jul 2020 14:19:01 +0200
Message-Id: <20200720121908.28124-9-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200720121908.28124-1-janusz.krzysztofik@linux.intel.com>
References: <20200720121908.28124-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATH i-g-t 08/15] tests/core_hotunplug: Handle
 device close errors
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

The test now ignores device close errors.  Those errors are believed to
have no influence on device health so there is no need to process them
the same way as we mostly do on errors, i.e., notify CI about a problem
via igt_abort.  However, those errors may indicate issues with the test
itself.  Moreover, impact of those errors on operations performed by
subtests, like driver unbind or device remove, should be perceived as
undefined.  Then, we should fail as soon as a device or device sysfs
node close error occurs and also skip subsequent subtests.  However,
once a driver unbind or device unplug operation has been attempted by a
subtest, we can't just fail without checking the device health.

When in a subtest, store results of device close operations for future
reference.  Reuse file descriptor fields of the hotunplug structure for
that.  Unless in between of a driver remove or device unplug operation
and a successful device health check, fail current test section right
after a device close error occurs, warn otherwise.  If still running,
examine device file descriptor fields in subsequent igt_fixture
sections and skip on errors.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/core_hotunplug.c | 61 ++++++++++++++++++++++++++++++++----------
 1 file changed, 47 insertions(+), 14 deletions(-)

diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
index 6070b7d95..cdb07a97c 100644
--- a/tests/core_hotunplug.c
+++ b/tests/core_hotunplug.c
@@ -43,13 +43,22 @@ struct hotunplug {
 		int sysfs_dev;
 		int sysfs_bus;
 		int sysfs_drv;
-	} fd;
+	} fd;	/* >= 0: valid fd, == -1: closed, < -1: close failed */
 	const char *dev_bus_addr;
 	const char *failure;
 };
 
 /* Helpers */
 
+static int local_close(int fd)
+{
+	errno = 0;
+	if (close(fd))	/* close failure - return -errno (never -1) */
+		return -errno;
+
+	return -1;	/* success - return 'closed' */
+}
+
 static void prepare_for_unbind(struct hotunplug *priv, char *buf, int buflen)
 {
 	int len;
@@ -66,7 +75,9 @@ static void prepare_for_unbind(struct hotunplug *priv, char *buf, int buflen)
 	igt_assert(priv->dev_bus_addr++);
 
 	/* sysfs_dev no longer needed */
-	close(priv->fd.sysfs_dev);
+	priv->fd.sysfs_dev = local_close(priv->fd.sysfs_dev);
+	igt_assert_f(priv->fd.sysfs_dev == -1,
+		     "Device sysfs node close failed\n");
 }
 
 static void prepare(struct hotunplug *priv, char *buf, int buflen)
@@ -127,7 +138,9 @@ static void device_unplug(struct hotunplug *priv, const char *prefix)
 	igt_reset_timeout();
 	priv->failure = NULL;
 
-	close(priv->fd.sysfs_dev);
+	priv->fd.sysfs_dev = local_close(priv->fd.sysfs_dev);
+	igt_warn_on_f(priv->fd.sysfs_dev != -1,
+		      "Device sysfs node close failed\n");
 }
 
 /* Re-discover the device by rescanning its bus */
@@ -146,6 +159,7 @@ static void bus_rescan(struct hotunplug *priv)
 
 static void healthcheck(struct hotunplug *priv)
 {
+	/* preserve error code potentially stored before in priv->fd.drm */
 	int fd_drm;
 
 	/* device name may have changed, rebuild IGT device list */
@@ -161,7 +175,19 @@ static void healthcheck(struct hotunplug *priv)
 		priv->failure = NULL;
 	}
 
-	close(fd_drm);
+	fd_drm = local_close(fd_drm);
+	if (priv->fd.drm == -1)
+		priv->fd.drm = fd_drm;
+	igt_assert_f(fd_drm == -1, "Device close failed\n");
+}
+
+static void post_healthckeck(struct hotunplug *priv)
+{
+	igt_abort_on_f(priv->failure, "%s\n", priv->failure);
+
+	igt_require_f(priv->fd.drm == -1, "Device not closed properly\n");
+	igt_require_f(priv->fd.sysfs_dev == -1,
+		      "Device sysfs node not closed properly\n");
 }
 
 static void set_filter_from_device(int fd)
@@ -188,7 +214,8 @@ static void unbind_rebind(struct hotunplug *priv)
 	prepare(priv, buf, sizeof(buf));
 
 	igt_debug("closing the device\n");
-	close(priv->fd.drm);
+	priv->fd.drm = local_close(priv->fd.drm);
+	igt_assert_f(priv->fd.drm == -1, "Device close failed\n");
 
 	driver_unbind(priv, "");
 
@@ -202,7 +229,8 @@ static void unplug_rescan(struct hotunplug *priv)
 	prepare(priv, NULL, 0);
 
 	igt_debug("closing the device\n");
-	close(priv->fd.drm);
+	priv->fd.drm = local_close(priv->fd.drm);
+	igt_assert_f(priv->fd.drm == -1, "Device close failed\n");
 
 	device_unplug(priv, "");
 
@@ -222,7 +250,8 @@ static void hotunbind_lateclose(struct hotunplug *priv)
 	driver_bind(priv);
 
 	igt_debug("late closing the unbound device instance\n");
-	close(priv->fd.drm);
+	priv->fd.drm = local_close(priv->fd.drm);
+	igt_warn_on_f(priv->fd.drm != -1, "Device close failed\n");
 
 	healthcheck(priv);
 }
@@ -236,7 +265,8 @@ static void hotunplug_lateclose(struct hotunplug *priv)
 	bus_rescan(priv);
 
 	igt_debug("late closing the removed device instance\n");
-	close(priv->fd.drm);
+	priv->fd.drm = local_close(priv->fd.drm);
+	igt_warn_on_f(priv->fd.drm != -1, "Device close failed\n");
 
 	healthcheck(priv);
 }
@@ -245,7 +275,10 @@ static void hotunplug_lateclose(struct hotunplug *priv)
 
 igt_main
 {
-	struct hotunplug priv = { .failure = NULL, };
+	struct hotunplug priv = {
+		.fd		= { .drm = -1, .sysfs_dev = -1, },
+		.failure	= NULL,
+	};
 
 	igt_fixture {
 		int fd_drm;
@@ -264,7 +297,7 @@ igt_main
 		/* Make sure subtests always reopen the same device */
 		set_filter_from_device(fd_drm);
 
-		close(fd_drm);
+		igt_fail_on_f(close(fd_drm), "Device close failed\n");
 	}
 
 	igt_describe("Check if the driver can be cleanly unbound from a device believed to be closed");
@@ -272,26 +305,26 @@ igt_main
 		unbind_rebind(&priv);
 
 	igt_fixture
-		igt_abort_on_f(priv.failure, "%s\n", priv.failure);
+		post_healthckeck(&priv);
 
 	igt_describe("Check if a device believed to be closed can be cleanly unplugged");
 	igt_subtest("unplug-rescan")
 		unplug_rescan(&priv);
 
 	igt_fixture
-		igt_abort_on_f(priv.failure, "%s\n", priv.failure);
+		post_healthckeck(&priv);
 
 	igt_describe("Check if the driver can be cleanly unbound from a still open device, then released");
 	igt_subtest("hotunbind-lateclose")
 		hotunbind_lateclose(&priv);
 
 	igt_fixture
-		igt_abort_on_f(priv.failure, "%s\n", priv.failure);
+		post_healthckeck(&priv);
 
 	igt_describe("Check if a still open device can be cleanly unplugged, then released");
 	igt_subtest("hotunplug-lateclose")
 		hotunplug_lateclose(&priv);
 
 	igt_fixture
-		igt_abort_on_f(priv.failure, "%s\n", priv.failure);
+		post_healthckeck(&priv);
 }
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
