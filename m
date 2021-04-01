Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 534593515A7
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Apr 2021 16:37:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11B636ECC5;
	Thu,  1 Apr 2021 14:37:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E0896ECC5;
 Thu,  1 Apr 2021 14:37:25 +0000 (UTC)
IronPort-SDR: IRHCW6v3VceBtxEzEEr/ZblCXIrLjy0Wmq5cIR8JmOn7EdiyjcGck7arWAdKs8I6Cc50icmhXN
 A7a/3qxbEFWw==
X-IronPort-AV: E=McAfee;i="6000,8403,9941"; a="188996596"
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400"; d="scan'208";a="188996596"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2021 07:37:25 -0700
IronPort-SDR: cmO5/bv/y7nf04/c8kB/UXcFhGALhFeoHxfzR9+5NLv0FHfnQVZCWE4gaApUXHuZeuJTQe4sNu
 /9s5AcYETo3g==
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400"; d="scan'208";a="419225289"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.28.167])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2021 07:37:23 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu,  1 Apr 2021 16:36:39 +0200
Message-Id: <20210401143643.7867-2-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210401143643.7867-1-janusz.krzysztofik@linux.intel.com>
References: <20210401143643.7867-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH i-g-t 2/6] tests/core_hotunplug: Add 'GEM
 address space' variants
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
file descriptor is cleaned up correctly on device hotunbind / hotunplug.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/core_hotunplug.c | 79 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 79 insertions(+)

diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
index 4f6c4f625..decfcdfda 100644
--- a/tests/core_hotunplug.c
+++ b/tests/core_hotunplug.c
@@ -32,6 +32,7 @@
 
 #include "i915/gem.h"
 #include "i915/gem_context.h"
+#include "i915/gem_vm.h"
 #include "igt.h"
 #include "igt_device_scan.h"
 #include "igt_kmod.h"
@@ -600,6 +601,60 @@ static void ctx_hotunplug_lateclose(struct hotunplug *priv)
 	igt_assert_eq(priv->fd.drm, -1);
 }
 
+static void vm_hotunbind_lateclose(struct hotunplug *priv)
+{
+	int vm;
+
+	igt_require(priv->fd.drm = -1);
+	priv->fd.drm = local_drm_open_driver(false, "pre-", " for prerequisites check");
+
+	igt_require_intel(priv->fd.drm);
+	gem_require_vm(priv->fd.drm);
+	priv->fd.drm = close_device(priv->fd.drm, "", "pre-checked ");
+
+	pre_check(priv);
+
+	priv->fd.drm = local_drm_open_driver(false, "", " for hot unbind");
+
+	local_debug("%s\n", "creating additional GEM user address space");
+	vm = gem_vm_create(priv->fd.drm);
+
+	driver_unbind(priv, "hot ", 0);
+
+	local_debug("%s\n", "trying to late remove the address space");
+	igt_assert_eq(__gem_vm_destroy(priv->fd.drm, vm), -ENODEV);
+
+	priv->fd.drm = close_device(priv->fd.drm, "late ", "removed ");
+	igt_assert_eq(priv->fd.drm, -1);
+}
+
+static void vm_hotunplug_lateclose(struct hotunplug *priv)
+{
+	int vm;
+
+	igt_require(priv->fd.drm = -1);
+	priv->fd.drm = local_drm_open_driver(false, "pre-", " for prerequisites check");
+
+	igt_require_intel(priv->fd.drm);
+	gem_require_vm(priv->fd.drm);
+	priv->fd.drm = close_device(priv->fd.drm, "", "pre-checked ");
+
+	pre_check(priv);
+
+	priv->fd.drm = local_drm_open_driver(false, "", " for hot unplug");
+
+	local_debug("%s\n", "creating additional GEM user address space");
+	vm = gem_vm_create(priv->fd.drm);
+
+	device_unplug(priv, "hot ", 0);
+
+	local_debug("%s\n", "trying to late remove the address space");
+	igt_assert_eq(__gem_vm_destroy(priv->fd.drm, vm), -ENODEV);
+
+	priv->fd.drm = close_device(priv->fd.drm, "late ", "unbound ");
+	igt_assert_eq(priv->fd.drm, -1);
+}
+
 /* Main */
 
 igt_main
@@ -761,6 +816,30 @@ igt_main
 			recover(&priv);
 	}
 
+	igt_fixture
+		post_healthcheck(&priv);
+
+	igt_subtest_group {
+		igt_describe("Check if the driver can be cleanly unboound form a still open device with extra GEM address space, then released");
+		igt_subtest("vm-hotunbind-lateclose")
+			vm_hotunbind_lateclose(&priv);
+
+		igt_fixture
+			recover(&priv);
+	}
+
+	igt_fixture
+		post_healthcheck(&priv);
+
+	igt_subtest_group {
+		igt_describe("Check if a still open device with extra GEM address space can be cleanly unplugged, then released");
+		igt_subtest("vm-hotunplug-lateclose")
+			vm_hotunplug_lateclose(&priv);
+
+		igt_fixture
+			recover(&priv);
+	}
+
 	igt_fixture {
 		post_healthcheck(&priv);
 
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
