Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90F847013EA
	for <lists+intel-gfx@lfdr.de>; Sat, 13 May 2023 04:16:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88ED310E091;
	Sat, 13 May 2023 02:15:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31E4A10E094
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 May 2023 02:15:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683944157; x=1715480157;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aVePbOYO1mW2a1ZyJxWnTlkWVFpor2CSIs6e18jMD0E=;
 b=TBM7w7pte4e5zB/qlljg0uLKlditGYXlWegNT1iTd3QmPGA2kV9d5xaI
 UKpKed+X+iJcz8dIHB3UwhBjrLe0ZQvvsOdpmwtn/LYpLyoQ0OEIl9SOm
 dj8+ZvSIa6pB116NTZIULZMi0dRQyll1KqHz3x+REBKtafdFtqHT4JUzf
 1W5nDii5ze8BCnBABXMtBxu2XL2XS97mTLemcAb4El4/XE9zfLOzjj5yu
 Qm46h1GOJigceLRl5TTYb2EEuiUSuUqI9mpdLhd2WPIkt0fR1NwxG/IFa
 6/f0Tsfb4mLTaGJBcB5E/t51jYWmdLz+JJgccPhVthQGnOXae6Rc9O8R3 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="416557895"
X-IronPort-AV: E=Sophos;i="5.99,271,1677571200"; d="scan'208";a="416557895"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 19:15:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="733250938"
X-IronPort-AV: E=Sophos;i="5.99,271,1677571200"; d="scan'208";a="733250938"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 19:15:56 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 May 2023 19:14:38 -0700
Message-Id: <20230513021438.185352-2-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230513021438.185352-1-radhakrishna.sripada@intel.com>
References: <20230513021438.185352-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915/mtl: Add MTL performance tuning
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

Bspec: 68331
Cc: Haridhar Kalvala <haridhar.kalvala@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 786349e95487..72dab970de5b 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -817,6 +817,10 @@ static void mtl_ctx_workarounds_init(struct intel_engine_cs *engine,
 {
 	struct drm_i915_private *i915 = engine->i915;
 
+	dg2_ctx_gt_tuning_init(engine, wal);
+
+	wa_add(wal, DRAW_WATERMARK, VERT_WM_VAL, 0x3FF, 0, false);
+
 	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
 	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
 		/* Wa_14014947963 */
@@ -1754,7 +1758,7 @@ static void gt_tuning_settings(struct intel_gt *gt, struct i915_wa_list *wal)
 		wa_mcr_masked_en(wal, XEHPC_LNCFMISCCFGREG0, XEHPC_HOSTCACHEEN);
 	}
 
-	if (IS_DG2(gt->i915)) {
+	if (IS_DG2(gt->i915) || IS_METEORLAKE(gt->i915)) {
 		wa_mcr_write_or(wal, XEHP_L3SCQREG7, BLEND_FILL_CACHING_OPT_DIS);
 		wa_mcr_write_or(wal, XEHP_SQCM, EN_32B_ACCESS);
 	}
@@ -2944,7 +2948,7 @@ static void
 add_render_compute_tuning_settings(struct drm_i915_private *i915,
 				   struct i915_wa_list *wal)
 {
-	if (IS_DG2(i915))
+	if (IS_DG2(i915) || IS_METEORLAKE(i915))
 		wa_mcr_write_clr_set(wal, RT_CTRL, STACKID_CTRL, STACKID_CTRL_512);
 
 	/*
-- 
2.34.1

