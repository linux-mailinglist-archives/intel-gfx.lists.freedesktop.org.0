Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00A10434280
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Oct 2021 02:17:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D20889D49;
	Wed, 20 Oct 2021 00:17:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64BF089D49
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Oct 2021 00:17:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10142"; a="292121655"
X-IronPort-AV: E=Sophos;i="5.87,165,1631602800"; d="scan'208";a="292121655"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 17:17:48 -0700
X-IronPort-AV: E=Sophos;i="5.87,165,1631602800"; d="scan'208";a="462967149"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.60])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 17:17:48 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 Matt Atwood <matthew.s.atwood@intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Tue, 19 Oct 2021 17:23:52 -0700
Message-Id: <20211020002353.193893-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211020002353.193893-1-jose.souza@intel.com>
References: <20211020002353.193893-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Track media IP stepping separated
 from GT
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

Graphics and media IPs can have different stepping so a new field is
needed in intel_step_info.

The next patch will take care of rename gt_step to graphics_step.

Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Cc: Matt Atwood <matthew.s.atwood@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h   |  5 +++
 drivers/gpu/drm/i915/intel_step.c | 69 ++++++++++++++++---------------
 drivers/gpu/drm/i915/intel_step.h |  1 +
 3 files changed, 41 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 26b6e2b8bb5e8..9559cda7382f2 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1349,6 +1349,7 @@ static inline struct drm_i915_private *pdev_to_i915(struct pci_dev *pdev)
 
 #define INTEL_DISPLAY_STEP(__i915) (RUNTIME_INFO(__i915)->step.display_step)
 #define INTEL_GT_STEP(__i915) (RUNTIME_INFO(__i915)->step.gt_step)
