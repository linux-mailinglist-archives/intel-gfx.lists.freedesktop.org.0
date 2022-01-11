Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1314348AA86
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jan 2022 10:28:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36DBC14A24B;
	Tue, 11 Jan 2022 09:28:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD7AC14A240
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jan 2022 09:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641893313; x=1673429313;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/UfSQVRE1qCPnzwkd9Wf0+fi2nmoJH8NLjR/SLVFRiI=;
 b=YCfuY9MaGQHIJ5jkpeKkywPyXsucH7zqmljozwUNfqZUB11vC8rDrITA
 lkYBfCWNPfKWc6vo6Q96vwDGpxSNktFuhGxII10VQX9jNWZKfTzYqNZZB
 HqwDgSB7xqDsscj5c7/pwu2ENtaz8gfIqNPDxLf7Vw5iTXYPebAVZrxd1
 x+8mfQhlIk4pVfXa19HjBSHR4GrWy6YZmGeUH/QJOUoDwt3Xhwfl4EovV
 R+pvSQ9XR5E3Z1WQ1j0sYFMlmK5Ga/Q1Q1OJlilfXum8sCT7f8RjeVkgo
 8rjCnEm3myJq+LNztSCioRT1eenJyYROxIjbj1cdp6589aK/3EiHCkFCQ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10223"; a="240996994"
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="240996994"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2022 01:28:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="558305533"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga001.jf.intel.com with ESMTP; 11 Jan 2022 01:28:31 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Jan 2022 01:30:15 -0800
Message-Id: <20220111093018.610582-6-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220111093018.610582-1-alan.previn.teres.alexis@intel.com>
References: <20220111093018.610582-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC v3 5/7] drm/i915/guc: Update GuC's
 log-buffer-state access for error capture.
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

GuC log buffer regions for debug-log-events, crash-dumps and
error-state-capture are all a single bo allocation that includes
the guc_log_buffer_state structures.

Since the error-capture region is accessed with high priority at non-
deterministic times (as part of gpu coredump) while the debug-log-event
region is populated and accessed with different priorities, timings and
consumers, let's split out separate locks for buffer-state accesses
of each region.

Also, ensure a global mapping is made up front for the entire bo
throughout GuC operation so that dynamic mapping and unmapping isn't
required for error capture log access if relay-logging isn't running.

Additionally, while here, make some readibility improvements:
1. change previous function names with "capture_logs" to
   "copy_debug_logs" to help make the distinction clearer.
