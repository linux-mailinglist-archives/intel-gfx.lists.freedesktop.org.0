Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF9B42EB4BB
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jan 2021 22:13:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3353589A98;
	Tue,  5 Jan 2021 21:13:50 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D65E489A98
 for <Intel-GFX@lists.freedesktop.org>; Tue,  5 Jan 2021 21:13:48 +0000 (UTC)
IronPort-SDR: 6m57/REGsneXqPbnnMAFkfsJL36P76Jpl6yXDLJ3/w7b6uAEEOhtweQs7lbeHHXAcoaZ/ZgK0J
 8yFbe23vNmZQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9855"; a="195719538"
X-IronPort-AV: E=Sophos;i="5.78,478,1599548400"; d="scan'208";a="195719538"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2021 13:13:46 -0800
IronPort-SDR: DWGFbA+xSFX79H2rB34g2mo12kwymcbQfQi5Us1TtDrfXYZ1a/aSCYx59212hGEojsGer94lnu
 aO1w0nyigFcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,478,1599548400"; d="scan'208";a="397978141"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by fmsmga002.fm.intel.com with ESMTP; 05 Jan 2021 13:13:45 -0800
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Tue,  5 Jan 2021 13:13:45 -0800
Message-Id: <20210105211345.6990-1-John.C.Harrison@Intel.com>
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
is not well defined, out of date and needs to be different across
platforms.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
CC: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_uc.c    | 28 ++++++++++++++++++++++--
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c |  7 +-----
 drivers/gpu/drm/i915/i915_params.h       |  1 +
 3 files changed, 28 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index 6a0452815c41..2c08db58cf12 100644
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
@@ -79,8 +102,7 @@ static void __confirm_options(struct intel_uc *uc)
 			 "Incompatible option enable_guc=%d - %s\n",
 			 i915->params.enable_guc, "GuC submission is N/A");
 
-	if (i915->params.enable_guc & ~(ENABLE_GUC_SUBMISSION |
-					  ENABLE_GUC_LOAD_HUC))
+	if (i915->params.enable_guc & ~ENABLE_GUC_MASK)
 		drm_info(&i915->drm,
 			 "Incompatible option enable_guc=%d - %s\n",
 			 i915->params.enable_guc, "undocumented flag");
@@ -88,6 +110,8 @@ static void __confirm_options(struct intel_uc *uc)
 
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
