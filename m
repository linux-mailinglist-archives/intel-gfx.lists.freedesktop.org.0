Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D748B48AA82
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jan 2022 10:28:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBBA514A241;
	Tue, 11 Jan 2022 09:28:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1222314A241
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jan 2022 09:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641893314; x=1673429314;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VReK6k0WaOn5cMfmA5vLwNE9KZ0OmtCBgjHDV7dCgXk=;
 b=mxG+6MSIdcFBLvWhGHHiqUfW153xlT3ff6jOzgyU70mi2AvxOgeT8YV3
 58wO5AeVEgyfS8/jw7YVzJoWMzpZycLHfd5SvoOdFAgXIkna2EqrSnyxu
 j5zzTx7tbzJoIXav5T4vII0DBi/LcGot+LNrM2sgSON/fGkxsd6n2CEmu
 WM9pSgVwjwCPd2+ssfCGoGtPIftA7R5jqs3TgFc4SaJtodyjgdnZkQuYd
 vZzoCLdCdJ244NOTkKbfTyX/4F5gNojDGOyWzHbLmFdIbNYAWTxUvVckO
 fDDX0UXoflB6k7E6yC4vQQ8+itk/XiFb9DGADvKzy3Fcd/IpvxjRiWyFJ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10223"; a="240996995"
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="240996995"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2022 01:28:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="558305536"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga001.jf.intel.com with ESMTP; 11 Jan 2022 01:28:32 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Jan 2022 01:30:16 -0800
Message-Id: <20220111093018.610582-7-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220111093018.610582-1-alan.previn.teres.alexis@intel.com>
References: <20220111093018.610582-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC v3 6/7] drm/i915/guc: Copy new GuC error capture
 logs upon G2H notification.
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
 drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h |  12 ++
 .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 186 ++++++++++++++++++
 .../gpu/drm/i915/gt/uc/intel_guc_capture.h    |   1 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c    |  26 ++-
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.h    |   4 +
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  12 +-
 7 files changed, 239 insertions(+), 9 deletions(-)

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
diff --git a/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h b/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
index 495cdb0228c6..d9ea5df64b06 100644
--- a/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
+++ b/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
@@ -63,11 +63,23 @@ struct guc_state_capture_group_t {
 	struct guc_state_capture_t capture_entries[0];
 } __packed;
 
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
 struct __guc_state_capture_priv {
 	struct __guc_mmio_reg_descr_group *reglists;
 	u16 num_instance_regs[GUC_CAPTURE_LIST_INDEX_MAX][GUC_MAX_ENGINE_CLASSES];
 	u16 num_class_regs[GUC_CAPTURE_LIST_INDEX_MAX][GUC_MAX_ENGINE_CLASSES];
 	u16 num_global_regs[GUC_CAPTURE_LIST_INDEX_MAX];
+	struct guc_capture_out_store out_store;
 };
 
 #endif /* _INTEL_GUC_CAPTURE_FWIF_H */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
index b3b3491cfe6d..048b1b7b9259 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
@@ -3,6 +3,7 @@
  * Copyright © 2021-2021 Intel Corporation
  */
 
+#include <linux/circ_buf.h>
 #include <linux/types.h>
 
 #include <drm/drm_print.h>
@@ -12,6 +13,8 @@
 #include "guc_capture_fwif.h"
 #include "intel_guc_fwif.h"
 #include "i915_drv.h"
