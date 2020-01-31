Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11BE814F532
	for <lists+intel-gfx@lfdr.de>; Sat,  1 Feb 2020 00:29:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 686246FC57;
	Fri, 31 Jan 2020 23:29:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A64E66FC57
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 23:29:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jan 2020 15:29:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,387,1574150400"; d="scan'208";a="428871285"
Received: from anusha.jf.intel.com ([10.165.21.155])
 by fmsmga005.fm.intel.com with ESMTP; 31 Jan 2020 15:29:28 -0800
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 31 Jan 2020 15:17:05 -0800
Message-Id: <20200131231705.32647-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: Implement Wa_1606931601
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

Disable Early Read and Src Swap (bit 14) by setting the chicken
register.

BSpec: 46045,52890

v2: Follow the Bspec implementation for the WA.
v3: Have 2 separate defines for bit 14 and 15.
- Rename register definitions with TGL_ prefix
v4: Bspec changed. Again. Add WA to rcs_ WA list.

Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 7 +++++++
 drivers/gpu/drm/i915/i915_reg.h             | 1 +
 2 files changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 8d7c3191137c..b0bcf8c55da0 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -593,6 +593,7 @@ static void tgl_ctx_workarounds_init(struct intel_engine_cs *engine,
 	wa_add(wal, FF_MODE2, FF_MODE2_TDS_TIMER_MASK, val,
 	       IS_TGL_REVID(engine->i915, TGL_REVID_A0, TGL_REVID_A0) ? 0 :
 			    FF_MODE2_TDS_TIMER_MASK);
+
 }
 
 static void
@@ -1319,6 +1320,12 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 {
 	struct drm_i915_private *i915 = engine->i915;
 
+	if (IS_TGL_REVID(i915, TGL_REVID_A0, REVID_FOREVER)) {
+		/* Wa_1606931601:tgl */
+		wa_write_or(wal,
+			    GEN7_ROW_CHICKEN2,
+			    GEN12_EARLY_READ_SRC0_DISABLE);
+	}
 	if (IS_TGL_REVID(i915, TGL_REVID_A0, TGL_REVID_A0)) {
 		/* Wa_1606700617:tgl */
 		wa_masked_en(wal,
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 0bd431f6a011..c46bec8ebd17 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -9151,6 +9151,7 @@ enum {
 #define   DOP_CLOCK_GATING_DISABLE	(1 << 0)
 #define   PUSH_CONSTANT_DEREF_DISABLE	(1 << 8)
 #define   GEN11_TDL_CLOCK_GATING_FIX_DISABLE	(1 << 1)
+#define   GEN12_EARLY_READ_SRC0_DISABLE		(1 << 14)
 
 #define HSW_ROW_CHICKEN3		_MMIO(0xe49c)
 #define  HSW_ROW_CHICKEN3_L3_GLOBAL_ATOMICS_DISABLE    (1 << 6)
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
