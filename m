Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D695F609C
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Oct 2022 07:29:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 487F610E4A0;
	Thu,  6 Oct 2022 05:29:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFF9910E4DB
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Oct 2022 05:29:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665034167; x=1696570167;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=nyWz3msaiXagMjCwhZSHARX2TClJAxFVXY4C+OSO35g=;
 b=dU+T4j8eP0IOoJiOXS7bjd8F9xJLxTmgE7xC8afDyuJT7Sl29O+7LKM9
 QW6+iNBdxWA2Ij84JpoEPOsWIvTVYDknaF8hskZQhMqsAqV9w1EOvFOXH
 FMw2TWbRPgy4ZJykoNBXO0Mg0evI8EIAAJDulq/vDDZFZoiaSU6guYIZ8
 ghZhURlzOSSj+8b+ohpUoHM6QIFPUaEYGFN+YV9xK71LVBjJbHcXrCekg
 1hLFLrgZyXyZ50LtjKBovX/7pEnXKVHEjGpp6MeT/YhnRoxoKepIILKFW
 04Qk7qwAGdnnjuK1yFv9n/oBgDmNros2ujdWPzy+OArH76xgvokJxlXPp w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="300949258"
X-IronPort-AV: E=Sophos;i="5.95,163,1661842800"; d="scan'208";a="300949258"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2022 22:29:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="687278711"
X-IronPort-AV: E=Sophos;i="5.95,163,1661842800"; d="scan'208";a="687278711"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga008.fm.intel.com with ESMTP; 05 Oct 2022 22:29:27 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Oct 2022 22:31:29 -0700
Message-Id: <20221006053129.663793-2-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221006053129.663793-1-alan.previn.teres.alexis@intel.com>
References: <20221006053129.663793-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/1] drm/i915/guc: Fix GuC error capture
 sizing estimation and reporting
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

During GuC error capture initialization, we estimate the amount of size
we need for the error-capture-region of the shared GuC-log-buffer.
This calculation was incorrect so fix that. With the fixed calculation
we can reduce the allocation of error-capture region from 4MB to 1MB
(see note2 below for reasoning). Additionally, switch from drm_notice to
drm_debug for the 3X spare size check since that would be impossible to
hit without redesigning gpu_coredump framework to hold multiple captures.

NOTE1: Even for 1x the min size estimation case, actually running out
of space is a corner case because it can only occur if all engine
instances get reset all at once and i915 isn't able extract the capture
data fast enough within G2H handler worker.

NOTE2: With the corrected calculation, a DG2 part required ~77K and a PVC
required ~115K (1X min-est-size that is calculated as one-shot all-engine-
reset scenario).

Fixes d7c15d76a5547: drm/i915/guc: Check sizing of guc_capture output

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 29 ++++++++++++-------
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c    |  6 ++--
 2 files changed, 21 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
index 8f1165146013..9fa76f384abc 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
@@ -502,8 +502,9 @@ intel_guc_capture_getlistsize(struct intel_guc *guc, u32 owner, u32 type, u32 cl
 	if (!num_regs)
 		return -ENODATA;
 
-	*size = PAGE_ALIGN((sizeof(struct guc_debug_capture_list)) +
-			   (num_regs * sizeof(struct guc_mmio_reg)));
+	if (size)
+		*size = PAGE_ALIGN((sizeof(struct guc_debug_capture_list)) +
+				   (num_regs * sizeof(struct guc_mmio_reg)));
 
 	return 0;
 }
@@ -606,7 +607,7 @@ guc_capture_output_min_size_est(struct intel_guc *guc)
 	struct intel_gt *gt = guc_to_gt(guc);
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
-	int worst_min_size = 0, num_regs = 0;
+	int worst_min_size = 0;
 	size_t tmp = 0;
 
 	if (!guc->capture)
@@ -628,20 +629,18 @@ guc_capture_output_min_size_est(struct intel_guc *guc)
 					 (3 * sizeof(struct guc_state_capture_header_t));
 
 		if (!intel_guc_capture_getlistsize(guc, 0, GUC_CAPTURE_LIST_TYPE_GLOBAL, 0, &tmp))
