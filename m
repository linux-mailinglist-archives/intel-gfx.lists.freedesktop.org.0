Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C79459825
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Nov 2021 00:02:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 958B389EFF;
	Mon, 22 Nov 2021 23:02:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 746F889ECD
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Nov 2021 23:02:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10176"; a="215612617"
X-IronPort-AV: E=Sophos;i="5.87,255,1631602800"; d="scan'208";a="215612617"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 15:02:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,255,1631602800"; d="scan'208";a="674237059"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga005.jf.intel.com with ESMTP; 22 Nov 2021 15:02:51 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Nov 2021 15:03:56 -0800
Message-Id: <20211122230402.2023576-2-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211122230402.2023576-1-alan.previn.teres.alexis@intel.com>
References: <20211122230402.2023576-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 1/7] drm/i915/guc: Add basic support for error
 capture lists
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

Add not-quite-support for GuC based error capture. GuC will add error
capture capability amongst other things. In order to load the
firmware, a minimum amount of support is required on the driver side.
This adds that bare minimum.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Reviewed-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |  1 +
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        | 42 +++++++++++------
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  2 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c    | 45 ++++++++++++++++++-
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     |  3 ++
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   | 21 ++++++++-
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c    |  9 +++-
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.h    |  2 +
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 18 ++++++++
 9 files changed, 126 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
index fe5d7d261797..5af03a486a13 100644
--- a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
+++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
@@ -145,6 +145,7 @@ enum intel_guc_action {
 	INTEL_GUC_ACTION_REGISTER_CONTEXT_MULTI_LRC = 0x4601,
 	INTEL_GUC_ACTION_RESET_CLIENT = 0x5507,
 	INTEL_GUC_ACTION_SET_ENG_UTIL_BUFF = 0x550A,
+	INTEL_GUC_ACTION_STATE_CAPTURE_NOTIFICATION = 0x8002,
 	INTEL_GUC_ACTION_LIMIT
 };
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 6e228343e8cb..5cf9ebd2ee55 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -222,32 +222,48 @@ static u32 guc_ctl_log_params_flags(struct intel_guc *guc)
 	u32 flags;
 
 	#if (((CRASH_BUFFER_SIZE) % SZ_1M) == 0)
-	#define UNIT SZ_1M
-	#define FLAG GUC_LOG_ALLOC_IN_MEGABYTE
+	#define LOG_UNIT SZ_1M
+	#define LOG_FLAG GUC_LOG_LOG_ALLOC_UNITS
 	#else
-	#define UNIT SZ_4K
-	#define FLAG 0
+	#define LOG_UNIT SZ_4K
+	#define LOG_FLAG 0
+	#endif
+
+	#if (((CAPTURE_BUFFER_SIZE) % SZ_1M) == 0)
+	#define CAPTURE_UNIT SZ_1M
+	#define CAPTURE_FLAG GUC_LOG_CAPTURE_ALLOC_UNITS
+	#else
+	#define CAPTURE_UNIT SZ_4K
+	#define CAPTURE_FLAG 0
 	#endif
 
 	BUILD_BUG_ON(!CRASH_BUFFER_SIZE);
-	BUILD_BUG_ON(!IS_ALIGNED(CRASH_BUFFER_SIZE, UNIT));
+	BUILD_BUG_ON(!IS_ALIGNED(CRASH_BUFFER_SIZE, LOG_UNIT));
 	BUILD_BUG_ON(!DEBUG_BUFFER_SIZE);
-	BUILD_BUG_ON(!IS_ALIGNED(DEBUG_BUFFER_SIZE, UNIT));
+	BUILD_BUG_ON(!IS_ALIGNED(DEBUG_BUFFER_SIZE, LOG_UNIT));
+	BUILD_BUG_ON(!CAPTURE_BUFFER_SIZE);
+	BUILD_BUG_ON(!IS_ALIGNED(CAPTURE_BUFFER_SIZE, CAPTURE_UNIT));
 