+#include "i915_gpu_error.h"
+#include "i915_irq.h"
 #include "i915_memcpy.h"
 
 /*
@@ -595,6 +598,9 @@ int intel_guc_capture_output_min_size_est(struct intel_guc *guc)
 	int worst_min_size = 0, num_regs = 0;
 	u16 tmp = 0;
 
+	if (!guc->capture.priv)
+		return -ENODEV;
+
 	/*
 	 * If every single engine-instance suffered a failure in quick succession but
 	 * were all unrelated, then a burst of multiple error-capture events would dump
@@ -633,8 +639,174 @@ int intel_guc_capture_output_min_size_est(struct intel_guc *guc)
 	return (worst_min_size * GUC_CAPTURE_OVERBUFFER_MULTIPLIER);
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
+ *                           L--> Copies from B (head->tail) into C
+ */
+
+static void guc_capture_store_insert(struct intel_guc *guc, struct guc_capture_out_store *store,
+				     unsigned char *new_data, size_t bytes)
+{
+	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
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
+				drm_err(&i915->drm, "circbuf copy-to ptr-corruption!\n");
+				break;
+			}
+		}
+		store->head = h;
+	} else {
+		drm_err(&i915->drm, "GuC capture interim-store insufficient space!\n");
+	}
+}
+
+static void __guc_capture_store_snapshot_work(struct intel_guc *guc)
+{
+	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
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
+	src_data = guc->log.buf_addr + intel_guc_get_log_buffer_offset(GUC_CAPTURE_LOG_BUFFER);
+
+	/*
+	 * Make a copy of the state structure, inside GuC log buffer
+	 * (which is uncached mapped), on the stack to avoid reading
+	 * from it multiple times.
+	 */
+	memcpy(&log_buf_state_local, log_buf_state, sizeof(struct guc_log_buffer_state));
+	buffer_size = intel_guc_get_log_buffer_size(GUC_CAPTURE_LOG_BUFFER);
+	read_offset = log_buf_state_local.read_ptr;
+	write_offset = log_buf_state_local.sampled_write_ptr;
+	full_count = log_buf_state_local.buffer_full_cnt;
+
+	/* Bookkeeping stuff */
+	guc->log_state[GUC_CAPTURE_LOG_BUFFER].flush += log_buf_state_local.flush_to_file;
+	new_overflow = intel_guc_check_log_buf_overflow(guc,
+							&guc->log_state[GUC_CAPTURE_LOG_BUFFER],
+							full_count);
+
+	/* Update the state of shared log buffer */
+	log_buf_state->read_ptr = write_offset;
+	log_buf_state->flush_to_file = 0;
+
+	mutex_unlock(&guc->log_state[GUC_CAPTURE_LOG_BUFFER].lock);
+
+	dst_data = guc->capture.priv->out_store.addr;
+	if (dst_data) {
+		mutex_lock(&guc->capture.priv->out_store.lock);
+
+		/* Now copy the actual logs. */
+		if (unlikely(new_overflow)) {
+			/* copy the whole buffer in case of overflow */
+			read_offset = 0;
+			write_offset = buffer_size;
+		} else if (unlikely((read_offset > buffer_size) ||
+			   (write_offset > buffer_size))) {
+			drm_err(&i915->drm, "invalid GuC log capture buffer state!\n");
+			/* copy whole buffer as offsets are unreliable */
+			read_offset = 0;
+			write_offset = buffer_size;
+		}
+
+		/* first copy from the tail end of the GuC log capture buffer */
+		if (read_offset > write_offset) {
+			guc_capture_store_insert(guc, &guc->capture.priv->out_store, src_data,
+						 write_offset);
+			bytes_to_copy = buffer_size - read_offset;
+		} else {
+			bytes_to_copy = write_offset - read_offset;
+		}
+		guc_capture_store_insert(guc, &guc->capture.priv->out_store, src_data + read_offset,
+					 bytes_to_copy);
+
+		mutex_unlock(&guc->capture.priv->out_store.lock);
+	}
+}
+
+void intel_guc_capture_store_snapshot(struct intel_guc *guc)
+{
+	if (guc->capture.priv)
+		__guc_capture_store_snapshot_work(guc);
+}
+
+static void guc_capture_store_destroy(struct intel_guc *guc)
+{
+	mutex_destroy(&guc->capture.priv->out_store.lock);
+	guc->capture.priv->out_store.size = 0;
+	kfree(guc->capture.priv->out_store.addr);
+	guc->capture.priv->out_store.addr = NULL;
+}
+
+static int guc_capture_store_create(struct intel_guc *guc)
+{
+	/*
+	 * Make this interim buffer larger than GuC capture output buffer so that we can absorb
+	 * a little delay when processing the raw capture dumps into text friendly logs
+	 * for the i915_gpu_coredump output
+	 */
+	size_t max_dump_size;
+
+	GEM_BUG_ON(guc->capture.priv->out_store.addr);
+
+	max_dump_size = PAGE_ALIGN(intel_guc_capture_output_min_size_est(guc));
+	max_dump_size = roundup_pow_of_two(max_dump_size);
+
+	guc->capture.priv->out_store.addr = kzalloc(max_dump_size, GFP_KERNEL);
+	if (!guc->capture.priv->out_store.addr)
+		return -ENOMEM;
+
+	guc->capture.priv->out_store.size = max_dump_size;
+	mutex_init(&guc->capture.priv->out_store.lock);
+
+	return 0;
+}
+
 void intel_guc_capture_destroy(struct intel_guc *guc)
 {
+	if (!guc->capture.priv)
+		return;
+
+	intel_synchronize_irq(guc_to_gt(guc)->i915);
+	guc_capture_store_destroy(guc);
 	guc_capture_clear_ext_regs(guc->capture.priv->reglists);
 	kfree(guc->capture.priv);
 	guc->capture.priv = NULL;
@@ -642,10 +814,24 @@ void intel_guc_capture_destroy(struct intel_guc *guc)
 
 int intel_guc_capture_init(struct intel_guc *guc)
 {
+	int ret;
+
 	guc->capture.priv = kzalloc(sizeof(*guc->capture.priv), GFP_KERNEL);
 	if (!guc->capture.priv)
 		return -ENOMEM;
+
 	guc->capture.priv->reglists = guc_capture_get_device_reglist(guc);
+	/*
+	 * allocate interim store at init time so we dont require memory
+	 * allocation whilst in the midst of the reset + capture
+	 */
+	ret = guc_capture_store_create(guc);
+	if (ret) {
+		guc_capture_clear_ext_regs(guc->capture.priv->reglists);
+		kfree(guc->capture.priv);
+		guc->capture.priv = NULL;
+		return ret;
+	}
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
index 4d3e5221128c..c240a4cc046b 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
@@ -14,6 +14,7 @@ struct guc_gt_system_info;
 
 int intel_guc_capture_prep_lists(struct intel_guc *guc, struct guc_ads *blob, u32 blob_ggtt,
 				 u32 capture_offset, struct guc_gt_system_info *sysinfo);
+void intel_guc_capture_store_snapshot(struct intel_guc *guc);
 int intel_guc_capture_output_min_size_est(struct intel_guc *guc);
 void intel_guc_capture_destroy(struct intel_guc *guc);
 int intel_guc_capture_init(struct intel_guc *guc);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
index e669beb978d5..78853b69da0c 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
@@ -171,9 +171,9 @@ static void *guc_get_write_buffer(struct intel_guc_log *log)
 	return relay_reserve(log->relay.channel, 0);
 }
 
-static bool guc_check_log_buf_overflow(struct intel_guc *guc,
-				       struct intel_guc_log_stats *log_state,
-				       unsigned int full_cnt)
+bool intel_guc_check_log_buf_overflow(struct intel_guc *guc,
+				      struct intel_guc_log_stats *log_state,
+				      unsigned int full_cnt)
 {
 	unsigned int prev_full_cnt = log_state->sampled_overflow;
 	bool overflow = false;
@@ -196,7 +196,7 @@ static bool guc_check_log_buf_overflow(struct intel_guc *guc,
 	return overflow;
 }
 
-static unsigned int guc_get_log_buffer_size(enum guc_log_buffer_type type)
+unsigned int intel_guc_get_log_buffer_size(enum guc_log_buffer_type type)
 {
 	switch (type) {
 	case GUC_DEBUG_LOG_BUFFER:
@@ -212,6 +212,20 @@ static unsigned int guc_get_log_buffer_size(enum guc_log_buffer_type type)
 	return 0;
 }
 
+size_t intel_guc_get_log_buffer_offset(enum guc_log_buffer_type type)
+{
+	enum guc_log_buffer_type i;
+	size_t offset = PAGE_SIZE;/* for the log_buffer_states */
+
+	for (i = GUC_DEBUG_LOG_BUFFER; i < GUC_MAX_LOG_BUFFER; i++) {
+		if (i == type)
+			break;
+		offset += intel_guc_get_log_buffer_size(i);
+	}
+
+	return offset;
+}
+
 static void _guc_log_copy_debuglogs_for_relay(struct intel_guc_log *log)
 {
 	struct intel_guc *guc = log_to_guc(log);
@@ -261,14 +275,14 @@ static void _guc_log_copy_debuglogs_for_relay(struct intel_guc_log *log)
 		mutex_lock(&logstate->lock);
 		memcpy(&log_buf_state_local, log_buf_state,
 		       sizeof(struct guc_log_buffer_state));
-		buffer_size = guc_get_log_buffer_size(type);
+		buffer_size = intel_guc_get_log_buffer_size(type);
 		read_offset = log_buf_state_local.read_ptr;
 		write_offset = log_buf_state_local.sampled_write_ptr;
 		full_cnt = log_buf_state_local.buffer_full_cnt;
 
 		/* Bookkeeping stuff */
 		logstate->flush += log_buf_state_local.flush_to_file;
-		new_overflow = guc_check_log_buf_overflow(guc, logstate, full_cnt);
+		new_overflow = intel_guc_check_log_buf_overflow(guc, logstate, full_cnt);
 
 		/* Update the state of shared log buffer */
 		log_buf_state->read_ptr = write_offset;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h
index a2489996b279..cd2a7105ffd6 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h
@@ -68,6 +68,10 @@ struct intel_guc_log {
 };
 
 void intel_guc_log_init_early(struct intel_guc_log *log);
+bool intel_guc_check_log_buf_overflow(struct intel_guc *guc, struct intel_guc_log_stats *state,
+				      unsigned int full_cnt);
+unsigned int intel_guc_get_log_buffer_size(enum guc_log_buffer_type type);
+size_t intel_guc_get_log_buffer_offset(enum guc_log_buffer_type type);
 int intel_guc_log_create(struct intel_guc_log *log);
 void intel_guc_log_destroy(struct intel_guc_log *log);
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 8bf0f967a6d5..bd41ff95d6d8 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -23,6 +23,7 @@
 #include "gt/intel_ring.h"
 
 #include "intel_guc_ads.h"
+#include "intel_guc_capture.h"
 #include "intel_guc_submission.h"
 
 #include "i915_drv.h"
@@ -1430,6 +1431,8 @@ void intel_guc_submission_reset_prepare(struct intel_guc *guc)
 	}
 
 	scrub_guc_desc_for_outstanding_g2h(guc);
+
+	intel_guc_capture_store_snapshot(guc);
 }
 
 static struct intel_engine_cs *
@@ -4029,10 +4032,13 @@ int intel_guc_error_capture_process_msg(struct intel_guc *guc,
 	if (unlikely(len != 1))
 		return -EPROTO;
 
-	status = msg[0];
-	drm_info(&guc_to_gt(guc)->i915->drm, "Got error capture: status = 0x%08x", status);
+	status = msg[0] & INTEL_GUC_STATE_CAPTURE_EVENT_STATUS_MASK;
+	if (status == INTEL_GUC_STATE_CAPTURE_EVENT_STATUS_NOSPACE)
+		drm_warn(&guc_to_gt(guc)->i915->drm, "G2H-Error capture no space");
+	else
+		drm_info(&guc_to_gt(guc)->i915->drm, "G2H-Received error capture");
 
-	/* Add extraction of error capture dump */
+	intel_guc_capture_store_snapshot(guc);
 
 	return 0;
 }
-- 
2.25.1

