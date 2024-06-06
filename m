Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51DF88FE50C
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 13:16:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2BE410E8FA;
	Thu,  6 Jun 2024 11:16:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M2uPsTyd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7714D10E8FA
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 11:16:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717672602; x=1749208602;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EoFQVi0UODweHgrP0tKhdWe7ns1MP/Sv+srUWzOz6/g=;
 b=M2uPsTydmJNECJuLePDwhdxvZ7ZnY4tPxEUzJwQYYTrJVXHBRSw4K0y1
 crUIpzn8Ay2q7EWJ6miEnA0Vz/8zBnjQM1AihkIurN72eScTnMO8H7uUW
 i2IRIdC+BLEgPcsDCbed0DM9TCVOWGthEYaYKUl+xFncUEbJpOsiC9Voo
 ngYzryTp0CV9IV1KVI0WXQJyQmj+lBycGyo25CU7Fi0/1HnoRywZil3ex
 hjWfJvdx21DJcnk+fr9NcX3XBuaZBWwpYo2oYWJzqKPxUieJ55XrucFz4
 yStzc+IY8oEU4O9E7zK90xpkQZHh9FnO39ZuzAqYSasbUPNKMxY07kwSr A==;
X-CSE-ConnectionGUID: J/dpnOf+TiqLfO/U1HZQUg==
X-CSE-MsgGUID: tYaBkOooRySXezvOFsiedw==
X-IronPort-AV: E=McAfee;i="6600,9927,11094"; a="14556686"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14556686"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 04:16:42 -0700
X-CSE-ConnectionGUID: FqRFW5p1SnS305kl0uPI1Q==
X-CSE-MsgGUID: DMm1WLAxTZq8ChXdzdEWmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38494535"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 04:16:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 09/14] drm/i915: use i9xx_fsb_freq() for GT clock frequency
Date: Thu,  6 Jun 2024 14:16:01 +0300
Message-Id: <f53b6d5f5388b24ee255b78cf47e8f4bcdad16c8.1717672515.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717672515.git.jani.nikula@intel.com>
References: <cover.1717672515.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Reuse i9xx_fsb_freq() for GT clock frequency initialization instead of
depending on rawclk_freq.

Note: If the init order was changed, we could use i915->fsb_freq
directly. However, GT clock initialization is done in
i915_driver_mmio_probe(), but intel_dram_detect() later in
i915_driver_hw_probe(), with a dependency on intel_pcode_init().

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c | 3 ++-
 drivers/gpu/drm/i915/soc/intel_dram.c          | 2 +-
 drivers/gpu/drm/i915/soc/intel_dram.h          | 1 +
 3 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
index 7c9be4fd1c8c..6e63505fe478 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
@@ -9,6 +9,7 @@
 #include "intel_gt_clock_utils.h"
 #include "intel_gt_print.h"
 #include "intel_gt_regs.h"
+#include "soc/intel_dram.h"
 
 static u32 read_reference_ts_freq(struct intel_uncore *uncore)
 {
@@ -151,7 +152,7 @@ static u32 gen4_read_clock_frequency(struct intel_uncore *uncore)
 	 *
 	 * Testing on actual hardware has shown there is no /16.
 	 */
-	return RUNTIME_INFO(uncore->i915)->rawclk_freq * 1000;
+	return DIV_ROUND_CLOSEST(i9xx_fsb_freq(uncore->i915), 4) * 1000;
 }
 
 static u32 read_clock_frequency(struct intel_uncore *uncore)
diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
index 1b01e5130f79..dac39b41fa51 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -142,7 +142,7 @@ static void detect_mem_freq(struct drm_i915_private *i915)
 		drm_dbg(&i915->drm, "DDR speed: %d kHz\n", i915->mem_freq);
 }
 
-static unsigned int i9xx_fsb_freq(struct drm_i915_private *i915)
+unsigned int i9xx_fsb_freq(struct drm_i915_private *i915)
 {
 	u32 fsb;
 
diff --git a/drivers/gpu/drm/i915/soc/intel_dram.h b/drivers/gpu/drm/i915/soc/intel_dram.h
index 4ba13c13162c..a10136eda674 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.h
+++ b/drivers/gpu/drm/i915/soc/intel_dram.h
@@ -10,5 +10,6 @@ struct drm_i915_private;
 
 void intel_dram_edram_detect(struct drm_i915_private *i915);
 void intel_dram_detect(struct drm_i915_private *i915);
+unsigned int i9xx_fsb_freq(struct drm_i915_private *i915);
 
 #endif /* __INTEL_DRAM_H__ */
-- 
2.39.2

