Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71F54591633
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Aug 2022 22:23:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21A95B34F2;
	Fri, 12 Aug 2022 20:22:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3811BAF89E
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Aug 2022 20:22:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660335768; x=1691871768;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YsiHo5W1DnvQa/Zfzb4f3DNd7FYYBE+5gpeLJblJ5mI=;
 b=nRH+Yox5z/EIG5l/LDij6TD/tbzTvtCKviXj27B4gcKKIIgCWRTDrRx7
 KCZa2En/zglj49NDhkV4vkwQXxmMPI7JL/cxL15iRfPa02LitkJy3cRTG
 VxTakL+9MNC0k/fEdEqTSBoBzu/+fLRv7UuzHz7NFQlSVsQ+EhxxlZ+/B
 xuLF6smwWd8BFcws597bpIVVYE84oiNbSESNjz5jdLOXFQKHdqSsjkDQZ
 HnSI4seFocVLToOsfIRuVQ7GRhluzhVfJrzGySl8m0jBb7pbfm6HPz/Sr
 8L07n6pU6YW7aqKkf2h79lgBoIM9qe3ii7SivrjnTB0mmRNL805lliy0q w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10437"; a="292477393"
X-IronPort-AV: E=Sophos;i="5.93,233,1654585200"; d="scan'208";a="292477393"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2022 13:22:47 -0700
X-IronPort-AV: E=Sophos;i="5.93,233,1654585200"; d="scan'208";a="634778142"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2022 13:22:47 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Aug 2022 13:22:39 -0700
Message-Id: <20220812202240.542124-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/gt: Add dedicated function for
 non-ctx register tuning settings
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The bspec performance tuning section gives recommended settings that the
driver should program for various MMIO registers.  Although these
settings aren't "workarounds" we use the workaround infrastructure to do
this programming to make sure it is handled at the appropriate places
and doesn't conflict with any real workarounds.

Since more of these are starting to show up on recent platforms, it's a
good time to create a dedicated function to hold them so that there's
less ambiguity about how/where to implement new ones.

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 42 ++++++++++++++-------
 1 file changed, 28 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 59cf28baa472..a68d279b01f0 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2102,13 +2102,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 		/* Wa_1509235366:dg2 */
 		wa_write_or(wal, GEN12_GAMCNTRL_CTRL, INVALIDATION_BROADCAST_MODE_DIS |
 			    GLOBAL_INVALIDATION_MODE);
-
-		/*
-		 * The following are not actually "workarounds" but rather
-		 * recommended tuning settings documented in the bspec's
-		 * performance guide section.
-		 */
-		wa_write_or(wal, XEHP_L3SCQREG7, BLEND_FILL_CACHING_OPT_DIS);
 	}
 
 	if (IS_DG2_GRAPHICS_STEP(i915, G11, STEP_A0, STEP_B0)) {
@@ -2676,6 +2669,32 @@ ccs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 	}
 }
 
+/*
+ * The bspec performance guide has recommended MMIO tuning settings.  These
+ * aren't truly "workarounds" but we want to program them with the same
+ * workaround infrastructure to ensure that they're automatically added to
+ * the GuC save/restore lists, re-applied at the right times, and checked for
+ * any conflicting programming requested by real workarounds.
+ *
+ * Programming settings should be added here only if their registers are not
+ * part of an engine's register state context.  If a register is part of a
+ * context, then any tuning settings should be programmed in an appropriate
+ * function invoked by __intel_engine_init_ctx_wa().
+ */
+static void
+add_render_compute_tuning_settings(struct drm_i915_private *i915,
+				   struct i915_wa_list *wal)
+{
+	if (IS_PONTEVECCHIO(i915)) {
+		wa_write(wal, XEHPC_L3SCRUB,
+			 SCRUB_CL_DWNGRADE_SHARED | SCRUB_RATE_4B_PER_CLK);
+	}
+
+	if (IS_DG2(i915)) {
+		wa_write_or(wal, XEHP_L3SCQREG7, BLEND_FILL_CACHING_OPT_DIS);
+	}
+}
+
 /*
  * The workarounds in this function apply to shared registers in
  * the general render reset domain that aren't tied to a
@@ -2690,14 +2709,9 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 {
 	struct drm_i915_private *i915 = engine->i915;
 
-	if (IS_PONTEVECCHIO(i915)) {
-		/*
-		 * The following is not actually a "workaround" but rather
-		 * a recommended tuning setting documented in the bspec's
-		 * performance guide section.
-		 */
-		wa_write(wal, XEHPC_L3SCRUB, SCRUB_CL_DWNGRADE_SHARED | SCRUB_RATE_4B_PER_CLK);
+	add_render_compute_tuning_settings(i915, wal);
 
+	if (IS_PONTEVECCHIO(i915)) {
 		/* Wa_16016694945 */
 		wa_masked_en(wal, XEHPC_LNCFMISCCFGREG0, XEHPC_OVRLSCCC);
 	}
-- 
2.37.1

