Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C272A9965F6
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 11:52:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6388D10E6B8;
	Wed,  9 Oct 2024 09:52:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JI1GJQjs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD01910E6B7;
 Wed,  9 Oct 2024 09:52:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728467566; x=1760003566;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YQttl/+Vwl8Dxyo1zvdWitD0h4frUGqrgjmsrSzMycU=;
 b=JI1GJQjshizNXM2KJ1pjQZQLSvhBGNzNgPiGGl0A84O1DRM480U7Fcrf
 WiB1Fud0tMbyx7DoLufIHRtnjTUObXVbjH/9R8JWHI4oI+MdqVBwD8j92
 ABqFs9tW2KSmY88elinO2O4CeaqONLgOum88cFWp4G61TduE6Qeo/PWxE
 n8U6qbfSwrPEIcQ/Gs0tQE7dPYg0p1GeWNg+PDa5INoT3g/XxfRHKRbIL
 i8FWn4/AbwM1ID9H/1eWpmbuUowxNm0TAURHgtasOIGjq2625bajOKyke
 9qPWyT9m1urjSg9YIyFlr1nWQhtWnWALygg6h7PxsXYWGqFO8wdpfz7GY Q==;
X-CSE-ConnectionGUID: ia6xiOqlTY+4oxK/fAs8sQ==
X-CSE-MsgGUID: L6QOASWFSdGRmLUtrlNcQw==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="27845660"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="27845660"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 02:52:46 -0700
X-CSE-ConnectionGUID: rlQlZS/0SN2qJpkbixRhkg==
X-CSE-MsgGUID: +9ZLuUsuQ8ysmaDgUaPr/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="113677781"
Received: from tejas-super-server.iind.intel.com ([10.145.169.166])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 02:52:44 -0700
From: Tejas Upadhyay <tejas.upadhyay@intel.com>
To: igt-dev@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Tejas Upadhyay <tejas.upadhyay@intel.com>
Subject: [PATCH i-g-t] xe: Add test to check pci memory barrier capability
Date: Wed,  9 Oct 2024 15:26:08 +0530
Message-Id: <20241009095608.663743-1-tejas.upadhyay@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We want to make sure that direct mmap mapping of physical
page at doorbell space and whole page is accessible in order
to use pci memory barrier effect effectively.

This is basic pci memory barrier test to showcase xe driver
support for feature. In follow up patches we will have more
of corner and negative tests added later.

Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
---
 include/drm-uapi/xe_drm.h       |  3 ++
 tests/intel/xe_pci_membarrier.c | 77 +++++++++++++++++++++++++++++++++
 tests/meson.build               |  1 +
 3 files changed, 81 insertions(+)
 create mode 100644 tests/intel/xe_pci_membarrier.c

diff --git a/include/drm-uapi/xe_drm.h b/include/drm-uapi/xe_drm.h
index f0a450db9..866dc8060 100644
--- a/include/drm-uapi/xe_drm.h
+++ b/include/drm-uapi/xe_drm.h
@@ -823,6 +823,9 @@ struct drm_xe_gem_mmap_offset {
 	/** @offset: The fake offset to use for subsequent mmap call */
 	__u64 offset;
 
+	/* Specific MMAP offset for PCI memory barrier */
+#define DRM_XE_PCI_BARRIER_MMAP_OFFSET (0x50 << PAGE_SHIFT)
+
 	/** @reserved: Reserved */
 	__u64 reserved[2];
 };
diff --git a/tests/intel/xe_pci_membarrier.c b/tests/intel/xe_pci_membarrier.c
new file mode 100644
index 000000000..a28a01d4b
--- /dev/null
+++ b/tests/intel/xe_pci_membarrier.c
@@ -0,0 +1,77 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright(c) 2024 Intel Corporation. All rights reserved.
+ */
+
+#include "xe_drm.h"
+#include "igt.h"
+
+/**
+ * TEST: Test if the driver is capable of putting pci memory barrier using mmap
+ * Category: Core
+ * Mega feature: General Core features
+ * Sub-category: Memory management tests
+ * Functionality: mmap with pre-defined offset
+ */
+
+IGT_TEST_DESCRIPTION("Basic MMAP tests pci memory barrier effect with special offset");
+#define PAGE_SHIFT 12
+#define PAGE_SIZE 4096
+
+/**
+ * SUBTEST: pci-membarrier-basic
+ * Description: create pci memory barrier with write on defined mmap offset.
+ * Test category: functionality test
+ *
+ */
+
+static void pci_membarrier(int xe)
+{
+	uint64_t flags = MAP_SHARED;
+	uint64_t offset = DRM_XE_PCI_BARRIER_MMAP_OFFSET;
+	unsigned int prot = PROT_WRITE;
+	uint32_t *ptr;
+	uint64_t size = PAGE_SIZE;
+	struct timespec tv;
+
+	ptr = mmap(NULL, size, prot, flags, xe, offset);
+	igt_assert(ptr != MAP_FAILED);
+
+	/* Check whole page for any errors, also check as
+	 * we should not read written values back
+	 */
+	for (int i = 0; i < size / sizeof(*ptr); i++) {
+		/* It is expected unconfigured doorbell space
+		 * will return read value 0xdeadbeef
+		 */
+		igt_assert_eq_u32(READ_ONCE(ptr[i]), 0xdeadbeef);
+
+		igt_gettime(&tv);
+		ptr[i] = i;
+		if (READ_ONCE(ptr[i]) == i) {
+			while (READ_ONCE(ptr[i]) == i)
+				;
+			igt_info("fd:%d value retained for %"PRId64"ns pos:%d\n",
+				 xe, igt_nsec_elapsed(&tv), i);
+		}
+		igt_assert_neq(READ_ONCE(ptr[i]), i);
+	}
+
+	munmap(ptr, size);
+}
+
+igt_main
+{
+	int xe;
+
+	igt_fixture {
+		xe = drm_open_driver(DRIVER_XE);
+	}
+
+	igt_subtest_f("pci-membarrier-basic")
+		pci_membarrier(xe);
+
+	igt_fixture {
+		close(xe);
+	}
+}
diff --git a/tests/meson.build b/tests/meson.build
index e5d8852f3..310ef0e0d 100644
--- a/tests/meson.build
+++ b/tests/meson.build
@@ -304,6 +304,7 @@ intel_xe_progs = [
 	'xe_noexec_ping_pong',
 	'xe_oa',
 	'xe_pat',
+        'xe_pci_membarrier',
 	'xe_peer2peer',
 	'xe_pm',
 	'xe_pm_residency',
-- 
2.34.1

