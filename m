Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 536BD3C7741
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jul 2021 21:37:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AA766E135;
	Tue, 13 Jul 2021 19:36:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF2D46E11F
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jul 2021 19:36:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10044"; a="190609865"
X-IronPort-AV: E=Sophos;i="5.84,237,1620716400"; d="scan'208";a="190609865"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 12:36:43 -0700
X-IronPort-AV: E=Sophos;i="5.84,237,1620716400"; d="scan'208";a="487456144"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 12:36:43 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Jul 2021 12:36:26 -0700
Message-Id: <20210713193635.3390052-4-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210713193635.3390052-1-matthew.d.roper@intel.com>
References: <20210713193635.3390052-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI v4 03/12] drm/i915/skl: Use revid->stepping tables
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

Switch SKL to use a revid->stepping table as we're trying to do on all
platforms going forward.  Also drop the preproduction revisions and add
the newer steppings we hadn't already handled.

Note that SKL has a case where a newer revision ID corresponds to an
older GT/disp stepping (0x9 -> STEP_J0, 0xA -> STEP_I1).  Also, the lack
of a revision ID 0x8 in the table is intentional and not an oversight.
We'll re-write the KBL-specific comment to make it clear that these kind
of quirks are expected.

v2:
 - Since GT and display steppings are always identical on SKL use a
   macro to set both values at once in a more readable manner.  (Anusha)
 - Drop preproduction steppings.

Bspec: 13626
Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c |  2 +-
 drivers/gpu/drm/i915/i915_drv.h             | 11 +-------
 drivers/gpu/drm/i915/intel_step.c           | 30 +++++++++++++++++----
 drivers/gpu/drm/i915/intel_step.h           |  4 +++
 4 files changed, 31 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 72562c233ad2..9f7cd2e54894 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -890,7 +890,7 @@ skl_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
 		    GEN8_EU_GAUNIT_CLOCK_GATE_DISABLE);
 
 	/* WaInPlaceDecompressionHang:skl */
-	if (IS_SKL_REVID(i915, SKL_REVID_H0, REVID_FOREVER))
+	if (IS_SKL_GT_STEP(i915, STEP_H0, STEP_FOREVER))
 		wa_write_or(wal,
 			    GEN9_GAMT_ECO_REG_RW_IA,
 			    GAMT_ECO_ENABLE_IN_PLACE_DECOMPRESS);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index c4747f4407ef..f30499ed6787 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1515,16 +1515,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_TGL_Y(dev_priv) \
 	IS_SUBPLATFORM(dev_priv, INTEL_TIGERLAKE, INTEL_SUBPLATFORM_ULX)
 
-#define SKL_REVID_A0		0x0
-#define SKL_REVID_B0		0x1
-#define SKL_REVID_C0		0x2
-#define SKL_REVID_D0		0x3
-#define SKL_REVID_E0		0x4
-#define SKL_REVID_F0		0x5
-#define SKL_REVID_G0		0x6
-#define SKL_REVID_H0		0x7
-
-#define IS_SKL_REVID(p, since, until) (IS_SKYLAKE(p) && IS_REVID(p, since, until))
+#define IS_SKL_GT_STEP(p, since, until) (IS_SKYLAKE(p) && IS_GT_STEP(p, since, until))
 
 #define BXT_REVID_A0		0x0
 #define BXT_REVID_A1		0x1
diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
index 93ccd42f2514..4e6a2b3b4f8a 100644
--- a/drivers/gpu/drm/i915/intel_step.c
+++ b/drivers/gpu/drm/i915/intel_step.c
@@ -7,14 +7,31 @@
 #include "intel_step.h"
 
 /*
- * KBL revision ID ordering is bizarre; higher revision ID's map to lower
- * steppings in some cases.  So rather than test against the revision ID
- * directly, let's map that into our own range of increasing ID's that we
- * can test against in a regular manner.
+ * Some platforms have unusual ways of mapping PCI revision ID to GT/display
+ * steppings.  E.g., in some cases a higher PCI revision may translate to a
+ * lower stepping of the GT and/or display IP.  This file provides lookup
+ * tables to map the PCI revision into a standard set of stepping values that
+ * can be compared numerically.
+ *
+ * Also note that some revisions/steppings may have been set aside as
+ * placeholders but never materialized in real hardware; in those cases there
+ * may be jumps in the revision IDs or stepping values in the tables below.
  */
 
+/*
+ * Some platforms always have the same stepping value for GT and display;
+ * use a macro to define these to make it easier to identify the platforms
+ * where the two steppings can deviate.
+ */
+#define COMMON_STEP(x)  .gt_step = STEP_##x, .display_step = STEP_##x
+
+static const struct intel_step_info skl_revids[] = {
+	[0x6] = { COMMON_STEP(G0) },
+	[0x7] = { COMMON_STEP(H0) },
+	[0x9] = { COMMON_STEP(J0) },
+	[0xA] = { COMMON_STEP(I1) },
+};
 
-/* FIXME: what about REVID_E0 */
 static const struct intel_step_info kbl_revids[] = {
 	[0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
 	[1] = { .gt_step = STEP_B0, .display_step = STEP_B0 },
@@ -76,6 +93,9 @@ void intel_step_init(struct drm_i915_private *i915)
 	} else if (IS_KABYLAKE(i915)) {
 		revids = kbl_revids;
 		size = ARRAY_SIZE(kbl_revids);
+	} else if (IS_SKYLAKE(i915)) {
+		revids = skl_revids;
+		size = ARRAY_SIZE(skl_revids);
 	}
 
 	/* Not using the stepping scheme for the platform yet. */
diff --git a/drivers/gpu/drm/i915/intel_step.h b/drivers/gpu/drm/i915/intel_step.h
index 958a8bb5d677..88a77159703e 100644
--- a/drivers/gpu/drm/i915/intel_step.h
+++ b/drivers/gpu/drm/i915/intel_step.h
@@ -31,6 +31,10 @@ enum intel_step {
 	STEP_E0,
 	STEP_F0,
 	STEP_G0,
+	STEP_H0,
+	STEP_I0,
+	STEP_I1,
+	STEP_J0,
 	STEP_FUTURE,
 	STEP_FOREVER,
 };
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
