Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BCA88D1EAE
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 16:26:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4470610E5AD;
	Tue, 28 May 2024 14:25:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JYSg3e7W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53E2D10FA16;
 Tue, 28 May 2024 14:25:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716906349; x=1748442349;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=c1ImnRacwJQH7VVlYh6ABdPsqkGEDhelgAnZysYCOGE=;
 b=JYSg3e7WfDDiJZm4Ar0MBGzViWouWZLuQyTLPgt99js0okQusdHRZksY
 m1i6vXukQJdfihPc9Aw9ykguu+RRXoggCRJWvwBtFzGjBUhaZQS9cvMgl
 LCdRWjh+WFJf5XepvEHriRF+yuLhpbfwb83Igmzb9p+cf9J/Z4R8GwgJt
 jM8A+S7p2l8aEshnD8FDO6waMxKkqy9xOWHr8dnw69Vk9QakVZjBBBhUU
 ins4bZu35/1WqjeE3C9sREhbazTPGy19YVJ++mf1K5F7nftpkfV/s/qPe
 1lfbsz96nzgCdMOE/dFzI8za9iyArsAcCGSGoDSCgt+A19Do9zHPm21aN w==;
X-CSE-ConnectionGUID: pcLu4CScRrqUjDDqsyN3ew==
X-CSE-MsgGUID: Ymx+gFjhTyK5HlgvDiopKA==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="35769080"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="35769080"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 07:25:49 -0700
X-CSE-ConnectionGUID: Kl+IX0NzRh6yNNtR5jVm+g==
X-CSE-MsgGUID: UrrEMaNjQMOOyJQgi3hMzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="39615099"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.13])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 07:25:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 08/12] drm/i915: use i9xx_fsb_freq() for GT clock frequency
Date: Tue, 28 May 2024 17:24:57 +0300
Message-Id: <6dc2155cde12114a0541c3301c541f04f2f57e37.1716906179.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1716906179.git.jani.nikula@intel.com>
References: <cover.1716906179.git.jani.nikula@intel.com>
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
index 74b5b70e91f9..389bcf4b1abd 100644
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

