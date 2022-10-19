Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 008F8604911
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 16:21:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3C4B10EAE4;
	Wed, 19 Oct 2022 14:21:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FB8810EAE5
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 14:21:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666189263; x=1697725263;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5FuM57pfX0AxbI0XhFAzuc1mhYRMmkF/PFnR+NA/IlA=;
 b=c459yWQveuUD266V7FHVK08fh0CICHOTJHp4neTZS2JoFoTxBsUeWj2l
 FwMUb8NtdmC7jNJORDJuFi9AI9ORoNTt2N/FjijjQumC3lKgflyjKeD7R
 Jnqt41iNcqT6rby8x0rBwB5Hp5lG5HlcldNIjBfDSRGAhRhtTJBRrPB1K
 FEenpZftmYwabHiD5Edv/uYrgWWAwUIkbPjLqo/B+5wAzs4ZPRUgdD4g9
 Ra7YzhjYAtI/sgXvkaCLDE9YDAKfApCx242P3OOdcbe0ThB7rxD91TEqE
 ULvOa6/yQH2jahuQDZamJnVOnsqFempQ3dQv7ihorh6ZXjYvjjJZdhrub g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="392723461"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="392723461"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 07:21:02 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="692406652"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="692406652"
Received: from asakthi-mobl.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.212.18.145])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 07:21:01 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Oct 2022 11:21:45 -0300
Message-Id: <20221019142145.111024-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.38.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/xelp: Add Wa_1806527549
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

Workaround to be applied to platforms using XE_LP graphics.

BSpec: 52890
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 1 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 7 +++++++
 2 files changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 36d95b79022c..23844ba7e824 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -443,6 +443,7 @@
 #define HIZ_CHICKEN				_MMIO(0x7018)
 #define   CHV_HZ_8X8_MODE_IN_1X			REG_BIT(15)
 #define   DG1_HZ_READ_SUPPRESSION_OPTIMIZATION_DISABLE	REG_BIT(14)
+#define   HZ_DEPTH_TEST_LE_GE_OPT_DISABLE	REG_BIT(13)
 #define   BDW_HIZ_POWER_COMPILER_CLOCK_GATING_DISABLE	REG_BIT(3)
 
 #define GEN8_L3CNTLREG				_MMIO(0x7034)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 63e1e6becf34..5cdec699ae04 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -660,6 +660,8 @@ static void gen12_ctx_gt_tuning_init(struct intel_engine_cs *engine,
 static void gen12_ctx_workarounds_init(struct intel_engine_cs *engine,
 				       struct i915_wa_list *wal)
 {
+	struct drm_i915_private *i915 = engine->i915;
+
 	gen12_ctx_gt_tuning_init(engine, wal);
 
 	/*
@@ -693,6 +695,11 @@ static void gen12_ctx_workarounds_init(struct intel_engine_cs *engine,
 	       FF_MODE2_GS_TIMER_MASK,
 	       FF_MODE2_GS_TIMER_224,
 	       0, false);
+
+	if (!IS_DG1(i915))
+		/* Wa_1806527549 */
+		wa_masked_en(wal, HIZ_CHICKEN, HZ_DEPTH_TEST_LE_GE_OPT_DISABLE);
+
 }
 
 static void dg1_ctx_workarounds_init(struct intel_engine_cs *engine,
-- 
2.38.0

