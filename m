Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AC9F4DB02D
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Mar 2022 13:56:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95A5A10E44E;
	Wed, 16 Mar 2022 12:56:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D31D10E55F
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Mar 2022 12:56:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647435403; x=1678971403;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zrBAMlc9rCCKxr5Ft+epPw+DH0oxGPNbx5SVvIT4tt4=;
 b=mRr9en6JNpaFtx60vL6HEsgGxUzUbVBVF2sxCKbBnoUnr/tvviDQOiEw
 eknF0HypfvSjHhJJTr+D0uQsLwRFM8VbG+o7uM1qEotGZfVKxkl+Z13zN
 8h4OHOrEdwhz4zODglFa33gpKgjt9XXU4triEhE8oiz1ciHEvq9x7lTjx
 v77vZGxfU+Ca8eLysCIz1jTiY6NdCGz6yJ+jOG15LlnYkXyJIML9xSCnH
 7Tz3o3GZu4ek98rrNFFFSMhMXuZiD00U80el4uUSaxykXYN2fBD0k7Twx
 DENgEDukVBvoJ/OgTqm/CWBClU6yy7bbZRq2s4pJXJi0/pJ/762epzyCy g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="244028998"
X-IronPort-AV: E=Sophos;i="5.90,186,1643702400"; d="scan'208";a="244028998"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2022 05:56:42 -0700
X-IronPort-AV: E=Sophos;i="5.90,186,1643702400"; d="scan'208";a="557425937"
Received: from baskarm-mobl2.gar.corp.intel.com (HELO
 smullati-desk.gar.corp.intel.com) ([10.252.91.116])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2022 05:56:40 -0700
From: Mullati Siva <siva.mullati@intel.com>
To: intel-gfx@lists.freedesktop.org,
	siva.mullati@intel.com
Date: Wed, 16 Mar 2022 18:26:27 +0530
Message-Id: <20220316125627.1738613-2-siva.mullati@intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20220316125627.1738613-1-siva.mullati@intel.com>
References: <20220316125627.1738613-1-siva.mullati@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/1] drm/i915/guc: Convert slpc to iosys_map
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
Cc: lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Siva Mullati <siva.mullati@intel.com>

Convert slpc shared data to use iosys_map rather than
plain pointer and save it in the intel_guc_slpc struct.
This will help with in read and update slpc shared data
after the slpc init by abstracting the IO vs system memory.

Signed-off-by: Siva Mullati <siva.mullati@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   | 79 +++++++++++--------
 .../gpu/drm/i915/gt/uc/intel_guc_slpc_types.h |  5 +-
 2 files changed, 47 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
index 9f032c65a488..3a9ec6b03ceb 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
@@ -14,6 +14,13 @@
 #include "gt/intel_gt_regs.h"
 #include "gt/intel_rps.h"
 
+#define slpc_blob_read(slpc_, field_) \
+		       iosys_map_rd_field(&(slpc_)->slpc_map, 0, \
+		       struct slpc_shared_data, field_)
+#define slpc_blob_write(slpc_, field_, val_) \
+			iosys_map_wr_field(&(slpc_)->slpc_map, 0, \
+			struct slpc_shared_data, field_, val_)
+
 static inline struct intel_guc *slpc_to_guc(struct intel_guc_slpc *slpc)
 {
 	return container_of(slpc, struct intel_guc, slpc);
@@ -52,50 +59,50 @@ void intel_guc_slpc_init_early(struct intel_guc_slpc *slpc)
 	slpc->selected = __guc_slpc_selected(guc);
 }
 
