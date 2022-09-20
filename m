Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 568A45BEEB4
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Sep 2022 22:44:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C29DF10E78E;
	Tue, 20 Sep 2022 20:44:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC82C10E78E
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Sep 2022 20:44:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663706642; x=1695242642;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nHg0P8aMlCPM3e7Chj6poTYS3L4a3NLO01SidZX6jR8=;
 b=EyH69+DBp4HpiDpCVUsYKKO8nG2KdZV0t398KUoviBwRJDcH5nGzgRg+
 r1IM37B5CGTNPiyUyIaHJEseGQoCJniewr87coB/JIanPqQbYmo0Q9Kaa
 4eOKw+XigTqjgHPc0k8ZNZeyQj6vV1Rd6SpgtkNKcIFTJXtRvVRsgCERZ
 +KV+rMCElo5hgDcgjnyW3ivp2eqLaltRbfGvl3nzwHq0I0L+2AWuzz8BW
 0AZU2XzA6iwu1m5ZLkH4uGG1Yhw6jsozf1373SjncGM+/X/acn1KwWpOY
 XGmNcPYQhVJyXuxEgpPwMAut64CtQKrnLnM5Ohhk2RF3mfvL2ftXx1C/M Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10476"; a="282860150"
X-IronPort-AV: E=Sophos;i="5.93,331,1654585200"; d="scan'208";a="282860150"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2022 13:44:01 -0700
X-IronPort-AV: E=Sophos;i="5.93,331,1654585200"; d="scan'208";a="761457972"
Received: from liweiche-mobl2.amr.corp.intel.com (HELO
 msatwood-mobl.intel.com) ([10.212.81.38])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2022 13:44:01 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Sep 2022 13:43:59 -0700
Message-Id: <20220920204359.103370-1-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dg2: introduce Wa_22015475538
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

Wa_22015475538 applies to all DG2 (and ATSM) skus. The workaround
implementation is identical to Wa_16011620976. LSC_CHICKEN_BIT_0_UDW is
a general render register instead of rcs so adding this move to the
proper wa init function.

bspec:54077

Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 6d2003d598e6..c16e9e3f0d6c 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2108,9 +2108,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 	if (IS_DG2_GRAPHICS_STEP(i915, G11, STEP_A0, STEP_B0)) {
 		/* Wa_14013392000:dg2_g11 */
 		wa_masked_en(wal, GEN7_ROW_CHICKEN2, GEN12_ENABLE_LARGE_GRF_MODE);
-
-		/* Wa_16011620976:dg2_g11 */
-		wa_write_or(wal, LSC_CHICKEN_BIT_0_UDW, DIS_CHAIN_2XSIMD8);
 	}
 
 	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
@@ -2780,6 +2777,14 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 		wa_write_or(wal, VDBX_MOD_CTRL, FORCE_MISS_FTLB);
 		wa_write_or(wal, VEBX_MOD_CTRL, FORCE_MISS_FTLB);
 	}
+
+	if (IS_DG2(i915)) {
+		/*
+		 * Wa_16011620976:dg2_g11
+		 * Wa_22015475538:dg2
+		 */
+		wa_write_or(wal, LSC_CHICKEN_BIT_0_UDW, DIS_CHAIN_2XSIMD8);
+	}
 }
 
 static void
-- 
2.37.3

