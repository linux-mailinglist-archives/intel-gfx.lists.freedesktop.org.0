Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E3D7A0E6E
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 21:40:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC27F10E0D4;
	Thu, 14 Sep 2023 19:40:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 102F710E0D4
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 19:40:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694720439; x=1726256439;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=848K+Ln9BzX2vBxD7d8O7WnOUbjlrzGjTlYuhvnnpVQ=;
 b=kDrw+zb+BgT2pqwnyXwlvjSyYr426jxH8QVJ6HDR3hPgOcxtS+195gGc
 i/ZNHsd/+jB0hmoRfdIhG5xYVmACviC+Z05PvS2ejx7RDoGnwcDmN0Og3
 Kxug7liGdLfdr7WTj7ZYnt/xP/DdTLjga0avoPLawfOXbNTVmL2Lk7NnD
 hnij7DGvtGa5k29JJPZbUKMtNuyd1ABGMEjercROl/Pg/91lPka+Rw8/j
 X9fri11Y3ihUL90RddhXM8lJYYuo6DBAGpKhU1GEnROKKXFJRI4oMbHrp
 WZxyWrIX5TLHKkf3mRfpTPIVvnuZUsH6o/R6t7BzVHM4+WltjwlVNU8kX w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="376392941"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="376392941"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 12:40:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="991509457"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="991509457"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by fmsmga006.fm.intel.com with ESMTP; 14 Sep 2023 12:40:35 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Sep 2023 01:10:32 +0530
Message-Id: <20230914194032.1066442-1-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6] drm/i915: Add Wa_18022495364
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
Cc: lucas.demarchi@intel.com, matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Invalidate instruction and State cache bit using INDIRECT_CTX on
every gpu context switch for gen12.
The goal of this workaround is to actually perform an explicit
invalidation of that cache (by re-writing the register) during every GPU
context switch, which is accomplished via a "workaround batchbuffer"
that's attached to the context via INDIRECT_CTX. (Matt Ropper)
BSpec: 11354

Please refer [1] for more reviews and comment on the same patch

[1] https://patchwork.freedesktop.org/patch/556154/

v2:
- Remove extra parentheses from the condition (Lucas)
- Align spacing and new line (Lucas)

v3:
- Fix commit message.

v4:
- Only GEN12 changes are kept  (Matt Ropper)
- Fix the commit message for r-b (Matt Ropper)
- Rename the register bit in define

v5:
- Move out this workaround from golden context init (Matt Roper)
- Use INDIRECT_CTX to set bit on each GPU context switch (Matt Roper)

v6:
- Change IP Version base condition for Gen12 (Matt Ropper)
- Made imperative form of commit version messages (Suraj)
- s/Added/Add in patch header (Suraj)

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>

---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h |  2 ++
 drivers/gpu/drm/i915/gt/intel_lrc.c     | 13 +++++++++++++
 2 files changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index a00ff51c681d..0d5260d126d8 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -164,6 +164,8 @@
 #define GEN9_CSFE_CHICKEN1_RCS			_MMIO(0x20d4)
 #define   GEN9_PREEMPT_GPGPU_SYNC_SWITCH_DISABLE	(1 << 2)
 #define   GEN11_ENABLE_32_PLANE_MODE		(1 << 7)
+#define GEN12_CS_DEBUG_MODE2			_MMIO(0x20d8)
+#define   INSTRUCTION_STATE_CACHE_INVALIDATE	REG_BIT(6)
 
 #define GEN7_FF_SLICE_CS_CHICKEN1		_MMIO(0x20e0)
 #define   GEN9_FFSC_PERCTX_PREEMPT_CTRL		(1 << 14)
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index b99efa348ad1..56c916730e9b 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1333,6 +1333,15 @@ dg2_emit_draw_watermark_setting(u32 *cs)
 	return cs;
 }
 
+static u32 *
+gen12_invalidate_state_cache(u32 *cs)
+{
+	*cs++ = MI_LOAD_REGISTER_IMM(1);
+	*cs++ = i915_mmio_reg_offset(GEN12_CS_DEBUG_MODE2);
+	*cs++ = _MASKED_BIT_ENABLE(INSTRUCTION_STATE_CACHE_INVALIDATE);
+	return cs;
+}
+
 static u32 *
 gen12_emit_indirect_ctx_rcs(const struct intel_context *ce, u32 *cs)
 {
@@ -1346,6 +1355,10 @@ gen12_emit_indirect_ctx_rcs(const struct intel_context *ce, u32 *cs)
 
 	cs = gen12_emit_aux_table_inv(ce->engine, cs);
 
+	/* Wa_18022495364 */
+	if (IS_GFX_GT_IP_RANGE(ce->engine->gt, IP_VER(12, 0), IP_VER(12, 10)))
+		cs = gen12_invalidate_state_cache(cs);
+
 	/* Wa_16014892111 */
 	if (IS_GFX_GT_IP_STEP(ce->engine->gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
 	    IS_GFX_GT_IP_STEP(ce->engine->gt, IP_VER(12, 71), STEP_A0, STEP_B0) ||
-- 
2.34.1

