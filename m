Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EA207B24E6
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Sep 2023 20:09:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD40810E6A5;
	Thu, 28 Sep 2023 18:09:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AE8910E6A5
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Sep 2023 18:09:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695924590; x=1727460590;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UulP+EGmkZvlECewIquLXNL1VvJfhxWYpjA88m/zc8E=;
 b=A64gIizkXYh0L+Tqo6WLrDlJ5fG8pFSMrkAgI403dU4KjDiIC2NzVOjd
 KzFb9fyRXNkreXY2ZbAeOuG3goQGJIiylM5Q7WgY8avr9G3VRO2xqLr/T
 SPkUcU6IGOxaxPGVTHRRNmIEQGMnZlTcspVpn//3el55qCuQ1S+lYfjek
 C3P1O/9IrIsHyLz3njsFYovD42H8NXO4dFYIRnDtN4YlelxCh/qO0btPD
 ak458qGxGBoVycQp2mmMIX2oIU5j1ZbWTO8BjVxPQYwd4smAtafmK+oGg
 tZEFPjbhgNoXHSUbKFwquy1kzo4ljFW3Q7zLlYFTpf6P/fKRoV6DXV1CU A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="379407278"
X-IronPort-AV: E=Sophos;i="6.03,184,1694761200"; d="scan'208";a="379407278"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 11:09:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="1080659537"
X-IronPort-AV: E=Sophos;i="6.03,184,1694761200"; d="scan'208";a="1080659537"
Received: from danielba-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.53.20])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 11:09:48 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Sep 2023 21:08:56 +0300
Message-Id: <10b9cc28ad1798dd1b56129235f2a494ac38e706.1695924021.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1695924021.git.jani.nikula@intel.com>
References: <cover.1695924021.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 12/15] drm/i915: hide gpu error structures
 inside i915_gpu_error.c
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

With the interfaces cleaned up, we can move the error structs inside
i915_gpu_error.c, and drop a number of includes from the header.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_gpu_error.c | 201 +++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_gpu_error.h | 222 +-------------------------
 2 files changed, 205 insertions(+), 218 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index e73b53b384a5..136c494b67e8 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -63,6 +63,207 @@
 #define ALLOW_FAIL (__GFP_KSWAPD_RECLAIM | __GFP_RETRY_MAYFAIL | __GFP_NOWARN)
 #define ATOMIC_MAYFAIL (GFP_ATOMIC | __GFP_NOWARN)
 
