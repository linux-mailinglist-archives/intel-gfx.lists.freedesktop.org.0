Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36712203CD8
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2020 18:44:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 517746E861;
	Mon, 22 Jun 2020 16:44:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BCAB6E439;
 Mon, 22 Jun 2020 16:44:53 +0000 (UTC)
IronPort-SDR: krb5WrRvGEtavMDwZSUVtrZfMgrOtqJ2MuFNvnh4v6sb1bbAmJxVfdChmVb2BZNfYNIrNfGbwl
 33hG6n8S2fUQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9660"; a="205294176"
X-IronPort-AV: E=Sophos;i="5.75,268,1589266800"; d="scan'208";a="205294176"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 09:44:53 -0700
IronPort-SDR: O8iPxxtTaWBBZ9yjPnrlWQfIrpQHi/I8ARnJ4QZRKkAc80yTIpqDecLMOXenv8jxUPcDGgPI3t
 T5ZunOoqv7aw==
X-IronPort-AV: E=Sophos;i="5.75,267,1589266800"; d="scan'208";a="422687595"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 09:44:51 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 22 Jun 2020 18:44:15 +0200
Message-Id: <20200622164415.30352-9-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200622164415.30352-1-janusz.krzysztofik@linux.intel.com>
References: <20200622164415.30352-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH i-g-t v2 8/8] tests/core_hotunplug: Add 'GEM
 batch' variant
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

Verify if a device with a GEM batch job still running on a GPU can be
hot-unplugged cleanly and released, then recovered.

v2: rebase on upstream

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/core_hotunplug.c | 34 ++++++++++++++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
index 7cb699cc2..672ff661d 100644
--- a/tests/core_hotunplug.c
+++ b/tests/core_hotunplug.c
@@ -33,6 +33,7 @@
 #include "i915/gem_vm.h"
 #include "igt.h"
 #include "igt_device_scan.h"
+#include "igt_dummyload.h"
 #include "igt_kmod.h"
 #include "igt_sysfs.h"
 
@@ -408,6 +409,32 @@ static void prime_hotunplug_lateclose(void)
 	healthcheck();
 }
 
+static void batch_hotunplug_lateclose(void)
+{
+	struct hotunplug priv;
+	igt_spin_t *spin;
+
+	prepare_for_rescan(&priv);
+
+	igt_require_gem(priv.fd.drm);
+
+	local_debug("running dummy load");
+	spin = __igt_spin_new(priv.fd.drm, .flags = IGT_SPIN_POLL_RUN |
+						    IGT_SPIN_NO_PREEMPTION);
+	igt_spin_busywait_until_started(spin);
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
@@ -501,4 +528,11 @@ igt_main
 
 	igt_fixture
 		igt_abort_on_f(failure, "%s\n", failure);
+
+	igt_describe("Check if a device with a still running batch can be cleanly unplugged, then released and recovered");
+	igt_subtest("batch-hotunplug-lateclose")
+		batch_hotunplug_lateclose();
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
