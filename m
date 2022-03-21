Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DB8D4E2815
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Mar 2022 14:51:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 977E910E324;
	Mon, 21 Mar 2022 13:51:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45C4610E266
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Mar 2022 13:51:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647870662; x=1679406662;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qCUOq4veMIKWiGQBMBVaybSl5OusU2DubQsfxWzECII=;
 b=EGmNYe8frax8H+Ay7MRjC7f7v7iCOwAi4aukoJqwGAFolcJnWbhSJsdn
 nzHbIFsW7N3xd24zvPTBdXZWKG3xVEqTYu1fSC58uowg1WHOUiGkBwrdk
 6fQl+Hx2/z+M8Ydr6/lwlc2FKudyi4Q4AMI6+2lZEGsY6pf/Eb82iyYlB
 AwJ7N48iijW5M/Go7K2gNxDyzXNtGigZg46+YwZ+3PrgAMH2EAIDCWeRl
 czwsHqCuQkyVpvw4/HtUtfb0sRGIuukgOx4TNj2YR5mU5LULugGum00RP
 3QqNodRIBySy5snuORlfYTN81/I/6S5jx/G7E856mI7EKNvDIA9FWhHxL g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10292"; a="282382324"
X-IronPort-AV: E=Sophos;i="5.90,198,1643702400"; d="scan'208";a="282382324"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 06:51:01 -0700
X-IronPort-AV: E=Sophos;i="5.90,198,1643702400"; d="scan'208";a="543231963"
Received: from abhijitc-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.34.12])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 06:51:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Mar 2022 15:50:31 +0200
Message-Id: <3b7bc0fc117b030d59dd74891af104c165bf9b39.1647870374.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1647870374.git.jani.nikula@intel.com>
References: <cover.1647870374.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/7] drm/i915/dmc: move dmc debugfs to
 intel_dmc.c
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Continue localizing DMC register and data access to intel_dmc.c.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 75 +----------------
 drivers/gpu/drm/i915/display/intel_dmc.c      | 83 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dmc.h      |  1 +
 3 files changed, 85 insertions(+), 74 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index e0a126e7ebb8..b43ac1c20653 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -436,79 +436,6 @@ static int i915_power_domain_info(struct seq_file *m, void *unused)
 	return 0;
 }
 
