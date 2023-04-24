Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D0C6EC9E9
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Apr 2023 12:13:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A491210E472;
	Mon, 24 Apr 2023 10:13:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C44410E472
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Apr 2023 10:13:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682331186; x=1713867186;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bo7FvIHzaIJeHFCxKk7TBGgSCrnGFdj73XITYGE4nEM=;
 b=TjAJnKG8h6V6gsffNZlUkq5nAoLpZ4+VhL/QviQy0tThrU/nfDj8cpTI
 D+Li3pgouOY7k2AgSysS5sEkamttY4ja6sfzvmL5PSD3/xHov2hij+UIF
 d3XrM+V0uiDf6WwQRBjf1SjLVe0BDZjKNXMFZBNIY6ReFXQ7E4PQyW9+n
 tLZNXBm0CrN9WPXDRC6J8FiEbv02SiEljRmoZRNIzdy05GAPGVrV+OsK8
 eZ1P3T/7Dx4NuU7p9v37hlt2duNOTTiGLOCGz8sKucPRqlP1258v5olSM
 nJzPe1mwPynkG+2St9bd2Euvuq2ylW92+bvXtCNNF6+8k8oeNihD6NGa2 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10689"; a="346438489"
X-IronPort-AV: E=Sophos;i="5.99,222,1677571200"; d="scan'208";a="346438489"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2023 03:13:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10689"; a="695712304"
X-IronPort-AV: E=Sophos;i="5.99,222,1677571200"; d="scan'208";a="695712304"
Received: from tejas-super-server.iind.intel.com ([10.145.169.166])
 by fmsmga007.fm.intel.com with ESMTP; 24 Apr 2023 03:13:03 -0700
From: Tejas Upadhyay <tejas.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Apr 2023 15:47:49 +0530
Message-Id: <20230424101749.3719600-1-tejas.upadhyay@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH V2] drm/i915/mtl: Add workaround 14018778641
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
Cc: Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

WA 18018781329 is applicable now across all MTL
steppings.

V2:
  - Remove IS_MTL check, code already running for MTL - Matt

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 30 ++++++++++-----------
 1 file changed, 14 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 312eb8b5f949..de4f8e2e8e8c 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1695,19 +1695,18 @@ pvc_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 static void
 xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 {
+	/* Wa_14018778641 / Wa_18018781329 */
+	wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
+	wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
+
 	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
 	    IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0)) {
 		/* Wa_14014830051 */
 		wa_mcr_write_clr(wal, SARB_CHICKEN1, COMP_CKN_IN);
 
-		/* Wa_18018781329 */
-		wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
-		wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
-
 		/* Wa_14015795083 */
 		wa_write_clr(wal, GEN7_MISCCPCTL, GEN12_DOP_CLOCK_GATE_RENDER_ENABLE);
 	}
-
 	/*
 	 * Unlike older platforms, we no longer setup implicit steering here;
 	 * all MCR accesses are explicitly steered.
@@ -1718,17 +1717,16 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 static void
 xelpmp_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 {
-	if (IS_MTL_MEDIA_STEP(gt->i915, STEP_A0, STEP_B0)) {
-		/*
-		 * Wa_18018781329
-		 *
-		 * Note that although these registers are MCR on the primary
-		 * GT, the media GT's versions are regular singleton registers.
-		 */
-		wa_write_or(wal, XELPMP_GSC_MOD_CTRL, FORCE_MISS_FTLB);
-		wa_write_or(wal, XELPMP_VDBX_MOD_CTRL, FORCE_MISS_FTLB);
-		wa_write_or(wal, XELPMP_VEBX_MOD_CTRL, FORCE_MISS_FTLB);
-	}
+	/*
+	 * Wa_14018778641
+	 * Wa_18018781329
+	 *
+	 * Note that although these registers are MCR on the primary
+	 * GT, the media GT's versions are regular singleton registers.
+	 */
+	wa_write_or(wal, XELPMP_GSC_MOD_CTRL, FORCE_MISS_FTLB);
+	wa_write_or(wal, XELPMP_VDBX_MOD_CTRL, FORCE_MISS_FTLB);
+	wa_write_or(wal, XELPMP_VEBX_MOD_CTRL, FORCE_MISS_FTLB);
 
 	debug_dump_steering(gt);
 }
-- 
2.25.1

