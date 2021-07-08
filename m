Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A59B33BF53A
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 07:39:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA44C6E04E;
	Thu,  8 Jul 2021 05:39:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E420A6E04E
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jul 2021 05:39:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10038"; a="207621993"
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="207621993"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2021 22:39:37 -0700
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="428209770"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2021 22:39:37 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Jul 2021 22:38:14 -0700
Message-Id: <20210708053819.2120187-3-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210708053819.2120187-1-matthew.d.roper@intel.com>
References: <20210708053819.2120187-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/7] drm/i915/skl: Use revid->stepping tables
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
platforms going forward.  Also add some additional stepping definitions
for completeness, even if we don't have any workarounds tied to them.

Note that SKL has a case where a newer revision ID corresponds to an
older GT/disp stepping (0x9 -> STEP_J0, 0xA -> STEP_I1).  Also, the lack
of a revision ID 0x8 in the table is intentional and not an oversight.
We'll re-write the KBL-specific comment to make it clear that these kind
of quirks are expected.

Finally, since we're already touching the KBL area too, let's rename the
KBL table to match the naming convention used by all of the other
platforms.

Bspec: 13626
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c |  2 +-
 drivers/gpu/drm/i915/i915_drv.h             | 11 +------
 drivers/gpu/drm/i915/intel_step.c           | 35 ++++++++++++++++-----
 drivers/gpu/drm/i915/intel_step.h           |  4 +++
 4 files changed, 33 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index d9a5a445ceec..6dfd564e078f 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -883,7 +883,7 @@ skl_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
 		    GEN8_EU_GAUNIT_CLOCK_GATE_DISABLE);
 
 	/* WaInPlaceDecompressionHang:skl */
-	if (IS_SKL_REVID(i915, SKL_REVID_H0, REVID_FOREVER))
+	if (IS_SKL_GT_STEP(i915, STEP_H0, STEP_FOREVER))
 		wa_write_or(wal,
 			    GEN9_GAMT_ECO_REG_RW_IA,
 			    GAMT_ECO_ENABLE_IN_PLACE_DECOMPRESS);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 796e6838bc79..300575f64ca6 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1462,16 +1462,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
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
 
 #define IS_KBL_GT_STEP(dev_priv, since, until) \
 	(IS_KABYLAKE(dev_priv) && IS_GT_STEP(dev_priv, since, until))
diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
index ba9479a67521..bfd63f56c200 100644
--- a/drivers/gpu/drm/i915/intel_step.c
+++ b/drivers/gpu/drm/i915/intel_step.c
@@ -7,15 +7,31 @@
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
 
+static const struct intel_step_info skl_revid_step_tbl[] = {
+	[0x0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
+	[0x1] = { .gt_step = STEP_B0, .display_step = STEP_B0 },
+	[0x2] = { .gt_step = STEP_C0, .display_step = STEP_C0 },
+	[0x3] = { .gt_step = STEP_D0, .display_step = STEP_D0 },
+	[0x4] = { .gt_step = STEP_E0, .display_step = STEP_E0 },
+	[0x5] = { .gt_step = STEP_F0, .display_step = STEP_F0 },
+	[0x6] = { .gt_step = STEP_G0, .display_step = STEP_G0 },
+	[0x7] = { .gt_step = STEP_H0, .display_step = STEP_H0 },
+	[0x9] = { .gt_step = STEP_J0, .display_step = STEP_J0 },
+	[0xA] = { .gt_step = STEP_I1, .display_step = STEP_I1 },
+};
 
-/* FIXME: what about REVID_E0 */
-static const struct intel_step_info kbl_revids[] = {
+static const struct intel_step_info kbl_revid_step_tbl[] = {
 	[0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
 	[1] = { .gt_step = STEP_B0, .display_step = STEP_B0 },
 	[2] = { .gt_step = STEP_C0, .display_step = STEP_B0 },
@@ -74,8 +90,11 @@ void intel_step_init(struct drm_i915_private *i915)
 		revids = tgl_revid_step_tbl;
 		size = ARRAY_SIZE(tgl_revid_step_tbl);
 	} else if (IS_KABYLAKE(i915)) {
-		revids = kbl_revids;
-		size = ARRAY_SIZE(kbl_revids);
+		revids = kbl_revid_step_tbl;
+		size = ARRAY_SIZE(kbl_revid_step_tbl);
+	} else if (IS_SKYLAKE(i915)) {
+		revids = skl_revid_step_tbl;
+		size = ARRAY_SIZE(skl_revid_step_tbl);
 	}
 
 	/* Not using the stepping scheme for the platform yet. */
diff --git a/drivers/gpu/drm/i915/intel_step.h b/drivers/gpu/drm/i915/intel_step.h
index 8efacef6ab31..41567d9b7c35 100644
--- a/drivers/gpu/drm/i915/intel_step.h
+++ b/drivers/gpu/drm/i915/intel_step.h
@@ -32,6 +32,10 @@ enum intel_step {
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