-	BUILD_BUG_ON((CRASH_BUFFER_SIZE / UNIT - 1) >
+	BUILD_BUG_ON((CRASH_BUFFER_SIZE / LOG_UNIT - 1) >
 			(GUC_LOG_CRASH_MASK >> GUC_LOG_CRASH_SHIFT));
-	BUILD_BUG_ON((DEBUG_BUFFER_SIZE / UNIT - 1) >
+	BUILD_BUG_ON((DEBUG_BUFFER_SIZE / LOG_UNIT - 1) >
 			(GUC_LOG_DEBUG_MASK >> GUC_LOG_DEBUG_SHIFT));
+	BUILD_BUG_ON((CAPTURE_BUFFER_SIZE / CAPTURE_UNIT - 1) >
+			(GUC_LOG_CAPTURE_MASK >> GUC_LOG_CAPTURE_SHIFT));
 
 	flags = GUC_LOG_VALID |
 		GUC_LOG_NOTIFY_ON_HALF_FULL |
-		FLAG |
-		((CRASH_BUFFER_SIZE / UNIT - 1) << GUC_LOG_CRASH_SHIFT) |
-		((DEBUG_BUFFER_SIZE / UNIT - 1) << GUC_LOG_DEBUG_SHIFT) |
+		CAPTURE_FLAG |
+		LOG_FLAG |
+		((CRASH_BUFFER_SIZE / LOG_UNIT - 1) << GUC_LOG_CRASH_SHIFT) |
+		((DEBUG_BUFFER_SIZE / LOG_UNIT - 1) << GUC_LOG_DEBUG_SHIFT) |
+		((CAPTURE_BUFFER_SIZE / CAPTURE_UNIT - 1) << GUC_LOG_CAPTURE_SHIFT) |
 		(offset << GUC_LOG_BUF_ADDR_SHIFT);
 
-	#undef UNIT
-	#undef FLAG
+	#undef LOG_UNIT
+	#undef LOG_FLAG
+	#undef CAPTURE_UNIT
+	#undef CAPTURE_FLAG
 
 	return flags;
 }
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index 1cb46098030d..9de99772f916 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -392,6 +392,8 @@ int intel_guc_context_reset_process_msg(struct intel_guc *guc,
 					const u32 *msg, u32 len);
 int intel_guc_engine_failure_process_msg(struct intel_guc *guc,
 					 const u32 *msg, u32 len);
+int intel_guc_error_capture_process_msg(struct intel_guc *guc,
+					 const u32 *msg, u32 len);
 
 void intel_guc_find_hung_context(struct intel_engine_cs *engine);
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index 1a1edae67e4e..6c81ddd303d3 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -40,6 +40,10 @@
  *      +---------------------------------------+
  *      | padding                               |
  *      +---------------------------------------+ <== 4K aligned
+ *      | capture lists                         |
+ *      +---------------------------------------+
+ *      | padding                               |
+ *      +---------------------------------------+ <== 4K aligned
  *      | private data                          |
  *      +---------------------------------------+
  *      | padding                               |
@@ -65,6 +69,12 @@ static u32 guc_ads_golden_ctxt_size(struct intel_guc *guc)
 	return PAGE_ALIGN(guc->ads_golden_ctxt_size);
 }
 
+static u32 guc_ads_capture_size(struct intel_guc *guc)
+{
+	/* Basic support to init ADS without a proper GuC error capture list */
+	return PAGE_ALIGN(PAGE_SIZE);
+}
+
 static u32 guc_ads_private_data_size(struct intel_guc *guc)
 {
 	return PAGE_ALIGN(guc->fw.private_data_size);
@@ -85,7 +95,7 @@ static u32 guc_ads_golden_ctxt_offset(struct intel_guc *guc)
 	return PAGE_ALIGN(offset);
 }
 
-static u32 guc_ads_private_data_offset(struct intel_guc *guc)
+static u32 guc_ads_capture_offset(struct intel_guc *guc)
 {
 	u32 offset;
 
@@ -95,6 +105,16 @@ static u32 guc_ads_private_data_offset(struct intel_guc *guc)
 	return PAGE_ALIGN(offset);
 }
 
+static u32 guc_ads_private_data_offset(struct intel_guc *guc)
+{
+	u32 offset;
+
+	offset = guc_ads_capture_offset(guc) +
+		 guc_ads_capture_size(guc);
+
+	return PAGE_ALIGN(offset);
+}
+
 static u32 guc_ads_blob_size(struct intel_guc *guc)
 {
 	return guc_ads_private_data_offset(guc) +
@@ -499,6 +519,26 @@ static void guc_init_golden_context(struct intel_guc *guc)
 	GEM_BUG_ON(guc->ads_golden_ctxt_size != total_size);
 }
 
