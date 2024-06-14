Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC7C908748
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2024 11:23:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50FE410ECB2;
	Fri, 14 Jun 2024 09:23:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VlDomICG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3750710ECB2
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2024 09:23:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718357010; x=1749893010;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/pWRESXbBTyEgL6BaVNM/rXlETymF2e/juUEMsx2kgE=;
 b=VlDomICGGeblgJ58CnzQYRnMU2lJK1TIFv9JPODa6aeRPq6G0kr/NJGY
 o5d/5uXdIBQPWYEK0lbbkaJJ5fcf64g2tLgo3pN7xBtOW6tzjc+B0JPfG
 WWdahrkkoXcu6Yv3tw8Y8y6UYkUrGPxe4uUYFOdPs4rSTuBBGLA6PgSpI
 xOpgGGOWLEjD1LB9CzN3B2bNOPPHBvvQxZJWteXI0W/NKihlWp/uWNrHR
 GLIVPiIeVEpOGpAHjGk6Bbj2D2xn9gmXua7V6te+vXg6ArTYR5CuO1pET
 5YpkjJLGoe+ufmfO/nR+yuxK+r0sMcORyjD3v4cTdOzBhR7b/CM73ve6B A==;
X-CSE-ConnectionGUID: vlqGPQKDSo2F0sJCd/5CdA==
X-CSE-MsgGUID: Cpi7Yu6ORgmXZokPh9BzDw==
X-IronPort-AV: E=McAfee;i="6700,10204,11102"; a="25908836"
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="25908836"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 02:23:30 -0700
X-CSE-ConnectionGUID: sE2NM0nhSpSKyPyrhdTb9g==
X-CSE-MsgGUID: eIxhiXizRsy8Wn8JwAqwkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="40545749"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.221])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 02:23:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	jani.nikula@intel.com
Subject: [CI 09/11] drm/i915: use i9xx_fsb_freq() for GT clock frequency
Date: Fri, 14 Jun 2024 12:22:37 +0300
Message-Id: <0678d8ec9772725b47d4fa5b14e3b3a34256d5cf.1718356614.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1718356614.git.jani.nikula@intel.com>
References: <cover.1718356614.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
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

