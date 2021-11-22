Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C4F459829
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Nov 2021 00:03:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30F7689F19;
	Mon, 22 Nov 2021 23:02:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75EFD89EF7
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Nov 2021 23:02:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10176"; a="234850316"
X-IronPort-AV: E=Sophos;i="5.87,255,1631602800"; d="scan'208";a="234850316"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 15:02:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,255,1631602800"; d="scan'208";a="674237084"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga005.jf.intel.com with ESMTP; 22 Nov 2021 15:02:52 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Nov 2021 15:04:01 -0800
Message-Id: <20211122230402.2023576-7-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211122230402.2023576-1-alan.previn.teres.alexis@intel.com>
References: <20211122230402.2023576-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 6/7] drm/i915/guc: Copy new GuC error capture logs
 upon G2H notification.
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

Upon the G2H Notify-Err-Capture event, queue a worker to make a
snapshot of the error state capture logs from the GuC-log buffer
(error capture region) into an bigger interim circular buffer store
that can be parsed later during gpu coredump printing.

Also, call that worker function directly for the cases where we
are resetting GuC submission and need to flush outstanding logs.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |   7 +
 .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 206 ++++++++++++++++++
 .../gpu/drm/i915/gt/uc/intel_guc_capture.h    |  16 ++
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c    |  16 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.h    |   5 +
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  10 +-
 6 files changed, 256 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
