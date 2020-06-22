Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4765B203CD5
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2020 18:44:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88E376E85D;
	Mon, 22 Jun 2020 16:44:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBE846E85E;
 Mon, 22 Jun 2020 16:44:44 +0000 (UTC)
IronPort-SDR: YbXoMpBcZotH3sLsu9WszAPnO8FjoWIPFFeg/Vry+e+UJ/svrAIP3tQ5erPcbhvbR5e3Aa/k+/
 qMGcyIhDS1eA==
X-IronPort-AV: E=McAfee;i="6000,8403,9660"; a="205294135"
X-IronPort-AV: E=Sophos;i="5.75,268,1589266800"; d="scan'208";a="205294135"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 09:44:44 -0700
IronPort-SDR: Z6fhAgXesqGl2lnj2q65f4YWibO9sv1/w+vqQMOweq/yjDFS0TB3Ph07mLD8iU/JkEMc2MCLLv
 C7OsWeC1+IVA==
X-IronPort-AV: E=Sophos;i="5.75,267,1589266800"; d="scan'208";a="422687553"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 09:44:43 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 22 Jun 2020 18:44:12 +0200
Message-Id: <20200622164415.30352-6-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200622164415.30352-1-janusz.krzysztofik@linux.intel.com>
References: <20200622164415.30352-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH i-g-t v2 5/8] tests/core_hotunplug: Add 'GEM
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

v2: rebase on upstream, update includes order

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/core_hotunplug.c | 31 +++++++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
index 0892e1927..18a963564 100644
--- a/tests/core_hotunplug.c
+++ b/tests/core_hotunplug.c
@@ -30,6 +30,7 @@
 #include <unistd.h>
 
 #include "i915/gem.h"
+#include "i915/gem_vm.h"
 #include "igt.h"
 #include "igt_device_scan.h"
 #include "igt_kmod.h"
@@ -332,6 +333,29 @@ static void hotreplug_lateclose(void)
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
@@ -404,4 +428,11 @@ igt_main
 
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