+struct i915_vma_coredump {
+	struct i915_vma_coredump *next;
+
+	char name[20];
+
+	u64 gtt_offset;
+	u64 gtt_size;
+	u32 gtt_page_sizes;
+
+	int unused;
+	struct list_head page_list;
+};
+
+struct i915_request_coredump {
+	unsigned long flags;
+	pid_t pid;
+	u32 context;
+	u32 seqno;
+	u32 head;
+	u32 tail;
+	struct i915_sched_attr sched_attr;
+};
+
+struct __guc_capture_parsed_output;
+
+struct intel_engine_coredump {
+	const struct intel_engine_cs *engine;
+
+	bool hung;
+	bool simulated;
+	u32 reset_count;
+
+	/* position of active request inside the ring */
+	u32 rq_head, rq_post, rq_tail;
+
+	/* Register state */
+	u32 ccid;
+	u32 start;
+	u32 tail;
+	u32 head;
+	u32 ctl;
+	u32 mode;
+	u32 hws;
+	u32 ipeir;
+	u32 ipehr;
+	u32 esr;
+	u32 bbstate;
+	u32 instpm;
+	u32 instps;
+	u64 bbaddr;
+	u64 acthd;
+	u32 fault_reg;
+	u64 faddr;
+	u32 rc_psmi; /* sleep state */
+	u32 nopid;
+	u32 excc;
+	u32 cmd_cctl;
+	u32 cscmdop;
+	u32 ctx_sr_ctl;
+	u32 dma_faddr_hi;
+	u32 dma_faddr_lo;
+	struct intel_instdone instdone;
+
+	/* GuC matched capture-lists info */
+	struct intel_guc_state_capture *guc_capture;
+	struct __guc_capture_parsed_output *guc_capture_node;
+
+	struct i915_gem_context_coredump {
+		char comm[TASK_COMM_LEN];
+
+		u64 total_runtime;
+		u64 avg_runtime;
+
+		pid_t pid;
+		int active;
+		int guilty;
+		struct i915_sched_attr sched_attr;
+		u32 hwsp_seqno;
+	} context;
+
+	struct i915_vma_coredump *vma;
+
+	struct i915_request_coredump execlist[EXECLIST_MAX_PORTS];
+	unsigned int num_ports;
+
+	struct {
+		u32 gfx_mode;
+		union {
+			u64 pdp[4];
+			u32 pp_dir_base;
+		};
+	} vm_info;
+
+	struct intel_engine_coredump *next;
+};
+
+struct intel_ctb_coredump {
+	u32 raw_head, head;
+	u32 raw_tail, tail;
+	u32 raw_status;
+	u32 desc_offset;
+	u32 cmds_offset;
+	u32 size;
+};
+
+struct intel_gt_coredump {
+	const struct intel_gt *_gt;
+	bool awake;
+	bool simulated;
+
+	struct intel_gt_info info;
+
+	/* Generic register state */
+	u32 eir;
+	u32 pgtbl_er;
+	u32 ier;
+	u32 gtier[6], ngtier;
+	u32 forcewake;
+	u32 error; /* gen6+ */
+	u32 err_int; /* gen7 */
+	u32 fault_data0; /* gen8, gen9 */
+	u32 fault_data1; /* gen8, gen9 */
+	u32 done_reg;
+	u32 gac_eco;
+	u32 gam_ecochk;
+	u32 gab_ctl;
+	u32 gfx_mode;
+	u32 gtt_cache;
+	u32 aux_err; /* gen12 */
+	u32 gam_done; /* gen12 */
+	u32 clock_frequency;
+	u32 clock_period_ns;
+
+	/* Display related */
+	u32 derrmr;
+	u32 sfc_done[I915_MAX_SFC]; /* gen12 */
+
+	u32 nfence;
+	u64 fence[I915_MAX_NUM_FENCES];
+
+	struct intel_engine_coredump *engine;
+
+	struct intel_uc_coredump {
+		struct intel_uc_fw guc_fw;
+		struct intel_uc_fw huc_fw;
+		struct guc_info {
+			struct intel_ctb_coredump ctb[2];
+			struct i915_vma_coredump *vma_ctb;
+			struct i915_vma_coredump *vma_log;
+			u32 timestamp;
+			u16 last_fence;
+			bool is_guc_capture;
+		} guc;
+	} *uc;
+
+	struct intel_gt_coredump *next;
+};
+
+struct i915_gpu_coredump {
+	struct kref ref;
+	ktime_t time;
+	ktime_t boottime;
+	ktime_t uptime;
+	unsigned long capture;
+
+	struct drm_i915_private *i915;
+
+	struct intel_gt_coredump *gt;
+
+	char error_msg[128];
+	bool simulated;
+	bool wakelock;
+	bool suspended;
+	int iommu;
+	u32 reset_count;
+	u32 suspend_count;
+
+	struct intel_device_info device_info;
+	struct intel_runtime_info runtime_info;
+	struct intel_display_device_info display_device_info;
+	struct intel_display_runtime_info display_runtime_info;
+	struct intel_driver_caps driver_caps;
+	struct i915_params params;
+
+	struct intel_overlay_error_state *overlay;
+
+	struct scatterlist *sgl, *fit;
+};
+
+struct drm_i915_error_state_buf {
+	struct drm_i915_private *i915;
+	struct scatterlist *sgl, *cur, *end;
+
+	char *buf;
+	size_t bytes;
+	size_t size;
+	loff_t iter;
+
+	int err;
+};
+
 struct intel_gt_coredump *
 intel_gt_coredump_alloc(struct intel_gt *gt, gfp_t gfp, u32 dump_flags);
 
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
index c2c15e29e266..5a2d0f506385 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.h
+++ b/drivers/gpu/drm/i915/i915_gpu_error.h
@@ -8,215 +8,13 @@
 #define _I915_GPU_ERROR_H_
 
 #include <linux/atomic.h>
-#include <linux/kref.h>
-#include <linux/ktime.h>
-#include <linux/sched.h>
+#include <linux/types.h>
 
-#include <drm/drm_mm.h>
-
-#include "display/intel_display_device.h"
-#include "gt/intel_engine.h"
-#include "gt/intel_gt_types.h"
-#include "gt/uc/intel_uc_fw.h"
-
-#include "intel_device_info.h"
-
-#include "i915_gem.h"
-#include "i915_gem_gtt.h"
-#include "i915_params.h"
-#include "i915_scheduler.h"
+#include "gt/intel_engine_types.h"
 
+struct drm_i915_error_state_buf;
 struct drm_i915_private;
