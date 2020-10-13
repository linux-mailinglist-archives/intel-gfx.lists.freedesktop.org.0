Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B90628CC24
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Oct 2020 13:03:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EECC6E8BD;
	Tue, 13 Oct 2020 11:03:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8AE66E8BA;
 Tue, 13 Oct 2020 11:03:14 +0000 (UTC)
IronPort-SDR: Pz8CvyYtS9WAIdhIy3tS9a/Ub4yjPS4buIkc7hacnwH/r1+vrKhtUOBODFK5IG0FIOK0xqi6SL
 Hjg4+Ka45XFg==
X-IronPort-AV: E=McAfee;i="6000,8403,9772"; a="145754778"
X-IronPort-AV: E=Sophos;i="5.77,370,1596524400"; d="scan'208";a="145754778"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2020 04:03:07 -0700
IronPort-SDR: cGUsCAuvO8FtMfeOuKFxN88j3HF5N30ISr8ABh0NdGoL/bxthXXg4ARuNFAxBPiqpdD60QwLsC
 n+6b/2EVDo6w==
X-IronPort-AV: E=Sophos;i="5.77,370,1596524400"; d="scan'208";a="520996954"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2020 04:03:01 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Tue, 13 Oct 2020 13:02:34 +0200
Message-Id: <20201013110234.17680-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v3] tests/core_hotunplug: Restore i915
 debugfs health check
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
Cc: Adam Miszczak <adam.miszczak@intel.com>,
 Dominik Grzegorzek <dominik.grzegorzek@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Marcin Bernatowicz <marcin.bernatowicz@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Removal of igt_fork_hang_detector() from local_i915_healthcheck() by
commit 1fbd127bd4e1 ("core_hotplug: Teach the healthcheck how to check
execution status") resulted in unintentional removal of an important
though implicit test feature of detecting, reporting as failures and
recovering from potential misses of debugfs subdirs of hot rebound i915
devices.  As a consequence, unexpected failures or skips of other
unrelated but subsequently run tests have been observed on CI.

On the other hand, removal of the debugfs issue detection and subtest
failures from right after hot rebinding the driver enabled the better
version of the i915 GPU health check fixed by the same commit to detect
and report other issues potentially triggered by device late close.

Restore the missing test feature by introducing an explicit sysfs
health check, not limited to i915,  that verifies existence of device
sysfs and debugfs areas.  Also, split hotrebind/hotreplug scenarios
into a pair of each, one that performs the health check right after hot
rebind/replug and delegates the device late close step to a follow up
recovery phase, while the other one checks device health only after
late closing it.

v2: Give GPU health check a better chance to detect issues - run it
    before sysfs health checks.
v3: Run sysfs health check on any hardware, not only i915.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
---
Even if the root cause has occurred to be sitting on the IGT lib side
and has been already fixed by commit 937526629344 ("lib: Don't fail
debugfs lookup on an expected absent drm device"), I think we should
restore the debugfs health check just in case new issues with similar
symptoms appear in the future and start affecting subsequent tests
silently.

Thanks,
Janusz

 tests/core_hotunplug.c | 68 ++++++++++++++++++++++++++++++++++++++----
 1 file changed, 62 insertions(+), 6 deletions(-)

diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
index 70669c590..cdc07c85d 100644
--- a/tests/core_hotunplug.c
+++ b/tests/core_hotunplug.c
@@ -308,7 +308,7 @@ static void node_healthcheck(struct hotunplug *priv, unsigned flags)
 		priv->failure = "Unrecoverable test failure";
 		if (local_i915_healthcheck(fd_drm, "") &&
 		    (!(flags & FLAG_RECOVER) || local_i915_recover(fd_drm)))
-			priv->failure = "Healthcheck failure!";
+			priv->failure = "GPU healthcheck failure!";
 		else
 			priv->failure = NULL;
 
@@ -317,6 +317,16 @@ static void node_healthcheck(struct hotunplug *priv, unsigned flags)
 		priv->failure = NULL;
 	}
 
+	if (!priv->failure) {
+		char path[200];
+
+		priv->failure = "Device sysfs healthckeck failure!";
+		local_debug("%s\n", "running device sysfs healthcheck");
+		igt_assert(igt_sysfs_path(fd_drm, path, sizeof(path)));
+		igt_assert(igt_debugfs_path(fd_drm, path, sizeof(path)));
+		priv->failure = NULL;
+	}
+
 	fd_drm = close_device(fd_drm, "", "health checked ");
 	if (closed || fd_drm < -1)	/* update status for post_healthcheck */
 		priv->fd.drm_hc = fd_drm;
@@ -437,7 +447,7 @@ static void hotunplug_rescan(struct hotunplug *priv)
 	healthcheck(priv, false);
 }
 
