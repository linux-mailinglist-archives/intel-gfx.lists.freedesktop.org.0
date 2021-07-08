Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E819E3C1BD7
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jul 2021 01:18:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D13FC6E936;
	Thu,  8 Jul 2021 23:18:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59F5F6E934
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jul 2021 23:18:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10039"; a="209578454"
X-IronPort-AV: E=Sophos;i="5.84,225,1620716400"; d="scan'208";a="209578454"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2021 16:18:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,225,1620716400"; d="scan'208";a="482707897"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by fmsmga004.fm.intel.com with ESMTP; 08 Jul 2021 16:18:23 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Jul 2021 16:18:13 -0700
Message-Id: <20210708231821.9163-3-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210708231821.9163-1-anusha.srivatsa@intel.com>
References: <20210708231821.9163-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/10] drm/i915/skl: Use revid->stepping tables
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

From: Matt Roper <matthew.d.roper@intel.com>

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
index 4f2a61cb024a..775057626ee6 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1509,16 +1509,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
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
2.32.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
