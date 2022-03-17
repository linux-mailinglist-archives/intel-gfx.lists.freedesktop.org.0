Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF18D4DCE21
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 19:54:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51DF110E660;
	Thu, 17 Mar 2022 18:54:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D52D10E674
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 18:54:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647543268; x=1679079268;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=q3TUutaX7/d/3ZKqHX8+2MMCtZYwElSEMOGPJC4pI1A=;
 b=KNCHw8uiRHWmYCqu/YXrdwixk7KymLdqB30b4TSNFImcOKcX0zSu6u0J
 Voh0vqLiDzvBW3roi99Ef4pcFOThA/ClhRoNkj6SmyqKE39W01Xj7rAyl
 PQjFXQfo29G7yeMg1gCc5f/FBWJ/cmf3IQsA58/HdeqAcZLL907sVIT6Z
 0EPGFlehbclydmaP1FclnmF6QHNIkZhVJpE93VCsKHBVj3Cr7D5jITuFW
 9rTgd9LmME5fRynG52URIRo4KK4S3o0XPKLkuxj/OD+vtuy8CD7FRyHRw
 KOxkktAtEvR74NiYPf07Yp1PHioMhbEsHnlVsRytjfFwBT8B8ihz02eN6 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="281749730"
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="281749730"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 11:54:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="581405072"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga001.jf.intel.com with ESMTP; 17 Mar 2022 11:54:27 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Mar 2022 11:56:50 -0700
Message-Id: <20220317185655.1786958-9-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220317185655.1786958-1-alan.previn.teres.alexis@intel.com>
References: <20220317185655.1786958-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v11 08/13] drm/i915/guc: Add capture region into
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
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c | 59 +++++++++++++---------
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.h |  3 +-
 2 files changed, 37 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
index 0d63c411080f..fe4b2d3f305d 100644
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
@@ -213,7 +214,8 @@ static void _guc_log_copy_debuglogs_for_relay(struct intel_guc_log *log)
 		goto out_unlock;
 
 	/* Get the pointer to shared GuC log buffer */
-	log_buf_state = src_data = log->relay.buf_addr;
+	src_data = log->buf_addr;
+	log_buf_state = src_data;
 
 	/* Get the pointer to local buffer to store the logs */
 	log_buf_snapshot_state = dst_data = guc_get_write_buffer(log);
@@ -233,7 +235,8 @@ static void _guc_log_copy_debuglogs_for_relay(struct intel_guc_log *log)
 	src_data += PAGE_SIZE;
 	dst_data += PAGE_SIZE;
 
-	for (type = GUC_DEBUG_LOG_BUFFER; type < GUC_MAX_LOG_BUFFER; type++) {
+	/* For relay logging, we exclude error state capture */
+	for (type = GUC_DEBUG_LOG_BUFFER; type <= GUC_CRASH_DUMP_LOG_BUFFER; type++) {
 		/*
 		 * Make a copy of the state structure, inside GuC log buffer
 		 * (which is uncached mapped), on the stack to avoid reading
@@ -311,23 +314,17 @@ static void copy_debug_logs_work(struct work_struct *work)
 
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
@@ -336,8 +333,8 @@ static void guc_log_relay_unmap(struct intel_guc_log *log)
 {
 	lockdep_assert_held(&log->relay.lock);
 
-	i915_gem_object_unpin_map(log->vma->obj);
-	log->relay.buf_addr = NULL;
+	i915_gem_object_put(log->vma->obj);
+	log->relay.buf_in_use = false;
 }
 
 void intel_guc_log_init_early(struct intel_guc_log *log)
@@ -443,6 +440,7 @@ int intel_guc_log_create(struct intel_guc_log *log)
 {
 	struct intel_guc *guc = log_to_guc(log);
 	struct i915_vma *vma;
+	void *vaddr;
 	u32 guc_log_size;
 	int ret;
 
@@ -450,20 +448,21 @@ int intel_guc_log_create(struct intel_guc_log *log)
 
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
@@ -477,6 +476,17 @@ int intel_guc_log_create(struct intel_guc_log *log)
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
@@ -487,13 +497,14 @@ int intel_guc_log_create(struct intel_guc_log *log)
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
@@ -538,7 +549,7 @@ int intel_guc_log_set_level(struct intel_guc_log *log, u32 level)
 
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