+#define INTEL_MEDIA_STEP(__i915) (RUNTIME_INFO(__i915)->step.media_step)
 
 #define IS_DISPLAY_STEP(__i915, since, until) \
 	(drm_WARN_ON(&(__i915)->drm, INTEL_DISPLAY_STEP(__i915) == STEP_NONE), \
@@ -1358,6 +1359,10 @@ static inline struct drm_i915_private *pdev_to_i915(struct pci_dev *pdev)
 	(drm_WARN_ON(&(__i915)->drm, INTEL_GT_STEP(__i915) == STEP_NONE), \
 	 INTEL_GT_STEP(__i915) >= (since) && INTEL_GT_STEP(__i915) < (until))
 
+#define IS_MEDIA_STEP(__i915, since, until) \
+	(drm_WARN_ON(&(__i915)->drm, INTEL_MEDIA_STEP(__i915) == STEP_NONE), \
+	 INTEL_MEDIA_STEP(__i915) >= (since) && INTEL_MEDIA_STEP(__i915) < (until))
+
 static __always_inline unsigned int
 __platform_mask_index(const struct intel_runtime_info *info,
 		      enum intel_platform p)
diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
index 6cf9676313959..1cf8f0bb0b5e5 100644
--- a/drivers/gpu/drm/i915/intel_step.c
+++ b/drivers/gpu/drm/i915/intel_step.c
@@ -23,7 +23,8 @@
  * use a macro to define these to make it easier to identify the platforms
  * where the two steppings can deviate.
  */
-#define COMMON_STEP(x)  .gt_step = STEP_##x, .display_step = STEP_##x
+#define COMMON_STEP(x)  .gt_step = STEP_##x, .display_step = STEP_##x, .media_step = STEP_##x
+#define COMMON_GT_MEDIA_STEP(x)  .gt_step = STEP_##x, .media_step = STEP_##x
 
 static const struct intel_step_info skl_revids[] = {
 	[0x6] = { COMMON_STEP(G0) },
@@ -33,13 +34,13 @@ static const struct intel_step_info skl_revids[] = {
 };
 
 static const struct intel_step_info kbl_revids[] = {
-	[1] = { .gt_step = STEP_B0, .display_step = STEP_B0 },
-	[2] = { .gt_step = STEP_C0, .display_step = STEP_B0 },
-	[3] = { .gt_step = STEP_D0, .display_step = STEP_B0 },
-	[4] = { .gt_step = STEP_F0, .display_step = STEP_C0 },
-	[5] = { .gt_step = STEP_C0, .display_step = STEP_B1 },
-	[6] = { .gt_step = STEP_D1, .display_step = STEP_B1 },
-	[7] = { .gt_step = STEP_G0, .display_step = STEP_C0 },
+	[1] = { COMMON_GT_MEDIA_STEP(B0), .display_step = STEP_B0 },
+	[2] = { COMMON_GT_MEDIA_STEP(C0), .display_step = STEP_B0 },
+	[3] = { COMMON_GT_MEDIA_STEP(D0), .display_step = STEP_B0 },
+	[4] = { COMMON_GT_MEDIA_STEP(F0), .display_step = STEP_C0 },
+	[5] = { COMMON_GT_MEDIA_STEP(C0), .display_step = STEP_B1 },
+	[6] = { COMMON_GT_MEDIA_STEP(D1), .display_step = STEP_B1 },
+	[7] = { COMMON_GT_MEDIA_STEP(G0), .display_step = STEP_C0 },
 };
 
 static const struct intel_step_info bxt_revids[] = {
@@ -63,16 +64,16 @@ static const struct intel_step_info jsl_ehl_revids[] = {
 };
 
 static const struct intel_step_info tgl_uy_revids[] = {
-	[0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
-	[1] = { .gt_step = STEP_B0, .display_step = STEP_C0 },
-	[2] = { .gt_step = STEP_B1, .display_step = STEP_C0 },
-	[3] = { .gt_step = STEP_C0, .display_step = STEP_D0 },
+	[0] = { COMMON_GT_MEDIA_STEP(A0), .display_step = STEP_A0 },
+	[1] = { COMMON_GT_MEDIA_STEP(B0), .display_step = STEP_C0 },
+	[2] = { COMMON_GT_MEDIA_STEP(B1), .display_step = STEP_C0 },
+	[3] = { COMMON_GT_MEDIA_STEP(C0), .display_step = STEP_D0 },
 };
 
 /* Same GT stepping between tgl_uy_revids and tgl_revids don't mean the same HW */
 static const struct intel_step_info tgl_revids[] = {
-	[0] = { .gt_step = STEP_A0, .display_step = STEP_B0 },
-	[1] = { .gt_step = STEP_B0, .display_step = STEP_D0 },
+	[0] = { COMMON_GT_MEDIA_STEP(A0), .display_step = STEP_B0 },
+	[1] = { COMMON_GT_MEDIA_STEP(B0), .display_step = STEP_D0 },
 };
 
 static const struct intel_step_info rkl_revids[] = {
@@ -87,38 +88,38 @@ static const struct intel_step_info dg1_revids[] = {
 };
 
 static const struct intel_step_info adls_revids[] = {
-	[0x0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
-	[0x1] = { .gt_step = STEP_A0, .display_step = STEP_A2 },
-	[0x4] = { .gt_step = STEP_B0, .display_step = STEP_B0 },
-	[0x8] = { .gt_step = STEP_C0, .display_step = STEP_B0 },
-	[0xC] = { .gt_step = STEP_D0, .display_step = STEP_C0 },
+	[0x0] = { COMMON_GT_MEDIA_STEP(A0), .display_step = STEP_A0 },
+	[0x1] = { COMMON_GT_MEDIA_STEP(A0), .display_step = STEP_A2 },
+	[0x4] = { COMMON_GT_MEDIA_STEP(B0), .display_step = STEP_B0 },
+	[0x8] = { COMMON_GT_MEDIA_STEP(C0), .display_step = STEP_B0 },
+	[0xC] = { COMMON_GT_MEDIA_STEP(D0), .display_step = STEP_C0 },
 };
 
 static const struct intel_step_info adlp_revids[] = {
-	[0x0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
-	[0x4] = { .gt_step = STEP_B0, .display_step = STEP_B0 },
-	[0x8] = { .gt_step = STEP_C0, .display_step = STEP_C0 },
-	[0xC] = { .gt_step = STEP_C0, .display_step = STEP_D0 },
+	[0x0] = { COMMON_GT_MEDIA_STEP(A0), .display_step = STEP_A0 },
+	[0x4] = { COMMON_GT_MEDIA_STEP(B0), .display_step = STEP_B0 },
+	[0x8] = { COMMON_GT_MEDIA_STEP(C0), .display_step = STEP_C0 },
+	[0xC] = { COMMON_GT_MEDIA_STEP(C0), .display_step = STEP_D0 },
 };
 
 static const struct intel_step_info xehpsdv_revids[] = {
-	[0x0] = { .gt_step = STEP_A0 },
-	[0x1] = { .gt_step = STEP_A1 },
-	[0x4] = { .gt_step = STEP_B0 },
-	[0x8] = { .gt_step = STEP_C0 },
+	[0x0] = { COMMON_GT_MEDIA_STEP(A0) },
+	[0x1] = { COMMON_GT_MEDIA_STEP(A1) },
+	[0x4] = { COMMON_GT_MEDIA_STEP(B0) },
+	[0x8] = { COMMON_GT_MEDIA_STEP(C0) },
 };
 
 static const struct intel_step_info dg2_g10_revid_step_tbl[] = {
-	[0x0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
-	[0x1] = { .gt_step = STEP_A1, .display_step = STEP_A0 },
-	[0x4] = { .gt_step = STEP_B0, .display_step = STEP_B0 },
-	[0x8] = { .gt_step = STEP_C0, .display_step = STEP_C0 },
+	[0x0] = { COMMON_GT_MEDIA_STEP(A0), .display_step = STEP_A0 },
+	[0x1] = { COMMON_GT_MEDIA_STEP(A1), .display_step = STEP_A0 },
+	[0x4] = { COMMON_GT_MEDIA_STEP(B0), .display_step = STEP_B0 },
+	[0x8] = { COMMON_GT_MEDIA_STEP(C0), .display_step = STEP_C0 },
 };
 
 static const struct intel_step_info dg2_g11_revid_step_tbl[] = {
-	[0x0] = { .gt_step = STEP_A0, .display_step = STEP_B0 },
-	[0x4] = { .gt_step = STEP_B0, .display_step = STEP_C0 },
-	[0x5] = { .gt_step = STEP_B1, .display_step = STEP_C0 },
+	[0x0] = { COMMON_GT_MEDIA_STEP(A0), .display_step = STEP_B0 },
+	[0x4] = { COMMON_GT_MEDIA_STEP(B0), .display_step = STEP_C0 },
+	[0x5] = { COMMON_GT_MEDIA_STEP(B1), .display_step = STEP_C0 },
 };
 
 void intel_step_init(struct drm_i915_private *i915)
diff --git a/drivers/gpu/drm/i915/intel_step.h b/drivers/gpu/drm/i915/intel_step.h
index f6641e2a3c776..b6ff41b7bcf59 100644
--- a/drivers/gpu/drm/i915/intel_step.h
+++ b/drivers/gpu/drm/i915/intel_step.h
@@ -13,6 +13,7 @@ struct drm_i915_private;
 struct intel_step_info {
 	u8 gt_step;
 	u8 display_step;
+	u8 media_step;
 };
 
 #define STEP_ENUM_VAL(name)  STEP_##name,
-- 
2.33.1

