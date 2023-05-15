Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DCE967040F2
	for <lists+intel-gfx@lfdr.de>; Tue, 16 May 2023 00:25:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28D5C10E2B0;
	Mon, 15 May 2023 22:25:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE1C710E2AD
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 May 2023 22:25:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684189535; x=1715725535;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lYPwv0JCZlXVBmCzsmEupMw0A3uR2S+xuM02FMMrWTc=;
 b=MAvhfeR7YP8sNbDODkKR9qRW9irNULOFtYT3L58rQn6NfiQU31PWvtFx
 elfSSrBqRPWXw9SXtUJfW0EI8PiExFcioPUswhjXR0KavhoInB87kRL9i
 VvQUqN68Bpj1z5oQEYK0IISjAFxJJaBQRGZX0We7x5lsPvCygFVodePiK
 hxKvI/s7Y5uA7wpTrU21HtEU7iIskHv4qPAJA8eg+9c2NctdO/DSS24bc
 vg/3OMmH8IS9f0AxFVRVZ08DgVlXq1QrX9AvyJQpkSCSotm1akyREDUwl
 d+i4PKfS+J5BvQdMdUWZIXr7jxvg6Zk1oorlR/g1gv3jAtQS9Fz3L5Dvt g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="379493665"
X-IronPort-AV: E=Sophos;i="5.99,277,1677571200"; d="scan'208";a="379493665"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 15:25:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="704146051"
X-IronPort-AV: E=Sophos;i="5.99,277,1677571200"; d="scan'208";a="704146051"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 15:25:35 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 15 May 2023 15:24:22 -0700
Message-Id: <20230515222423.224407-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/2] drm/i915/mtl: Add MTL performance tuning
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

Bspec: 68331
Cc: Haridhar Kalvala <haridhar.kalvala@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 786349e95487..2172f8d85421 100644
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
@@ -1754,7 +1760,7 @@ static void gt_tuning_settings(struct intel_gt *gt, struct i915_wa_list *wal)
 		wa_mcr_masked_en(wal, XEHPC_LNCFMISCCFGREG0, XEHPC_HOSTCACHEEN);
 	}
 
-	if (IS_DG2(gt->i915)) {
+	if (IS_DG2(gt->i915) || IS_METEORLAKE(gt->i915)) {
 		wa_mcr_write_or(wal, XEHP_L3SCQREG7, BLEND_FILL_CACHING_OPT_DIS);
 		wa_mcr_write_or(wal, XEHP_SQCM, EN_32B_ACCESS);
 	}
@@ -2944,7 +2950,7 @@ static void
 add_render_compute_tuning_settings(struct drm_i915_private *i915,
 				   struct i915_wa_list *wal)
 {
-	if (IS_DG2(i915))
+	if (IS_DG2(i915) || IS_METEORLAKE(i915))
 		wa_mcr_write_clr_set(wal, RT_CTRL, STACKID_CTRL, STACKID_CTRL_512);
 
 	/*
-- 
2.34.1