index 5af03a486a13..c130f465c19a 100644
--- a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
+++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
@@ -178,4 +178,11 @@ enum intel_guc_sleep_state_status {
 #define GUC_LOG_CONTROL_VERBOSITY_MASK	(0xF << GUC_LOG_CONTROL_VERBOSITY_SHIFT)
 #define GUC_LOG_CONTROL_DEFAULT_LOGGING	(1 << 8)
 
+enum intel_guc_state_capture_event_status {
+	INTEL_GUC_STATE_CAPTURE_EVENT_STATUS_SUCCESS = 0x0,
+	INTEL_GUC_STATE_CAPTURE_EVENT_STATUS_NOSPACE = 0x1,
+};
+
+#define INTEL_GUC_STATE_CAPTURE_EVENT_STATUS_MASK      0x1
+
 #endif /* _ABI_GUC_ACTIONS_ABI_H */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
index 0cb358a98605..459fe81c77ae 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
@@ -11,8 +11,11 @@
 #include "gt/intel_gt.h"
 #include "gt/intel_lrc_reg.h"
 
+#include <linux/circ_buf.h>
+
 #include "intel_guc_fwif.h"
 #include "intel_guc_capture.h"
+#include "i915_gpu_error.h"
 
 /*
  * Define all device tables of GuC error capture register lists
@@ -390,15 +393,218 @@ int intel_guc_capture_output_min_size_est(struct intel_guc *guc)
 	return (worst_min_size * 3);
 }
 
+/*
+ * KMD Init time flows:
+ * --------------------
+ *     --> alloc A: GuC input capture regs lists (registered via ADS)
+ *                  List acquired via intel_guc_capture_list_count + intel_guc_capture_list_init
+ *                  Size = global-reg-list + (class-reg-list) + (num-instances x instance-reg-list)
+ *                  Device tables carry: 1x global, 1x per-class, 1x per-instance)
+ *                  Caller needs to call per-class and per-instance multiplie times
+ *
+ *     --> alloc B: GuC output capture buf (registered via guc_init_params(log_param))
+ *                  Size = #define CAPTURE_BUFFER_SIZE (warns if on too-small)
+ *                  Note2: 'x 3' to hold multiple capture groups
+ *
+ *     --> alloc C: GuC capture interim circular buffer storage in system mem
+ *                  Size = 'power_of_two(sizeof(B))' as per kernel circular buffer helper
+ *
+ * GUC Runtime notify capture:
+ * --------------------------
+ *     --> G2H STATE_CAPTURE_NOTIFICATION
+ *                   L--> intel_guc_capture_store_snapshot
+ *                        L--> queue(__guc_capture_store_snapshot_work)
+ *                             Copies from B (head->tail) into C
+ */
+
+static void guc_capture_store_insert(struct intel_guc *guc, struct guc_capture_out_store *store,
+				     unsigned char *new_data, size_t bytes)
+{
+	struct drm_i915_private *dev_priv = (guc_to_gt(guc))->i915;
+	unsigned char *dst_data = store->addr;
+	unsigned long h, t;
+	size_t tmp;
+
+	h = store->head;
+	t = store->tail;
+	if (CIRC_SPACE(h, t, store->size) >= bytes) {
+		while (bytes) {
+			tmp = CIRC_SPACE_TO_END(h, t, store->size);
+			if (tmp) {
+				tmp = tmp < bytes ? tmp : bytes;
+				i915_unaligned_memcpy_from_wc(&dst_data[h], new_data, tmp);
+				bytes -= tmp;
+				new_data += tmp;
+				h = (h + tmp) & (store->size - 1);
+			} else {
+				drm_err(&dev_priv->drm, "circbuf copy-to ptr-corruption!\n");
+				break;
+			}
+		}
+		store->head = h;
+	} else {
+		drm_err(&dev_priv->drm, "GuC capture interim-store insufficient space!\n");
+	}
+}
+
+static void __guc_capture_store_snapshot_work(struct intel_guc *guc)
+{
+	struct drm_i915_private *dev_priv = (guc_to_gt(guc))->i915;
+	unsigned int buffer_size, read_offset, write_offset, bytes_to_copy, full_count;
+	struct guc_log_buffer_state *log_buf_state;
+	struct guc_log_buffer_state log_buf_state_local;
+	void *src_data, *dst_data = NULL;
+	bool new_overflow;
+
+	/* Lock to get the pointer to GuC capture-log-buffer-state */
+	mutex_lock(&guc->log_state[GUC_CAPTURE_LOG_BUFFER].lock);
+	log_buf_state = guc->log.buf_addr +
+			(sizeof(struct guc_log_buffer_state) * GUC_CAPTURE_LOG_BUFFER);
+	src_data = guc->log.buf_addr + guc_get_log_buffer_offset(GUC_CAPTURE_LOG_BUFFER);
+
+	/*
+	 * Make a copy of the state structure, inside GuC log buffer
+	 * (which is uncached mapped), on the stack to avoid reading
+	 * from it multiple times.
+	 */
+	memcpy(&log_buf_state_local, log_buf_state, sizeof(struct guc_log_buffer_state));
+	buffer_size = guc_get_log_buffer_size(GUC_CAPTURE_LOG_BUFFER);
+	read_offset = log_buf_state_local.read_ptr;
+	write_offset = log_buf_state_local.sampled_write_ptr;
+	full_count = log_buf_state_local.buffer_full_cnt;
+
+	/* Bookkeeping stuff */
+	guc->log_state[GUC_CAPTURE_LOG_BUFFER].flush += log_buf_state_local.flush_to_file;
+	new_overflow = guc_check_log_buf_overflow(guc, &guc->log_state[GUC_CAPTURE_LOG_BUFFER],
+						  full_count);
+
+	/* Update the state of shared log buffer */
+	log_buf_state->read_ptr = write_offset;
+	log_buf_state->flush_to_file = 0;
+
+	mutex_unlock(&guc->log_state[GUC_CAPTURE_LOG_BUFFER].lock);
+
+	dst_data = guc->capture.out_store.addr;
+	if (dst_data) {
+		mutex_lock(&guc->capture.out_store.lock);
+
+		/* Now copy the actual logs. */
+		if (unlikely(new_overflow)) {
+			/* copy the whole buffer in case of overflow */
+			read_offset = 0;
+			write_offset = buffer_size;
+		} else if (unlikely((read_offset > buffer_size) ||
+					(write_offset > buffer_size))) {
+			drm_err(&dev_priv->drm, "invalid GuC log capture buffer state!\n");
+			/* copy whole buffer as offsets are unreliable */
+			read_offset = 0;
+			write_offset = buffer_size;
+		}
+
+		/* first copy from the tail end of the GuC log capture buffer */
+		if (read_offset > write_offset) {
+			guc_capture_store_insert(guc, &guc->capture.out_store, src_data,
+						 write_offset);
+			bytes_to_copy = buffer_size - read_offset;
+		} else {
+			bytes_to_copy = write_offset - read_offset;
+		}
+		guc_capture_store_insert(guc, &guc->capture.out_store, src_data + read_offset,
+					 bytes_to_copy);
+
+		mutex_unlock(&guc->capture.out_store.lock);
+	}
+}
+
+static void guc_capture_store_snapshot_work(struct work_struct *work)
+{
+	struct intel_guc_state_capture *capture =
+		container_of(work, struct intel_guc_state_capture, store_work);
+	struct intel_guc *guc =
+		container_of(capture, struct intel_guc, capture);
+
+	__guc_capture_store_snapshot_work(guc);
+}
+
+void  intel_guc_capture_store_snapshot(struct intel_guc *guc)
+{
+	if (guc->capture.enabled)
+		queue_work(system_highpri_wq, &guc->capture.store_work);
+}
+
+void intel_guc_capture_store_snapshot_immediate(struct intel_guc *guc)
+{
+	if (guc->capture.enabled)
+		__guc_capture_store_snapshot_work(guc);
+}
+
+static void guc_capture_store_destroy(struct intel_guc *guc)
+{
+	mutex_destroy(&guc->capture.out_store.lock);
+	mutex_destroy(&guc->capture.out_store.lock);
+	guc->capture.out_store.size = 0;
+	kfree(guc->capture.out_store.addr);
+	guc->capture.out_store.addr = NULL;
+}
+
+static int guc_capture_store_create(struct intel_guc *guc)
+{
+	/*
+	 * Make this interim buffer 3x the GuC capture output buffer so that we can absorb
+	 * a little delay when processing the raw capture dumps into text friendly logs
+	 * for the i915_gpu_coredump output
+	 */
+	size_t max_dump_size;
+	struct drm_i915_private *dev_priv = (guc_to_gt(guc))->i915;
+
+	GEM_BUG_ON(guc->capture.out_store.addr);
+
+	max_dump_size = PAGE_ALIGN(intel_guc_capture_output_min_size_est(guc));
+	max_dump_size = roundup_pow_of_two(max_dump_size);
+
+	guc->capture.out_store.addr = kzalloc(max_dump_size, GFP_KERNEL);
+	if (!guc->capture.out_store.addr) {
+		drm_warn(&dev_priv->drm, "GuC-capture interim-store populated at init!\n");
+		return -ENOMEM;
+	}
+	guc->capture.out_store.size = max_dump_size;
+	mutex_init(&guc->capture.out_store.lock);
+	mutex_init(&guc->capture.out_store.lock);
+
+	return 0;
+}
+
 void intel_guc_capture_destroy(struct intel_guc *guc)
 {
+	if (!guc->capture.enabled)
+		return;
+
+	guc->capture.enabled = false;
+
+	intel_synchronize_irq(guc_to_gt(guc)->i915);
+	flush_work(&guc->capture.store_work);
+	guc_capture_store_destroy(guc);
 	guc_capture_clear_ext_regs(guc->capture.reglists);
 }
 
 int intel_guc_capture_init(struct intel_guc *guc)
 {
 	struct drm_i915_private *dev_priv = (guc_to_gt(guc))->i915;
+	int ret;
 
 	guc->capture.reglists = guc_capture_get_device_reglist(dev_priv);
+	/*
+	 * allocate interim store at init time so we dont require memory
+	 * allocation whilst in the midst of the reset + capture
+	 */
+	ret = guc_capture_store_create(guc);
+	if (ret) {
+		guc_capture_clear_ext_regs(guc->capture.reglists);
+		return ret;
+	}
+
+	INIT_WORK(&guc->capture.store_work, guc_capture_store_snapshot_work);
+	guc->capture.enabled = true;
+
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
index 839b53425e1e..7031de12f3a1 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
@@ -64,7 +64,19 @@ struct intel_guc_capture_out_group {
 	struct intel_guc_capture_out_data group_lists[0];
 };
 
+struct guc_capture_out_store {
+	/* An interim storage to copy the GuC error-capture-output before
+	 * parsing and reporting via proper reporting flows with formatting.
+	 */
+	unsigned char *addr;
+	size_t size;
+	unsigned long head; /* inject new output capture data */
+	unsigned long tail; /* remove output capture data when reporting */
+	struct mutex lock; /*lock head or tail when copying capture in or extracting out*/
+};
+
 struct intel_guc_state_capture {
+	bool enabled;
 	struct __guc_mmio_reg_descr_group *reglists;
 	u16 num_instance_regs[GUC_CAPTURE_LIST_INDEX_MAX][GUC_MAX_ENGINE_CLASSES];
 	u16 num_class_regs[GUC_CAPTURE_LIST_INDEX_MAX][GUC_MAX_ENGINE_CLASSES];
@@ -72,14 +84,18 @@ struct intel_guc_state_capture {
 	int instance_list_size;
 	int class_list_size;
 	int global_list_size;
+	struct guc_capture_out_store out_store;
+	struct work_struct store_work;
 };
 
+void intel_guc_capture_store_snapshot(struct intel_guc *guc);
 int intel_guc_capture_list_count(struct intel_guc *guc, u32 owner, u32 type, u32 class,
 				 u16 *num_entries);
 int intel_guc_capture_list_init(struct intel_guc *guc, u32 owner, u32 type, u32 class,
 				struct guc_mmio_reg *ptr, u16 num_entries);
 int intel_guc_capture_output_min_size_est(struct intel_guc *guc);
 void intel_guc_capture_destroy(struct intel_guc *guc);
+void intel_guc_capture_store_snapshot_immediate(struct intel_guc *guc);
 int intel_guc_capture_init(struct intel_guc *guc);
 
 #endif /* _INTEL_GUC_CAPTURE_H */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
index dd86530f77a1..1354dbde9994 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
@@ -194,7 +194,7 @@ bool guc_check_log_buf_overflow(struct intel_guc *guc,
 	return overflow;
 }
 
-static unsigned int guc_get_log_buffer_size(enum guc_log_buffer_type type)
+unsigned int guc_get_log_buffer_size(enum guc_log_buffer_type type)
 {
 	switch (type) {
 	case GUC_DEBUG_LOG_BUFFER:
@@ -210,6 +210,20 @@ static unsigned int guc_get_log_buffer_size(enum guc_log_buffer_type type)
 	return 0;
 }
 
+size_t guc_get_log_buffer_offset(enum guc_log_buffer_type type)
+{
+	enum guc_log_buffer_type i;
+	size_t offset = PAGE_SIZE;/* for the log_buffer_states */
+
+	for (i = GUC_DEBUG_LOG_BUFFER; i < GUC_MAX_LOG_BUFFER; i++) {
+		if (i == type)
+			break;
+		offset += guc_get_log_buffer_size(i);
+	}
+
+	return offset;
+}
+
 static void _guc_log_copy_debuglogs_for_relay(struct intel_guc_log *log)
 {
 	struct intel_guc *guc = log_to_guc(log);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h
index 2968023f7447..9bf29343df0e 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h
@@ -64,8 +64,13 @@ struct intel_guc_log {
 };
 
 void intel_guc_log_init_early(struct intel_guc_log *log);
+unsigned int guc_get_log_buffer_size(enum guc_log_buffer_type type);
+size_t guc_get_log_buffer_offset(enum guc_log_buffer_type type);
 int intel_guc_log_create(struct intel_guc_log *log);
 void intel_guc_log_destroy(struct intel_guc_log *log);
+ 
+bool guc_check_log_buf_overflow(struct intel_guc *guc, struct intel_guc_log_stats *state,
+				unsigned int full_cnt);
 
 int intel_guc_log_set_level(struct intel_guc_log *log, u32 level);
 bool intel_guc_log_relay_created(const struct intel_guc_log *log);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 0bfc92b1b982..0afd9ddd71fc 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -24,6 +24,7 @@
 
 #include "intel_guc_ads.h"
 #include "intel_guc_submission.h"
+#include "gt/uc/intel_guc_capture.h"
 
 #include "i915_drv.h"
 #include "i915_trace.h"
@@ -1431,6 +1432,8 @@ void intel_guc_submission_reset_prepare(struct intel_guc *guc)
 	}
 
 	scrub_guc_desc_for_outstanding_g2h(guc);
+
+	intel_guc_capture_store_snapshot_immediate(guc);
 }
 
 static struct intel_engine_cs *
@@ -4013,10 +4016,11 @@ int intel_guc_error_capture_process_msg(struct intel_guc *guc,
 		return -EPROTO;
 	}
 
-	status = msg[0];
-	drm_info(&guc_to_gt(guc)->i915->drm, "Got error capture: status = %d", status);
+	status = msg[0] & INTEL_GUC_STATE_CAPTURE_EVENT_STATUS_MASK;
+	if (status == INTEL_GUC_STATE_CAPTURE_EVENT_STATUS_NOSPACE)
+		drm_warn(&guc_to_gt(guc)->i915->drm, "G2H-Error capture no space\n");
 
-	/* Add extraction of error capture dump */
+	intel_guc_capture_store_snapshot(guc);
 
 	return 0;
 }
-- 
2.25.1

