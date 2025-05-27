Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2592EAC4B73
	for <lists+intel-gfx@lfdr.de>; Tue, 27 May 2025 11:26:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11A1B10E461;
	Tue, 27 May 2025 09:25:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AGjiDUK1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81A5A10E480;
 Tue, 27 May 2025 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748337953; x=1779873953;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=37jM8UZ7hMFJI4otltdIViEKP/s0WF4j1/HKeYWVijk=;
 b=AGjiDUK1/R/eGgcu8jEBAdsdBRm+LKRp7BMUQ9swex/xNj3gzaojZ0zy
 HcUTsZJz4ATu/ym/WeZ5hqybT30EYWOzC83jQNIcYoWG2t1l+6sbFHqwF
 RRXMg2VneDwxqKlac9E368K3iPcBWRiIEGXcltcm/rEIhEUT8BgWicXvr
 czMcWiVW5KHyXOT04YOODQvQCM03xn06gqkTB/Yi4375zr/MrVh62T5Cu
 bLYb3QgF9PDJXTuoad1ttdl2ENz+3q9herrCybef93BfAdQlAAEPj053T
 J+JxgPjM2pUkct15zbqz/Kt5vdGfZ2qZl9tHObu9q1luvWGx3BC4BqKBy w==;
X-CSE-ConnectionGUID: dPdEvI8vQ+KNA7EBUBSOoQ==
X-CSE-MsgGUID: INa8yEkoQfCSJB990W1lGQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11445"; a="54114230"
X-IronPort-AV: E=Sophos;i="6.15,318,1739865600"; d="scan'208";a="54114230"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 02:25:53 -0700
X-CSE-ConnectionGUID: eGaqp3HJQTuMEFqRv+5FVg==
X-CSE-MsgGUID: xu3o/eWWRKiOhys0wJBp/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,318,1739865600"; d="scan'208";a="179923017"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.119])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 02:25:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RESEND 5/6] drm/i915/dram: add return value and handling to
 intel_dram_detect()
Date: Tue, 27 May 2025 12:25:25 +0300
Message-Id: <be2c31c459fb95d8161b719d499403eea5ec17b7.1748337870.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1748337870.git.jani.nikula@intel.com>
References: <cover.1748337870.git.jani.nikula@intel.com>
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
index 3b0bda74697d..20691a85d513 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -568,7 +568,9 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 	 * Fill the dram structure to get the system dram info. This will be
 	 * used for memory latency calculation.
 	 */
-	intel_dram_detect(dev_priv);
+	ret = intel_dram_detect(dev_priv);
+	if (ret)
+		goto err_opregion;
 
 	intel_bw_init_hw(display);
 
diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
index f42dcdb74d40..e7fa938c98cf 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -704,7 +704,7 @@ static int xelpdp_get_dram_info(struct drm_i915_private *i915, struct dram_info
 	return 0;
 }
 
-void intel_dram_detect(struct drm_i915_private *i915)
+int intel_dram_detect(struct drm_i915_private *i915)
 {
 	struct dram_info *dram_info = &i915->dram_info;
 	int ret;
@@ -713,7 +713,7 @@ void intel_dram_detect(struct drm_i915_private *i915)
 	detect_mem_freq(i915);
 
 	if (GRAPHICS_VER(i915) < 9 || IS_DG2(i915) || !HAS_DISPLAY(i915))
-		return;
+		return 0;
 
 	/*
 	 * Assume level 0 watermark latency adjustment is needed until proven
@@ -735,8 +735,9 @@ void intel_dram_detect(struct drm_i915_private *i915)
 	drm_dbg_kms(&i915->drm, "DRAM type: %s\n",
 		    intel_dram_type_str(dram_info->type));
 
+	/* TODO: Do we want to abort probe on dram detection failures? */
 	if (ret)
-		return;
+		return 0;
 
 	drm_dbg_kms(&i915->drm, "Num qgv points %u\n", dram_info->num_qgv_points);
 
@@ -744,6 +745,8 @@ void intel_dram_detect(struct drm_i915_private *i915)
 
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
index 3f92bf51813e..eafe2f093a6c 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -122,7 +122,9 @@ int xe_display_init_early(struct xe_device *xe)
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

