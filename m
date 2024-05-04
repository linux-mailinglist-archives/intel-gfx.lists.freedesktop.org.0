Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD0E48BBEC9
	for <lists+intel-gfx@lfdr.de>; Sun,  5 May 2024 01:15:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEC3010FF8F;
	Sat,  4 May 2024 23:15:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hOBkXfvG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1E5710FF89
 for <intel-gfx@lists.freedesktop.org>; Sat,  4 May 2024 23:15:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714864538; x=1746400538;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=nxDrMr9YWEjBTi+tMtLMPQ3/qSaMd/MWL6laXYr+61s=;
 b=hOBkXfvGCUXQokj8h8Y0o8PtXjrGEsp5wk6i2f8RiTpVE/p+r2QF6fu/
 vCjR7OVwYks8U23oKMuNc54gUxO+SqBhPSS0H/IgHEOYh/km0adbGe3Ef
 n0okHTUIL6EVboGBl830FoV/C2LrZ0HwRcf+WgxZGytovZd7sOMPdObgF
 r0kbVx/NoxeagPbEteI9tqLP0XOBqXUmqQbop/c4S8/ObKdAOYzAHjqWe
 mH0m2zDsC/XVaK/kMZayDEwNVs3sd3O1y558UboQO2IOBkzkZmk9suuO4
 qK7IT8tDuNQuMSfRjDZOHRRU4OTaZ+Rhd+EcHsnhEkJOwmocyBsUkDZyS w==;
X-CSE-ConnectionGUID: rBHuxzSAStStlIHt0iMeDw==
X-CSE-MsgGUID: dX7w1BcLR1GN/BPSG0e38g==
X-IronPort-AV: E=McAfee;i="6600,9927,11063"; a="14459057"
X-IronPort-AV: E=Sophos;i="6.07,255,1708416000"; d="scan'208";a="14459057"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2024 16:15:35 -0700
X-CSE-ConnectionGUID: JVb9Ve4ITbWPtZdkiIsEcg==
X-CSE-MsgGUID: mQiwY7V+SsSJzN4pln95RQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,255,1708416000"; d="scan'208";a="28200951"
Received: from nvishwa1-desk.sc.intel.com ([172.25.29.76])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2024 16:15:35 -0700
From: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/4] drm/xe: Dump Indirect Ring State registers
Date: Sat,  4 May 2024 16:15:26 -0700
Message-ID: <20240504231530.15732-4-niranjana.vishwanathapura@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240504231530.15732-1-niranjana.vishwanathapura@intel.com>
References: <20240504231530.15732-1-niranjana.vishwanathapura@intel.com>
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

Dump INDIRECT_RING_STATE and RING_START_UDW registers.

Signed-off-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
---
 drivers/gpu/drm/xe/regs/xe_engine_regs.h |  4 ++++
 drivers/gpu/drm/xe/xe_hw_engine.c        | 11 +++++++++++
 drivers/gpu/drm/xe/xe_hw_engine_types.h  |  4 ++++
 3 files changed, 19 insertions(+)

diff --git a/drivers/gpu/drm/xe/regs/xe_engine_regs.h b/drivers/gpu/drm/xe/regs/xe_engine_regs.h
index 260a44f46f7e..263ffc7bc2ef 100644
--- a/drivers/gpu/drm/xe/regs/xe_engine_regs.h
+++ b/drivers/gpu/drm/xe/regs/xe_engine_regs.h
@@ -55,6 +55,8 @@
 #define   RING_CTL_SIZE(size)			((size) - PAGE_SIZE) /* in bytes -> pages */
 #define   RING_CTL_SIZE(size)			((size) - PAGE_SIZE) /* in bytes -> pages */
 
+#define RING_START_UDW(base)			XE_REG((base) + 0x48)
+
 #define RING_PSMI_CTL(base)			XE_REG((base) + 0x50, XE_REG_OPTION_MASKED)
 #define   RC_SEMA_IDLE_MSG_DISABLE		REG_BIT(12)
 #define   WAIT_FOR_EVENT_POWER_DOWN_DISABLE	REG_BIT(7)
@@ -110,6 +112,8 @@
 #define   FF_DOP_CLOCK_GATE_DISABLE		REG_BIT(1)
 #define   REPLAY_MODE_GRANULARITY		REG_BIT(0)
 
+#define INDIRECT_RING_STATE(base)		XE_REG((base) + 0x108)
+
 #define RING_BBADDR(base)			XE_REG((base) + 0x140)
 #define RING_BBADDR_UDW(base)			XE_REG((base) + 0x168)
 
