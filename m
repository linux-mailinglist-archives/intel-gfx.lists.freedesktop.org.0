Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E552203CD7
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2020 18:44:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C07BE6E439;
	Mon, 22 Jun 2020 16:44:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82CB06E861;
 Mon, 22 Jun 2020 16:44:51 +0000 (UTC)
IronPort-SDR: DZ4ylYTz7mvUeo/m5mbRtE6010sLHox6YgWoF95ivAcAUAPlwhgb69m4ZvemUWhq/lgnTl3e9k
 WmemLD+4kvRg==
X-IronPort-AV: E=McAfee;i="6000,8403,9660"; a="205294167"
X-IronPort-AV: E=Sophos;i="5.75,268,1589266800"; d="scan'208";a="205294167"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 09:44:51 -0700
IronPort-SDR: b6CBttxRIrKZWpPuGvCPxhJyrnHzwQs1/fkuhfkO+7dsag5erLJTqXspSFh5xXQCqhWx3QLiuv
 6kpnYhMefU9g==
X-IronPort-AV: E=Sophos;i="5.75,267,1589266800"; d="scan'208";a="422687577"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 09:44:47 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 22 Jun 2020 18:44:14 +0200
Message-Id: <20200622164415.30352-8-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200622164415.30352-1-janusz.krzysztofik@linux.intel.com>
References: <20200622164415.30352-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH i-g-t v2 7/8] tests/core_hotunplug: Add
 'PRIME handle' variant
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

Even if all device file descriptors are closed on device hotunplug,
PRIME exported objects may still exists, referenced by still open
dma-buf file handles.  Add a subtest that keeps such handle open on
device hotunplug.

v2: rebase on upstream

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/core_hotunplug.c | 36 ++++++++++++++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
index c30d98a69..7cb699cc2 100644
--- a/tests/core_hotunplug.c
+++ b/tests/core_hotunplug.c
@@ -379,6 +379,35 @@ static void gem_hotunplug_lateclose(void)
 	healthcheck();
 }
 
+static void prime_hotunplug_lateclose(void)
+{
+	struct hotunplug priv;
+	uint32_t handle;
+	int dmabuf;
+
+	prepare_for_rescan(&priv);
+
+	igt_require_gem(priv.fd.drm);
+
+	local_debug("creating and PRIME-exporting a GEM object");
+	handle = gem_create(priv.fd.drm, 4096);
+	dmabuf = prime_handle_to_fd(priv.fd.drm, handle);
+
+	local_debug("closing the device");
+	close(priv.fd.drm);
+
+	local_debug("hot unplugging the device");
+	device_unplug(priv.fd.sysfs_dev);
+
+	local_debug("late closing the PRIME file handle");
+	close(dmabuf);
+
+	local_debug("recovering the device");
+	bus_rescan(priv.fd.sysfs_bus);
+
+	healthcheck();
+}
+
 /* Main */
 
 igt_main
@@ -465,4 +494,11 @@ igt_main
 
 	igt_fixture
 		igt_abort_on_f(failure, "%s\n", failure);
+
+	igt_describe("Check if a device with a still open PRIME-exported object can be cleanly unplugged, then released and recovered");
+	igt_subtest("prime-hotunplug-lateclose")
+		prime_hotunplug_lateclose();
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