2. Update the guc log region mapping comments to order them
   according to the enum definition as per the GuC interface.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |   2 +
 .../gpu/drm/i915/gt/uc/intel_guc_capture.c    |  47 ++++++
 .../gpu/drm/i915/gt/uc/intel_guc_capture.h    |   1 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c    | 137 +++++++++++-------
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.h    |  16 +-
 5 files changed, 143 insertions(+), 60 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index 2f186f79e4d1..744fee9efa53 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -34,6 +34,8 @@ struct intel_guc {
 	struct intel_uc_fw fw;
 	/** @log: sub-structure containing GuC log related data and objects */
 	struct intel_guc_log log;
+	/** @log_state: states and locks for each subregion of GuC's log buffer */
+	struct intel_guc_log_stats log_state[GUC_MAX_LOG_BUFFER];
 	/** @ct: the command transport communication channel */
 	struct intel_guc_ct ct;
 	/** @slpc: sub-structure containing SLPC related data and objects */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
index 4546d339c042..b3b3491cfe6d 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
@@ -586,6 +586,53 @@ int intel_guc_capture_prep_lists(struct intel_guc *guc, struct guc_ads *blob, u3
 	return PAGE_ALIGN(alloc_size);
 }
 
+#define GUC_CAPTURE_OVERBUFFER_MULTIPLIER 3
+int intel_guc_capture_output_min_size_est(struct intel_guc *guc)
+{
+	struct intel_gt *gt = guc_to_gt(guc);
+	struct intel_engine_cs *engine;
+	enum intel_engine_id id;
+	int worst_min_size = 0, num_regs = 0;
+	u16 tmp = 0;
+
+	/*
+	 * If every single engine-instance suffered a failure in quick succession but
+	 * were all unrelated, then a burst of multiple error-capture events would dump
+	 * registers for every one engine instance, one at a time. In this case, GuC
+	 * would even dump the global-registers repeatedly.
+	 *
+	 * For each engine instance, there would be 1 x guc_state_capture_group_t output
+	 * followed by 3 x guc_state_capture_t lists. The latter is how the register
+	 * dumps are split across different register types (where the '3' are global vs class
+	 * vs instance). Finally, let's multiply the whole thing by 3x (just so we are
+	 * not limited to just 1 round of data in a worst case full register dump log)
+	 *
+	 * NOTE: intel_guc_log that allocates the log buffer would round this size up to
+	 * a power of two.
+	 */
+
+	for_each_engine(engine, gt, id) {
+		worst_min_size += sizeof(struct guc_state_capture_group_header_t) +
+				  (3 * sizeof(struct guc_state_capture_header_t));
+
+		if (!guc_capture_list_count(guc, 0, GUC_CAPTURE_LIST_TYPE_GLOBAL, 0, &tmp))
+			num_regs += tmp;
+
+		if (!guc_capture_list_count(guc, 0, GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS,
+					    engine->class, &tmp)) {
+			num_regs += tmp;
+		}
+		if (!guc_capture_list_count(guc, 0, GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE,
+					    engine->class, &tmp)) {
+			num_regs += tmp;
+		}
+	}
+
+	worst_min_size += (num_regs * sizeof(struct guc_mmio_reg));
+
+	return (worst_min_size * GUC_CAPTURE_OVERBUFFER_MULTIPLIER);
+}
+
 void intel_guc_capture_destroy(struct intel_guc *guc)
 {
 	guc_capture_clear_ext_regs(guc->capture.priv->reglists);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
index 6b5594ca529d..4d3e5221128c 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
@@ -14,6 +14,7 @@ struct guc_gt_system_info;
 
 int intel_guc_capture_prep_lists(struct intel_guc *guc, struct guc_ads *blob, u32 blob_ggtt,
 				 u32 capture_offset, struct guc_gt_system_info *sysinfo);
+int intel_guc_capture_output_min_size_est(struct intel_guc *guc);
 void intel_guc_capture_destroy(struct intel_guc *guc);
 int intel_guc_capture_init(struct intel_guc *guc);
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
index a353c3504836..e669beb978d5 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
@@ -6,12 +6,13 @@
 #include <linux/debugfs.h>
 
 #include "gt/intel_gt.h"
+#include "intel_guc_capture.h"
+#include "intel_guc_log.h"
 #include "i915_drv.h"
 #include "i915_irq.h"
 #include "i915_memcpy.h"
-#include "intel_guc_log.h"
 
-static void guc_log_capture_logs(struct intel_guc_log *log);
+static void guc_log_copy_debuglogs_for_relay(struct intel_guc_log *log);
 
 /**
  * DOC: GuC firmware log
@@ -150,7 +151,7 @@ static void guc_move_to_next_buf(struct intel_guc_log *log)
 	smp_wmb();
 
 	/* All data has been written, so now move the offset of sub buffer. */
-	relay_reserve(log->relay.channel, log->vma->obj->base.size);
+	relay_reserve(log->relay.channel, log->vma->obj->base.size - CAPTURE_BUFFER_SIZE);
 
 	/* Switch to the next sub buffer */
 	relay_flush(log->relay.channel);
@@ -170,25 +171,25 @@ static void *guc_get_write_buffer(struct intel_guc_log *log)
 	return relay_reserve(log->relay.channel, 0);
 }
 
-static bool guc_check_log_buf_overflow(struct intel_guc_log *log,
-				       enum guc_log_buffer_type type,
+static bool guc_check_log_buf_overflow(struct intel_guc *guc,
+				       struct intel_guc_log_stats *log_state,
 				       unsigned int full_cnt)
 {
-	unsigned int prev_full_cnt = log->stats[type].sampled_overflow;
+	unsigned int prev_full_cnt = log_state->sampled_overflow;
 	bool overflow = false;
 
 	if (full_cnt != prev_full_cnt) {
 		overflow = true;
 
-		log->stats[type].overflow = full_cnt;
-		log->stats[type].sampled_overflow += full_cnt - prev_full_cnt;
+		log_state->overflow = full_cnt;
+		log_state->sampled_overflow += full_cnt - prev_full_cnt;
 
 		if (full_cnt < prev_full_cnt) {
 			/* buffer_full_cnt is a 4 bit counter */
-			log->stats[type].sampled_overflow += 16;
+			log_state->sampled_overflow += 16;
 		}
 
-		dev_notice_ratelimited(guc_to_gt(log_to_guc(log))->i915->drm.dev,
+		dev_notice_ratelimited(guc_to_gt(guc)->i915->drm.dev,
 				       "GuC log buffer overflow\n");
 	}
 
@@ -211,8 +212,10 @@ static unsigned int guc_get_log_buffer_size(enum guc_log_buffer_type type)
 	return 0;
 }
 
-static void guc_read_update_log_buffer(struct intel_guc_log *log)
+static void _guc_log_copy_debuglogs_for_relay(struct intel_guc_log *log)
 {
+	struct intel_guc *guc = log_to_guc(log);
+	struct intel_guc_log_stats *logstate;
 	unsigned int buffer_size, read_offset, write_offset, bytes_to_copy, full_cnt;
 	struct guc_log_buffer_state *log_buf_state, *log_buf_snapshot_state;
 	struct guc_log_buffer_state log_buf_state_local;
@@ -226,7 +229,7 @@ static void guc_read_update_log_buffer(struct intel_guc_log *log)
 		goto out_unlock;
 
 	/* Get the pointer to shared GuC log buffer */
-	log_buf_state = src_data = log->relay.buf_addr;
+	log_buf_state = src_data = log->buf_addr;
 
 	/* Get the pointer to local buffer to store the logs */
 	log_buf_snapshot_state = dst_data = guc_get_write_buffer(log);
@@ -236,7 +239,7 @@ static void guc_read_update_log_buffer(struct intel_guc_log *log)
 		 * Used rate limited to avoid deluge of messages, logs might be
 		 * getting consumed by User at a slow rate.
 		 */
-		DRM_ERROR_RATELIMITED("no sub-buffer to capture logs\n");
+		DRM_ERROR_RATELIMITED("no sub-buffer to copy general logs\n");
 		log->relay.full_count++;
 
 		goto out_unlock;
@@ -246,12 +249,16 @@ static void guc_read_update_log_buffer(struct intel_guc_log *log)
 	src_data += PAGE_SIZE;
 	dst_data += PAGE_SIZE;
 
-	for (type = GUC_DEBUG_LOG_BUFFER; type < GUC_MAX_LOG_BUFFER; type++) {
+	/* For relay logging, we exclude error state capture */
+	for (type = GUC_DEBUG_LOG_BUFFER; type <= GUC_CRASH_DUMP_LOG_BUFFER; type++) {
 		/*
+		 * Get a lock to the buffer_state we want to read and update.
 		 * Make a copy of the state structure, inside GuC log buffer
 		 * (which is uncached mapped), on the stack to avoid reading
 		 * from it multiple times.
 		 */
+		logstate = &guc->log_state[type];
+		mutex_lock(&logstate->lock);
 		memcpy(&log_buf_state_local, log_buf_state,
 		       sizeof(struct guc_log_buffer_state));
 		buffer_size = guc_get_log_buffer_size(type);
@@ -260,13 +267,14 @@ static void guc_read_update_log_buffer(struct intel_guc_log *log)
 		full_cnt = log_buf_state_local.buffer_full_cnt;
 
 		/* Bookkeeping stuff */
-		log->stats[type].flush += log_buf_state_local.flush_to_file;
-		new_overflow = guc_check_log_buf_overflow(log, type, full_cnt);
+		logstate->flush += log_buf_state_local.flush_to_file;
+		new_overflow = guc_check_log_buf_overflow(guc, logstate, full_cnt);
 
 		/* Update the state of shared log buffer */
 		log_buf_state->read_ptr = write_offset;
 		log_buf_state->flush_to_file = 0;
 		log_buf_state++;
+		mutex_unlock(&logstate->lock);
 
 		/* First copy the state structure in snapshot buffer */
 		memcpy(log_buf_snapshot_state, &log_buf_state_local,
@@ -314,49 +322,49 @@ static void guc_read_update_log_buffer(struct intel_guc_log *log)
 	mutex_unlock(&log->relay.lock);
 }
 
-static void capture_logs_work(struct work_struct *work)
+static void copy_debug_logs_work(struct work_struct *work)
 {
 	struct intel_guc_log *log =
 		container_of(work, struct intel_guc_log, relay.flush_work);
 
-	guc_log_capture_logs(log);
+	guc_log_copy_debuglogs_for_relay(log);
 }
 
-static int guc_log_map(struct intel_guc_log *log)
+static int guc_log_relay_map(struct intel_guc_log *log)
 {
-	void *vaddr;
-
 	lockdep_assert_held(&log->relay.lock);
 
-	if (!log->vma)
+	if (!log->vma || !log->buf_addr)
 		return -ENODEV;
 
 	/*
-	 * Create a WC (Uncached for read) vmalloc mapping of log
-	 * buffer pages, so that we can directly get the data
-	 * (up-to-date) from memory.
+	 * WC vmalloc mapping of log buffer pages was done at
+	 * GuC Init time, but lets keep a ref for book-keeping
 	 */
-	vaddr = i915_gem_object_pin_map_unlocked(log->vma->obj, I915_MAP_WC);
-	if (IS_ERR(vaddr))
-		return PTR_ERR(vaddr);
-
-	log->relay.buf_addr = vaddr;
+	i915_gem_object_get(log->vma->obj);
+	log->relay.buf_in_use = true;
 
 	return 0;
 }
 
-static void guc_log_unmap(struct intel_guc_log *log)
+static void guc_log_relay_unmap(struct intel_guc_log *log)
 {
 	lockdep_assert_held(&log->relay.lock);
 
-	i915_gem_object_unpin_map(log->vma->obj);
-	log->relay.buf_addr = NULL;
+	i915_gem_object_put(log->vma->obj);
+	log->relay.buf_in_use = false;
 }
 
 void intel_guc_log_init_early(struct intel_guc_log *log)
 {
+	struct intel_guc *guc = log_to_guc(log);
+	int n;
+
+	for (n = GUC_DEBUG_LOG_BUFFER; n < GUC_MAX_LOG_BUFFER; n++)
+		mutex_init(&guc->log_state[n].lock);
+
 	mutex_init(&log->relay.lock);
-	INIT_WORK(&log->relay.flush_work, capture_logs_work);
+	INIT_WORK(&log->relay.flush_work, copy_debug_logs_work);
 	log->relay.started = false;
 }
 
@@ -371,8 +379,11 @@ static int guc_log_relay_create(struct intel_guc_log *log)
 	lockdep_assert_held(&log->relay.lock);
 	GEM_BUG_ON(!log->vma);
 
-	 /* Keep the size of sub buffers same as shared log buffer */
-	subbuf_size = log->vma->size;
+	 /*
+	  * Keep the size of sub buffers same as shared log buffer
+	  * but GuC log-events excludes the error-state-capture logs
+	  */
+	subbuf_size = log->vma->size - CAPTURE_BUFFER_SIZE;
 
 	/*
 	 * Store up to 8 snapshots, which is large enough to buffer sufficient
@@ -407,13 +418,13 @@ static void guc_log_relay_destroy(struct intel_guc_log *log)
 	log->relay.channel = NULL;
 }
 
-static void guc_log_capture_logs(struct intel_guc_log *log)
+static void guc_log_copy_debuglogs_for_relay(struct intel_guc_log *log)
 {
 	struct intel_guc *guc = log_to_guc(log);
 	struct drm_i915_private *dev_priv = guc_to_gt(guc)->i915;
 	intel_wakeref_t wakeref;
 
-	guc_read_update_log_buffer(log);
+	_guc_log_copy_debuglogs_for_relay(log);
 
 	/*
 	 * Generally device is expected to be active only at this
@@ -453,6 +464,7 @@ int intel_guc_log_create(struct intel_guc_log *log)
 {
 	struct intel_guc *guc = log_to_guc(log);
 	struct i915_vma *vma;
+	void *vaddr;
 	u32 guc_log_size;
 	int ret;
 
@@ -460,23 +472,29 @@ int intel_guc_log_create(struct intel_guc_log *log)
 
 	/*
 	 *  GuC Log buffer Layout
+	 * (this ordering must follow "enum guc_log_buffer_type" definition)
 	 *
 	 *  +===============================+ 00B
-	 *  |    Crash dump state header    |
-	 *  +-------------------------------+ 32B
 	 *  |      Debug state header       |
+	 *  +-------------------------------+ 32B
+	 *  |    Crash dump state header    |
 	 *  +-------------------------------+ 64B
 	 *  |     Capture state header      |
 	 *  +-------------------------------+ 96B
 	 *  |                               |
 	 *  +===============================+ PAGE_SIZE (4KB)
-	 *  |        Crash Dump logs        |
-	 *  +===============================+ + CRASH_SIZE
 	 *  |          Debug logs           |
 	 *  +===============================+ + DEBUG_SIZE
+	 *  |        Crash Dump logs        |
+	 *  +===============================+ + CRASH_SIZE
+	 *  |         Capture logs          |
+	 *  +===============================+ + CAPTURE_SIZE
 	 */
-	guc_log_size = PAGE_SIZE + CRASH_BUFFER_SIZE + DEBUG_BUFFER_SIZE +
-		       CAPTURE_BUFFER_SIZE;
+	if (intel_guc_capture_output_min_size_est(guc) > CAPTURE_BUFFER_SIZE)
+		DRM_WARN("GuC log buffer for state_capture maybe too small. %d < %d\n",
+			 CAPTURE_BUFFER_SIZE, intel_guc_capture_output_min_size_est(guc));
+
+	guc_log_size = PAGE_SIZE + CRASH_BUFFER_SIZE + DEBUG_BUFFER_SIZE + CAPTURE_BUFFER_SIZE;
 
 	vma = intel_guc_allocate_vma(guc, guc_log_size);
 	if (IS_ERR(vma)) {
@@ -485,6 +503,17 @@ int intel_guc_log_create(struct intel_guc_log *log)
 	}
 
 	log->vma = vma;
+	/*
+	 * Create a WC (Uncached for read) vmalloc mapping up front immediate access to
+	 * data from memory during  critical events such as error capture
+	 */
+	vaddr = i915_gem_object_pin_map_unlocked(log->vma->obj, I915_MAP_WC);
+	if (IS_ERR(vaddr)) {
+		ret = PTR_ERR(vaddr);
+		i915_vma_unpin_and_release(&log->vma, 0);
+		goto err;
+	}
+	log->buf_addr = vaddr;
 
 	log->level = __get_default_log_level(log);
 	DRM_DEBUG_DRIVER("guc_log_level=%d (%s, verbose:%s, verbosity:%d)\n",
@@ -495,13 +524,14 @@ int intel_guc_log_create(struct intel_guc_log *log)
 	return 0;
 
 err:
-	DRM_ERROR("Failed to allocate GuC log buffer. %d\n", ret);
+	DRM_ERROR("Failed to allocate or map GuC log buffer. %d\n", ret);
 	return ret;
 }
 
 void intel_guc_log_destroy(struct intel_guc_log *log)
 {
-	i915_vma_unpin_and_release(&log->vma, 0);
+	log->buf_addr = NULL;
+	i915_vma_unpin_and_release(&log->vma, I915_VMA_RELEASE_MAP);
 }
 
 int intel_guc_log_set_level(struct intel_guc_log *log, u32 level)
@@ -546,7 +576,7 @@ int intel_guc_log_set_level(struct intel_guc_log *log, u32 level)
 
 bool intel_guc_log_relay_created(const struct intel_guc_log *log)
 {
-	return log->relay.buf_addr;
+	return log->buf_addr;
 }
 
 int intel_guc_log_relay_open(struct intel_guc_log *log)
@@ -577,7 +607,7 @@ int intel_guc_log_relay_open(struct intel_guc_log *log)
 	if (ret)
 		goto out_unlock;
 
-	ret = guc_log_map(log);
+	ret = guc_log_relay_map(log);
 	if (ret)
 		goto out_relay;
 
@@ -629,8 +659,8 @@ void intel_guc_log_relay_flush(struct intel_guc_log *log)
 	with_intel_runtime_pm(guc_to_gt(guc)->uncore->rpm, wakeref)
 		guc_action_flush_log(guc);
 
-	/* GuC would have updated log buffer by now, so capture it */
-	guc_log_capture_logs(log);
+	/* GuC would have updated log buffer by now, so copy it */
+	guc_log_copy_debuglogs_for_relay(log);
 }
 
 /*
@@ -660,7 +690,7 @@ void intel_guc_log_relay_close(struct intel_guc_log *log)
 
 	mutex_lock(&log->relay.lock);
 	GEM_BUG_ON(!intel_guc_log_relay_created(log));
-	guc_log_unmap(log);
+	guc_log_relay_unmap(log);
 	guc_log_relay_destroy(log);
 	mutex_unlock(&log->relay.lock);
 }
@@ -696,6 +726,7 @@ stringify_guc_log_type(enum guc_log_buffer_type type)
  */
 void intel_guc_log_info(struct intel_guc_log *log, struct drm_printer *p)
 {
+	struct intel_guc *guc = log_to_guc(log);
 	enum guc_log_buffer_type type;
 
 	if (!intel_guc_log_relay_created(log)) {
@@ -710,8 +741,8 @@ void intel_guc_log_info(struct intel_guc_log *log, struct drm_printer *p)
 	for (type = GUC_DEBUG_LOG_BUFFER; type < GUC_MAX_LOG_BUFFER; type++) {
 		drm_printf(p, "\t%s:\tflush count %10u, overflow count %10u\n",
 			   stringify_guc_log_type(type),
-			   log->stats[type].flush,
-			   log->stats[type].sampled_overflow);
+			   guc->log_state[type].flush,
+			   guc->log_state[type].sampled_overflow);
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h
index d0300909a2c7..a2489996b279 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h
@@ -46,23 +46,25 @@ struct intel_guc;
 #define GUC_VERBOSITY_TO_LOG_LEVEL(x)	((x) + 2)
 #define GUC_LOG_LEVEL_MAX GUC_VERBOSITY_TO_LOG_LEVEL(GUC_LOG_VERBOSITY_MAX)
 
+struct intel_guc_log_stats {
+	struct mutex lock; /* protects below and guc_log_buffer_state's read-ptr */
+	u32 sampled_overflow;
+	u32 overflow;
+	u32 flush;
+};
+
 struct intel_guc_log {
 	u32 level;
 	struct i915_vma *vma;
+	void *buf_addr;
 	struct {
-		void *buf_addr;
+		bool buf_in_use;
 		bool started;
 		struct work_struct flush_work;
 		struct rchan *channel;
 		struct mutex lock;
 		u32 full_count;
 	} relay;
-	/* logging related stats */
-	struct {
-		u32 sampled_overflow;
-		u32 overflow;
-		u32 flush;
-	} stats[GUC_MAX_LOG_BUFFER];
 };
 
 void intel_guc_log_init_early(struct intel_guc_log *log);
-- 
2.25.1

