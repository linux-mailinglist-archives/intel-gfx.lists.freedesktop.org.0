Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 146C64DCDA9
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 19:36:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 515DD10E72B;
	Thu, 17 Mar 2022 18:36:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A3CE10E72B
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 18:36:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647542200; x=1679078200;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LDi1voQF5qOZRO9lyBpgNXlWHVccO2xoCsOYgs3USww=;
 b=Y/FSSUwsj1PnhS0WbSGp+KJC/ckc5y4UJZXysN7B5RllNb5XwzrXj1cP
 +TSVAiQMy5fTYadd8rjnS2nRWpLkhpuTvsA+J/X4305ZwS381+kSifepD
 rUsXVRKEeNm2XcntXDo9a7TbbX2SjcP0EszNSs8WPNdl7fDC6Gq071NdE
 F1kcFphskFqKFmVn7igWdym/KeEG4ct8B43Ey/yv0B9OAWscAR6/ANdt6
 fg7EIMbnI6rfLh2yjTUOic1Qah3BiC+vZ5sqUtgOXjDHmhmZox0wfMuXN
 ectmBGbtLJizu+d4SuvWt0+NhA/w6Yo/BRkbR2zPj0tOuXYtx6itcT6mk Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="257139640"
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="257139640"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 11:36:39 -0700
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="516878603"
Received: from unknown (HELO localhost) ([10.252.58.37])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 11:36:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Mar 2022 20:36:15 +0200
Message-Id: <7fe2a6ea6797086bf854fb9dd88bbc6696cafadf.1647542120.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1647542120.git.jani.nikula@intel.com>
References: <cover.1647542120.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/8] drm/i915/dmc: move dmc debugfs to
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Continue localizing DMC register and data access to intel_dmc.c.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
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

