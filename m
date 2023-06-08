Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A9C4728359
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 17:12:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 094BB10E5DF;
	Thu,  8 Jun 2023 15:12:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CCDD10E5DF
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 15:12:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686237134; x=1717773134;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Bd6xbUdW+D32letWQINfCjv62egxi7m5eeFJZFnh6hY=;
 b=Jx/1gkRFce80pCs51/cNxre/mshzeyiEURHeTW/xj3W0gg6XukIVg0g1
 3DJoSz88oiirgbZ3nr08EZXKjTy5cQ95qbBJ5t8m/GgAk9Q+MEplCxa/b
 vdyjSLeWmR+qac3ZjWkaZskZ8J3HzZ3GYp/1VrovDlK6k5mB8kBDHFahI
 4tvS0WKBuqIGUnnZT28Qpl0dfsIMbP+AXRafgkLffFii1QSLAhhH62BGX
 zG+BCvARUPb5RIhfK2mOrlUEM5ePMEFPIEQiwMnwelx8PAc5O3ZFzW5C3
 sBer6psHAiE1OrL6dkzLxy1Y9P1Fzin+8okOQ2AM3q2LlSlHN3s1aspP3 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="423201688"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="423201688"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 08:09:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="956751567"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="956751567"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 08:09:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Jun 2023 18:09:05 +0300
Message-Id: <0badc36ce6dd6b030507bdfd8a42ab984fb38d12.1686236840.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1686236840.git.jani.nikula@intel.com>
References: <cover.1686236840.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: make device info a const pointer
 to rodata
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Finally we can get rid of the pseudo-const write-once device info, and
convert it into a const pointer to device info in rodata.

Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          |  4 ++--
 drivers/gpu/drm/i915/intel_device_info.c | 17 ++++-------------
 2 files changed, 6 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 2d8331d435f1..788438b19e65 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -203,7 +203,7 @@ struct drm_i915_private {
 	/* i915 device parameters */
 	struct i915_params params;
 
-	const struct intel_device_info __info; /* Use INTEL_INFO() to access. */
+	const struct intel_device_info *__info; /* Use INTEL_INFO() to access. */
 	struct intel_runtime_info __runtime; /* Use RUNTIME_INFO() to access. */
 	struct intel_driver_caps caps;
 
@@ -405,7 +405,7 @@ static inline struct intel_gt *to_gt(struct drm_i915_private *i915)
 	     (engine__) && (engine__)->uabi_class == (class__); \
 	     (engine__) = rb_to_uabi_engine(rb_next(&(engine__)->uabi_node)))
 
-#define INTEL_INFO(i915)	(&(i915)->__info)
+#define INTEL_INFO(i915)	((i915)->__info)
 #define RUNTIME_INFO(i915)	(&(i915)->__runtime)
 #define DISPLAY_INFO(i915)	((i915)->display.info.__device_info)
 #define DISPLAY_RUNTIME_INFO(i915)	(&(i915)->display.info.__runtime_info)
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index d51bbdbe53ab..0ef001d22ab2 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -360,13 +360,6 @@ void intel_device_info_runtime_init_early(struct drm_i915_private *i915)
 	intel_device_info_subplatform_init(i915);
 }
 
-/* FIXME: Remove this, and make device info a const pointer to rodata. */
-static struct intel_device_info *
-mkwrite_device_info(struct drm_i915_private *i915)
-{
-	return (struct intel_device_info *)INTEL_INFO(i915);
-}
-
 static const struct intel_display_device_info no_display = {};
 
 /**
@@ -426,26 +419,24 @@ void intel_device_info_driver_create(struct drm_i915_private *i915,
 				     u16 device_id,
 				     const struct intel_device_info *match_info)
 {
-	struct intel_device_info *info;
 	struct intel_runtime_info *runtime;
 	u16 ver, rel, step;
 
-	/* Setup the write-once "constant" device info */
-	info = mkwrite_device_info(i915);
-	memcpy(info, match_info, sizeof(*info));
+	/* Setup INTEL_INFO() */
+	i915->__info = match_info;
 
 	/* Initialize initial runtime info from static const data and pdev. */
 	runtime = RUNTIME_INFO(i915);
 	memcpy(runtime, &INTEL_INFO(i915)->__runtime, sizeof(*runtime));
 
 	/* Probe display support */
-	i915->display.info.__device_info = intel_display_device_probe(i915, info->has_gmd_id,
+	i915->display.info.__device_info = intel_display_device_probe(i915, HAS_GMD_ID(i915),
 								      &ver, &rel, &step);
 	memcpy(DISPLAY_RUNTIME_INFO(i915),
 	       &DISPLAY_INFO(i915)->__runtime_defaults,
 	       sizeof(*DISPLAY_RUNTIME_INFO(i915)));
 
-	if (info->has_gmd_id) {
+	if (HAS_GMD_ID(i915)) {
 		DISPLAY_RUNTIME_INFO(i915)->ip.ver = ver;
 		DISPLAY_RUNTIME_INFO(i915)->ip.rel = rel;
 		DISPLAY_RUNTIME_INFO(i915)->ip.step = step;
-- 
2.39.2