-static void hotrebind_lateclose(struct hotunplug *priv)
+static void hotrebind(struct hotunplug *priv)
 {
 	igt_assert_eq(priv->fd.drm, -1);
 	igt_assert_eq(priv->fd.drm_hc, -1);
@@ -448,6 +458,30 @@ static void hotrebind_lateclose(struct hotunplug *priv)
 	driver_bind(priv, 0);
 
 	healthcheck(priv, false);
+}
+
+static void hotreplug(struct hotunplug *priv)
+{
+	igt_assert_eq(priv->fd.drm, -1);
+	igt_assert_eq(priv->fd.drm_hc, -1);
+	priv->fd.drm = local_drm_open_driver(false, "", " for hot replug");
+
+	device_unplug(priv, "hot ", 60);
+
+	bus_rescan(priv, 0);
+
+	healthcheck(priv, false);
+}
+
+static void hotrebind_lateclose(struct hotunplug *priv)
+{
+	igt_assert_eq(priv->fd.drm, -1);
+	igt_assert_eq(priv->fd.drm_hc, -1);
+	priv->fd.drm = local_drm_open_driver(false, "", " for hot rebind");
+
+	driver_unbind(priv, "hot ", 60);
+
+	driver_bind(priv, 0);
 
 	priv->fd.drm = close_device(priv->fd.drm, "late ", "unbound ");
 	igt_assert_eq(priv->fd.drm, -1);
@@ -465,8 +499,6 @@ static void hotreplug_lateclose(struct hotunplug *priv)
 
 	bus_rescan(priv, 0);
 
-	healthcheck(priv, false);
-
 	priv->fd.drm = close_device(priv->fd.drm, "late ", "removed ");
 	igt_assert_eq(priv->fd.drm, -1);
 
@@ -570,7 +602,31 @@ igt_main
 		post_healthcheck(&priv);
 
 	igt_subtest_group {
-		igt_describe("Check if the driver hot unbound from a still open device can be cleanly rebound, then the old instance released");
+		igt_describe("Check if the driver can be cleanly rebound to a device with a still open hot unbound driver instance");
+		igt_subtest("hotrebind")
+			hotrebind(&priv);
+
+		igt_fixture
+			recover(&priv);
+	}
+
+	igt_fixture
+		post_healthcheck(&priv);
+
+	igt_subtest_group {
+		igt_describe("Check if a hot unplugged and still open device can be cleanly restored");
+		igt_subtest("hotreplug")
+			hotreplug(&priv);
+
+		igt_fixture
+			recover(&priv);
+	}
+
+	igt_fixture
+		post_healthcheck(&priv);
+
+	igt_subtest_group {
+		igt_describe("Check if a hot unbound driver instance still open after hot rebind can be cleanly released");
 		igt_subtest("hotrebind-lateclose")
 			hotrebind_lateclose(&priv);
 
@@ -582,7 +638,7 @@ igt_main
 		post_healthcheck(&priv);
 
 	igt_subtest_group {
-		igt_describe("Check if a still open while hot unplugged device can be cleanly restored, then the old instance released");
+		igt_describe("Check if an instance of a still open while hot replugged device can be cleanly released");
 		igt_subtest("hotreplug-lateclose")
 			hotreplug_lateclose(&priv);
 
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
