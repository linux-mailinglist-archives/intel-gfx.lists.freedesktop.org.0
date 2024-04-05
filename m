Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61CD089A515
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 21:38:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 951A810E7D6;
	Fri,  5 Apr 2024 19:38:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JBAy8qD1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A01010E7D6;
 Fri,  5 Apr 2024 19:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712345880; x=1743881880;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=U9LTQ495zswvXN6UbMXaL0MZ5+YG2Fhbvbm8tc3q4c4=;
 b=JBAy8qD1+98LbNvFslcwym8L5AaV1igr20bWCwyzvkax9/CXHJqWPhk0
 ST5YbRWjuU3Dm4UWEhKDUsNowXicawdyTl7f//6bN5UpXtAQz88YrPauW
 OWDX6nE73s/MTwDxwYVDcyF8uCZX9l7Pyza6qAqbb+C1acxgNq5NbELMy
 IemQSKk2XXniCB0mBbWv176hvZI3SBFkPj1aNsDUTg0jx0ac/GZ2ph4s2
 bqw8qO3HTNoSWiOAIWlYdrMLOg/non/3+AhAsVx1skwtfVknNJrZOWilU
 4sX7cqxUW6Rbi65bkXjCAwKvYBnmnz3fps5A9cdX+mt7Besdj5Ug2eQnK w==;
X-CSE-ConnectionGUID: OM8wb/ZbTcGjbZsa/mziSQ==
X-CSE-MsgGUID: jHf1KTJvTlKnmAECCIebLQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11035"; a="7877808"
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; 
   d="scan'208";a="7877808"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 12:37:59 -0700
X-CSE-ConnectionGUID: F8C7Zu35Te2MRtHk5BrE4g==
X-CSE-MsgGUID: EDzj12M7RZez0mAl5CGf5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="19107782"
Received: from dtorrice-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.41.202])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 12:37:57 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	lucas.demarchi@intel.com
Subject: [PATCH 2/6] drm/i915/dmc: define firmware URL locally
Date: Fri,  5 Apr 2024 22:37:39 +0300
Message-Id: <15935837a0c15f861bb2a688cc53514f47153ef3.1712345787.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1712345787.git.jani.nikula@intel.com>
References: <cover.1712345787.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
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

Avoid the dependency on intel_uc_fw.h, and allow removal of xe compat
intel_uc_fw.h. If there needs to be duplication of the URL, at least
have the duplication in a sensible way.

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c             |  4 +++-
 drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h    |  1 -
 drivers/gpu/drm/xe/compat-i915-headers/intel_uc_fw.h | 11 -----------
 3 files changed, 3 insertions(+), 13 deletions(-)
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/intel_uc_fw.h

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 3fa851b5c7a6..e61e9c1b8947 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -38,6 +38,8 @@
  * low-power state and comes back to normal.
  */
 
+#define INTEL_DMC_FIRMWARE_URL "https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git"
+
 enum intel_dmc_id {
 	DMC_FW_MAIN = 0,
 	DMC_FW_PIPEA,
@@ -953,7 +955,7 @@ static void dmc_load_work_fn(struct work_struct *work)
 			   " Disabling runtime power management.\n",
 			   dmc->fw_path);
 		drm_notice(&i915->drm, "DMC firmware homepage: %s",
-			   INTEL_UC_FIRMWARE_URL);
+			   INTEL_DMC_FIRMWARE_URL);
 	}
 
 	release_firmware(fw);
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
index a01d1b869c2d..837e95e3604e 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
@@ -26,7 +26,6 @@
 #include "i915_utils.h"
 #include "intel_gt_types.h"
 #include "intel_step.h"
-#include "intel_uc_fw.h"
 #include "intel_uncore.h"
 #include "intel_runtime_pm.h"
 #include <linux/pm_runtime.h>
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_uc_fw.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_uc_fw.h
deleted file mode 100644
index 009745328992..000000000000
--- a/drivers/gpu/drm/xe/compat-i915-headers/intel_uc_fw.h
+++ /dev/null
@@ -1,11 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2023 Intel Corporation
- */
-
-#ifndef _INTEL_UC_FW_H_
-#define _INTEL_UC_FW_H_
-
-#define INTEL_UC_FIRMWARE_URL "https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git"
-
-#endif
-- 
2.39.2

