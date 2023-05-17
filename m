Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10680705C10
	for <lists+intel-gfx@lfdr.de>; Wed, 17 May 2023 02:42:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97C1D10E12C;
	Wed, 17 May 2023 00:42:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFB9910E12C
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 May 2023 00:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684284126; x=1715820126;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=M6i+w9zJQWqQEjriMyFjXfu6BviyFtNFctoHIKYr7sA=;
 b=bS0ZhPAF/5U1/Bjx1JhyBKYN56siOGywpf6mElVwcL2DLRkJS7BfGmWx
 wnM/Mcnb9bILlDblhSc8t4RVD5VZHeCvFvAHMIZvKcrIVpDPU3JMgoGbC
 BGRFDE8apIQLv1jRoBiKur2RHCZmP9VHFxgv2iwLZBSGmW7zi4XpcMVTO
 u46rf2dHLiM4C6C5k5rb8WGbboeycxFoASIqLHevktM8r9iaYn0o/yWL+
 3wyJEZdcLfDv/FglJf/3mrKITA09TWvcVSU1nH15Ot9sYNjBrfS87r9ha
 NvN56F7EuE1cHcrRBXEkab6+U1f2Z4ZHFqeXavLVFfGehkkHnN3QG+Q+S Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="336177972"
X-IronPort-AV: E=Sophos;i="5.99,280,1677571200"; d="scan'208";a="336177972"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 17:42:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="813652876"
X-IronPort-AV: E=Sophos;i="5.99,280,1677571200"; d="scan'208";a="813652876"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 17:42:04 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 16 May 2023 17:40:45 -0700
Message-Id: <20230517004046.264131-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 1/2] drm/i915/mtl: Add MTL performance tuning
 changes
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

MTL reuses the tuning parameters for DG2. Extend the dg2
performance tuning parameters to MTL.

v2: Add DRAW_WATERMARK tuning parameter.
v3: Limit DRAW_WATERMARK tuning to non A0 step.
v4: Reorder platform checks.
    Restrict Blend fill caching optimization to Render GT.

Bspec: 68331
Cc: Haridhar Kalvala <haridhar.kalvala@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 786349e95487..b6d3185cf868 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -817,6 +817,12 @@ static void mtl_ctx_workarounds_init(struct intel_engine_cs *engine,
 {
 	struct drm_i915_private *i915 = engine->i915;
 
+	dg2_ctx_gt_tuning_init(engine, wal);
+
+	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_B0, STEP_FOREVER) ||
+	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_B0, STEP_FOREVER))
+		wa_add(wal, DRAW_WATERMARK, VERT_WM_VAL, 0x3FF, 0, false);
+
 	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
 	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
 		/* Wa_14014947963 */
@@ -1748,6 +1754,13 @@ xelpmp_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
  */
 static void gt_tuning_settings(struct intel_gt *gt, struct i915_wa_list *wal)
 {
+	if (IS_METEORLAKE(gt->i915)) {
+		if (gt->type != GT_MEDIA)
+			wa_mcr_write_or(wal, XEHP_L3SCQREG7, BLEND_FILL_CACHING_OPT_DIS);
+
+		wa_mcr_write_or(wal, XEHP_SQCM, EN_32B_ACCESS);
+	}
+
 	if (IS_PONTEVECCHIO(gt->i915)) {
 		wa_mcr_write(wal, XEHPC_L3SCRUB,
 			     SCRUB_CL_DWNGRADE_SHARED | SCRUB_RATE_4B_PER_CLK);
@@ -2944,7 +2957,7 @@ static void
 add_render_compute_tuning_settings(struct drm_i915_private *i915,
 				   struct i915_wa_list *wal)
 {
-	if (IS_DG2(i915))
+	if (IS_METEORLAKE(i915) || IS_DG2(i915))
 		wa_mcr_write_clr_set(wal, RT_CTRL, STACKID_CTRL, STACKID_CTRL_512);
 
 	/*
-- 
2.34.1

