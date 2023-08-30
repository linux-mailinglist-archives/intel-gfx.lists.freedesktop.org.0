Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 409CB78D75E
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Aug 2023 18:00:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69CCB10E558;
	Wed, 30 Aug 2023 16:00:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD07610E558
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Aug 2023 16:00:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693411213; x=1724947213;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Drt+rtGOp5bxK3IqocExaPSPAio7jU7nC+SdULrcv14=;
 b=KQ2nDvbikGbNqqygC0dFz5r72aCDZ1wK4yNKeh7lfuPOHXF6fQulyh1J
 sZt60OvMNP5z/c53Zb4BfyRpY7odbQMLjNYS9mG86ATcWPspUQDXfeTcZ
 6lGVGKNvxuIeLq0IvJ662mYOkb/ocNr9vfS7LiAxADQg9zgdKK1RZvgvR
 t6S62HD5itmQQOG1NYEuMfqTmYPXhsihcRMuSW2SbRpppMCjEPRiQoIG+
 eB4QTYomsUCcpaL1REyN+I3/x7XT0wzikLQt0LrZ5jNOEQ1QH+dnXs3YE
 4vmQoB7ch/VWhPciY3giGfJ5xgzdBhJN3hwHfHVeMaf1UR1jW671Ps02o Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10818"; a="379433782"
X-IronPort-AV: E=Sophos;i="6.02,214,1688454000"; d="scan'208";a="379433782"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2023 09:00:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10818"; a="809203638"
X-IronPort-AV: E=Sophos;i="6.02,214,1688454000"; d="scan'208";a="809203638"
Received: from shekharc-desk.iind.intel.com ([10.190.239.54])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2023 09:00:11 -0700
From: Shekhar Chauhan <shekhar.chauhan@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Aug 2023 21:30:01 +0530
Message-Id: <20230830160001.2395993-1-shekhar.chauhan@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Add Wa_14015150844
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

Disables Atomic-chaining of Typed Writes.

BSpec: 54040
Signed-off-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     |  2 ++
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 10 ++++++++++
 2 files changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 0e4c638fcbbf..82b533aa0c03 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -1218,6 +1218,8 @@
 
 #define XEHP_HDC_CHICKEN0			MCR_REG(0xe5f0)
 #define   LSC_L1_FLUSH_CTL_3D_DATAPORT_FLUSH_EVENTS_MASK	REG_GENMASK(13, 11)
+#define   ATOMIC_CHAINING_TYPED_WRITES		REG_BIT(3)
+
 #define ICL_HDC_MODE				MCR_REG(0xe5f4)
 
 #define EU_PERF_CNTL2				PERF_REG(0xe658)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 864d41bcf6bb..d54120009334 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2327,6 +2327,16 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 				  LSC_L1_FLUSH_CTL_3D_DATAPORT_FLUSH_EVENTS_MASK);
 	}
 
+	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_C0, STEP_FOREVER) ||
+	    IS_DG2_GRAPHICS_STEP(i915, G11, STEP_B0, STEP_FOREVER) ||
+	    IS_DG2_G12(i915) ||
+	    IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_FOREVER) ||
+	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_FOREVER)) {
+		/* Wa_14015150844 */
+		wa_mcr_masked_dis(wal, XEHP_HDC_CHICKEN0,
+				  ATOMIC_CHAINING_TYPED_WRITES);
+	}
+
 	if (IS_DG2_G11(i915) || IS_DG2_G10(i915)) {
 		/* Wa_22014600077:dg2 */
 		wa_mcr_add(wal, GEN10_CACHE_MODE_SS, 0,
-- 
2.34.1

