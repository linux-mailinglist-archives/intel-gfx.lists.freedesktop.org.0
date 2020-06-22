Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EBEF9203CD3
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2020 18:44:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7D866E438;
	Mon, 22 Jun 2020 16:44:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 041906E438;
 Mon, 22 Jun 2020 16:44:42 +0000 (UTC)
IronPort-SDR: 0mOlxOVWBG4eH02xINI0yTh6NOYuWS7qYpdIb32PEHhRTtX9iV1402tHsLntdBtm7k97phuQJX
 N6Rv1Ix9y7SQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9660"; a="205294126"
X-IronPort-AV: E=Sophos;i="5.75,268,1589266800"; d="scan'208";a="205294126"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 09:44:42 -0700
IronPort-SDR: ftbAc7zJ+m9Fpe6FRFGB9Q8CxIOa3d/k1Ih622LhxoyCJQcFtNEFKBMKgyS1Myob64FKnESO46
 5r8POF/Et5jw==
X-IronPort-AV: E=Sophos;i="5.75,267,1589266800"; d="scan'208";a="422687549"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 09:44:41 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 22 Jun 2020 18:44:11 +0200
Message-Id: <20200622164415.30352-5-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200622164415.30352-1-janusz.krzysztofik@linux.intel.com>
References: <20200622164415.30352-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH i-g-t v2 4/8] tests/core_hotunplug: Add
 'lateclose before recover' variants
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

If a GPU gets wedged during driver rebind or device re-plug for some
reason, current hotunbind/hotunplug test variants may time out before
lateclose phase, resulting in incomplete CI reports.  Let's rename
those variants to more adequate hotrebind/hotreplug-lateclose and add
new variants focused on exercising the lateclose phase regardless of
potential rebind/re-plug issues under old names.

v2: rebase on upstream

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/core_hotunplug.c | 57 +++++++++++++++++++++++++++++++++++++++---
 1 file changed, 54 insertions(+), 3 deletions(-)

diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
index a4809720b..0892e1927 100644
--- a/tests/core_hotunplug.c
+++ b/tests/core_hotunplug.c
@@ -268,6 +268,43 @@ static void hotunbind_lateclose(void)
 	local_debug("hot unbinding the driver from the device");
 	driver_unbind(priv.fd.sysfs_drv, priv.dev_bus_addr);
 
+	local_debug("late closing the unbound device instance");
+	close(priv.fd.drm);
+
+	local_debug("rebinding the driver to the device");
+	driver_bind(priv.fd.sysfs_drv, priv.dev_bus_addr);
+
+	healthcheck();
+}
+
+static void hotunplug_lateclose(void)
+{
+	struct hotunplug priv;
+
+	prepare_for_rescan(&priv);
+
+	local_debug("hot unplugging the device");
+	device_unplug(priv.fd.sysfs_dev);
+
+	local_debug("late closing the removed device instance");
+	close(priv.fd.drm);
+
+	local_debug("recovering the device");
+	bus_rescan(priv.fd.sysfs_bus);
+
+	healthcheck();
+}
+
+static void hotrebind_lateclose(void)
+{
+	struct hotunplug priv;
+	char buf[PATH_MAX];
+
+	prepare_for_rebind(&priv, buf, sizeof(buf));
+
+	local_debug("hot unbinding the driver from the device");
+	driver_unbind(priv.fd.sysfs_drv, priv.dev_bus_addr);
+
 	local_debug("rebinding the driver to the device");
 	driver_bind(priv.fd.sysfs_drv, priv.dev_bus_addr);
 
@@ -277,7 +314,7 @@ static void hotunbind_lateclose(void)
 	healthcheck();
 }
 
-static void hotunplug_lateclose(void)
+static void hotreplug_lateclose(void)
 {
 	struct hotunplug priv;
 
@@ -340,17 +377,31 @@ igt_main
 	igt_fixture
 		igt_abort_on_f(failure, "%s\n", failure);
 
-	igt_describe("Check if the driver can be cleanly unbound from a still open device, then released");
+	igt_describe("Check if the driver can be cleanly unbound from a still open device, then released and rebound");
 	igt_subtest("hotunbind-lateclose")
 		hotunbind_lateclose();
 
 	igt_fixture
 		igt_abort_on_f(failure, "%s\n", failure);
 
-	igt_describe("Check if a still open device can be cleanly unplugged, then released");
+	igt_describe("Check if a still open device can be cleanly unplugged, then released and recovered");
 	igt_subtest("hotunplug-lateclose")
 		hotunplug_lateclose();
 
 	igt_fixture
 		igt_abort_on_f(failure, "%s\n", failure);
+
+	igt_describe("Check if the driver can be cleanly unbound from an open device and rebound back, then released");
+	igt_subtest("hotrebind-lateclose")
+		hotrebind_lateclose();
+
+	igt_fixture
+		igt_abort_on_f(failure, "%s\n", failure);
+
+	igt_describe("Check if a still open device can be cleanly unplugged and recovered, then released");
+	igt_subtest("hotreplug-lateclose")
+		hotreplug_lateclose();
+
+	igt_fixture
+		igt_abort_on_f(failure, "%s\n", failure);
 }
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
