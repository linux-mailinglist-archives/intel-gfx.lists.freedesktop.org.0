Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71FCF8A0107
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Apr 2024 22:07:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3980310E002;
	Wed, 10 Apr 2024 20:07:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aetupde+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 040B810F44E
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Apr 2024 20:07:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712779652; x=1744315652;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Hpa8Z3T2lPkbeQCmirH3NBQZ2Nf8L/jFiHpUMz6JZ+s=;
 b=aetupde+uyI5tggfg7UG3JaKLbxI74tXdeqTy+gj4ySJvuSGtVaiHYJl
 Ek/n9vzBCrCIhKFB0V19mr0yuFeoGUkOvLxJ6+1SSO2C2GW0+svVlC/wV
 70qrGwGHif7gdZkFZ1w+LtffGVgpUodd0vtZa9A5lH+DwCsbaJdtvNVRw
 pgjysjsSQOiV8EnweteuFFE7vbJpSBW9xMWe8nuIw0QZp8XyhrWzJUtRx
 6mHBpZBGOUzRMZB1OpxOvKzarbCTqrCOAyr3rHrEAHdMH5KKV1U8ovEvU
 D7XHRvuuSvT7MaZ2isD6GhIzjHnPu43wXBPSbYjcwkk/6AmmxeUXxbWAV Q==;
X-CSE-ConnectionGUID: GpkZtYG/SpyjD6EFUfO7mA==
X-CSE-MsgGUID: uyob2Mm8SFe2gdmsNqHekQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="18726451"
X-IronPort-AV: E=Sophos;i="6.07,191,1708416000"; d="scan'208";a="18726451"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 13:07:31 -0700
X-CSE-ConnectionGUID: pMBMJxllSzKdkTu76bLePQ==
X-CSE-MsgGUID: 7wEh9N4wQcCevqXwJ5FPhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,191,1708416000"; d="scan'208";a="51648174"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 13:07:32 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Badal Nilawar <badal.nilawar@intel.com>, Andi Shyti <andi.shyti@intel.com>
Subject: [PATCH] drm/i915: Don't enable hwmon for selftests
Date: Wed, 10 Apr 2024 13:07:27 -0700
Message-ID: <20240410200727.270913-1-ashutosh.dixit@intel.com>
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
v4: s/is_i915_selftest/is_i915_selftest_module/

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/10366
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
Reviewed-by: Badal Nilawar <badal.nilawar@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_hwmon.c    | 3 ++-
 drivers/gpu/drm/i915/i915_selftest.h | 9 +++++++++
 2 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
index 8c3f443c8347..86d7cd1ef45e 100644
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
+	if (!IS_DGFX(i915) || is_i915_selftest_module())
 		return;
 
 	hwmon = devm_kzalloc(dev, sizeof(*hwmon), GFP_KERNEL);
diff --git a/drivers/gpu/drm/i915/i915_selftest.h b/drivers/gpu/drm/i915/i915_selftest.h
index bdf3e22c0a34..bba3fafaac8d 100644
--- a/drivers/gpu/drm/i915/i915_selftest.h
+++ b/drivers/gpu/drm/i915/i915_selftest.h
@@ -123,6 +123,15 @@ static inline int i915_perf_selftests(struct pci_dev *pdev) { return 0; }
 
 #endif
 
+static inline bool is_i915_selftest_module(void)
+{
+#if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
+	return i915_selftest.live || i915_selftest.perf || i915_selftest.mock;
+#else
+	return false;
+#endif
+}
+
 /* Using the i915_selftest_ prefix becomes a little unwieldy with the helpers.
  * Instead we use the igt_ shorthand, in reference to the intel-gpu-tools
  * suite of uabi test cases (which includes a test runner for our selftests).
-- 
2.41.0

