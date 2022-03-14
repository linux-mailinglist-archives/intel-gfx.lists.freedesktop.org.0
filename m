Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BDE54D8A7E
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Mar 2022 18:07:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1146A10E9C0;
	Mon, 14 Mar 2022 17:07:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7DB210E44C
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Mar 2022 17:07:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647277649; x=1678813649;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/MxC5DD5HSdqT7iFppSlyxwDT7qko9Otzzpxhb6n7V4=;
 b=lK5qYpTP38Ycsi3GoiesYxrxX0B3zT9EpeI2w1DYWMnbPf4AmdxOc8lX
 oxeIeMMNKR83N/DetW74RRTq49CDFzCbDwaZDrZUDsIbMa27RW2D81+r/
 /n/xPXgu5mUZWGMb6zGh4npsoLvhPJ9HvZk+yykEe7ZXwHDNpRKYaq066
 y/Zky6NWZdsqoUyhB80fkfO0cKcokOFdGuomcUfls1pzf9VoJr1zsiFDT
 9AJZGgJmp/a4ux5QL7Fm74lwIiRxbRNkZOA9NLKAgUdr+BsetbFCaK1q5
 t3U890W/673ZDFHsWb0rKO6JvqQP7gwMrVcNf0lT4x7E3Zlk/NzWngJs4 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10285"; a="238257163"
X-IronPort-AV: E=Sophos;i="5.90,181,1643702400"; d="scan'208";a="238257163"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 10:07:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,181,1643702400"; d="scan'208";a="597977069"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga008.fm.intel.com with ESMTP; 14 Mar 2022 10:07:27 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Mar 2022 10:09:49 -0700
Message-Id: <20220314170954.1537154-9-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220314170954.1537154-1-alan.previn.teres.alexis@intel.com>
References: <20220314170954.1537154-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v9 08/13] drm/i915/guc: Add capture region into
 intel_guc_log
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
error-state-capture are all part of a single bo allocation that
also includes the guc_log_buffer_state structures. Now that we
support it, increase the size allocation for error-capture.

Since the error-capture region is accessed at non-deterministic
times (as part of GuC triggered context reset) while debug-log-
events region is accessed as part of relay logging or during
debugfs triggered dumps, move the mapping and unmapping of the
shared buffer into intel_guc_log_create and intel_guc_log_destroy
so that it's always mapped throughout life of GuC operation.

Additionally, while here, update the guc log region layout
diagram to follow the order according to the enum definition
as per the GuC interface.

NOTE: A future effort to visit (part of baseline code) is that
buf_addr should be updated to be a io_sys_map and use the
io_sys_map wrapper functions to access the various GuC log
buffer regions.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
Reviewed-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c | 58 +++++++++++++---------
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.h |  3 +-
 2 files changed, 36 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
index 0d63c411080f..a2da3f6f2ba0 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
@@ -26,7 +26,8 @@ static void guc_log_copy_debuglogs_for_relay(struct intel_guc_log *log);
 static int guc_action_flush_log_complete(struct intel_guc *guc)
 {
 	u32 action[] = {
-		INTEL_GUC_ACTION_LOG_BUFFER_FILE_FLUSH_COMPLETE
+		INTEL_GUC_ACTION_LOG_BUFFER_FILE_FLUSH_COMPLETE,
+		GUC_DEBUG_LOG_BUFFER
 	};
 
 	return intel_guc_send(guc, action, ARRAY_SIZE(action));
@@ -137,7 +138,7 @@ static void guc_move_to_next_buf(struct intel_guc_log *log)
 	smp_wmb();
 
 	/* All data has been written, so now move the offset of sub buffer. */
-	relay_reserve(log->relay.channel, log->vma->obj->base.size);
+	relay_reserve(log->relay.channel, log->vma->obj->base.size - CAPTURE_BUFFER_SIZE);
 
 	/* Switch to the next sub buffer */
 	relay_flush(log->relay.channel);
@@ -213,7 +214,7 @@ static void _guc_log_copy_debuglogs_for_relay(struct intel_guc_log *log)
 		goto out_unlock;
 
 	/* Get the pointer to shared GuC log buffer */
-	log_buf_state = src_data = log->relay.buf_addr;
+	log_buf_state = src_data = log->buf_addr;
 
 	/* Get the pointer to local buffer to store the logs */
 	log_buf_snapshot_state = dst_data = guc_get_write_buffer(log);
@@ -233,7 +234,8 @@ static void _guc_log_copy_debuglogs_for_relay(struct intel_guc_log *log)
 	src_data += PAGE_SIZE;
 	dst_data += PAGE_SIZE;
 
-	for (type = GUC_DEBUG_LOG_BUFFER; type < GUC_MAX_LOG_BUFFER; type++) {
+	/* For relay logging, we exclude error state capture */
+	for (type = GUC_DEBUG_LOG_BUFFER; type <= GUC_CRASH_DUMP_LOG_BUFFER; type++) {
 		/*
 		 * Make a copy of the state structure, inside GuC log buffer
 		 * (which is uncached mapped), on the stack to avoid reading
@@ -311,23 +313,17 @@ static void copy_debug_logs_work(struct work_struct *work)
 
 static int guc_log_relay_map(struct intel_guc_log *log)
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
+	 * GuC Log Init time, but lets keep a ref for book-keeping
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
@@ -336,8 +332,8 @@ static void guc_log_relay_unmap(struct intel_guc_log *log)
 {
 	lockdep_assert_held(&log->relay.lock);
 
-	i915_gem_object_unpin_map(log->vma->obj);
-	log->relay.buf_addr = NULL;
+	i915_gem_object_put(log->vma->obj);
+	log->relay.buf_in_use = false;
 }
 
 void intel_guc_log_init_early(struct intel_guc_log *log)
@@ -443,6 +439,7 @@ int intel_guc_log_create(struct intel_guc_log *log)
 {
 	struct intel_guc *guc = log_to_guc(log);
 	struct i915_vma *vma;
+	void *vaddr;
 	u32 guc_log_size;
 	int ret;
 
@@ -450,20 +447,21 @@ int intel_guc_log_create(struct intel_guc_log *log)
 
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
 	 *  |         Capture logs          |
 	 *  +===============================+ + CAPTURE_SIZE
 	 */
@@ -477,6 +475,17 @@ int intel_guc_log_create(struct intel_guc_log *log)
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
@@ -487,13 +496,14 @@ int intel_guc_log_create(struct intel_guc_log *log)
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
@@ -538,7 +548,7 @@ int intel_guc_log_set_level(struct intel_guc_log *log, u32 level)
 
 bool intel_guc_log_relay_created(const struct intel_guc_log *log)
 {
-	return log->relay.buf_addr;
+	return log->buf_addr;
 }
 
 int intel_guc_log_relay_open(struct intel_guc_log *log)
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h
index d7e1b6471fed..e1345fca7729 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h
@@ -49,8 +49,9 @@ struct intel_guc;
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
-- 
2.25.1

