Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EADFBB1731D
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Jul 2025 16:21:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08A0110E7A7;
	Thu, 31 Jul 2025 14:21:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BcAEfaEI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92C1510E068;
 Thu, 31 Jul 2025 14:21:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753971700; x=1785507700;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=s3xetIdkT4v9wrskBn9wCYPkOxfs0Vmukb/JaWpaxTs=;
 b=BcAEfaEIGWnvVwNEakQYO/w8Bexg6Q5hNrxTaUpP3z0oTRcQZrYJ6opT
 xaMX3atXv6gyf8ZKsoBMSPx+5RpCw1UfQXSxRh+4fwuhjKmB9JK9xM/YZ
 dMaVIJDjnAhJqQozsdJYmwJFNTRrO3UbappRXri9afC6jXAZwPdQwWnCa
 y4NVXEkG7wf+GC/cgVRV7SVdE86VO6kqBnfihELm0frRfL2xfyJJ3iZ8i
 0XNVZ7G4qq+J3QHpQWA2g+DfSI9mmrs3D+UlpoDbx7nykODr9KTCuh6+9
 2d9+tt6X5IQTt1XqMkvbMG7maSlfwmHSZcD5qd8S3jWdhVtyd1GJcwpTG g==;
X-CSE-ConnectionGUID: MxO6ZpHNSmipHfzUTP30ig==
X-CSE-MsgGUID: aMBS3lYsT2O44KS2QvduwA==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="66992212"
X-IronPort-AV: E=Sophos;i="6.17,353,1747724400"; d="scan'208";a="66992212"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 07:21:37 -0700
X-CSE-ConnectionGUID: QmqOPfKgT0y5hHj50E1Z/Q==
X-CSE-MsgGUID: LVg2YkCqRtSqyPfF0D3esA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,353,1747724400"; d="scan'208";a="167453034"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.108])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 07:21:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/5] drm/i915/dram: add intel_fsb_freq() and use it
Date: Thu, 31 Jul 2025 17:21:21 +0300
Message-Id: <05aff5118d67d1b3426c5337de1e73e523d643f1.1753971617.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1753971617.git.jani.nikula@intel.com>
References: <cover.1753971617.git.jani.nikula@intel.com>
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

Add a more generic intel_fsb_freq() function instead of platform
specific ones.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c     |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c |  2 +-
 drivers/gpu/drm/i915/soc/intel_dram.c          | 14 ++++++++++----
 drivers/gpu/drm/i915/soc/intel_dram.h          |  2 +-
 4 files changed, 13 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 228aa64c1349..50f8e8e7b2a2 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3569,7 +3569,7 @@ static int i9xx_hrawclk(struct intel_display *display)
 	struct drm_i915_private *i915 = to_i915(display->drm);
 
 	/* hrawclock is 1/4 the FSB frequency */
-	return DIV_ROUND_CLOSEST(i9xx_fsb_freq(i915), 4);
+	return DIV_ROUND_CLOSEST(intel_fsb_freq(i915), 4);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
index 6c499692d61e..88b147fa5cb1 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
@@ -148,7 +148,7 @@ static u32 gen4_read_clock_frequency(struct intel_uncore *uncore)
 	 *
 	 * Testing on actual hardware has shown there is no /16.
 	 */
-	return DIV_ROUND_CLOSEST(i9xx_fsb_freq(uncore->i915), 4) * 1000;
+	return DIV_ROUND_CLOSEST(intel_fsb_freq(uncore->i915), 4) * 1000;
 }
 
 static u32 read_clock_frequency(struct intel_uncore *uncore)
diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
index deb159548a09..6be3618d4885 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -153,7 +153,7 @@ static void detect_mem_freq(struct drm_i915_private *i915)
 		drm_dbg(&i915->drm, "DDR speed: %d kHz\n", i915->mem_freq);
 }
 
-unsigned int i9xx_fsb_freq(struct drm_i915_private *i915)
+static unsigned int i9xx_fsb_freq(struct drm_i915_private *i915)
 {
 	u32 fsb;
 
@@ -235,13 +235,19 @@ static unsigned int ilk_fsb_freq(struct drm_i915_private *dev_priv)
 	}
 }
 
-static void detect_fsb_freq(struct drm_i915_private *i915)
+unsigned int intel_fsb_freq(struct drm_i915_private *i915)
 {
 	if (GRAPHICS_VER(i915) == 5)
-		i915->fsb_freq = ilk_fsb_freq(i915);
+		return ilk_fsb_freq(i915);
 	else if (GRAPHICS_VER(i915) == 3 || GRAPHICS_VER(i915) == 4)
-		i915->fsb_freq = i9xx_fsb_freq(i915);
+		return i9xx_fsb_freq(i915);
+	else
+		return 0;
+}
 
+static void detect_fsb_freq(struct drm_i915_private *i915)
+{
+	i915->fsb_freq = intel_fsb_freq(i915);
 	if (i915->fsb_freq)
 		drm_dbg(&i915->drm, "FSB frequency: %d kHz\n", i915->fsb_freq);
 }
diff --git a/drivers/gpu/drm/i915/soc/intel_dram.h b/drivers/gpu/drm/i915/soc/intel_dram.h
index 2a696e03aad4..09a7a581d949 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.h
+++ b/drivers/gpu/drm/i915/soc/intel_dram.h
@@ -33,7 +33,7 @@ struct dram_info {
 
 void intel_dram_edram_detect(struct drm_i915_private *i915);
 int intel_dram_detect(struct drm_i915_private *i915);
-unsigned int i9xx_fsb_freq(struct drm_i915_private *i915);
+unsigned int intel_fsb_freq(struct drm_i915_private *i915);
 const struct dram_info *intel_dram_info(struct drm_device *drm);
 
 #endif /* __INTEL_DRAM_H__ */
-- 
2.39.5

