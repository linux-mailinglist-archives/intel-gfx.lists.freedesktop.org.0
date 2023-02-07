Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7961D68DE83
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 18:10:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57C0A10E1E5;
	Tue,  7 Feb 2023 17:10:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A895910E1E5
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Feb 2023 17:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675789805; x=1707325805;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=c7Nx1+a9AbzHUKoEApM5nSH1xnWQBrcrsJ3HVH9uxfU=;
 b=ZgfPTeb1JKxt27MiBS/AOcAmmL6xZtMaS1FMykhI4XBB9tS8Hl23J++c
 dzUVntrGM5pLGljrv5mSqhq1JRkyoL6q4duVG7F6TNTc+d45S87fzW57w
 I2Y1PpvLoSoqKRGi6tdXi46xEUKS/mB/g66XNd8wrkfG2VQSWdz4+FU+c
 ami1KPDHdc8d1xptrrbGARWyxC/nuMT3/za41dn89qi69gOoyPpocN/16
 l+DGSijfMxYJClWrJ4tM12WWS6uWBJ02hywjCLj679hy1k3pdOxZPzVw9
 h+wzqm+JQOLyag53hkbRGwDdJYVs/hL6uB35dCDzY8qSI3dqmkXhTlRVS w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="317527610"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="317527610"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 06:03:46 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="775572328"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="775572328"
Received: from srr4-3-linux-118-swatish2.iind.intel.com ([10.223.34.130])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 06:03:44 -0800
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Feb 2023 19:35:57 +0530
Message-Id: <20230207140557.18164-1-swati2.sharma@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display/selftest: Add pcode selftest
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
Cc: Mohammed Khajapasha <mohammed.khajapasha@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Mohammed Khajapasha <mohammed.khajapasha@intel.com>

Include pcode selftest for display to validate QGV points read.
Failure of this selftest indicates a bad firmware rather than regular
display issue.

Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Mohammed Khajapasha <mohammed.khajapasha@intel.com>
Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |  3 +-
 drivers/gpu/drm/i915/display/intel_bw.c       |  4 ++
 .../drm/i915/display/selftests/selftest_bw.c  | 54 +++++++++++++++++++
 .../i915/display/selftests/selftest_display.c | 18 +++++++
 .../i915/display/selftests/selftest_display.h |  6 +++
 .../drm/i915/selftests/i915_live_selftests.h  |  1 +
 6 files changed, 85 insertions(+), 1 deletion(-)
 create mode 100644 drivers/gpu/drm/i915/display/selftests/selftest_bw.c
 create mode 100644 drivers/gpu/drm/i915/display/selftests/selftest_display.c
 create mode 100644 drivers/gpu/drm/i915/display/selftests/selftest_display.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 918470a04591..aa7d34b3f71c 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -350,7 +350,8 @@ i915-$(CONFIG_DRM_I915_SELFTEST) += \
 	selftests/igt_mmap.o \
 	selftests/igt_reset.o \
 	selftests/igt_spinner.o \
-	selftests/librapl.o
+	selftests/librapl.o \
+	display/selftests/selftest_display.o
 
 # virtual gpu code
 i915-y += i915_vgpu.o
diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 202321ffbe2a..b0bfe04f2835 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -1211,3 +1211,7 @@ int intel_bw_init(struct drm_i915_private *dev_priv)
 
 	return 0;
 }
+
+#if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
+#include "selftests/selftest_bw.c"
+#endif
diff --git a/drivers/gpu/drm/i915/display/selftests/selftest_bw.c b/drivers/gpu/drm/i915/display/selftests/selftest_bw.c
new file mode 100644
index 000000000000..69d52201bd9b
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/selftests/selftest_bw.c
@@ -0,0 +1,54 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2020 Intel Corporation
+ */
+
+#include "display/intel_bw.h"
+#include "i915_drv.h"
+#include "i915_selftest.h"
+#include "soc/intel_dram.h"
+#include "selftest_display.h"
+
+/**
+ * intel_pcode_read_qgv_points_read_test - Test QGV point reads from pcode
+ * @arg: i915 device instance
+ *
+ * Return 0 on success and error on fail and when dclk is zero
+ */
+int intel_pcode_read_qgv_points_test(void *arg)
+{
+	struct drm_i915_private *i915 = arg;
+	struct intel_qgv_info qi;
+	struct intel_qgv_point qp;
+	int i, ret;
+	bool fail = false;
+	intel_wakeref_t wakeref;
+
+	if (DISPLAY_VER(i915) < 11) {
+		drm_info(&i915->drm, "QGV doesn't support, skipping\n");
+		return 0;
+	}
+
+	with_intel_runtime_pm(i915->uncore.rpm, wakeref)
+		intel_dram_detect(i915);
+
+	qi.num_points = i915->dram_info.num_qgv_points;
+
+	for (i = 0; i < qi.num_points; i++) {
+		ret = intel_read_qgv_point_info(i915, &qp, i);
+		if (ret) {
+			drm_err(&i915->drm, "Pcode failed to read qgv point %d\n", i);
+			fail = true;
+		}
+
+		if (qp.dclk == 0) {
+			drm_err(&i915->drm, "DCLK set to 0 for qgv point %d\n", i);
+			fail = true;
+		}
+	}
+
+	if (fail)
+		return -EINVAL;
+
+	return 0;
+}
diff --git a/drivers/gpu/drm/i915/display/selftests/selftest_display.c b/drivers/gpu/drm/i915/display/selftests/selftest_display.c
new file mode 100644
index 000000000000..1663c69f9ddc
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/selftests/selftest_display.c
@@ -0,0 +1,18 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2020 Intel Corporation
+ */
+
+#include "i915_drv.h"
+#include "i915_selftest.h"
+
+#include "selftest_display.h"
+
+int intel_display_live_selftests(struct drm_i915_private *i915)
+{
+	static const struct i915_subtest tests[] = {
+		SUBTEST(intel_pcode_read_qgv_points_test),
+	};
+
+	return i915_subtests(tests, i915);
+}
diff --git a/drivers/gpu/drm/i915/display/selftests/selftest_display.h b/drivers/gpu/drm/i915/display/selftests/selftest_display.h
new file mode 100644
index 000000000000..c8d80d5945bb
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/selftests/selftest_display.h
@@ -0,0 +1,6 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2020 Intel Corporation
+ */
+
+int intel_pcode_read_qgv_points_test(void *arg);
diff --git a/drivers/gpu/drm/i915/selftests/i915_live_selftests.h b/drivers/gpu/drm/i915/selftests/i915_live_selftests.h
index 5aee6c9a8295..8f980483cca8 100644
--- a/drivers/gpu/drm/i915/selftests/i915_live_selftests.h
+++ b/drivers/gpu/drm/i915/selftests/i915_live_selftests.h
@@ -42,6 +42,7 @@ selftest(gem_contexts, i915_gem_context_live_selftests)
 selftest(client, i915_gem_client_blt_live_selftests)
 selftest(gem_migrate, i915_gem_migrate_live_selftests)
 selftest(reset, intel_reset_live_selftests)
+selftest(display, intel_display_live_selftests)
 selftest(memory_region, intel_memory_region_live_selftests)
 selftest(hangcheck, intel_hangcheck_live_selftests)
 selftest(execlists, intel_execlists_live_selftests)
-- 
2.25.1

