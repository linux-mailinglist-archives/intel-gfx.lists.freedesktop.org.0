Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F05C7A065A
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 15:47:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 939C010E1D3;
	Thu, 14 Sep 2023 13:47:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8578510E1D3
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 13:47:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694699250; x=1726235250;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hXEJXTrPWIiAZN/rFF9UcKz5JAeSUAwZ77q/f2CtwsY=;
 b=USt5d4Ve9mEsBjSzb2G7I8wtinZXSGcjC4ECeRmSIoh5xLgvDSNkAElr
 zCHY6sWRXjbTmWmhmgq5KYqZbvw3iLtput+WVmhGbPZWWH0Qpb5CxZmTj
 00JJAulqaxurEOFhIg0n0kWAnbVgFe4SUMtMwbMmnIF340bd+Fp+ZUqXq
 +PIjEIHqY+l5GZnE8It35nTv4EcMPeDhs7eCJ2H0/iWpTH8sBR4mglYm2
 7yfOvvBBRe2fe6m3sCl73T43kiL6S5fxqM80uk0z/xv8iYWan0X67BI+t
 rLNPzOS7NX0SCoMeFVpoigupHPbAkPxcYI1ceprQ521UahogN3jWtKemK Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="378873923"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="378873923"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 06:47:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="779629992"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="779629992"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by orsmga001.jf.intel.com with ESMTP; 14 Sep 2023 06:47:27 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Sep 2023 19:17:24 +0530
Message-Id: <20230914134724.657957-1-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5] drm/i915: Added Wa_18022495364
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
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Set the instruction and state cache invalidate bit using INDIRECT_CTX on
every gpu context switch. 
The goal of this workaround is to actually perform an explicit
invalidation of that cache (by re-writing the register) during every GPU
context switch, which is accomplished via a "workaround batchbuffer"
that's attached to the context via INDIRECT_CTX. (Matt)
BSpec: 11354

v2:
- Removed extra parentheses from the condition (Lucas)
- Fixed spacing and new line (Lucas)

v3:
- Fixed commit message.

v4:
- Only GEN12 changes are kept  (Matt Ropper)
- Fixed the commit message for r-b (Matt Ropper)
- Renamed the register bit in define

v5:
- Moved out the  from golden context init (Matt Roper)
- Use INDIRECT_CTX to set bit on each GPU context switch (Matt Roper)

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>

---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h |  2 ++
 drivers/gpu/drm/i915/gt/intel_lrc.c     | 15 +++++++++++++++
 2 files changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 0e4c638fcbbf..38f02ef8ed01 100644
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
index 967fe4d77a87..fe98039499c5 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1332,6 +1332,15 @@ dg2_emit_draw_watermark_setting(u32 *cs)
 	return cs;
 }
 
+static u32 *
+gen12_set_instruction_state_cache_invalid(u32 *cs)
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
@@ -1345,6 +1354,12 @@ gen12_emit_indirect_ctx_rcs(const struct intel_context *ce, u32 *cs)
 
 	cs = gen12_emit_aux_table_inv(ce->engine, cs);
 
+	/* Wa_18022495364 */
+	if (IS_ALDERLAKE_P(ce->engine->i915) || IS_ALDERLAKE_P_N(ce->engine->i915) ||
+	    IS_ALDERLAKE_S(ce->engine->i915) || IS_TIGERLAKE(ce->engine->i915) ||
+		IS_ROCKETLAKE(ce->engine->i915) || IS_DG1(ce->engine->i915))
+		cs = gen12_set_instruction_state_cache_invalid(cs);
+
 	/* Wa_16014892111 */
 	if (IS_GFX_GT_IP_STEP(ce->engine->gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
 	    IS_GFX_GT_IP_STEP(ce->engine->gt, IP_VER(12, 71), STEP_A0, STEP_B0) ||
-- 
2.34.1

