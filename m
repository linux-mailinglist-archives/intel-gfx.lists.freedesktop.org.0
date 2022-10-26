Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9EAB60DAEB
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 08:03:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E68910E439;
	Wed, 26 Oct 2022 06:03:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEA4F10E439
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 06:02:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666764172; x=1698300172;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=apFa0JuXJsEEg/w085zy9rXDq8xmFX3D330B4FXEAD4=;
 b=aipiyOegpNlaQ7j3PKw3Iywb16qQbZxa3PS+KBvAzhFz5rxfa1wLt/Fi
 SX4VUaEVsmSKonfpk8yo+z5JdqQI+e9ppXzptTta3gFfMJAb48jA8Ip4U
 De7P5sK92J88/PrjvQGHPE3/Rp1UrFNoN1zJXiRO41SylpwE+GE33a9qx
 GSJajC89+wB0DAwKpurd4iqD71mMNLuuVQDiV3yGdUXJac3CW3wU+i3QG
 GxKUUBGYU9c0DXf6Q+ZHKkcswJCIMKIy0JNHtLrlPsRX5uXGFc14TeP5p
 lNENBVRDVeW2w7HHCJLAXrheNDmQhoXVIjTbd1fW2IlHTuZ3L+igQp24Y Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="369934270"
X-IronPort-AV: E=Sophos;i="5.95,213,1661842800"; d="scan'208";a="369934270"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 23:02:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="609834787"
X-IronPort-AV: E=Sophos;i="5.95,213,1661842800"; d="scan'208";a="609834787"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga006.jf.intel.com with ESMTP; 25 Oct 2022 23:02:51 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Oct 2022 23:05:06 -0700
Message-Id: <20221026060506.1007830-2-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221026060506.1007830-1-alan.previn.teres.alexis@intel.com>
References: <20221026060506.1007830-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 1/1] drm/i915/guc: Fix GuC error capture
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
index c4bee3bc15a9..4e6dca707d94 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
@@ -559,8 +559,9 @@ guc_capture_getlistsize(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
 	if (!num_regs)
 		return -ENODATA;
 
-	*size = PAGE_ALIGN((sizeof(struct guc_debug_capture_list)) +
-			   (num_regs * sizeof(struct guc_mmio_reg)));
+	if (size)
+		*size = PAGE_ALIGN((sizeof(struct guc_debug_capture_list)) +
+				   (num_regs * sizeof(struct guc_mmio_reg)));
 
 	return 0;
 }
@@ -670,7 +671,7 @@ guc_capture_output_min_size_est(struct intel_guc *guc)
 	struct intel_gt *gt = guc_to_gt(guc);
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
-	int worst_min_size = 0, num_regs = 0;
+	int worst_min_size = 0;
 	size_t tmp = 0;
 
 	if (!guc->capture)
@@ -692,20 +693,18 @@ guc_capture_output_min_size_est(struct intel_guc *guc)
 					 (3 * sizeof(struct guc_state_capture_header_t));
 
 		if (!guc_capture_getlistsize(guc, 0, GUC_CAPTURE_LIST_TYPE_GLOBAL, 0, &tmp, true))
-			num_regs += tmp;
+			worst_min_size += tmp;
 
 		if (!guc_capture_getlistsize(guc, 0, GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS,
 					     engine->class, &tmp, true)) {
-			num_regs += tmp;
+			worst_min_size += tmp;
 		}
 		if (!guc_capture_getlistsize(guc, 0, GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE,
 					     engine->class, &tmp, true)) {
-			num_regs += tmp;
+			worst_min_size += tmp;
 		}
 	}
 
-	worst_min_size += (num_regs * sizeof(struct guc_mmio_reg));
-
 	return worst_min_size;
 }
 
@@ -722,15 +721,23 @@ static void check_guc_capture_size(struct intel_guc *guc)
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