-static void slpc_mem_set_param(struct slpc_shared_data *data,
+static void slpc_mem_set_param(struct intel_guc_slpc *slpc,
 			       u32 id, u32 value)
 {
+	u32 bits = slpc_blob_read(slpc, override_params.bits[id >> 5]);
+
 	GEM_BUG_ON(id >= SLPC_MAX_OVERRIDE_PARAMETERS);
 	/*
 	 * When the flag bit is set, corresponding value will be read
 	 * and applied by SLPC.
 	 */
-	data->override_params.bits[id >> 5] |= (1 << (id % 32));
-	data->override_params.values[id] = value;
+	bits |= (1 << (id % 32));
+	slpc_blob_write(slpc, override_params.bits[id >> 5], bits);
+	slpc_blob_write(slpc, override_params.values[id], value);
 }
 
-static void slpc_mem_set_enabled(struct slpc_shared_data *data,
+static void slpc_mem_set_enabled(struct intel_guc_slpc *slpc,
 				 u8 enable_id, u8 disable_id)
 {
 	/*
 	 * Enabling a param involves setting the enable_id
 	 * to 1 and disable_id to 0.
 	 */
-	slpc_mem_set_param(data, enable_id, 1);
-	slpc_mem_set_param(data, disable_id, 0);
+	slpc_mem_set_param(slpc, enable_id, 1);
+	slpc_mem_set_param(slpc, disable_id, 0);
 }
 
-static void slpc_mem_set_disabled(struct slpc_shared_data *data,
+static void slpc_mem_set_disabled(struct intel_guc_slpc *slpc,
 				  u8 enable_id, u8 disable_id)
 {
 	/*
 	 * Disabling a param involves setting the enable_id
 	 * to 0 and disable_id to 1.
 	 */
-	slpc_mem_set_param(data, disable_id, 1);
-	slpc_mem_set_param(data, enable_id, 0);
+	slpc_mem_set_param(slpc, disable_id, 1);
+	slpc_mem_set_param(slpc, enable_id, 0);
 }
 
 static u32 slpc_get_state(struct intel_guc_slpc *slpc)
 {
-	struct slpc_shared_data *data;
-
 	GEM_BUG_ON(!slpc->vma);
 
-	drm_clflush_virt_range(slpc->vaddr, sizeof(u32));
-	data = slpc->vaddr;
+	drm_clflush_virt_range(slpc->slpc_map.vaddr, sizeof(u32));
 
-	return data->header.global_state;
+	return slpc_blob_read(slpc, header.global_state);
 }
 
 static int guc_action_slpc_set_param(struct intel_guc *guc, u8 id, u32 value)
@@ -156,7 +163,7 @@ static int slpc_query_task_state(struct intel_guc_slpc *slpc)
 		drm_err(&i915->drm, "Failed to query task state (%pe)\n",
 			ERR_PTR(ret));
 
-	drm_clflush_virt_range(slpc->vaddr, SLPC_PAGE_SIZE_BYTES);
+	drm_clflush_virt_range(slpc->slpc_map.vaddr, SLPC_PAGE_SIZE_BYTES);
 
 	return ret;
 }
@@ -243,10 +250,11 @@ int intel_guc_slpc_init(struct intel_guc_slpc *slpc)
 	struct drm_i915_private *i915 = slpc_to_i915(slpc);
 	u32 size = PAGE_ALIGN(sizeof(struct slpc_shared_data));
 	int err;
+	void *vaddr;
 
 	GEM_BUG_ON(slpc->vma);
 
-	err = intel_guc_allocate_and_map_vma(guc, size, &slpc->vma, (void **)&slpc->vaddr);
+	err = intel_guc_allocate_and_map_vma(guc, size, &slpc->vma, (void **)&vaddr);
 	if (unlikely(err)) {
 		drm_err(&i915->drm,
 			"Failed to allocate SLPC struct (err=%pe)\n",
@@ -254,6 +262,12 @@ int intel_guc_slpc_init(struct intel_guc_slpc *slpc)
 		return err;
 	}
 
+	if (i915_gem_object_is_lmem(slpc->vma->obj))
+		iosys_map_set_vaddr_iomem(&slpc->slpc_map,
+					  (void __iomem *)vaddr);
+	else
+		iosys_map_set_vaddr(&slpc->slpc_map, vaddr);
+
 	slpc->max_freq_softlimit = 0;
 	slpc->min_freq_softlimit = 0;
 
@@ -335,40 +349,37 @@ static int slpc_reset(struct intel_guc_slpc *slpc)
 
 static u32 slpc_decode_min_freq(struct intel_guc_slpc *slpc)
 {
-	struct slpc_shared_data *data = slpc->vaddr;
-
 	GEM_BUG_ON(!slpc->vma);
 
 	return	DIV_ROUND_CLOSEST(REG_FIELD_GET(SLPC_MIN_UNSLICE_FREQ_MASK,
-				  data->task_state_data.freq) *
+				  slpc_blob_read(slpc, task_state_data.freq)) *
 				  GT_FREQUENCY_MULTIPLIER, GEN9_FREQ_SCALER);
 }
 
 static u32 slpc_decode_max_freq(struct intel_guc_slpc *slpc)
 {
-	struct slpc_shared_data *data = slpc->vaddr;
-
 	GEM_BUG_ON(!slpc->vma);
 
 	return	DIV_ROUND_CLOSEST(REG_FIELD_GET(SLPC_MAX_UNSLICE_FREQ_MASK,
-				  data->task_state_data.freq) *
+				  slpc_blob_read(slpc, task_state_data.freq)) *
 				  GT_FREQUENCY_MULTIPLIER, GEN9_FREQ_SCALER);
 }
 
-static void slpc_shared_data_reset(struct slpc_shared_data *data)
+static void slpc_shared_data_reset(struct intel_guc_slpc *slpc)
 {
-	memset(data, 0, sizeof(struct slpc_shared_data));
-
-	data->header.size = sizeof(struct slpc_shared_data);
+	iosys_map_memset(&slpc->slpc_map,
+			 0, 0, sizeof(struct slpc_shared_data));
+	slpc_blob_write(slpc,
+			header.size, sizeof(struct slpc_shared_data));
 
 	/* Enable only GTPERF task, disable others */
-	slpc_mem_set_enabled(data, SLPC_PARAM_TASK_ENABLE_GTPERF,
+	slpc_mem_set_enabled(slpc, SLPC_PARAM_TASK_ENABLE_GTPERF,
 			     SLPC_PARAM_TASK_DISABLE_GTPERF);
 
-	slpc_mem_set_disabled(data, SLPC_PARAM_TASK_ENABLE_BALANCER,
+	slpc_mem_set_disabled(slpc, SLPC_PARAM_TASK_ENABLE_BALANCER,
 			      SLPC_PARAM_TASK_DISABLE_BALANCER);
 
-	slpc_mem_set_disabled(data, SLPC_PARAM_TASK_ENABLE_DCC,
+	slpc_mem_set_disabled(slpc, SLPC_PARAM_TASK_ENABLE_DCC,
 			      SLPC_PARAM_TASK_DISABLE_DCC);
 }
 
@@ -617,7 +628,7 @@ int intel_guc_slpc_enable(struct intel_guc_slpc *slpc)
 
 	GEM_BUG_ON(!slpc->vma);
 
-	slpc_shared_data_reset(slpc->vaddr);
+	slpc_shared_data_reset(slpc);
 
 	ret = slpc_reset(slpc);
 	if (unlikely(ret < 0)) {
@@ -705,8 +716,6 @@ void intel_guc_slpc_dec_waiters(struct intel_guc_slpc *slpc)
 int intel_guc_slpc_print_info(struct intel_guc_slpc *slpc, struct drm_printer *p)
 {
 	struct drm_i915_private *i915 = slpc_to_i915(slpc);
-	struct slpc_shared_data *data = slpc->vaddr;
-	struct slpc_task_state_data *slpc_tasks;
 	intel_wakeref_t wakeref;
 	int ret = 0;
 
@@ -716,11 +725,10 @@ int intel_guc_slpc_print_info(struct intel_guc_slpc *slpc, struct drm_printer *p
 		ret = slpc_query_task_state(slpc);
 
 		if (!ret) {
-			slpc_tasks = &data->task_state_data;
-
 			drm_printf(p, "\tSLPC state: %s\n", slpc_get_state_string(slpc));
 			drm_printf(p, "\tGTPERF task active: %s\n",
-				   str_yes_no(slpc_tasks->status & SLPC_GTPERF_TASK_ENABLED));
+				   str_yes_no(slpc_blob_read(slpc, task_state_data.status) &
+				   SLPC_GTPERF_TASK_ENABLED));
 			drm_printf(p, "\tMax freq: %u MHz\n",
 				   slpc_decode_max_freq(slpc));
 			drm_printf(p, "\tMin freq: %u MHz\n",
@@ -739,4 +747,5 @@ void intel_guc_slpc_fini(struct intel_guc_slpc *slpc)
 		return;
 
 	i915_vma_unpin_and_release(&slpc->vma, I915_VMA_RELEASE_MAP);
+	iosys_map_clear(&slpc->slpc_map);
 }
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_types.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_types.h
index bf5b9a563c09..96f524f25b52 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_types.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_types.h
@@ -7,15 +7,16 @@
 #define _INTEL_GUC_SLPC_TYPES_H_
 
 #include <linux/atomic.h>
-#include <linux/workqueue.h>
+#include <linux/iosys-map.h>
 #include <linux/mutex.h>
 #include <linux/types.h>
+#include <linux/workqueue.h>
 
 #define SLPC_RESET_TIMEOUT_MS 5
 
 struct intel_guc_slpc {
 	struct i915_vma *vma;
-	struct slpc_shared_data *vaddr;
+	struct iosys_map slpc_map;
 	bool supported;
 	bool selected;
 
-- 
2.33.0