-static int i915_dmc_info(struct seq_file *m, void *unused)
-{
-	struct drm_i915_private *dev_priv = node_to_i915(m->private);
-	intel_wakeref_t wakeref;
-	struct intel_dmc *dmc;
-	i915_reg_t dc5_reg, dc6_reg = {};
-
-	if (!HAS_DMC(dev_priv))
-		return -ENODEV;
-
-	dmc = &dev_priv->dmc;
-
-	wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
-
-	seq_printf(m, "fw loaded: %s\n",
-		   str_yes_no(intel_dmc_has_payload(dev_priv)));
-	seq_printf(m, "path: %s\n", dmc->fw_path);
-	seq_printf(m, "Pipe A fw support: %s\n",
-		   str_yes_no(GRAPHICS_VER(dev_priv) >= 12));
-	seq_printf(m, "Pipe A fw loaded: %s\n",
-		   str_yes_no(dmc->dmc_info[DMC_FW_PIPEA].payload));
-	seq_printf(m, "Pipe B fw support: %s\n",
-		   str_yes_no(IS_ALDERLAKE_P(dev_priv)));
-	seq_printf(m, "Pipe B fw loaded: %s\n",
-		   str_yes_no(dmc->dmc_info[DMC_FW_PIPEB].payload));
-
-	if (!intel_dmc_has_payload(dev_priv))
-		goto out;
-
-	seq_printf(m, "version: %d.%d\n", DMC_VERSION_MAJOR(dmc->version),
-		   DMC_VERSION_MINOR(dmc->version));
-
-	if (DISPLAY_VER(dev_priv) >= 12) {
-		if (IS_DGFX(dev_priv)) {
-			dc5_reg = DG1_DMC_DEBUG_DC5_COUNT;
-		} else {
-			dc5_reg = TGL_DMC_DEBUG_DC5_COUNT;
-			dc6_reg = TGL_DMC_DEBUG_DC6_COUNT;
-		}
-
-		/*
-		 * NOTE: DMC_DEBUG3 is a general purpose reg.
-		 * According to B.Specs:49196 DMC f/w reuses DC5/6 counter
-		 * reg for DC3CO debugging and validation,
-		 * but TGL DMC f/w is using DMC_DEBUG3 reg for DC3CO counter.
-		 */
-		seq_printf(m, "DC3CO count: %d\n", intel_de_read(dev_priv, IS_DGFX(dev_priv) ?
-					DG1_DMC_DEBUG3 : TGL_DMC_DEBUG3));
-	} else {
-		dc5_reg = IS_BROXTON(dev_priv) ? BXT_DMC_DC3_DC5_COUNT :
-						 SKL_DMC_DC3_DC5_COUNT;
-		if (!IS_GEMINILAKE(dev_priv) && !IS_BROXTON(dev_priv))
-			dc6_reg = SKL_DMC_DC5_DC6_COUNT;
-	}
-
-	seq_printf(m, "DC3 -> DC5 count: %d\n",
-		   intel_de_read(dev_priv, dc5_reg));
-	if (dc6_reg.reg)
-		seq_printf(m, "DC5 -> DC6 count: %d\n",
-			   intel_de_read(dev_priv, dc6_reg));
-
-out:
-	seq_printf(m, "program base: 0x%08x\n",
-		   intel_de_read(dev_priv, DMC_PROGRAM(dmc->dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)));
-	seq_printf(m, "ssp base: 0x%08x\n",
-		   intel_de_read(dev_priv, DMC_SSP_BASE));
-	seq_printf(m, "htp: 0x%08x\n", intel_de_read(dev_priv, DMC_HTP_SKL));
-
-	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
-
-	return 0;
-}
-
 static void intel_seq_print_mode(struct seq_file *m, int tabs,
 				 const struct drm_display_mode *mode)
 {
@@ -1952,7 +1879,6 @@ static const struct drm_info_list intel_display_debugfs_list[] = {
 	{"i915_gem_framebuffer", i915_gem_framebuffer_info, 0},
 	{"i915_edp_psr_status", i915_edp_psr_status, 0},
 	{"i915_power_domain_info", i915_power_domain_info, 0},
-	{"i915_dmc_info", i915_dmc_info, 0},
 	{"i915_display_info", i915_display_info, 0},
 	{"i915_shared_dplls_info", i915_shared_dplls_info, 0},
 	{"i915_dp_mst_info", i915_dp_mst_info, 0},
@@ -1996,6 +1922,7 @@ void intel_display_debugfs_register(struct drm_i915_private *i915)
 				 ARRAY_SIZE(intel_display_debugfs_list),
 				 minor->debugfs_root, minor);
 
+	intel_dmc_debugfs_register(i915);
 	intel_fbc_debugfs_register(i915);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 63ae16622c3e..2e11725a0828 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -810,3 +810,86 @@ void intel_dmc_ucode_fini(struct drm_i915_private *dev_priv)
 	for (id = 0; id < DMC_FW_MAX; id++)
 		kfree(dev_priv->dmc.dmc_info[id].payload);
 }
