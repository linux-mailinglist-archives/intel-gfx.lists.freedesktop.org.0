Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E89F2798505
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 11:49:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C9B910E04B;
	Fri,  8 Sep 2023 09:49:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0B1710E04B
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Sep 2023 09:49:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694166580; x=1725702580;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DP0CEv8hn0i19eSYIRmyQ+wRe9rEHXjb+oAVwkneKoA=;
 b=gg+/qaHG/Qw+T9s9tr8wIgS4j8pK3dlC4vPmE0nj4fI6WrnvOBX3E0Vm
 gEd/KrOaIIbh0zuekPDkZ06Gsqnp/D+SrXO7uG9Pbu++py2WJnqM/hr+W
 5yQHzowZCaW/y0CWPWHsyfR01dT9eQ4c7HQJvsB+YBi6/7m4Uhr3nk8WF
 92ADfrTLTV56ZjD2rJPfJ28Z6fDjwuXyIagwX3JIQqKJFAbKe5oynLrTh
 8vmiqDAkjCHz+kYA9DE7Zs11slatz3C/bqRO81U/M/tO0yGazVWKlrU9S
 /vW8AeQ3bwPKzKmAfggAXfqVxl2NyL/wBVgoTpMOiPruj7Rwoowt7jOpM w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="408599212"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="408599212"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 02:49:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="719111483"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="719111483"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by orsmga006.jf.intel.com with ESMTP; 08 Sep 2023 02:49:37 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Sep 2023 15:19:32 +0530
Message-Id: <20230908094933.4121472-1-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] drm/i915: Added Wa_18022495364
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
Cc: matthew.d.roper@intel.com, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This workaround has two different implementations,
one for gen 12 to DG2 and another for DG2 and later.
BSpec: 11354, 56551

v2:
- Removed extra parentheses from the condition (Lucas)
- Fixed spacing and new line (Lucas)

v3:
- Fixed commit message.

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Reviewed-by: Nemesa Garg<nemesa.garg@intel.com>
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