+static void guc_capture_prep_lists(struct intel_guc *guc, struct __guc_ads_blob *blob)
+{
+	int i, j;
+	u32 addr_ggtt, offset;
+
+	offset = guc_ads_capture_offset(guc);
+	addr_ggtt = intel_guc_ggtt_offset(guc, guc->ads_vma) + offset;
+
+	/* FIXME: Populate a proper capture list */
+
+	for (i = 0; i < GUC_CAPTURE_LIST_INDEX_MAX; i++) {
+		for (j = 0; j < GUC_MAX_ENGINE_CLASSES; j++) {
+			blob->ads.capture_instance[i][j] = addr_ggtt;
+			blob->ads.capture_class[i][j] = addr_ggtt;
+		}
+
+		blob->ads.capture_global[i] = addr_ggtt;
+	}
+}
+
 static void __guc_ads_init(struct intel_guc *guc)
 {
 	struct intel_gt *gt = guc_to_gt(guc);
@@ -532,6 +572,9 @@ static void __guc_ads_init(struct intel_guc *guc)
 
 	base = intel_guc_ggtt_offset(guc, guc->ads_vma);
 
+	/* Lists for error capture debug */
+	guc_capture_prep_lists(guc, blob);
+
 	/* ADS */
 	blob->ads.scheduler_policies = base + ptr_offset(blob, policies);
 	blob->ads.gt_system_info = base + ptr_offset(blob, system_info);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index a0cc34be7b56..c20c0bcb83f9 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -974,6 +974,9 @@ static int ct_process_request(struct intel_guc_ct *ct, struct ct_incoming_msg *r
 	case INTEL_GUC_ACTION_CONTEXT_RESET_NOTIFICATION:
 		ret = intel_guc_context_reset_process_msg(guc, payload, len);
 		break;
+	case INTEL_GUC_ACTION_STATE_CAPTURE_NOTIFICATION:
+		ret = intel_guc_error_capture_process_msg(guc, payload, len);
+		break;
 	case INTEL_GUC_ACTION_ENGINE_FAILURE_NOTIFICATION:
 		ret = intel_guc_engine_failure_process_msg(guc, payload, len);
 		break;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
index 7072e30e99f4..767684b6af67 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
@@ -86,11 +86,14 @@
 #define GUC_CTL_LOG_PARAMS		0
 #define   GUC_LOG_VALID			(1 << 0)
 #define   GUC_LOG_NOTIFY_ON_HALF_FULL	(1 << 1)
-#define   GUC_LOG_ALLOC_IN_MEGABYTE	(1 << 3)
+#define   GUC_LOG_CAPTURE_ALLOC_UNITS	(1 << 2)
+#define   GUC_LOG_LOG_ALLOC_UNITS	(1 << 3)
 #define   GUC_LOG_CRASH_SHIFT		4
 #define   GUC_LOG_CRASH_MASK		(0x3 << GUC_LOG_CRASH_SHIFT)
 #define   GUC_LOG_DEBUG_SHIFT		6
 #define   GUC_LOG_DEBUG_MASK	        (0xF << GUC_LOG_DEBUG_SHIFT)
+#define   GUC_LOG_CAPTURE_SHIFT		10
+#define   GUC_LOG_CAPTURE_MASK	        (0x3 << GUC_LOG_CAPTURE_SHIFT)
 #define   GUC_LOG_BUF_ADDR_SHIFT	12
 
 #define GUC_CTL_WA			1
@@ -264,6 +267,7 @@ struct guc_mmio_reg {
 	u32 value;
 	u32 flags;
 #define GUC_REGSET_MASKED		(1 << 0)
+	u32 mask;
 } __packed;
 
 /* GuC register sets */
@@ -280,6 +284,14 @@ struct guc_gt_system_info {
 	u32 generic_gt_sysinfo[GUC_GENERIC_GT_SYSINFO_MAX];
 } __packed;
 
+/* Capture-types of GuC capture register lists */
+enum
+{
+	GUC_CAPTURE_LIST_INDEX_PF = 0,
+	GUC_CAPTURE_LIST_INDEX_VF = 1,
+	GUC_CAPTURE_LIST_INDEX_MAX = 2,
+};
+
 /* GuC Additional Data Struct */
 struct guc_ads {
 	struct guc_mmio_reg_set reg_state_list[GUC_MAX_ENGINE_CLASSES][GUC_MAX_INSTANCES_PER_CLASS];
@@ -291,7 +303,11 @@ struct guc_ads {
 	u32 golden_context_lrca[GUC_MAX_ENGINE_CLASSES];
 	u32 eng_state_size[GUC_MAX_ENGINE_CLASSES];
 	u32 private_data;
-	u32 reserved[15];
+	u32 reserved2;
+	u32 capture_instance[GUC_CAPTURE_LIST_INDEX_MAX][GUC_MAX_ENGINE_CLASSES];
+	u32 capture_class[GUC_CAPTURE_LIST_INDEX_MAX][GUC_MAX_ENGINE_CLASSES];
+	u32 capture_global[GUC_CAPTURE_LIST_INDEX_MAX];
+	u32 reserved[4];
 } __packed;
 
 /* Engine usage stats */
@@ -312,6 +328,7 @@ struct guc_engine_usage {
 enum guc_log_buffer_type {
 	GUC_DEBUG_LOG_BUFFER,
 	GUC_CRASH_DUMP_LOG_BUFFER,
+	GUC_CAPTURE_LOG_BUFFER,
 	GUC_MAX_LOG_BUFFER
 };
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
index ac0931f0374b..1962a43302a8 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
@@ -201,6 +201,8 @@ static unsigned int guc_get_log_buffer_size(enum guc_log_buffer_type type)
 		return DEBUG_BUFFER_SIZE;
 	case GUC_CRASH_DUMP_LOG_BUFFER:
 		return CRASH_BUFFER_SIZE;
+	case GUC_CAPTURE_LOG_BUFFER:
+		return CAPTURE_BUFFER_SIZE;
 	default:
 		MISSING_CASE(type);
 	}
@@ -463,6 +465,8 @@ int intel_guc_log_create(struct intel_guc_log *log)
 	 *  +-------------------------------+ 32B
 	 *  |      Debug state header       |
 	 *  +-------------------------------+ 64B
+	 *  |     Capture state header      |
+	 *  +-------------------------------+ 96B
 	 *  |                               |
 	 *  +===============================+ PAGE_SIZE (4KB)
 	 *  |        Crash Dump logs        |
@@ -470,7 +474,8 @@ int intel_guc_log_create(struct intel_guc_log *log)
 	 *  |          Debug logs           |
 	 *  +===============================+ + DEBUG_SIZE
 	 */
-	guc_log_size = PAGE_SIZE + CRASH_BUFFER_SIZE + DEBUG_BUFFER_SIZE;
+	guc_log_size = PAGE_SIZE + CRASH_BUFFER_SIZE + DEBUG_BUFFER_SIZE +
+		       CAPTURE_BUFFER_SIZE;
 
 	vma = intel_guc_allocate_vma(guc, guc_log_size);
 	if (IS_ERR(vma)) {
@@ -672,6 +677,8 @@ stringify_guc_log_type(enum guc_log_buffer_type type)
 		return "DEBUG";
 	case GUC_CRASH_DUMP_LOG_BUFFER:
 		return "CRASH";
+	case GUC_CAPTURE_LOG_BUFFER:
+		return "CAPTURE";
 	default:
 		MISSING_CASE(type);
 	}
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h
index ac1ee1d5ce10..9d9004dc58f1 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h
@@ -18,9 +18,11 @@ struct intel_guc;
 #ifdef CONFIG_DRM_I915_DEBUG_GUC
 #define CRASH_BUFFER_SIZE	SZ_2M
 #define DEBUG_BUFFER_SIZE	SZ_16M
+#define CAPTURE_BUFFER_SIZE	SZ_4M
 #else
 #define CRASH_BUFFER_SIZE	SZ_8K
 #define DEBUG_BUFFER_SIZE	SZ_64K
+#define CAPTURE_BUFFER_SIZE	SZ_16K
 #endif
 
 /*
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 77fbcd8730ee..0bfc92b1b982 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -4003,6 +4003,24 @@ int intel_guc_context_reset_process_msg(struct intel_guc *guc,
 	return 0;
 }
 
+int intel_guc_error_capture_process_msg(struct intel_guc *guc,
+					 const u32 *msg, u32 len)
+{
+	int status;
+
+	if (unlikely(len != 1)) {
+		drm_dbg(&guc_to_gt(guc)->i915->drm, "Invalid length %u", len);
+		return -EPROTO;
+	}
+
+	status = msg[0];
+	drm_info(&guc_to_gt(guc)->i915->drm, "Got error capture: status = %d", status);
+
+	/* Add extraction of error capture dump */
+
+	return 0;
+}
+
 static struct intel_engine_cs *
 guc_lookup_engine(struct intel_guc *guc, u8 guc_class, u8 instance)
 {
-- 
2.25.1

