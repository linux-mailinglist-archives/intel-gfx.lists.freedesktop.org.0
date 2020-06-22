Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 74582203CD4
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2020 18:44:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 529386E85C;
	Mon, 22 Jun 2020 16:44:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 021AE6E438;
 Mon, 22 Jun 2020 16:44:40 +0000 (UTC)
IronPort-SDR: WnwdG2tdRqLuuYyf1PbaIEGzybdE/kFce+Iulpy2WkIKNJwm2q5umF5O+MfAgYFWVooCqnDYn8
 Vag/vZTWg/Tw==
X-IronPort-AV: E=McAfee;i="6000,8403,9660"; a="205294119"
X-IronPort-AV: E=Sophos;i="5.75,268,1589266800"; d="scan'208";a="205294119"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 09:44:40 -0700
IronPort-SDR: nD+suEqzeUQyWgZw903E1LbiKaxsMPKqO0B+kHSABvKd7+LuZFo0eg8zp7plQcAz689eCwWl1a
 YBOOmwlb4UQw==
X-IronPort-AV: E=Sophos;i="5.75,267,1589266800"; d="scan'208";a="422687542"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 09:44:39 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 22 Jun 2020 18:44:10 +0200
Message-Id: <20200622164415.30352-4-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200622164415.30352-1-janusz.krzysztofik@linux.intel.com>
References: <20200622164415.30352-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH i-g-t v2 3/8] tests/core_hotunplug: Add
 unbind-unplug-rescan variant
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

Check if this 3-step procedure exhibits any issues with device recover
after unplug.  Such issues may indicate insufficient device hardware
re-initialization performed by the device driver, or other kernel bugs
outside the driver code.

v2: rebase on upstream

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/core_hotunplug.c | 40 ++++++++++++++++++++++++++++++++++++++--
 1 file changed, 38 insertions(+), 2 deletions(-)

diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
index 35eba9b8a..a4809720b 100644
--- a/tests/core_hotunplug.c
+++ b/tests/core_hotunplug.c
@@ -211,6 +211,35 @@ static void unbind_rebind(void)
 	healthcheck();
 }
 
+static void unbind_unplug_rescan(void)
+{
+	struct hotunplug priv;
+	char buf[PATH_MAX];
+
+	/* prepare for unbind */
+	prepare_for_rebind(&priv, buf, sizeof(buf));
+
+	/* also prepare for unplug */
+	local_debug("closing the device");
+	close(priv.fd.drm);
+	prepare_for_rescan(&priv);
+
+	local_debug("closing the device");
+	close(priv.fd.drm);
+
+	local_debug("unbinding the driver from the device");
+	driver_unbind(priv.fd.sysfs_drv, priv.dev_bus_addr);
+	close(priv.fd.sysfs_drv);
+
+	local_debug("unplugging the device");
+	device_unplug(priv.fd.sysfs_dev);
+
+	local_debug("recovering the device");
+	bus_rescan(priv.fd.sysfs_bus);
+
+	healthcheck();
+}
+
 static void unplug_rescan(void)
 {
 	struct hotunplug priv;
@@ -290,14 +319,21 @@ igt_main
 		close(fd_drm);
 	}
 
-	igt_describe("Check if the driver can be cleanly unbound from a device believed to be closed");
+	igt_describe("Check if the driver can be cleanly unbound from a device believed to be closed, then rebound");
 	igt_subtest("unbind-rebind")
 		unbind_rebind();
 
 	igt_fixture
 		igt_abort_on_f(failure, "%s\n", failure);
 
-	igt_describe("Check if a device believed to be closed can be cleanly unplugged");
+	igt_describe("Check if a device with the driver unbound from it can be cleanly recovered after being unplugged\n");
+	igt_subtest("unbind-unplug-rescan")
+		unbind_unplug_rescan();
+
+	igt_fixture
+		igt_abort_on_f(failure, "%s\n", failure);
+
+	igt_describe("Check if a device believed to be closed can be cleanly unplugged and recovered");
 	igt_subtest("unplug-rescan")
 		unplug_rescan();
 
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
