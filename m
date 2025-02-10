Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92AC6A2F8BC
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2025 20:36:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 418A210E5FC;
	Mon, 10 Feb 2025 19:36:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l2IF0t8G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2464E10E5FC
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2025 19:36:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739216166; x=1770752166;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Zy1LzemIc/dXNGm35lj965P+nEkhtJzlcMWq2o9o9K8=;
 b=l2IF0t8GuuVPp2DFYkEJG6ibGPXl0No+WVLGZF2nMXThuXm+rGUKn99H
 1AFOgOw6lTMNC3HovpWuUP0rkTCc8+4SlTAwKcxtdZL4KKXKXFJyULjUF
 dAV/unG1jmhq8RnpJdF9VbHiqhbDa4a6Hc5Nt2UQW73ELcwwRJO6JBkDU
 F54+bSGAckWziwNpiYqQi3e1RjlPtPeSEC8xVZUDdN/l7TNnjKusDnWZd
 bIVeIbwWVg0BW22sTh1gBk+bmzs+YgrU2CGNZGS/IYcvfsIrClyZ0PXIT
 LluBuypiu4sOIK8yR9TNwiv5unauw3NOgx48lVZluVcu6L14EcUVB18RO Q==;
X-CSE-ConnectionGUID: gWk5yNBvTLWt/VbTPix9GQ==
X-CSE-MsgGUID: dIL6y203R16iDNEBcHUQtA==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="57353546"
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="57353546"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 11:35:46 -0800
X-CSE-ConnectionGUID: wudiCZkBS/aFUJ9HR7wqvA==
X-CSE-MsgGUID: VxrhzPBjQruQvjYj49ZKaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="116369743"
Received: from dut4086lnl.fm.intel.com ([10.105.10.81])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 11:35:45 -0800
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com, alex.zuo@intel.com, jonathan.cavitt@intel.com,
 niranjana.vishwanathapura@intel.com, ayaz.siddiqui@intel.com,
 tomasz.mistat@intel.com
Subject: [PATCH] drm/xe: Add per-engine pagefault and reset counts
Date: Mon, 10 Feb 2025 19:35:44 +0000
Message-ID: <20250210193545.96003-1-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Add counters to all engines that count the number of pagefaults and
engine resets that have been triggered on them.  Report these values
during an engine reset.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
CC: Tomasz Mistat <tomasz.mistat@intel.com>
CC: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
CC: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
---
 drivers/gpu/drm/xe/xe_gt_pagefault.c    | 6 ++++++
 drivers/gpu/drm/xe/xe_guc_submit.c      | 9 +++++++--
 drivers/gpu/drm/xe/xe_hw_engine.c       | 3 +++
 drivers/gpu/drm/xe/xe_hw_engine_types.h | 4 ++++
 4 files changed, 20 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_gt_pagefault.c b/drivers/gpu/drm/xe/xe_gt_pagefault.c
index 46701ca11ce0..04e973b20019 100644
--- a/drivers/gpu/drm/xe/xe_gt_pagefault.c
+++ b/drivers/gpu/drm/xe/xe_gt_pagefault.c
@@ -130,6 +130,7 @@ static int handle_vma_pagefault(struct xe_gt *gt, struct pagefault *pf,
 {
 	struct xe_vm *vm = xe_vma_vm(vma);
 	struct xe_tile *tile = gt_to_tile(gt);
+	struct xe_hw_engine *hwe = NULL;
 	struct drm_exec exec;
 	struct dma_fence *fence;
 	ktime_t end = 0;
@@ -140,6 +141,11 @@ static int handle_vma_pagefault(struct xe_gt *gt, struct pagefault *pf,
 	xe_gt_stats_incr(gt, XE_GT_STATS_ID_VMA_PAGEFAULT_BYTES, xe_vma_size(vma));
 
 	trace_xe_vma_pagefault(vma);
+
+	hwe = xe_gt_hw_engine(gt, pf->engine_class, pf->engine_instance, false);
+	if (hwe)
+		atomic_inc(&hwe->pagefault_count);
+
 	atomic = access_is_atomic(pf->access_type);
 
 	/* Check if VMA is valid */
diff --git a/drivers/gpu/drm/xe/xe_guc_submit.c b/drivers/gpu/drm/xe/xe_guc_submit.c
index 913c74d6e2ae..6f5d74340319 100644
--- a/drivers/gpu/drm/xe/xe_guc_submit.c
+++ b/drivers/gpu/drm/xe/xe_guc_submit.c
@@ -1972,6 +1972,7 @@ int xe_guc_exec_queue_reset_handler(struct xe_guc *guc, u32 *msg, u32 len)
 {
 	struct xe_gt *gt = guc_to_gt(guc);
 	struct xe_exec_queue *q;
+	struct xe_hw_engine *hwe;
 	u32 guc_id;
 
 	if (unlikely(len < 1))
@@ -1983,8 +1984,12 @@ int xe_guc_exec_queue_reset_handler(struct xe_guc *guc, u32 *msg, u32 len)
 	if (unlikely(!q))
 		return -EPROTO;
 
-	xe_gt_info(gt, "Engine reset: engine_class=%s, logical_mask: 0x%x, guc_id=%d",
-		   xe_hw_engine_class_to_str(q->class), q->logical_mask, guc_id);
+	hwe = q->hwe;
+	atomic_inc(&hwe->reset_count);
+
+	xe_gt_info(gt, "Engine reset: engine_class=%s, logical_mask: 0x%x, guc_id=%d, pagefault_count=%u, reset_count=%u",
+		   xe_hw_engine_class_to_str(q->class), q->logical_mask, guc_id,
+		   atomic_read(&hwe->pagefault_count), atomic_read(&hwe->reset_count));
 
 	trace_xe_exec_queue_reset(q);
 
diff --git a/drivers/gpu/drm/xe/xe_hw_engine.c b/drivers/gpu/drm/xe/xe_hw_engine.c
index fc447751fe78..0be6c38fe2a4 100644
--- a/drivers/gpu/drm/xe/xe_hw_engine.c
+++ b/drivers/gpu/drm/xe/xe_hw_engine.c
@@ -516,6 +516,9 @@ static void hw_engine_init_early(struct xe_gt *gt, struct xe_hw_engine *hwe,
 	hwe->fence_irq = &gt->fence_irq[info->class];
 	hwe->engine_id = id;
 
+	atomic_set(&hwe->pagefault_count, 0);
+	atomic_set(&hwe->reset_count, 0);
+
 	hwe->eclass = &gt->eclass[hwe->class];
 	if (!hwe->eclass->sched_props.job_timeout_ms) {
 		hwe->eclass->sched_props.job_timeout_ms = 5 * 1000;
diff --git a/drivers/gpu/drm/xe/xe_hw_engine_types.h b/drivers/gpu/drm/xe/xe_hw_engine_types.h
index e4191a7a2c31..635dc3da6523 100644
--- a/drivers/gpu/drm/xe/xe_hw_engine_types.h
+++ b/drivers/gpu/drm/xe/xe_hw_engine_types.h
@@ -150,6 +150,10 @@ struct xe_hw_engine {
 	struct xe_oa_unit *oa_unit;
 	/** @hw_engine_group: the group of hw engines this one belongs to */
 	struct xe_hw_engine_group *hw_engine_group;
+	/** @pagefault_count: number of pagefaults associated with this engine */
+	atomic_t pagefault_count;
+	/** @reset_count: number of engine resets associated with this engine */
+	atomic_t reset_count;
 };
 
 enum xe_hw_engine_snapshot_source_id {
-- 
2.43.0

