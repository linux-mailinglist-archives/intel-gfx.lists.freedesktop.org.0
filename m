Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E565B958E64
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2024 21:01:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86E2710E875;
	Tue, 20 Aug 2024 19:01:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MNo9ZGnr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5927010E875;
 Tue, 20 Aug 2024 19:01:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724180518; x=1755716518;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jC8FQLdaqN6LSRq1+OZlX7Z1QiJV1P9T7T74Vr5nlLw=;
 b=MNo9ZGnrrUXzr4nSs7rPT6FHjrwVCldCD7akAzZFfq7GNN6m8nf9BZi4
 g46g82fZ4Xf94irXN3nDWtphRSz1VxC9QsES/9DX6mp9Alz7UxAu7v0bF
 NEFSbWhp4QgmCFJaOjpyyAfg9I8hc8iF09obUXnYx3ma4NHH5MiMRg5cZ
 BfPy/s5B8sUf05cehvl7rpRE6170ukoGoDWl+mnTyDRt5KBwn653rk9+9
 Xxn8qquqwEV1PH8FBoKkvwm5OHswd8FvCgsElN8xG7rySqhfVUq13nFba
 kBYEz6w6SyXvWUHnKSBC9GprOH626ST42qy2cuOLOadpO+dAoqNoWmr4/ A==;
X-CSE-ConnectionGUID: Jk6gc3bTRIaku1Ft09BbfA==
X-CSE-MsgGUID: lvt9/J5nSvSh1hHck1RX+g==
X-IronPort-AV: E=McAfee;i="6700,10204,11170"; a="26258542"
X-IronPort-AV: E=Sophos;i="6.10,162,1719903600"; d="scan'208";a="26258542"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 12:01:46 -0700
X-CSE-ConnectionGUID: 7gr18aICRVSAeXryZONB2Q==
X-CSE-MsgGUID: DyGta4l0QPe7rA7kKiH/Sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,162,1719903600"; d="scan'208";a="61362380"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.184])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 12:01:43 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: lucas.demarchi@intel.com, rodrigo.vivi@intel.com,
 matthew.d.roper@intel.com, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 09/10] drm/i915: remove display stepping handling
Date: Tue, 20 Aug 2024 22:00:42 +0300
Message-Id: <d64c5e8563dcb8858569d5578230f6b675acdafb.1724180287.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1724180287.git.jani.nikula@intel.com>
References: <cover.1724180287.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

The code is now unused. Remove.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/intel_step.c | 79 ++++++++++++++-----------------
 drivers/gpu/drm/i915/intel_step.h |  1 -
 2 files changed, 36 insertions(+), 44 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
index 80464e4edcce..285b96fadfd5 100644
--- a/drivers/gpu/drm/i915/intel_step.c
+++ b/drivers/gpu/drm/i915/intel_step.c
@@ -23,8 +23,7 @@
  * use a macro to define these to make it easier to identify the platforms
  * where the two steppings can deviate.
  */
