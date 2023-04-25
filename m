Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86E3D6EE787
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Apr 2023 20:31:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A061A10E186;
	Tue, 25 Apr 2023 18:31:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FC1B10E186
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Apr 2023 18:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682447485; x=1713983485;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rSjupjJBYRy5l+uepCLBuljomSjKsGbyrBclFA0hfbc=;
 b=b5z/HC54rK56QV0jOGe3IDSDlHDIcq7MkVQ9tL4mJv4tX3i7EXc8itkX
 +XZ3EIRa4WpI46KvSqpH+US983ManU6xGkIVMCtLm3hGYxBUeV+APwydV
 UO992Ju3BpEgb6nFC6/odl2aw4FG4PUbCi8xw4s7wcKG4lx3GpDzsOh9H
 deRBUAFlYeW7nsVbsQik6FXm+VlPwzdK68uLxMtSa+pJBXIgoeLRyK9fb
 92FwyICSLL4M14RCPK11K/ow0O3lhAjfdaGYaaHGxvbPVbbf2TtrtN5Px
 zEDvAVL75a1qJXwBtMiA3KkBt7sMn75EoJU3UKsMReNNBjrcSY96ZscLm g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="331082992"
X-IronPort-AV: E=Sophos;i="5.99,226,1677571200"; d="scan'208";a="331082992"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 11:31:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="867984099"
X-IronPort-AV: E=Sophos;i="5.99,226,1677571200"; d="scan'208";a="867984099"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 11:31:23 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Apr 2023 11:30:11 -0700
Message-Id: <20230425183011.865085-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1.1] drm/i915/mtl: Implement Wa_14019141245
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Enable strict RAR to prevent spurious GPU hangs.

v1.1: Rebase

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 5 +++++
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 4 ++++
 drivers/gpu/drm/i915/i915_perf_oa_regs.h    | 4 ----
 3 files changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index e8c3b762a92a..af80d2fe739b 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -529,6 +529,11 @@
 
 #define GEN8_RC6_CTX_INFO			_MMIO(0x8504)
 
+#define GEN12_SQCNT1				_MMIO(0x8718)
+#define   GEN12_SQCNT1_PMON_ENABLE		REG_BIT(30)
+#define   GEN12_SQCNT1_OABPC			REG_BIT(29)
+#define   GEN12_STRICT_RAR_ENABLE		REG_BIT(23)
+
 #define XEHP_SQCM				MCR_REG(0x8724)
 #define   EN_32B_ACCESS				REG_BIT(30)
 
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index de4f8e2e8e8c..ad9e7f49a6fa 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1699,6 +1699,9 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 	wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
 	wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
 
+	/* Wa_14019141245 */
+	wa_write_or(wal, GEN12_SQCNT1, GEN12_STRICT_RAR_ENABLE);
+
 	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
 	    IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0)) {
 		/* Wa_14014830051 */
@@ -1707,6 +1710,7 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 		/* Wa_14015795083 */
 		wa_write_clr(wal, GEN7_MISCCPCTL, GEN12_DOP_CLOCK_GATE_RENDER_ENABLE);
 	}
+
 	/*
 	 * Unlike older platforms, we no longer setup implicit steering here;
 	 * all MCR accesses are explicitly steered.
diff --git a/drivers/gpu/drm/i915/i915_perf_oa_regs.h b/drivers/gpu/drm/i915/i915_perf_oa_regs.h
index ba103875e19f..e5ac7a8b5cb6 100644
--- a/drivers/gpu/drm/i915/i915_perf_oa_regs.h
+++ b/drivers/gpu/drm/i915/i915_perf_oa_regs.h
@@ -134,10 +134,6 @@
 #define GDT_CHICKEN_BITS    _MMIO(0x9840)
 #define   GT_NOA_ENABLE	    0x00000080
 
-#define GEN12_SQCNT1				_MMIO(0x8718)
-#define   GEN12_SQCNT1_PMON_ENABLE		REG_BIT(30)
-#define   GEN12_SQCNT1_OABPC			REG_BIT(29)
-
 /* Gen12 OAM unit */
 #define GEN12_OAM_HEAD_POINTER_OFFSET   (0x1a0)
 #define  GEN12_OAM_HEAD_POINTER_MASK    0xffffffc0
-- 
2.34.1

