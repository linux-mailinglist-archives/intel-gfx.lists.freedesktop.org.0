Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E80FCAAE465
	for <lists+intel-gfx@lfdr.de>; Wed,  7 May 2025 17:18:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59D0A10E82E;
	Wed,  7 May 2025 15:18:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N+whHZKD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6633610E82B;
 Wed,  7 May 2025 15:18:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746631130; x=1778167130;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WGqq8r6qDB2UB/mweqTjV1jK7sna+f+ajcgh80Dr/Ew=;
 b=N+whHZKDoz/XrUO059RCjLtjC1DCiRVyl7v1LPaAtf5ETa63m5i8WSF+
 QEg0ih/8kam3K1Ywp/OvHird73s/Ldhja2+waAlf+v9z4HST+wI65atGv
 SrN9VqXgYmZ5DSpne9JJgWqGViUVHwxPYahsdkOleC46sKN8Ll/ZFppiR
 vrrZLbj5o6ujwaH6RsG1eGwRMDb99oYo4Y4doVbolvf1xjBkfX/n2+ReT
 baDgh18AFuLCmeuBxqhafRVVvJbDX+vTcN5Uv8xG8sgpK0QRi0nCOtWY7
 OhcjwSB/Jx/uQAK5OiKF0e6IQtVB/AueRfZytARRnSbk5xK0BpiRcYmbH Q==;
X-CSE-ConnectionGUID: Al9E949uT7qkaldpzOQI1Q==
X-CSE-MsgGUID: YEOdhxHDTVePWb6RYJaOCQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11426"; a="59027701"
X-IronPort-AV: E=Sophos;i="6.15,269,1739865600"; d="scan'208";a="59027701"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 08:18:49 -0700
X-CSE-ConnectionGUID: 8CL6YLAlTRimFCwXOXqi8Q==
X-CSE-MsgGUID: 1iHw/+RGQC6h5vu4FXmzWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,269,1739865600"; d="scan'208";a="166913469"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.218])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 08:18:48 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 5/6] drm/i915/dram: add return value and handling to
 intel_dram_detect()
Date: Wed,  7 May 2025 18:18:21 +0300
Message-Id: <c23fe3ee2596344e6d49668da4cefcbd146c76b6.1746631057.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1746631057.git.jani.nikula@intel.com>
References: <cover.1746631057.git.jani.nikula@intel.com>
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

We'll want to start returning errors from intel_dram_detect(). As the
first step, add the return value and error handling, even if we still
only return 0.

Do no functional changes, but leave a comment about whether we should
bail out on dram detection failures.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c      | 4 +++-
 drivers/gpu/drm/i915/soc/intel_dram.c   | 9 ++++++---
 drivers/gpu/drm/i915/soc/intel_dram.h   | 2 +-
 drivers/gpu/drm/xe/display/xe_display.c | 4 +++-
 4 files changed, 13 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 273bc43468a0..9c5fc4562d37 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -571,7 +571,9 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 	 * Fill the dram structure to get the system dram info. This will be
 	 * used for memory latency calculation.
 	 */
-	intel_dram_detect(dev_priv);
+	ret = intel_dram_detect(dev_priv);
+	if (ret)
+		goto err_opregion;
 
 	intel_bw_init_hw(display);
 
diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
index 8cb82920cd82..54b93831dea9 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -702,7 +702,7 @@ static int xelpdp_get_dram_info(struct drm_i915_private *i915, struct dram_info
 	return 0;
 }
 
-void intel_dram_detect(struct drm_i915_private *i915)
+int intel_dram_detect(struct drm_i915_private *i915)
 {
 	struct dram_info *dram_info = &i915->dram_info;
 	int ret;
@@ -711,7 +711,7 @@ void intel_dram_detect(struct drm_i915_private *i915)
 	detect_mem_freq(i915);
 
 	if (GRAPHICS_VER(i915) < 9 || IS_DG2(i915) || !HAS_DISPLAY(i915))
-		return;
+		return 0;
 
 	/*
 	 * Assume level 0 watermark latency adjustment is needed until proven
@@ -733,8 +733,9 @@ void intel_dram_detect(struct drm_i915_private *i915)
 	drm_dbg_kms(&i915->drm, "DRAM type: %s\n",
 		    intel_dram_type_str(dram_info->type));
 
+	/* TODO: Do we want to abort probe on dram detection failures? */
 	if (ret)
-		return;
+		return 0;
 
 	drm_dbg_kms(&i915->drm, "Num qgv points %u\n", dram_info->num_qgv_points);
 
@@ -742,6 +743,8 @@ void intel_dram_detect(struct drm_i915_private *i915)
 
 	drm_dbg_kms(&i915->drm, "Watermark level 0 adjustment needed: %s\n",
 		    str_yes_no(dram_info->wm_lv_0_adjust_needed));
+
+	return 0;
 }
 
 const struct dram_info *intel_dram_info(struct drm_device *drm)
diff --git a/drivers/gpu/drm/i915/soc/intel_dram.h b/drivers/gpu/drm/i915/soc/intel_dram.h
index 17a20cd2c6d5..25fe60b2b117 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.h
+++ b/drivers/gpu/drm/i915/soc/intel_dram.h
@@ -11,7 +11,7 @@ struct drm_device;
 struct dram_info;
 
 void intel_dram_edram_detect(struct drm_i915_private *i915);
-void intel_dram_detect(struct drm_i915_private *i915);
+int intel_dram_detect(struct drm_i915_private *i915);
 unsigned int i9xx_fsb_freq(struct drm_i915_private *i915);
 const struct dram_info *intel_dram_info(struct drm_device *drm);
 
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 68f064f33d4b..4c48444a3832 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -142,7 +142,9 @@ int xe_display_init_early(struct xe_device *xe)
 	 * Fill the dram structure to get the system dram info. This will be
 	 * used for memory latency calculation.
 	 */
-	intel_dram_detect(xe);
+	err = intel_dram_detect(xe);
+	if (err)
+		goto err_opregion;
 
 	intel_bw_init_hw(display);
 
-- 
2.39.5

