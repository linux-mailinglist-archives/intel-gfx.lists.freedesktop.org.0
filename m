Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D43732ACB1
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Mar 2021 02:07:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28DBD6E52C;
	Wed,  3 Mar 2021 01:07:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8650A6E3F9
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Mar 2021 01:07:48 +0000 (UTC)
IronPort-SDR: ppOLO/dTQcgMTasuyz5BTUK0oJSqqMRjYenEj72QoD5TJ87bona4gpEqUiY5OcUOtS29DMv/CA
 HjP73QjeM/aA==
X-IronPort-AV: E=McAfee;i="6000,8403,9911"; a="187115119"
X-IronPort-AV: E=Sophos;i="5.81,218,1610438400"; d="scan'208";a="187115119"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 17:07:44 -0800
IronPort-SDR: fwjMMFMcGlFEzo/5DE6HDOHfzUDMcgNJWJCaSLVX9Crw6rIka3IBE3DS3neonm/6jJFj487nef
 niIw7ba5IGhw==
X-IronPort-AV: E=Sophos;i="5.81,218,1610438400"; d="scan'208";a="518071481"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 17:07:44 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 Mar 2021 17:07:25 -0800
Message-Id: <20210303010728.3605269-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/gen12: Add recommended hardware
 tuning value
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Caz Yokoyama <caz.yokoyama@intel.com>

Follow Bspec 31870 to set recommended tuning values for certain GT
register.  These values aren't workarounds per-se, but it's best to
handle them in the same general area of the driver, especially since
there may be real workarounds that update other bits of the same
registers.

At the moment the only value we need to worry about is the
TDS_TIMER setting in FF_MODE2.  This setting was previously
described as "Wa_1604555607" on some platforms, but the spec
tells us that we should continue to program this on all current
gen12 platforms, even those that do not have that WA.

Bspec: 31870

Cc: Clinton Taylor <clinton.a.taylor@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Caz Yokoyama <caz.yokoyama@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 48 ++++++++++++++++-----
 1 file changed, 37 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 3b4a7da60f0b..f6d9b849aa62 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -646,9 +646,38 @@ static void icl_ctx_workarounds_init(struct intel_engine_cs *engine,
 	wa_masked_en(wal, GEN9_ROW_CHICKEN4, GEN11_DIS_PICK_2ND_EU);
 }
 
+/*
+ * These settings aren't actually workarounds, but general tuning settings that
+ * need to be programmed on several platforms.
+ */
+static void gen12_ctx_gt_tuning_init(struct intel_engine_cs *engine,
+				     struct i915_wa_list *wal)
+{
+	/*
+	 * Although some platforms refer to it as Wa_1604555607, we need to
+	 * program it even on those that don't explicitly list that
+	 * workaround.
+	 *
+	 * Note that the implementation of this workaround is further modified
+	 * according to the FF_MODE2 guidance given by Wa_1608008084:gen12.
+	 *
+	 * FF_MODE2 register will return the wrong value when read. The default
+	 * value for this register is zero for all fields and there are no bit
+	 * masks. So instead of doing a RMW we should just write TDS timer
+	 * value. For the same reason read verification is ignored.
+	 */
+	wa_add(wal,
+	       FF_MODE2,
+	       FF_MODE2_TDS_TIMER_MASK,
+	       FF_MODE2_TDS_TIMER_128,
+	       0);
+}
+
 static void gen12_ctx_workarounds_init(struct intel_engine_cs *engine,
 				       struct i915_wa_list *wal)
 {
+	gen12_ctx_gt_tuning_init(engine, wal);
+
 	/*
 	 * Wa_1409142259:tgl
 	 * Wa_1409347922:tgl
@@ -675,19 +704,15 @@ static void tgl_ctx_workarounds_init(struct intel_engine_cs *engine,
 	gen12_ctx_workarounds_init(engine, wal);
 
 	/*
-	 * Wa_1604555607:tgl,rkl
+	 * Wa_16011163337
 	 *
-	 * Note that the implementation of this workaround is further modified
-	 * according to the FF_MODE2 guidance given by Wa_1608008084:gen12.
-	 * FF_MODE2 register will return the wrong value when read. The default
-	 * value for this register is zero for all fields and there are no bit
-	 * masks. So instead of doing a RMW we should just write the GS Timer
-	 * and TDS timer values for Wa_1604555607 and Wa_16011163337.
+	 * Like in gen12_ctx_gt_tuning_init(), read verification is ignored due
+	 * to Wa_1608008084.
 	 */
 	wa_add(wal,
 	       FF_MODE2,
-	       FF_MODE2_GS_TIMER_MASK | FF_MODE2_TDS_TIMER_MASK,
-	       FF_MODE2_GS_TIMER_224  | FF_MODE2_TDS_TIMER_128,
+	       FF_MODE2_GS_TIMER_MASK,
+	       FF_MODE2_GS_TIMER_224,
 	       0);
 }
 
@@ -707,12 +732,13 @@ static void dg1_ctx_workarounds_init(struct intel_engine_cs *engine,
 	/*
 	 * Wa_16011163337
 	 *
-	 * Like in tgl_ctx_workarounds_init(), read verification is ignored due
+	 * Like in gen12_ctx_gt_tuning_init(), read verification is ignored due
 	 * to Wa_1608008084.
 	 */
 	wa_add(wal,
 	       FF_MODE2,
-	       FF_MODE2_GS_TIMER_MASK, FF_MODE2_GS_TIMER_224, 0);
+	       FF_MODE2_GS_TIMER_MASK,
+	       FF_MODE2_GS_TIMER_224, 0);
 }
 
 static void
-- 
2.30.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