-struct intel_overlay_error_state;
-
-struct i915_vma_coredump {
-	struct i915_vma_coredump *next;
-
-	char name[20];
-
-	u64 gtt_offset;
-	u64 gtt_size;
-	u32 gtt_page_sizes;
-
-	int unused;
-	struct list_head page_list;
-};
-
-struct i915_request_coredump {
-	unsigned long flags;
-	pid_t pid;
-	u32 context;
-	u32 seqno;
-	u32 head;
-	u32 tail;
-	struct i915_sched_attr sched_attr;
-};
-
-struct __guc_capture_parsed_output;
-
-struct intel_engine_coredump {
-	const struct intel_engine_cs *engine;
-
-	bool hung;
-	bool simulated;
-	u32 reset_count;
-
-	/* position of active request inside the ring */
-	u32 rq_head, rq_post, rq_tail;
-
-	/* Register state */
-	u32 ccid;
-	u32 start;
-	u32 tail;
-	u32 head;
-	u32 ctl;
-	u32 mode;
-	u32 hws;
-	u32 ipeir;
-	u32 ipehr;
-	u32 esr;
-	u32 bbstate;
-	u32 instpm;
-	u32 instps;
-	u64 bbaddr;
-	u64 acthd;
-	u32 fault_reg;
-	u64 faddr;
-	u32 rc_psmi; /* sleep state */
-	u32 nopid;
-	u32 excc;
-	u32 cmd_cctl;
-	u32 cscmdop;
-	u32 ctx_sr_ctl;
-	u32 dma_faddr_hi;
-	u32 dma_faddr_lo;
-	struct intel_instdone instdone;
-
-	/* GuC matched capture-lists info */
-	struct intel_guc_state_capture *guc_capture;
-	struct __guc_capture_parsed_output *guc_capture_node;
-
-	struct i915_gem_context_coredump {
-		char comm[TASK_COMM_LEN];
-
-		u64 total_runtime;
-		u64 avg_runtime;
-
-		pid_t pid;
-		int active;
-		int guilty;
-		struct i915_sched_attr sched_attr;
-		u32 hwsp_seqno;
-	} context;
-
-	struct i915_vma_coredump *vma;
-
-	struct i915_request_coredump execlist[EXECLIST_MAX_PORTS];
-	unsigned int num_ports;
-
-	struct {
-		u32 gfx_mode;
-		union {
-			u64 pdp[4];
-			u32 pp_dir_base;
-		};
-	} vm_info;
-
-	struct intel_engine_coredump *next;
-};
-
-struct intel_ctb_coredump {
-	u32 raw_head, head;
-	u32 raw_tail, tail;
-	u32 raw_status;
-	u32 desc_offset;
-	u32 cmds_offset;
-	u32 size;
-};
-
-struct intel_gt_coredump {
-	const struct intel_gt *_gt;
-	bool awake;
-	bool simulated;
-
-	struct intel_gt_info info;
-
-	/* Generic register state */
-	u32 eir;
-	u32 pgtbl_er;
-	u32 ier;
-	u32 gtier[6], ngtier;
-	u32 forcewake;
-	u32 error; /* gen6+ */
-	u32 err_int; /* gen7 */
-	u32 fault_data0; /* gen8, gen9 */
-	u32 fault_data1; /* gen8, gen9 */
-	u32 done_reg;
-	u32 gac_eco;
-	u32 gam_ecochk;
-	u32 gab_ctl;
-	u32 gfx_mode;
-	u32 gtt_cache;
-	u32 aux_err; /* gen12 */
-	u32 gam_done; /* gen12 */
-	u32 clock_frequency;
-	u32 clock_period_ns;
-
-	/* Display related */
-	u32 derrmr;
-	u32 sfc_done[I915_MAX_SFC]; /* gen12 */
-
-	u32 nfence;
-	u64 fence[I915_MAX_NUM_FENCES];
-
-	struct intel_engine_coredump *engine;
-
-	struct intel_uc_coredump {
-		struct intel_uc_fw guc_fw;
-		struct intel_uc_fw huc_fw;
-		struct guc_info {
-			struct intel_ctb_coredump ctb[2];
-			struct i915_vma_coredump *vma_ctb;
-			struct i915_vma_coredump *vma_log;
-			u32 timestamp;
-			u16 last_fence;
-			bool is_guc_capture;
-		} guc;
-	} *uc;
-
-	struct intel_gt_coredump *next;
-};
-
-struct i915_gpu_coredump {
-	struct kref ref;
-	ktime_t time;
-	ktime_t boottime;
-	ktime_t uptime;
-	unsigned long capture;
-
-	struct drm_i915_private *i915;
-
-	struct intel_gt_coredump *gt;
-
-	char error_msg[128];
-	bool simulated;
-	bool wakelock;
-	bool suspended;
-	int iommu;
-	u32 reset_count;
-	u32 suspend_count;
-
-	struct intel_device_info device_info;
-	struct intel_runtime_info runtime_info;
-	struct intel_display_device_info display_device_info;
-	struct intel_display_runtime_info display_runtime_info;
-	struct intel_driver_caps driver_caps;
-	struct i915_params params;
-
-	struct intel_overlay_error_state *overlay;
-
-	struct scatterlist *sgl, *fit;
-};
+struct i915_gpu_coredump;
 
 struct i915_gpu_error {
 	/* For reset and error_state handling. */
@@ -233,18 +31,6 @@ struct i915_gpu_error {
 	atomic_t reset_engine_count[I915_NUM_ENGINES];
 };
 
-struct drm_i915_error_state_buf {
-	struct drm_i915_private *i915;
-	struct scatterlist *sgl, *cur, *end;
-
-	char *buf;
-	size_t bytes;
-	size_t size;
-	loff_t iter;
-
-	int err;
-};
-
 static inline u32 i915_reset_count(struct i915_gpu_error *error)
 {
 	return atomic_read(&error->reset_count);
-- 
2.39.2