diff --git a/drivers/gpu/drm/xe/xe_hw_engine.c b/drivers/gpu/drm/xe/xe_hw_engine.c
index ec69803152a2..45f582a7caaa 100644
--- a/drivers/gpu/drm/xe/xe_hw_engine.c
+++ b/drivers/gpu/drm/xe/xe_hw_engine.c
@@ -908,6 +908,13 @@ xe_hw_engine_snapshot_capture(struct xe_hw_engine *hwe)
 	snapshot->reg.ring_hwstam = hw_engine_mmio_read32(hwe, RING_HWSTAM(0));
 	snapshot->reg.ring_hws_pga = hw_engine_mmio_read32(hwe, RING_HWS_PGA(0));
 	snapshot->reg.ring_start = hw_engine_mmio_read32(hwe, RING_START(0));
+	if (xe_gt_has_indirect_ring_state(hwe->gt)) {
+		snapshot->reg.indirect_ring_state =
+			hw_engine_mmio_read32(hwe, INDIRECT_RING_STATE(0));
+		snapshot->reg.ring_start_udw =
+			hw_engine_mmio_read32(hwe, RING_START_UDW(0));
+	}
+
 	snapshot->reg.ring_head =
 		hw_engine_mmio_read32(hwe, RING_HEAD(0)) & HEAD_ADDR;
 	snapshot->reg.ring_tail =
@@ -997,6 +1004,8 @@ void xe_hw_engine_snapshot_print(struct xe_hw_engine_snapshot *snapshot,
 	drm_printf(p, "\tRING_EXECLIST_SQ_CONTENTS: 0x%016llx\n",
 		   snapshot->reg.ring_execlist_sq_contents);
 	drm_printf(p, "\tRING_START: 0x%08x\n", snapshot->reg.ring_start);
+	drm_printf(p, "\tRING_START_UDW: 0x%08x\n",
+		   snapshot->reg.ring_start_udw);
 	drm_printf(p, "\tRING_HEAD: 0x%08x\n", snapshot->reg.ring_head);
 	drm_printf(p, "\tRING_TAIL: 0x%08x\n", snapshot->reg.ring_tail);
 	drm_printf(p, "\tRING_CTL: 0x%08x\n", snapshot->reg.ring_ctl);
@@ -1010,6 +1019,8 @@ void xe_hw_engine_snapshot_print(struct xe_hw_engine_snapshot *snapshot,
 	drm_printf(p, "\tACTHD: 0x%016llx\n", snapshot->reg.ring_acthd);
 	drm_printf(p, "\tBBADDR: 0x%016llx\n", snapshot->reg.ring_bbaddr);
 	drm_printf(p, "\tDMA_FADDR: 0x%016llx\n", snapshot->reg.ring_dma_fadd);
+	drm_printf(p, "\tINDIRECT_RING_STATE: 0x%08x\n",
+		   snapshot->reg.indirect_ring_state);
 	drm_printf(p, "\tIPEHR: 0x%08x\n", snapshot->reg.ipehr);
 	xe_hw_engine_snapshot_instdone_print(snapshot, p);
 
diff --git a/drivers/gpu/drm/xe/xe_hw_engine_types.h b/drivers/gpu/drm/xe/xe_hw_engine_types.h
index 9f9755e31b9f..5f4b67acba99 100644
--- a/drivers/gpu/drm/xe/xe_hw_engine_types.h
+++ b/drivers/gpu/drm/xe/xe_hw_engine_types.h
@@ -189,6 +189,8 @@ struct xe_hw_engine_snapshot {
 		u32 ring_hws_pga;
 		/** @reg.ring_start: RING_START */
 		u32 ring_start;
+		/** @reg.ring_start_udw: RING_START_UDW */
+		u32 ring_start_udw;
 		/** @reg.ring_head: RING_HEAD */
 		u32 ring_head;
 		/** @reg.ring_tail: RING_TAIL */
@@ -207,6 +209,8 @@ struct xe_hw_engine_snapshot {
 		u32 ring_emr;
 		/** @reg.ring_eir: RING_EIR */
 		u32 ring_eir;
+		/** @reg.indirect_ring_state: INDIRECT_RING_STATE */
+		u32 indirect_ring_state;
 		/** @reg.ipehr: IPEHR */
 		u32 ipehr;
 		/** @reg.rcu_mode: RCU_MODE */
-- 
2.43.0

