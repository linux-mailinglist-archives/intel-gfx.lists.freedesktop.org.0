Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D75BC2F54CF
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jan 2021 23:07:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44A316EC7F;
	Wed, 13 Jan 2021 22:07:27 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29A856EC7F
 for <Intel-GFX@lists.freedesktop.org>; Wed, 13 Jan 2021 22:07:26 +0000 (UTC)
IronPort-SDR: MzptrUoVQh95Hwu1TLle/7DJ6JrPbJRqRa3rnRY7WkUEQ99E2boSm8UFp6ySKWmEarYyuv0cB3
 eA9cYuQxtiFw==
X-IronPort-AV: E=McAfee;i="6000,8403,9863"; a="239817805"
X-IronPort-AV: E=Sophos;i="5.79,345,1602572400"; d="scan'208";a="239817805"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2021 14:07:24 -0800
IronPort-SDR: nwci/TONA7FlXPww/tcpK1ByTeLbZwCRUHUaSQpoKqjlUXppyDjQpluBjh73XoDR8Wh1sOfc0g
 z3+Tllbx6b0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,345,1602572400"; d="scan'208";a="382023189"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga008.jf.intel.com with ESMTP; 13 Jan 2021 14:07:24 -0800
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Wed, 13 Jan 2021 14:07:24 -0800
Message-Id: <20210113220724.2484897-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Subject: [Intel-gfx] [PATCH] drm/i915/uc: Add function to define defaults
 for GuC/HuC enable
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

From: John Harrison <John.C.Harrison@Intel.com>

There is a module parameter for controlling what GuC/HuC features are
enabled. Setting to -1 means 'use the default'. However, the default
was not well defined, out of date and needs to be different across
platforms.

The default is now to disable both GuC and HuC on legacy platforms
where legacy means TGL/RKL and anything prior to Gen12. For new
platforms, the default is to load HuC but not GuC as GuC submission
has not yet landed.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_uc.c    | 31 ++++++++++++++++++++----
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c |  7 +-----
 drivers/gpu/drm/i915/i915_params.h       |  1 +
 3 files changed, 28 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index 6a0452815c41..6abb8f2dc33d 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -15,6 +15,29 @@
 static const struct intel_uc_ops uc_ops_off;
 static const struct intel_uc_ops uc_ops_on;
 
+static void uc_expand_default_options(struct intel_uc *uc)
+{
+	struct drm_i915_private *i915 = uc_to_gt(uc)->i915;
+
+	if (i915->params.enable_guc != -1)
+		return;
+
+	/* Don't enable GuC/HuC on pre-Gen12 */
+	if (INTEL_GEN(i915) < 12) {
+		i915->params.enable_guc = 0;
+		return;
+	}
+
+	/* Don't enable GuC/HuC on older Gen12 platforms */
+	if (IS_TIGERLAKE(i915) || IS_ROCKETLAKE(i915)) {
+		i915->params.enable_guc = 0;
+		return;
+	}
+
+	/* Default: enable HuC authentication only */
+	i915->params.enable_guc = ENABLE_GUC_LOAD_HUC;
+}
+
 /* Reset GuC providing us with fresh state for both GuC and HuC.
  */
 static int __intel_uc_reset_hw(struct intel_uc *uc)
@@ -52,9 +75,6 @@ static void __confirm_options(struct intel_uc *uc)
 		yesno(intel_uc_wants_guc_submission(uc)),
 		yesno(intel_uc_wants_huc(uc)));
 
-	if (i915->params.enable_guc == -1)
-		return;
-
 	if (i915->params.enable_guc == 0) {
 		GEM_BUG_ON(intel_uc_wants_guc(uc));
 		GEM_BUG_ON(intel_uc_wants_guc_submission(uc));
@@ -79,8 +99,7 @@ static void __confirm_options(struct intel_uc *uc)
 			 "Incompatible option enable_guc=%d - %s\n",
 			 i915->params.enable_guc, "GuC submission is N/A");
 
-	if (i915->params.enable_guc & ~(ENABLE_GUC_SUBMISSION |
-					  ENABLE_GUC_LOAD_HUC))
+	if (i915->params.enable_guc & ~ENABLE_GUC_MASK)
 		drm_info(&i915->drm,
 			 "Incompatible option enable_guc=%d - %s\n",
 			 i915->params.enable_guc, "undocumented flag");
@@ -88,6 +107,8 @@ static void __confirm_options(struct intel_uc *uc)
 
 void intel_uc_init_early(struct intel_uc *uc)
 {
+	uc_expand_default_options(uc);
+
 	intel_guc_init_early(&uc->guc);
 	intel_huc_init_early(&uc->huc);
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index 602f1a0bc587..67b06fde1225 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -152,16 +152,11 @@ __uc_fw_auto_select(struct drm_i915_private *i915, struct intel_uc_fw *uc_fw)
 			uc_fw->path = NULL;
 		}
 	}
-
-	/* We don't want to enable GuC/HuC on pre-Gen11 by default */
-	if (i915->params.enable_guc == -1 && p < INTEL_ICELAKE)
-		uc_fw->path = NULL;
 }
 
 static const char *__override_guc_firmware_path(struct drm_i915_private *i915)
 {
-	if (i915->params.enable_guc & (ENABLE_GUC_SUBMISSION |
-				       ENABLE_GUC_LOAD_HUC))
+	if (i915->params.enable_guc & ENABLE_GUC_MASK)
 		return i915->params.guc_firmware_path;
 	return "";
 }
diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
index 330c03e2b4f7..f031966af5b7 100644
--- a/drivers/gpu/drm/i915/i915_params.h
+++ b/drivers/gpu/drm/i915/i915_params.h
@@ -32,6 +32,7 @@ struct drm_printer;
 
 #define ENABLE_GUC_SUBMISSION		BIT(0)
 #define ENABLE_GUC_LOAD_HUC		BIT(1)
+#define ENABLE_GUC_MASK			GENMASK(1, 0)
 
 /*
  * Invoke param, a function-like macro, for each i915 param, with arguments:
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
