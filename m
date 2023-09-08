Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D747984EE
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 11:41:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F97C10E004;
	Fri,  8 Sep 2023 09:41:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82B2910E004
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Sep 2023 09:41:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694166111; x=1725702111;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=t0D21qqF2eafbYFQlUXWTUuEwNz4pTvGJA+li5IAkZ4=;
 b=Giu8P5OHa51kHTdDMWE0/0yjNKdbkxskrk6HWqQbENel4LU18HWvtY9T
 vmlhlLd1SEHAKjnTDcGmk/SVjYes8AZOOZevq0uJdIOHofuxaySdgjhay
 kU2OCRrn0ZKBuPA5+01I3iJeGomUFO8M6YkFXGGAvX17bKvGf2rPgcnAr
 bN6uYNoCU8jqAzj+YgII6pHnin0T1r41SIRdOYpZ39RjvBUj0XlwH0iT8
 DJM5e4yUehWnbxpvOducK0w52uYXvNKY9R0MM5ugV+3PD/XDX0t+T8pNv
 WXbb2uRCzYEjM3vuO0mHkliAzXvnAqrErfGhQpDXnAoKJzeWGpmyfx2DS A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="377518251"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="377518251"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 02:41:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="1073262462"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="1073262462"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by fmsmga005.fm.intel.com with ESMTP; 08 Sep 2023 02:41:48 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Sep 2023 15:11:42 +0530
Message-Id: <20230908094142.4119379-1-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915: Added Wa_18022495364
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
Cc: lucas.demarchi@intel.com, Garg@freedesktop.org,
	matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This workaround has two different implementations,
one for gen 12 to DG2 and another for DG2 and later.
BSpec: 11354, 56551

v2:
- Removed extra parentheses from the condition (Lucas)
- Fixed spacing and new line (Lucas)

Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Garg, Nemesa <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c    | 5 +++++
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 2 ++
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 4 ++++
 3 files changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
index 0143445dba83..e260defdfc23 100644
--- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
@@ -271,6 +271,11 @@ int gen12_emit_flush_rcs(struct i915_request *rq, u32 mode)
 		if (GRAPHICS_VER_FULL(rq->i915) >= IP_VER(12, 70))
 			bit_group_0 |= PIPE_CONTROL_CCS_FLUSH;
 
+		/* Wa_18022495364 */
+		if (GRAPHICS_VER_FULL(rq->i915) >= IP_VER(12, 70) ||
+		    IS_DG2(rq->i915))
+			bit_group_1 |= PIPE_CONTROL_CONST_CACHE_INVALIDATE;
+
 		bit_group_1 |= PIPE_CONTROL_TILE_CACHE_FLUSH;
 		bit_group_1 |= PIPE_CONTROL_FLUSH_L3;
 		bit_group_1 |= PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH;
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 0e4c638fcbbf..4c0cb3a3d0aa 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -164,6 +164,8 @@
 #define GEN9_CSFE_CHICKEN1_RCS			_MMIO(0x20d4)
 #define   GEN9_PREEMPT_GPGPU_SYNC_SWITCH_DISABLE	(1 << 2)
 #define   GEN11_ENABLE_32_PLANE_MODE		(1 << 7)
+#define GEN12_CS_DEBUG_MODE2			_MMIO(0x20d8)
+#define   GEN12_GLOBAL_DEBUG_ENABLE			BIT(6)
 
 #define GEN7_FF_SLICE_CS_CHICKEN1		_MMIO(0x20e0)
 #define   GEN9_FFSC_PERCTX_PREEMPT_CTRL		(1 << 14)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 864d41bcf6bb..efdb4bbf8083 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -712,6 +712,10 @@ static void gen12_ctx_workarounds_init(struct intel_engine_cs *engine,
 			    GEN9_PREEMPT_GPGPU_LEVEL_MASK,
 			    GEN9_PREEMPT_GPGPU_THREAD_GROUP_LEVEL);
 
+	/* Wa_18022495364 */
+	wa_masked_en(wal, GEN12_CS_DEBUG_MODE2,
+		     GEN12_GLOBAL_DEBUG_ENABLE);
+
 	/*
 	 * Wa_16011163337 - GS_TIMER
 	 *
-- 
2.34.1

