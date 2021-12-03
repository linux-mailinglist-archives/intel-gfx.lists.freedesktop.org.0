Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 159B64679C3
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Dec 2021 15:52:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 117137AC68;
	Fri,  3 Dec 2021 14:52:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 203487AC68
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Dec 2021 14:52:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10186"; a="223857601"
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="223857601"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2021 06:52:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="513731752"
Received: from raviteja-system-product-name.iind.intel.com ([10.145.162.127])
 by orsmga008.jf.intel.com with ESMTP; 03 Dec 2021 06:52:36 -0800
From: ravitejax.goud.talla@intel.com
To: intel-gfx@lists.freedesktop.org,
 tejaskumarx.surendrakumar.upadhyay@intel.com, hariom.pandey@intel.com
Date: Fri,  3 Dec 2021 20:26:03 +0530
Message-Id: <20211203145603.4006937-1-ravitejax.goud.talla@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [v2] drm/i915/gen11: Moving WAs to
 icl_gt_workarounds_init()
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
Cc: ravitejax.goud.talla@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Raviteja Goud Talla <ravitejax.goud.talla@intel.com>

Bspec page says "Reset: BUS", Accordingly moving w/a's:
Wa_1407352427,Wa_1406680159 to proper function icl_gt_workarounds_init()
Which will resolve guc enabling error

v2:
  - Previous patch rev2 was created by email client which caused the
    Build failure, This v2 is to resolve the previous broken series

Reviewed-by: John Harrison <John.C.Harrison@Intel.com>
Signed-off-by: Raviteja Goud Talla <ravitejax.goud.talla@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index c3211325c2d3..3113266c286e 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1224,6 +1224,15 @@ icl_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 		    GAMT_CHKN_BIT_REG,
 		    GAMT_CHKN_DISABLE_L3_COH_PIPE);
 
+	/* Wa_1407352427:icl,ehl */
+	wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE2,
+		    PSDUNIT_CLKGATE_DIS);
+
+	/* Wa_1406680159:icl,ehl */
+	wa_write_or(wal,
+		    SUBSLICE_UNIT_LEVEL_CLKGATE,
+		    GWUNIT_CLKGATE_DIS);
+
 	/* Wa_1607087056:icl,ehl,jsl */
 	if (IS_ICELAKE(i915) ||
 	    IS_JSL_EHL_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
@@ -2269,15 +2278,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 		wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE,
 			    VSUNIT_CLKGATE_DIS | HSUNIT_CLKGATE_DIS);
 
-		/* Wa_1407352427:icl,ehl */
-		wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE2,
-			    PSDUNIT_CLKGATE_DIS);
-
-		/* Wa_1406680159:icl,ehl */
-		wa_write_or(wal,
-			    SUBSLICE_UNIT_LEVEL_CLKGATE,
-			    GWUNIT_CLKGATE_DIS);
-
 		/*
 		 * Wa_1408767742:icl[a2..forever],ehl[all]
 		 * Wa_1605460711:icl[a0..c0]
-- 
2.34.1

