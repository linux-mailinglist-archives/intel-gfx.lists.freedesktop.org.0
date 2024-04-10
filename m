Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A265C89EA50
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Apr 2024 08:05:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F8A710E727;
	Wed, 10 Apr 2024 06:05:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fHs6XTSb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0CEC10E727
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Apr 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712729153; x=1744265153;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0kUo/OBtSh9FinrwLfnEexLyxU/uJmbE0oORsLaNCxg=;
 b=fHs6XTSbg8jDJ5nBO1ujbiFLI/C7PMHJrI2Expn+DI7kUx4cbTDsAALg
 wrabj5NT3wyY3I1UgjYdKy1QVuOlChufYCOba+vAKlV0uGcFxvgzqwpfE
 OFYxn3JS5vlbeqjGJMockID4aiJoi4mPiU5Dp8voP2AeHFSoYWUmDW5V6
 ZjCjUbEFz+JcbvCqlJPpL0n9P2RL25zWjwJLCkMPJrmktzWl9miJsrAj/
 PM3PJht0NuQOdrF7ua0U9NH4EqcmbkmJ1xci+O1+KzeCn+k49JFh0NU8H
 YGMqHxwADHjft/hH8EEVA+9ttkJ3ZOrLw3XK0Y14CBilnis4646BqLyRJ Q==;
X-CSE-ConnectionGUID: /b3rWS8vSrqntcdw7KnfMw==
X-CSE-MsgGUID: sYowaVWBQXeeV4eDLsIZSA==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="7928811"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; 
   d="scan'208";a="7928811"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2024 23:05:53 -0700
X-CSE-ConnectionGUID: lSK7FlocSy+ImPSxFqmaqQ==
X-CSE-MsgGUID: cye81TMsQB6iPPgxIgnSqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="20479909"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2024 23:05:53 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Badal Nilawar <badal.nilawar@intel.com>
Subject: [PATCH] drm/i915: Don't enable hwmon for selftests
Date: Tue,  9 Apr 2024 23:05:49 -0700
Message-ID: <20240410060549.201177-1-ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.41.0
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

There are no hwmon selftests so there is no need to enable hwmon for
selftests. So enable hwmon only for real driver load.

v2: Move the logic inside i915_hwmon.c
v3: Move is_i915_selftest definition to i915_selftest.h (Badal)

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/10366
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/i915_hwmon.c    |  3 ++-
 drivers/gpu/drm/i915/i915_selftest.h | 10 ++++++++++
 2 files changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
index 8c3f443c8347..cf1689333ebf 100644
--- a/drivers/gpu/drm/i915/i915_hwmon.c
+++ b/drivers/gpu/drm/i915/i915_hwmon.c
@@ -10,6 +10,7 @@
 #include "i915_drv.h"
 #include "i915_hwmon.h"
 #include "i915_reg.h"
+#include "i915_selftest.h"
 #include "intel_mchbar_regs.h"
 #include "intel_pcode.h"
 #include "gt/intel_gt.h"
@@ -789,7 +790,7 @@ void i915_hwmon_register(struct drm_i915_private *i915)
 	int i;
 
 	/* hwmon is available only for dGfx */
-	if (!IS_DGFX(i915))
+	if (!IS_DGFX(i915) || is_i915_selftest())
 		return;
 
 	hwmon = devm_kzalloc(dev, sizeof(*hwmon), GFP_KERNEL);
diff --git a/drivers/gpu/drm/i915/i915_selftest.h b/drivers/gpu/drm/i915/i915_selftest.h
index bdf3e22c0a34..19e5076823a7 100644
--- a/drivers/gpu/drm/i915/i915_selftest.h
+++ b/drivers/gpu/drm/i915/i915_selftest.h
@@ -111,6 +111,11 @@ int __i915_subtests(const char *caller,
 #define I915_SELFTEST_ONLY(x) unlikely(x)
 #define I915_SELFTEST_EXPORT
 
+static inline bool is_i915_selftest(void)
+{
+	return i915_selftest.live || i915_selftest.perf || i915_selftest.mock;
+}
+
 #else /* !IS_ENABLED(CONFIG_DRM_I915_SELFTEST) */
 
 static inline int i915_mock_selftests(void) { return 0; }
@@ -121,6 +126,11 @@ static inline int i915_perf_selftests(struct pci_dev *pdev) { return 0; }
 #define I915_SELFTEST_ONLY(x) 0
 #define I915_SELFTEST_EXPORT static
 
+static inline bool is_i915_selftest(void)
+{
+	return false;
+}
+
 #endif
 
 /* Using the i915_selftest_ prefix becomes a little unwieldy with the helpers.
-- 
2.41.0

