Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 31C3B203A9C
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2020 17:19:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74B416E1E9;
	Mon, 22 Jun 2020 15:19:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 741C96E830;
 Mon, 22 Jun 2020 15:19:26 +0000 (UTC)
IronPort-SDR: P+Pv97uRiwuLRvkkvrKXsapt21jfWKmIPlZnAeN2514bRlST84uvDr5R7F2kSvYJ9BPUQR7Oqa
 /2aUjEc7Ajxw==
X-IronPort-AV: E=McAfee;i="6000,8403,9659"; a="145296445"
X-IronPort-AV: E=Sophos;i="5.75,267,1589266800"; d="scan'208";a="145296445"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 08:19:08 -0700
IronPort-SDR: W0Xk+73MKnAMEhrzBDYQrRkQQuJBRJJEEH+408mXbVct/3C4FZaCxIxx62/EHuyBSqCGM8y7aj
 48cV1NK7030A==
X-IronPort-AV: E=Sophos;i="5.75,267,1589266800"; d="scan'208";a="451871686"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 08:19:07 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 22 Jun 2020 17:18:44 +0200
Message-Id: <20200622151845.4520-8-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200622151845.4520-1-janusz.krzysztofik@linux.intel.com>
References: <20200622151845.4520-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH i-g-t 7/8] tests/core_hotunplug: Add 'PRIME
 handle' variant
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

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/core_hotunplug.c | 36 ++++++++++++++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
index 309d4efef..35a4fb13c 100644
--- a/tests/core_hotunplug.c
+++ b/tests/core_hotunplug.c
@@ -378,6 +378,35 @@ static void gem_hotunplug_lateclose(void)
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
@@ -464,4 +493,11 @@ igt_main
 
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