-#define COMMON_STEP(x)  .graphics_step = STEP_##x, .display_step = STEP_##x, .media_step = STEP_##x
-#define COMMON_GT_MEDIA_STEP(x)  .graphics_step = STEP_##x, .media_step = STEP_##x
+#define COMMON_STEP(x)  .graphics_step = STEP_##x, .media_step = STEP_##x
 
 static const struct intel_step_info skl_revids[] = {
 	[0x6] = { COMMON_STEP(G0) },
@@ -34,13 +33,13 @@ static const struct intel_step_info skl_revids[] = {
 };
 
 static const struct intel_step_info kbl_revids[] = {
-	[1] = { COMMON_GT_MEDIA_STEP(B0), .display_step = STEP_B0 },
-	[2] = { COMMON_GT_MEDIA_STEP(C0), .display_step = STEP_B0 },
-	[3] = { COMMON_GT_MEDIA_STEP(D0), .display_step = STEP_B0 },
-	[4] = { COMMON_GT_MEDIA_STEP(F0), .display_step = STEP_C0 },
-	[5] = { COMMON_GT_MEDIA_STEP(C0), .display_step = STEP_B1 },
-	[6] = { COMMON_GT_MEDIA_STEP(D1), .display_step = STEP_B1 },
-	[7] = { COMMON_GT_MEDIA_STEP(G0), .display_step = STEP_C0 },
+	[1] = { COMMON_STEP(B0) },
+	[2] = { COMMON_STEP(C0) },
+	[3] = { COMMON_STEP(D0) },
+	[4] = { COMMON_STEP(F0) },
+	[5] = { COMMON_STEP(C0) },
+	[6] = { COMMON_STEP(D1) },
+	[7] = { COMMON_STEP(G0) },
 };
 
 static const struct intel_step_info bxt_revids[] = {
@@ -64,16 +63,16 @@ static const struct intel_step_info jsl_ehl_revids[] = {
 };
 
 static const struct intel_step_info tgl_uy_revids[] = {
-	[0] = { COMMON_GT_MEDIA_STEP(A0), .display_step = STEP_A0 },
-	[1] = { COMMON_GT_MEDIA_STEP(B0), .display_step = STEP_C0 },
-	[2] = { COMMON_GT_MEDIA_STEP(B1), .display_step = STEP_C0 },
-	[3] = { COMMON_GT_MEDIA_STEP(C0), .display_step = STEP_D0 },
+	[0] = { COMMON_STEP(A0) },
+	[1] = { COMMON_STEP(B0) },
+	[2] = { COMMON_STEP(B1) },
+	[3] = { COMMON_STEP(C0) },
 };
 
 /* Same GT stepping between tgl_uy_revids and tgl_revids don't mean the same HW */
 static const struct intel_step_info tgl_revids[] = {
-	[0] = { COMMON_GT_MEDIA_STEP(A0), .display_step = STEP_B0 },
-	[1] = { COMMON_GT_MEDIA_STEP(B0), .display_step = STEP_D0 },
+	[0] = { COMMON_STEP(A0) },
+	[1] = { COMMON_STEP(B0) },
 };
 
 static const struct intel_step_info rkl_revids[] = {
@@ -88,49 +87,49 @@ static const struct intel_step_info dg1_revids[] = {
 };
 
 static const struct intel_step_info adls_revids[] = {
-	[0x0] = { COMMON_GT_MEDIA_STEP(A0), .display_step = STEP_A0 },
-	[0x1] = { COMMON_GT_MEDIA_STEP(A0), .display_step = STEP_A2 },
-	[0x4] = { COMMON_GT_MEDIA_STEP(B0), .display_step = STEP_B0 },
-	[0x8] = { COMMON_GT_MEDIA_STEP(C0), .display_step = STEP_B0 },
-	[0xC] = { COMMON_GT_MEDIA_STEP(D0), .display_step = STEP_C0 },
+	[0x0] = { COMMON_STEP(A0) },
+	[0x1] = { COMMON_STEP(A0) },
+	[0x4] = { COMMON_STEP(B0) },
+	[0x8] = { COMMON_STEP(C0) },
+	[0xC] = { COMMON_STEP(D0) },
 };
 
 static const struct intel_step_info adlp_revids[] = {
-	[0x0] = { COMMON_GT_MEDIA_STEP(A0), .display_step = STEP_A0 },
-	[0x4] = { COMMON_GT_MEDIA_STEP(B0), .display_step = STEP_B0 },
-	[0x8] = { COMMON_GT_MEDIA_STEP(C0), .display_step = STEP_C0 },
-	[0xC] = { COMMON_GT_MEDIA_STEP(C0), .display_step = STEP_D0 },
+	[0x0] = { COMMON_STEP(A0) },
+	[0x4] = { COMMON_STEP(B0) },
+	[0x8] = { COMMON_STEP(C0) },
+	[0xC] = { COMMON_STEP(C0) },
 };
 
 static const struct intel_step_info dg2_g10_revid_step_tbl[] = {
-	[0x0] = { COMMON_GT_MEDIA_STEP(A0), .display_step = STEP_A0 },
-	[0x1] = { COMMON_GT_MEDIA_STEP(A1), .display_step = STEP_A0 },
-	[0x4] = { COMMON_GT_MEDIA_STEP(B0), .display_step = STEP_B0 },
-	[0x8] = { COMMON_GT_MEDIA_STEP(C0), .display_step = STEP_C0 },
+	[0x0] = { COMMON_STEP(A0) },
+	[0x1] = { COMMON_STEP(A1) },
+	[0x4] = { COMMON_STEP(B0) },
+	[0x8] = { COMMON_STEP(C0) },
 };
 
 static const struct intel_step_info dg2_g11_revid_step_tbl[] = {
-	[0x0] = { COMMON_GT_MEDIA_STEP(A0), .display_step = STEP_B0 },
-	[0x4] = { COMMON_GT_MEDIA_STEP(B0), .display_step = STEP_C0 },
-	[0x5] = { COMMON_GT_MEDIA_STEP(B1), .display_step = STEP_C0 },
+	[0x0] = { COMMON_STEP(A0) },
+	[0x4] = { COMMON_STEP(B0) },
+	[0x5] = { COMMON_STEP(B1) },
 };
 
 static const struct intel_step_info dg2_g12_revid_step_tbl[] = {
-	[0x0] = { COMMON_GT_MEDIA_STEP(A0), .display_step = STEP_C0 },
-	[0x1] = { COMMON_GT_MEDIA_STEP(A1), .display_step = STEP_C0 },
+	[0x0] = { COMMON_STEP(A0) },
+	[0x1] = { COMMON_STEP(A1) },
 };
 
 static const struct intel_step_info adls_rpls_revids[] = {
-	[0x4] = { COMMON_GT_MEDIA_STEP(D0), .display_step = STEP_D0 },
-	[0xC] = { COMMON_GT_MEDIA_STEP(D0), .display_step = STEP_C0 },
+	[0x4] = { COMMON_STEP(D0) },
+	[0xC] = { COMMON_STEP(D0) },
 };
 
 static const struct intel_step_info adlp_rplp_revids[] = {
-	[0x4] = { COMMON_GT_MEDIA_STEP(C0), .display_step = STEP_E0 },
+	[0x4] = { COMMON_STEP(C0) },
 };
 
 static const struct intel_step_info adlp_n_revids[] = {
-	[0x0] = { COMMON_GT_MEDIA_STEP(A0), .display_step = STEP_D0 },
+	[0x0] = { COMMON_STEP(A0) },
 };
 
 static u8 gmd_to_intel_step(struct drm_i915_private *i915,
@@ -158,11 +157,6 @@ void intel_step_init(struct drm_i915_private *i915)
 						       &RUNTIME_INFO(i915)->graphics.ip);
 		step.media_step = gmd_to_intel_step(i915,
 						    &RUNTIME_INFO(i915)->media.ip);
-		step.display_step = STEP_A0 + DISPLAY_RUNTIME_INFO(i915)->ip.step;
-		if (step.display_step >= STEP_FUTURE) {
-			drm_dbg(&i915->drm, "Using future display steppings\n");
-			step.display_step = STEP_FUTURE;
-		}
 
 		RUNTIME_INFO(i915)->step = step;
 
@@ -252,7 +246,6 @@ void intel_step_init(struct drm_i915_private *i915)
 		} else {
 			drm_dbg(&i915->drm, "Using future steppings\n");
 			step.graphics_step = STEP_FUTURE;
-			step.display_step = STEP_FUTURE;
 		}
 	}
 
diff --git a/drivers/gpu/drm/i915/intel_step.h b/drivers/gpu/drm/i915/intel_step.h
index 96dfca4cba73..83bd1190edf5 100644
--- a/drivers/gpu/drm/i915/intel_step.h
+++ b/drivers/gpu/drm/i915/intel_step.h
@@ -16,7 +16,6 @@ struct intel_step_info {
 	 * the expectation breaks gmd_to_intel_step().
 	 */
 	u8 graphics_step;	/* Represents the compute tile on Xe_HPC */
-	u8 display_step;
 	u8 media_step;
 	u8 basedie_step;
 };
-- 
2.39.2

