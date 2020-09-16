Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0958426C5AB
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Sep 2020 19:17:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56A756EA85;
	Wed, 16 Sep 2020 17:16:58 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F5566EA85
 for <Intel-GFX@lists.freedesktop.org>; Wed, 16 Sep 2020 17:16:55 +0000 (UTC)
IronPort-SDR: DZ7G8zrWhhUiR0A9LIfZ7j4rMrRwiH+4Qtmk7n8iv5+NPHqDPt7PNBeK0mQzWT7DHPGImJW0WG
 oUHcJcsKkVLA==
X-IronPort-AV: E=McAfee;i="6000,8403,9746"; a="139534276"
X-IronPort-AV: E=Sophos;i="5.76,433,1592895600"; d="scan'208";a="139534276"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2020 10:16:55 -0700
IronPort-SDR: UnZwnq77LlaPLCnu6wCVFwtekknRGUPWsDR/tSXu+TAu7unyNK3OhwTSyeQUlIwKB0Xnt/XW02
 8c8KzGy5zd0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,433,1592895600"; d="scan'208";a="287259455"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by fmsmga007.fm.intel.com with ESMTP; 16 Sep 2020 10:16:55 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Wed, 16 Sep 2020 10:16:49 -0700
Message-Id: <20200916171653.2021483-9-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200916171653.2021483-1-John.C.Harrison@Intel.com>
References: <20200916171653.2021483-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Subject: [Intel-gfx] [PATCH 08/12] drm/i915/guc: Increased engine classes in
 ADS
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

GuC v46 partially increased the number of engine classes supported in
the ADS. GuC v48 then finished the change off by cleaning up the
per class engine mask fields.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c  | 16 +++++++++-------
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h | 19 +++++++++----------
 2 files changed, 18 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index 75fcce64fc57..7950d28beb8c 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -151,18 +151,20 @@ static void __guc_ads_init(struct intel_guc *guc)
 	}
 
 	/* System info */
-	blob->system_info.slice_enabled = hweight8(gt->info.sseu.slice_mask);
-	blob->system_info.rcs_enabled = 1;
-	blob->system_info.bcs_enabled = 1;
+	blob->system_info.engine_enabled_masks[RENDER_CLASS] = 1;
+	blob->system_info.engine_enabled_masks[COPY_ENGINE_CLASS] = 1;
+	blob->system_info.engine_enabled_masks[VIDEO_DECODE_CLASS] = VDBOX_MASK(gt);
+	blob->system_info.engine_enabled_masks[VIDEO_ENHANCEMENT_CLASS] = VEBOX_MASK(gt);
 
-	blob->system_info.vdbox_enable_mask = VDBOX_MASK(gt);
-	blob->system_info.vebox_enable_mask = VEBOX_MASK(gt);
-	blob->system_info.vdbox_sfc_support_mask = gt->info.vdbox_sfc_access;
+	blob->system_info.generic_gt_sysinfo[GUC_GENERIC_GT_SYSINFO_SLICE_ENABLED] =
+		hweight8(gt->info.sseu.slice_mask);
+	blob->system_info.generic_gt_sysinfo[GUC_GENERIC_GT_SYSINFO_VDBOX_SFC_SUPPORT_MASK] =
+		gt->info.vdbox_sfc_access;
 
 	if (INTEL_GEN(i915) >= 12 && !IS_DGFX(i915)) {
 		u32 distdbreg = intel_uncore_read(gt->uncore,
 						  GEN12_DIST_DBS_POPULATED);
-		blob->system_info.num_of_doorbells_per_sqidi =
+		blob->system_info.generic_gt_sysinfo[GUC_GENERIC_GT_SYSINFO_DOORBELL_COUNT_PER_SQIDI] =
 			((distdbreg >> GEN12_DOORBELLS_PER_SQIDI_SHIFT) &
 			 GEN12_DOORBELLS_PER_SQIDI) + 1;
 	}
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
index 3492fb0d5dec..391053118869 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
@@ -26,7 +26,7 @@
 #define GUC_VIDEO_ENGINE2		4
 #define GUC_MAX_ENGINES_NUM		(GUC_VIDEO_ENGINE2 + 1)
 
-#define GUC_MAX_ENGINE_CLASSES		5
+#define GUC_MAX_ENGINE_CLASSES		16
 #define GUC_MAX_INSTANCES_PER_CLASS	32
 
 #define GUC_DOORBELL_INVALID		256
@@ -98,6 +98,12 @@
 
 #define GUC_CTL_MAX_DWORDS		(SOFT_SCRATCH_COUNT - 2) /* [1..14] */
 
+/* Generic GT SysInfo data types */
+#define GUC_GENERIC_GT_SYSINFO_SLICE_ENABLED		0
+#define GUC_GENERIC_GT_SYSINFO_VDBOX_SFC_SUPPORT_MASK	1
+#define GUC_GENERIC_GT_SYSINFO_DOORBELL_COUNT_PER_SQIDI	2
+#define GUC_GENERIC_GT_SYSINFO_MAX			16
+
 /*
  * The class goes in bits [0..2] of the GuC ID, the instance in bits [3..6].
  * Bit 7 can be used for operations that apply to all engine classes&instances.
@@ -376,16 +382,9 @@ struct guc_mmio_reg_set {
 
 /* HW info */
 struct guc_gt_system_info {
-	u32 slice_enabled;
-	u32 rcs_enabled;
-	u32 reserved0;
-	u32 bcs_enabled;
-	u32 vdbox_enable_mask;
-	u32 vdbox_sfc_support_mask;
-	u32 vebox_enable_mask;
-	u32 num_of_doorbells_per_sqidi;
 	u8 mapping_table[GUC_MAX_ENGINE_CLASSES][GUC_MAX_INSTANCES_PER_CLASS];
-	u32 reserved2[8];
+	u32 engine_enabled_masks[GUC_MAX_ENGINE_CLASSES];
+	u32 generic_gt_sysinfo[GUC_GENERIC_GT_SYSINFO_MAX];
 } __packed;
 
 /* Clients info */
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
