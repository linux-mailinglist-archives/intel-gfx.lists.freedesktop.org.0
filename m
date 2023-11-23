Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D50707F57B7
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Nov 2023 06:15:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63F9E10E6CA;
	Thu, 23 Nov 2023 05:15:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD14910E6CA
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Nov 2023 05:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700716533; x=1732252533;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wawTVBkhpzxT/fMRkKTtWz/As7ETlbN52VsfT5Dy7p0=;
 b=gSLcnAL09Dd09tmLL0MkBb2HRjVOOETQR6P+vlTsN7QNfCDHt6tL0uJJ
 8FaRd73JYxNC9yC22PaznOVcyFWgPC0/YVxkonP/La+mv3EnHIKu7yFI/
 gvKkCbs5EvL2Ihi64oGyL5qOChND3WmbrvaAiMrRY67AJoDcpEoE5krWv
 BL21wi9iiBeUoqjLDjKGEiVaDm2Qmzo/Zp0jFXTkLkYPPERkTCrJvfr/Z
 cBmC/jL6cYwZOA0nWmIgtaJdYlGciA/QW06j3DRSXG5dZ9Y0Ksxp23Ffv
 TpU75ckAvhCKxrHZOnRCaAW2EEqRG+jdw1SB0aYcLR/h7PgItNi/bhNKl g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="458696793"
X-IronPort-AV: E=Sophos;i="6.04,220,1695711600"; d="scan'208";a="458696793"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2023 21:15:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="1098684809"
X-IronPort-AV: E=Sophos;i="6.04,220,1695711600"; d="scan'208";a="1098684809"
Received: from shekharc-desk.iind.intel.com ([10.190.239.54])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2023 21:15:31 -0800
From: Shekhar Chauhan <shekhar.chauhan@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Nov 2023 10:44:30 +0530
Message-Id: <20231123051430.3348945-2-shekhar.chauhan@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231123051430.3348945-1-shekhar.chauhan@intel.com>
References: <20231123051430.3348945-1-shekhar.chauhan@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/1] drm/i915/mtl: Fix Wa_22016670082
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Wa_22016670082 is applicable on GT and Media.
For GT, an MCR register is required instead of MMIO.

Signed-off-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 6 ++++++
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 2 +-
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 9de41703fae5..f77caf81f948 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -529,7 +529,13 @@
 
 #define GEN8_RC6_CTX_INFO			_MMIO(0x8504)
 
+/*
+ * TODO: Change GEN12_SQCNT1 to MTL_MEDIA_SQCNT1 or something
+ * equivalent and also at all the places this reg is currently
+ * being used.
+ */
 #define GEN12_SQCNT1				_MMIO(0x8718)
+#define GEN12_GT_SQCNT1 			MCR_REG(0x8718)
 #define   GEN12_SQCNT1_PMON_ENABLE		REG_BIT(30)
 #define   GEN12_SQCNT1_OABPC			REG_BIT(29)
 #define   GEN12_STRICT_RAR_ENABLE		REG_BIT(23)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 9bc0654efdc0..dbf0c6e536f1 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1644,7 +1644,7 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 	wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
 
 	/* Wa_22016670082 */
-	wa_write_or(wal, GEN12_SQCNT1, GEN12_STRICT_RAR_ENABLE);
+	wa_mcr_write_or(wal, GEN12_GT_SQCNT1, GEN12_STRICT_RAR_ENABLE);
 
 	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
 	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0)) {
-- 
2.34.1

