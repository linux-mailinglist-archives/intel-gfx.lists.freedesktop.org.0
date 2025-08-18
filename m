Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C33B29ED7
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Aug 2025 12:07:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81B6C10E41E;
	Mon, 18 Aug 2025 10:07:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XqyRqc1n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B30B10E41E;
 Mon, 18 Aug 2025 10:07:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755511660; x=1787047660;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kfyJ7UH4S3Ni/wI1SVet36/fP3sGy0rCH8YduFQWE6Y=;
 b=XqyRqc1n/EKbwWtfaN0LGDqU6X6rRZFIMOqClXmU/Lw/3S12F58LvWPY
 vsdUyIyLl0U5AuSeMMlhfMq9gGQPA1YwsW7NOwCeczdQf1yOOQnZ9Q4SA
 bL2/mI+RwTnd0zDx1HvTyXjvDc2T/YDk5sifeIqkorwqcF+p7a8DzcHUR
 O41VEzcB7sXkWGj7951ZINTPfwdh0BIXoExh/HMTH6IXS/vp8rlPo5lL7
 FcwzvtiqfCHKKXNR7W1UIQRoJmju3H8fKpFTQrr4uhZa/lpjISD/X/b4I
 RmFHTDwjFN4ZtK9NtEGl8h0aHF1tMNJCrLDIUumc8CiwIJjerUrBYrO39 g==;
X-CSE-ConnectionGUID: ivBt5L6RSwaK6/SCV47wVA==
X-CSE-MsgGUID: iH1xb6lKTfODPwzMtK6ymg==
X-IronPort-AV: E=McAfee;i="6800,10657,11524"; a="69105535"
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="69105535"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 03:07:39 -0700
X-CSE-ConnectionGUID: Ay+rYYVWSNS4IfvsZbOv4w==
X-CSE-MsgGUID: Of1ICcXnRcOxtoW/8VyCug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="171778801"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.188])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 03:07:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	rodrigo.vivi@intel.com
Subject: [CI 1/5] drm/i915/dram: add intel_fsb_freq() and use it
Date: Mon, 18 Aug 2025 13:07:24 +0300
Message-ID: <c5b77311c5f64b7163c86a042b7d023c07a685e2.1755511595.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <cover.1755511595.git.jani.nikula@intel.com>
References: <cover.1755511595.git.jani.nikula@intel.com>
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

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c     |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c |  2 +-
 drivers/gpu/drm/i915/soc/intel_dram.c          | 14 ++++++++++----
 drivers/gpu/drm/i915/soc/intel_dram.h          |  2 +-
 4 files changed, 13 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index f7f76de0f944..d7ba3970e1e9 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3574,7 +3574,7 @@ static int i9xx_hrawclk(struct intel_display *display)
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
index b3c407cc200f..366891cda6b9 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -154,7 +154,7 @@ static void detect_mem_freq(struct drm_i915_private *i915)
 		drm_dbg(&i915->drm, "DDR speed: %d kHz\n", i915->mem_freq);
 }
 
-unsigned int i9xx_fsb_freq(struct drm_i915_private *i915)
+static unsigned int i9xx_fsb_freq(struct drm_i915_private *i915)
 {
 	u32 fsb;
 
@@ -236,13 +236,19 @@ static unsigned int ilk_fsb_freq(struct drm_i915_private *dev_priv)
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
2.47.2

