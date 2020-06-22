Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6A58203A98
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2020 17:19:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD4FC6E834;
	Mon, 22 Jun 2020 15:19:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B0A96E829;
 Mon, 22 Jun 2020 15:19:25 +0000 (UTC)
IronPort-SDR: rnrty4QKiVKN7cO+Vo9oPWQ0e0sBiJlkbJA+CDfwpvUvW2GHq4gG5mjoemiQg6QVvxgPRe5dUR
 GvSYt7OYT5zA==
X-IronPort-AV: E=McAfee;i="6000,8403,9659"; a="145296438"
X-IronPort-AV: E=Sophos;i="5.75,267,1589266800"; d="scan'208";a="145296438"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 08:19:05 -0700
IronPort-SDR: S7GG25Tq9GwKbKtm84ZqjKihYVTr0MCGriiog0o80dpb/X06RaRwaB+wVV/lDd5G7GBcCXsp4H
 q6CvGuW7DOgg==
X-IronPort-AV: E=Sophos;i="5.75,267,1589266800"; d="scan'208";a="451871678"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 08:19:04 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 22 Jun 2020 17:18:42 +0200
Message-Id: <20200622151845.4520-6-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200622151845.4520-1-janusz.krzysztofik@linux.intel.com>
References: <20200622151845.4520-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH i-g-t 5/8] tests/core_hotunplug: Add 'GEM
 address space' variant
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

Verify if an additional address space associated with an open device
file descriptor is cleaned up correctly on device hotunplug.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/core_hotunplug.c | 32 ++++++++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
index f736a991f..6d9f530b1 100644
--- a/tests/core_hotunplug.c
+++ b/tests/core_hotunplug.c
@@ -34,6 +34,8 @@
 #include "igt_kmod.h"
 #include "igt_sysfs.h"
 
+#include "i915/gem_vm.h"
+
 IGT_TEST_DESCRIPTION("Examine behavior of a driver on device hot unplug");
 
 struct hotunplug {
@@ -330,6 +332,29 @@ static void hotreplug_lateclose(void)
 	healthcheck();
 }
 
+static void vm_hotunplug_lateclose(void)
+{
+	struct hotunplug priv;
+
+	prepare_for_rescan(&priv);
+
+	gem_require_vm(priv.fd.drm);
+
+	local_debug("creating additional GEM user address space");
+	igt_ignore_warn(gem_vm_create(priv.fd.drm));
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
 /* Main */
 
 igt_main
@@ -402,4 +427,11 @@ igt_main
 
 	igt_fixture
 		igt_abort_on_f(failure, "%s\n", failure);
+
+	igt_describe("Check if a still open device with extra GEM address space can be cleanly unplugged, then released and recovered");
+	igt_subtest("vm-hotunplug-lateclose")
+		vm_hotunplug_lateclose();
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
