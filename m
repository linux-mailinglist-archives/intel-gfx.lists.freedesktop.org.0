Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 276B65845DE
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 20:49:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2401111209E;
	Thu, 28 Jul 2022 18:49:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8FF011209E
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jul 2022 18:49:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659034155; x=1690570155;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QAlJOhGFvBpUjr6Pl1PPHhYFiPiFYVssR0r2oVdFRqc=;
 b=k80q2FYlXDwxMOn0Qz5VhCxek6QmUHOVZoYXwXeUDvr/5I+fuoVwsABR
 oX84bhl+BpuT75epi4AIQU3cWI83EbBoxrbapDls/nSP7D+0WvYu4GuFN
 4wxSvtvaj+Ss8YZ/d9NFC8FAHvlL0Y+WTJ9e1SicUFgr/a7RcLUEm1cdA
 fT+1I3z7Hd/J8PY9q+nc7c/fZkVWIoFXaWcV5wmn+PX+Fph7Rp46IgM0a
 /3TShosWbm/ooCzMw/6+6nRGrFfx6UwU194XlBKa6piTE0xxdhXGr4AFz
 DYY+GiqXOz76zVu6nInhypXIY3j7i1wsUXBy7fjQ5SIUqwna2fwDj37LD Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10422"; a="289787900"
X-IronPort-AV: E=Sophos;i="5.93,199,1654585200"; d="scan'208";a="289787900"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2022 11:49:13 -0700
X-IronPort-AV: E=Sophos;i="5.93,199,1654585200"; d="scan'208";a="551431698"
Received: from hchegond-ivm1.jf.intel.com ([10.165.21.208])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2022 11:49:13 -0700
From: Harish Chegondi <harish.chegondi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Jul 2022 11:49:07 -0700
Message-Id: <20220728184907.31796-1-harish.chegondi@intel.com>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dg2: Add Wa_1509727124
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

Bspec: 46052
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Harish Chegondi <harish.chegondi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 1 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 8 ++++++++
 2 files changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 60d6eb5f245b..b3b49f6d6d1c 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -1078,6 +1078,7 @@
 
 #define GEN10_SAMPLER_MODE			_MMIO(0xe18c)
 #define   ENABLE_SMALLPL			REG_BIT(15)
+#define   SC_DISABLE_POWER_OPTIMIZATION_EBB	REG_BIT(9)
 #define   GEN11_SAMPLER_ENABLE_HEADLESS_MSG	REG_BIT(5)
 
 #define GEN9_HALF_SLICE_CHICKEN7		_MMIO(0xe194)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index e8111fce56d0..434d85aec72b 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2119,6 +2119,14 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 		wa_write_or(wal, LSC_CHICKEN_BIT_0_UDW, DIS_CHAIN_2XSIMD8);
 	}
 
+	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
+	    IS_DG2_GRAPHICS_STEP(i915, G11, STEP_A0, STEP_FOREVER) ||
+	    IS_DG2_G12(i915)) {
+		/* Wa_1509727124:dg2 */
+		wa_masked_en(wal, GEN10_SAMPLER_MODE,
+			     SC_DISABLE_POWER_OPTIMIZATION_EBB);
+	}
+
 	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_B0) ||
 	    IS_DG2_GRAPHICS_STEP(i915, G11, STEP_A0, STEP_B0)) {
 		/* Wa_14012419201:dg2 */
-- 
2.37.1