+
+static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
+{
+	struct drm_i915_private *i915 = m->private;
+	intel_wakeref_t wakeref;
+	struct intel_dmc *dmc;
+	i915_reg_t dc5_reg, dc6_reg = {};
+
+	if (!HAS_DMC(i915))
+		return -ENODEV;
+
+	dmc = &i915->dmc;
+
+	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
+
+	seq_printf(m, "fw loaded: %s\n",
+		   str_yes_no(intel_dmc_has_payload(i915)));
+	seq_printf(m, "path: %s\n", dmc->fw_path);
+	seq_printf(m, "Pipe A fw support: %s\n",
+		   str_yes_no(GRAPHICS_VER(i915) >= 12));
+	seq_printf(m, "Pipe A fw loaded: %s\n",
+		   str_yes_no(dmc->dmc_info[DMC_FW_PIPEA].payload));
+	seq_printf(m, "Pipe B fw support: %s\n",
+		   str_yes_no(IS_ALDERLAKE_P(i915)));
+	seq_printf(m, "Pipe B fw loaded: %s\n",
+		   str_yes_no(dmc->dmc_info[DMC_FW_PIPEB].payload));
+
+	if (!intel_dmc_has_payload(i915))
+		goto out;
+
+	seq_printf(m, "version: %d.%d\n", DMC_VERSION_MAJOR(dmc->version),
+		   DMC_VERSION_MINOR(dmc->version));
+
+	if (DISPLAY_VER(i915) >= 12) {
+		if (IS_DGFX(i915)) {
+			dc5_reg = DG1_DMC_DEBUG_DC5_COUNT;
+		} else {
+			dc5_reg = TGL_DMC_DEBUG_DC5_COUNT;
+			dc6_reg = TGL_DMC_DEBUG_DC6_COUNT;
+		}
+
+		/*
+		 * NOTE: DMC_DEBUG3 is a general purpose reg.
+		 * According to B.Specs:49196 DMC f/w reuses DC5/6 counter
+		 * reg for DC3CO debugging and validation,
+		 * but TGL DMC f/w is using DMC_DEBUG3 reg for DC3CO counter.
+		 */
+		seq_printf(m, "DC3CO count: %d\n",
+			   intel_de_read(i915, IS_DGFX(i915) ?
+					 DG1_DMC_DEBUG3 : TGL_DMC_DEBUG3));
+	} else {
+		dc5_reg = IS_BROXTON(i915) ? BXT_DMC_DC3_DC5_COUNT :
+			SKL_DMC_DC3_DC5_COUNT;
+		if (!IS_GEMINILAKE(i915) && !IS_BROXTON(i915))
+			dc6_reg = SKL_DMC_DC5_DC6_COUNT;
+	}
+
+	seq_printf(m, "DC3 -> DC5 count: %d\n", intel_de_read(i915, dc5_reg));
+	if (dc6_reg.reg)
+		seq_printf(m, "DC5 -> DC6 count: %d\n",
+			   intel_de_read(i915, dc6_reg));
+
+out:
+	seq_printf(m, "program base: 0x%08x\n",
+		   intel_de_read(i915, DMC_PROGRAM(dmc->dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)));
+	seq_printf(m, "ssp base: 0x%08x\n",
+		   intel_de_read(i915, DMC_SSP_BASE));
+	seq_printf(m, "htp: 0x%08x\n", intel_de_read(i915, DMC_HTP_SKL));
+
+	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
+
+	return 0;
+}
+
+DEFINE_SHOW_ATTRIBUTE(intel_dmc_debugfs_status);
+
+void intel_dmc_debugfs_register(struct drm_i915_private *i915)
+{
+	struct drm_minor *minor = i915->drm.primary;
+
+	debugfs_create_file("i915_dmc_info", 0444, minor->debugfs_root,
+			    i915, &intel_dmc_debugfs_status_fops);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
index 326f80ad0f31..b9f608057700 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc.h
@@ -54,6 +54,7 @@ void intel_dmc_ucode_fini(struct drm_i915_private *i915);
 void intel_dmc_ucode_suspend(struct drm_i915_private *i915);
 void intel_dmc_ucode_resume(struct drm_i915_private *i915);
 bool intel_dmc_has_payload(struct drm_i915_private *i915);
+void intel_dmc_debugfs_register(struct drm_i915_private *i915);
 
 void assert_dmc_loaded(struct drm_i915_private *i915);
 
-- 
2.30.2

