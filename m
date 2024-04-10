Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E5A89E94F
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Apr 2024 06:58:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12CC610E205;
	Wed, 10 Apr 2024 04:58:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UYeoAb/v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 748A010E205
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Apr 2024 04:58:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712725120; x=1744261120;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/xT5bZ8MhV89icI0PCJaTnA0dDx8frCSqPm6ZoCeRIY=;
 b=UYeoAb/vlXZIqAu0PXWN00vaodZVJEvrq6HswTIJQ3NLZLS5rjUUyyKU
 JdePNs2HKwikleNag6qx6IocIIDf/WVkLpcuHmR/Ic1pwO3ZCrQbV/dfo
 8FnvgzVS9Xt3524lhrZhjiad5KnqW/fFXqUNnsSlnCYd5cBdmODcPfYU8
 Q4IWqJxOyG9jKm2N59cKRI2oOtK8UIYc2rYl1qJugscTM4FvDctf9dQpG
 SiQWvlWF6Q2RSFG5avjivqmPD0/s61dbBs0psdXi0OU1+ODvZQkaa7fvy
 uxGQWGNCFLUmNB8OGE+XBFcjg5WG2ucPVfUxU5NoLdibAcxteAwD7sPbU w==;
X-CSE-ConnectionGUID: 7dtqMaOTQBe6APy2gF9fVA==
X-CSE-MsgGUID: MJVfss8FQWWNJW3lwSNpUA==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="8245259"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; 
   d="scan'208";a="8245259"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2024 21:58:40 -0700
X-CSE-ConnectionGUID: 0flU6bIuSvqbdz8D4MYkFA==
X-CSE-MsgGUID: qRXB3pLdTK23BmSd0eKVKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="20379997"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2024 21:58:40 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Badal Nilawar <badal.nilawar@intel.com>
Subject: [PATCH] drm/i915: Don't enable hwmon for selftests
Date: Tue,  9 Apr 2024 21:58:32 -0700
Message-ID: <20240410045832.149779-1-ashutosh.dixit@intel.com>
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

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/10366
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/i915_hwmon.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
index 8c3f443c8347..511ba9be4de5 100644
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
@@ -778,6 +779,15 @@ hwm_get_preregistration_info(struct drm_i915_private *i915)
 	}
 }
 
+static bool is_selftest(void)
+{
+#if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
+	return i915_selftest.live || i915_selftest.perf || i915_selftest.mock;
+#else
+	return false;
+#endif
+}
+
 void i915_hwmon_register(struct drm_i915_private *i915)
 {
 	struct device *dev = i915->drm.dev;
@@ -789,7 +799,7 @@ void i915_hwmon_register(struct drm_i915_private *i915)
 	int i;
 
 	/* hwmon is available only for dGfx */
-	if (!IS_DGFX(i915))
+	if (!IS_DGFX(i915) || is_selftest())
 		return;
 
 	hwmon = devm_kzalloc(dev, sizeof(*hwmon), GFP_KERNEL);
-- 
2.41.0