-			num_regs += tmp;
+			worst_min_size += tmp;
 
 		if (!intel_guc_capture_getlistsize(guc, 0, GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS,
 						   engine->class, &tmp)) {
-			num_regs += tmp;
+			worst_min_size += tmp;
 		}
 		if (!intel_guc_capture_getlistsize(guc, 0, GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE,
 						   engine->class, &tmp)) {
-			num_regs += tmp;
+			worst_min_size += tmp;
 		}
 	}
 
-	worst_min_size += (num_regs * sizeof(struct guc_mmio_reg));
-
 	return worst_min_size;
 }
 
@@ -658,15 +657,23 @@ static void check_guc_capture_size(struct intel_guc *guc)
 	int spare_size = min_size * GUC_CAPTURE_OVERBUFFER_MULTIPLIER;
 	u32 buffer_size = intel_guc_log_section_size_capture(&guc->log);
 
+	/*
+	 * NOTE: min_size is much smaller than the capture region allocation (DG2: <80K vs 1MB)
+	 * Additionally, its based on space needed to fit all engines getting reset at once
+	 * within the same G2H handler task slot. This is very unlikely. However, if GuC really
+	 * does run out of space for whatever reason, we will see an separate warning message
+	 * when processing the G2H event capture-notification, search for:
+	 * INTEL_GUC_STATE_CAPTURE_EVENT_STATUS_NOSPACE.
+	 */
 	if (min_size < 0)
 		drm_warn(&i915->drm, "Failed to calculate GuC error state capture buffer minimum size: %d!\n",
 			 min_size);
 	else if (min_size > buffer_size)
-		drm_warn(&i915->drm, "GuC error state capture buffer is too small: %d < %d\n",
+		drm_warn(&i915->drm, "GuC error state capture buffer maybe small: %d < %d\n",
 			 buffer_size, min_size);
 	else if (spare_size > buffer_size)
-		drm_notice(&i915->drm, "GuC error state capture buffer maybe too small: %d < %d (min = %d)\n",
-			   buffer_size, spare_size, min_size);
+		drm_dbg(&i915->drm, "GuC error state capture buffer lacks spare size: %d < %d (min = %d)\n",
+			buffer_size, spare_size, min_size);
 }
 
 /*
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
index 55d3ef93e86f..68331c538b0a 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
@@ -16,15 +16,15 @@
 #if defined(CONFIG_DRM_I915_DEBUG_GUC)
 #define GUC_LOG_DEFAULT_CRASH_BUFFER_SIZE	SZ_2M
 #define GUC_LOG_DEFAULT_DEBUG_BUFFER_SIZE	SZ_16M
-#define GUC_LOG_DEFAULT_CAPTURE_BUFFER_SIZE	SZ_4M
+#define GUC_LOG_DEFAULT_CAPTURE_BUFFER_SIZE	SZ_1M
 #elif defined(CONFIG_DRM_I915_DEBUG_GEM)
 #define GUC_LOG_DEFAULT_CRASH_BUFFER_SIZE	SZ_1M
 #define GUC_LOG_DEFAULT_DEBUG_BUFFER_SIZE	SZ_2M
-#define GUC_LOG_DEFAULT_CAPTURE_BUFFER_SIZE	SZ_4M
+#define GUC_LOG_DEFAULT_CAPTURE_BUFFER_SIZE	SZ_1M
 #else
 #define GUC_LOG_DEFAULT_CRASH_BUFFER_SIZE	SZ_8K
 #define GUC_LOG_DEFAULT_DEBUG_BUFFER_SIZE	SZ_64K
-#define GUC_LOG_DEFAULT_CAPTURE_BUFFER_SIZE	SZ_2M
+#define GUC_LOG_DEFAULT_CAPTURE_BUFFER_SIZE	SZ_1M
 #endif
 
 static void guc_log_copy_debuglogs_for_relay(struct intel_guc_log *log);
-- 
2.34.1

