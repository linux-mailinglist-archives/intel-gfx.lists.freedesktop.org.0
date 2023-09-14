Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B298B7A0EE0
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 22:20:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC57510E0D7;
	Thu, 14 Sep 2023 20:20:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8192310E0D7
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 20:20:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694722806; x=1726258806;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=196Z4ww3czlsU4SKEV2+U2OBngU6Jptz2MISWaFINuQ=;
 b=Ks9P4ZQyJBbZT0M67vxlJKEzwarZe4v4j6PqL5GC4BlMFS0agp4KPdfH
 hvkPZz52wrtR2hE+SWDwaiNCTa0S5ElifqLQyYutT7Oy1lKFJBmj6mbe+
 /u6A8ewo5JRUfzMy3ahi1HS9TfRphyjLl2VCJK3l+QkcIwbAT+Fv5Tl0A
 d/jbkz5/mIIsv7DmqTFTc/AO2MXa/4IOZx5PKG68k74I9Nzix05nsv83x
 jdRLjg38vmJs7b2xVyZ1/b7tC0Zo5o1xE0SbQSHSbKV08ZN6d/NzlHMXs
 ZBnSp8Nq/+4IcjB74s96xcaxs6pedii6FV4PNLD0Zw1lTUR97103mssCA g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="465434003"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="465434003"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 13:20:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="918367438"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="918367438"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by orsmga005.jf.intel.com with ESMTP; 14 Sep 2023 13:20:03 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Sep 2023 01:50:00 +0530
Message-Id: <20230914202000.1069884-1-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7] drm/i915: Add Wa_18022495364
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

Invalidate instruction and State cache bit using INDIRECT_CTX on
every gpu context switch for gen12.
The goal of this workaround is to actually perform an explicit
invalidation of that cache (by re-writing the register) during every GPU
context switch, which is accomplished via a "workaround batchbuffer"
that's attached to the context via INDIRECT_CTX. (Matt Roper)
BSpec: 11354

Please refer [1] for more reviews and comment on the same patch

[1] https://patchwork.freedesktop.org/series/123377/

v2:
- Remove extra parentheses from the condition (Lucas)
- Align spacing and new line (Lucas)

v3:
- Fix commit message.

v4:
- Only Gen12 changes are kept and Remove DG2+ condition (Matt Roper)
- Fix the commit message for r-b (Matt Roper)
- Rename the register bit in define

v5:
- Move out this workaround from golden context init (Matt Roper)
- Use INDIRECT_CTX to set bit on each GPU context switch (Matt Roper)

v6:
- Change IP Version base condition for Gen12 (Matt Roper)
- Made imperative form of commit version messages (Suraj)
- s/Added/Add in patch header (Suraj)

v7: 
- In version descriptions s/Ropper/Roper (Matt Atwood)

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: Matt Atwood <matthew.s.atwood@intel.com>
Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

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

