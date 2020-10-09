Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD84288F5A
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Oct 2020 19:02:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 360826ECF9;
	Fri,  9 Oct 2020 17:02:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 823B16ECF9;
 Fri,  9 Oct 2020 17:02:44 +0000 (UTC)
IronPort-SDR: iUeqS1j7iSGJ2mmz+ikzs3k1HTQVdV5wmE/2iH+y5wE8jF00nCqBr8CAHXZzILfloq1ClpV+bP
 ZwfIqk8sZoAw==
X-IronPort-AV: E=McAfee;i="6000,8403,9769"; a="165624640"
X-IronPort-AV: E=Sophos;i="5.77,355,1596524400"; d="scan'208";a="165624640"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2020 10:02:43 -0700
IronPort-SDR: N1dIIYPEpQ1ghZ2+nDDe6GGcpnHWd0xbneElVALRRZcxf1uHb+dCfrSa9tU8RSlr7Cmc+84qZr
 iKHSwzPfNjYg==
X-IronPort-AV: E=Sophos;i="5.77,355,1596524400"; d="scan'208";a="317098847"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2020 10:02:42 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri,  9 Oct 2020 19:02:25 +0200
Message-Id: <20201009170225.10542-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] tests/core_hotunplug: Restore i915
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
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
failures right after hot rebinding the driver enabled the better
version of the i915 GPU health check fixed by the same commit to detect
and report other issues potentially triggered by device late close.

Restore the missing test feature by introducing an explicit i915 sysfs
health check that verifies existence of device sysfs and debugfs areas.
Also, split hotrebind/hotreplug scenarios into a pair of each, one that
performs the health check right after hot rebind/replug and delegates
the device late close step to a follow up recovery phase while the
other one checks device health only after late closing it.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/core_hotunplug.c | 61 ++++++++++++++++++++++++++++++++++++++----
 1 file changed, 56 insertions(+), 5 deletions(-)

diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
index 70669c590..92c3440e7 100644
--- a/tests/core_hotunplug.c
+++ b/tests/core_hotunplug.c
@@ -250,6 +250,11 @@ static int local_i915_healthcheck(int i915, const char *prefix)
 	};
 	const struct intel_execution_engine2 *engine;
 	int fence = -1;
+	char path[200];
+
+	local_debug("%s%s\n", prefix, "running i915 sysfs healthcheck");
+	igt_assert(igt_sysfs_path(i915, path, sizeof(path)));
+	igt_assert(igt_debugfs_path(i915, path, sizeof(path)));
 
 	local_debug("%s%s\n", prefix, "running i915 GPU healthcheck");
 	if (local_i915_is_wedged(i915))
@@ -437,7 +442,7 @@ static void hotunplug_rescan(struct hotunplug *priv)
 	healthcheck(priv, false);
 }
 
-static void hotrebind_lateclose(struct hotunplug *priv)
+static void hotrebind(struct hotunplug *priv)
 {
 	igt_assert_eq(priv->fd.drm, -1);
 	igt_assert_eq(priv->fd.drm_hc, -1);
@@ -448,6 +453,30 @@ static void hotrebind_lateclose(struct hotunplug *priv)
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
@@ -465,8 +494,6 @@ static void hotreplug_lateclose(struct hotunplug *priv)
 
 	bus_rescan(priv, 0);
 
-	healthcheck(priv, false);
-
 	priv->fd.drm = close_device(priv->fd.drm, "late ", "removed ");
 	igt_assert_eq(priv->fd.drm, -1);
 
@@ -570,7 +597,31 @@ igt_main
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
 
@@ -582,7 +633,7 @@ igt_main
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
