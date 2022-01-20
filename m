Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7579C495717
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 00:50:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A191510E186;
	Thu, 20 Jan 2022 23:50:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A3DC10E17D
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jan 2022 23:50:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642722619; x=1674258619;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=iNRO+6Ujs1yNSh37+WQ4zcsCpTjGqTEQe45pzxLRnlM=;
 b=dc82ZcDY8qtik2dd8vI1PKZCKytQcSjkccdBskk4y1qhRTSObOzvE2A5
 +n6EadNEphaZAkNTWKSlvAMscTnTWZwEg9TAqsuonsDdnyEzr/EYbnjVf
 ZG57E5jzlLmB6bdsyeLISBb/gcvjKWrucgnf8oZc1v/QA80rcuWTidesp
 BcaGrAToOqhOUvkQiMDjwsnb/oVh8+3V4WfNiN7RiZ9huuLNQGykLOOqn
 G13/fCTi/DG1R/0nn3GCPTlVovXuPcr4Vbn7aMNZSGXBPxFJju0dEYBxE
 +zMkHUeA63wSYiLiFlxr7amzohdAdG0Z7kOsjFc4SX7SOldrCdfxg7XK0 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="245469026"
X-IronPort-AV: E=Sophos;i="5.88,303,1635231600"; d="scan'208";a="245469026"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2022 15:50:18 -0800
X-IronPort-AV: E=Sophos;i="5.88,303,1635231600"; d="scan'208";a="475738521"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2022 15:50:18 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Jan 2022 15:50:16 -0800
Message-Id: <20220120235016.1209326-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Introduce G12 subplatform of DG2
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

Another fork of the DG2 design has appeared, known as "DG2-G12;" let's
add it as a new subplatform.  As with G11, the GT stepping resets back
to A0 (so a DG2-G12 A0 is similar, but not identical, to a DG2-G10 C0)
but the display steppings continue to use the same numbering scheme as
G10 and G11.

Some existing DG2 workarounds are starting to be extended to the DG2-G12
subplatform.  So far only workarounds that were "permanent" for both
DG2-G10 and DG2-G11 have been tagged for DG2-G12, but more
stepping-specific workarounds are likely to show up in the future.

Bspec: 44477
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c |  2 +-
 drivers/gpu/drm/i915/i915_drv.h             | 19 +++++++++++--------
 drivers/gpu/drm/i915/intel_device_info.h    |  3 ++-
 drivers/gpu/drm/i915/intel_step.c           |  7 +++++++
 4 files changed, 21 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 6a4372c3a3c5..2d2e3ae9c997 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2077,7 +2077,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 	}
 
 	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_B0, STEP_FOREVER) ||
-	    IS_DG2_G11(engine->i915)) {
+	    IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915)) {
 		/* Wa_22013037850:dg2 */
 		wa_write_or(wal, LSC_CHICKEN_BIT_0_UDW,
 			    DISABLE_128B_EVICTION_COMMAND_UDW);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 890f1f6fbc49..a2fe5a0a7acd 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1262,6 +1262,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	IS_SUBPLATFORM(dev_priv, INTEL_DG2, INTEL_SUBPLATFORM_G10)
 #define IS_DG2_G11(dev_priv) \
 	IS_SUBPLATFORM(dev_priv, INTEL_DG2, INTEL_SUBPLATFORM_G11)
+#define IS_DG2_G12(dev_priv) \
+	IS_SUBPLATFORM(dev_priv, INTEL_DG2, INTEL_SUBPLATFORM_G12)
 #define IS_ADLS_RPLS(dev_priv) \
 	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_S, INTEL_SUBPLATFORM_RPL_S)
 #define IS_ADLP_N(dev_priv) \
@@ -1378,16 +1380,17 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	(IS_XEHPSDV(__i915) && IS_GRAPHICS_STEP(__i915, since, until))
 
 /*
- * DG2 hardware steppings are a bit unusual.  The hardware design was forked
- * to create two variants (G10 and G11) which have distinct workaround sets.
- * The G11 fork of the DG2 design resets the GT stepping back to "A0" for its
- * first iteration, even though it's more similar to a G10 B0 stepping in terms
- * of functionality and workarounds.  However the display stepping does not
- * reset in the same manner --- a specific stepping like "B0" has a consistent
- * meaning regardless of whether it belongs to a G10 or G11 DG2.
+ * DG2 hardware steppings are a bit unusual.  The hardware design was forked to
+ * create three variants (G10, G11, and G12) which each have distinct
+ * workaround sets.  The G11 and G12 forks of the DG2 design reset the GT
+ * stepping back to "A0" for their first iterations, even though they're more
+ * similar to a G10 B0 stepping and G10 C0 stepping respectively in terms of
+ * functionality and workarounds.  However the display stepping does not reset
+ * in the same manner --- a specific stepping like "B0" has a consistent
+ * meaning regardless of whether it belongs to a G10, G11, or G12 DG2.
  *
  * TLDR:  All GT workarounds and stepping-specific logic must be applied in
- * relation to a specific subplatform (G10 or G11), whereas display workarounds
+ * relation to a specific subplatform (G10/G11/G12), whereas display workarounds
  * and stepping-specific logic will be applied with a general DG2-wide stepping
  * number.
  */
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 3699b1c539ea..364abcc7aa54 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -96,7 +96,7 @@ enum intel_platform {
  * it is fine for the same bit to be used on multiple parent platforms.
  */
 
-#define INTEL_SUBPLATFORM_BITS (2)
+#define INTEL_SUBPLATFORM_BITS (3)
 #define INTEL_SUBPLATFORM_MASK (BIT(INTEL_SUBPLATFORM_BITS) - 1)
 
 /* HSW/BDW/SKL/KBL/CFL */
@@ -109,6 +109,7 @@ enum intel_platform {
 /* DG2 */
 #define INTEL_SUBPLATFORM_G10	0
 #define INTEL_SUBPLATFORM_G11	1
+#define INTEL_SUBPLATFORM_G12	2
 
 /* ADL-S */
 #define INTEL_SUBPLATFORM_RPL_S	0
diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
index a4b16b9e2e55..46556883e93d 100644
--- a/drivers/gpu/drm/i915/intel_step.c
+++ b/drivers/gpu/drm/i915/intel_step.c
@@ -122,6 +122,10 @@ static const struct intel_step_info dg2_g11_revid_step_tbl[] = {
 	[0x5] = { COMMON_GT_MEDIA_STEP(B1), .display_step = STEP_C0 },
 };
 
+static const struct intel_step_info dg2_g12_revid_step_tbl[] = {
+	[0x0] = { COMMON_GT_MEDIA_STEP(A0), .display_step = STEP_C0 },
+};
+
 void intel_step_init(struct drm_i915_private *i915)
 {
 	const struct intel_step_info *revids = NULL;
@@ -135,6 +139,9 @@ void intel_step_init(struct drm_i915_private *i915)
 	} else if (IS_DG2_G11(i915)) {
 		revids = dg2_g11_revid_step_tbl;
 		size = ARRAY_SIZE(dg2_g11_revid_step_tbl);
+	} else if (IS_DG2_G12(i915)) {
+		revids = dg2_g12_revid_step_tbl;
+		size = ARRAY_SIZE(dg2_g12_revid_step_tbl);
 	} else if (IS_XEHPSDV(i915)) {
 		revids = xehpsdv_revids;
 		size = ARRAY_SIZE(xehpsdv_revids);
-- 
2.34.1

