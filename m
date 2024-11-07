Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A5EE9C1114
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 22:38:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAAF610E8F9;
	Thu,  7 Nov 2024 21:38:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NgF6sLen";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 394B410E8F7;
 Thu,  7 Nov 2024 21:38:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731015484; x=1762551484;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=O7mX+gNGMmjKn8oLEjuqcsbOa15+kAovHjOUVjmEQ3Y=;
 b=NgF6sLenzippxinPt6/QsfUF6GeVizg+M7KG0VkMSoIWoJJakusAUFvX
 Mbuf9cM7foJUrAkUhIt+ZQfOtZPDUQCxg1KNcjHEnYfLz3JDHOs3Vie3k
 H8DrMWly5b8GkPBmDfL6FQ+/n19npz7zntMOdD95pk9xYCQBBsDZorbP8
 wzdpf5X+o9QZ5nj4QPe0FT4rt/BhCpjSOD8CrHYCBSILLIdSTzvtSgTcw
 dTXU+Oc+XFGCI8syLh6xpKgwtxpcWjqQl3dzG2swbWnP2Ut3KyTbHrghK
 /RQDzmY8tw/UtC4wa5KhWOsFK+xRH7AgbN30uYwmaT8L5bShuR3YpXXT9 Q==;
X-CSE-ConnectionGUID: RqW0xTPvSbysrtY5cn/9jA==
X-CSE-MsgGUID: RO72M21NStm0RKIJZ5YNzA==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="56283039"
X-IronPort-AV: E=Sophos;i="6.12,136,1728975600"; d="scan'208";a="56283039"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 13:38:04 -0800
X-CSE-ConnectionGUID: ilVTo0WsRkSjtvv73nScDA==
X-CSE-MsgGUID: y6RfRjy5QOugTA2VWZyEzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,136,1728975600"; d="scan'208";a="85574915"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.233])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 13:38:02 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: [CI v2 v2 13/15] drm/i915/display: convert display device
 identification to struct intel_display
Date: Thu,  7 Nov 2024 23:36:47 +0200
Message-Id: <c419dc6c78cdfa6ae097c27febaae088f18ef987.1731015334.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1731015333.git.jani.nikula@intel.com>
References: <cover.1731015333.git.jani.nikula@intel.com>
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

Convert intel_display_device.[ch] to struct intel_display, including
callers, but excluding intel_display_device_probe() which will be
handled in follow-up.

v2: fix display->drm = display->drm goof-up

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c      |   2 +-
 .../drm/i915/display/intel_display_device.c   | 156 +++++++++---------
 .../drm/i915/display/intel_display_device.h   |   7 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   3 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   3 +-
 drivers/gpu/drm/i915/display/intel_dvo.c      |   3 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   2 +-
 drivers/gpu/drm/i915/display/intel_hotplug.c  |   4 +-
 drivers/gpu/drm/i915/display/intel_panel.c    |   3 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c     |   3 +-
 drivers/gpu/drm/i915/display/intel_tv.c       |   2 +-
 drivers/gpu/drm/i915/i915_driver.c            |   6 +-
 drivers/gpu/drm/xe/display/xe_display.c       |   9 +-
 13 files changed, 108 insertions(+), 95 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 74c1983fe07e..06341baaef42 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -865,7 +865,7 @@ intel_crt_detect(struct drm_connector *connector,
 		    connector->base.id, connector->name,
 		    force);
 
-	if (!intel_display_device_enabled(dev_priv))
+	if (!intel_display_device_enabled(display))
 		return connector_status_disconnected;
 
 	if (!intel_display_driver_check_access(dev_priv))
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 1e561df02751..45a80b358aa0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1432,9 +1432,9 @@ static const struct {
 };
 
 static const struct intel_display_device_info *
-probe_gmdid_display(struct drm_i915_private *i915, struct intel_display_ip_ver *ip_ver)
+probe_gmdid_display(struct intel_display *display, struct intel_display_ip_ver *ip_ver)
 {
-	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
+	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
 	struct intel_display_ip_ver gmd_id;
 	void __iomem *addr;
 	u32 val;
@@ -1442,7 +1442,8 @@ probe_gmdid_display(struct drm_i915_private *i915, struct intel_display_ip_ver *
 
 	addr = pci_iomap_range(pdev, 0, i915_mmio_reg_offset(GMD_ID_DISPLAY), sizeof(u32));
 	if (!addr) {
-		drm_err(&i915->drm, "Cannot map MMIO BAR to read display GMD_ID\n");
+		drm_err(display->drm,
+			"Cannot map MMIO BAR to read display GMD_ID\n");
 		return NULL;
 	}
 
@@ -1450,7 +1451,7 @@ probe_gmdid_display(struct drm_i915_private *i915, struct intel_display_ip_ver *
 	pci_iounmap(pdev, addr);
 
 	if (val == 0) {
-		drm_dbg_kms(&i915->drm, "Device doesn't have display\n");
+		drm_dbg_kms(display->drm, "Device doesn't have display\n");
 		return NULL;
 	}
 
@@ -1466,7 +1467,8 @@ probe_gmdid_display(struct drm_i915_private *i915, struct intel_display_ip_ver *
 		}
 	}
 
-	drm_err(&i915->drm, "Unrecognized display IP version %d.%02d; disabling display.\n",
+	drm_err(display->drm,
+		"Unrecognized display IP version %d.%02d; disabling display.\n",
 		gmd_id.ver, gmd_id.rel);
 	return NULL;
 }
@@ -1578,55 +1580,56 @@ void intel_display_device_probe(struct drm_i915_private *i915)
 	enum intel_step step;
 
 	/* Add drm device backpointer as early as possible. */
-	i915->display.drm = &i915->drm;
+	display->drm = pci_get_drvdata(pdev);
 
-	intel_display_params_copy(&i915->display.params);
+	intel_display_params_copy(&display->params);
 
 	if (has_no_display(pdev)) {
-		drm_dbg_kms(&i915->drm, "Device doesn't have display\n");
+		drm_dbg_kms(display->drm, "Device doesn't have display\n");
 		goto no_display;
 	}
 
 	desc = find_platform_desc(pdev);
 	if (!desc) {
-		drm_dbg_kms(&i915->drm, "Unknown device ID %04x; disabling display.\n",
+		drm_dbg_kms(display->drm,
+			    "Unknown device ID %04x; disabling display.\n",
 			    pdev->device);
 		goto no_display;
 	}
 
 	info = desc->info;
 	if (!info)
-		info = probe_gmdid_display(i915, &ip_ver);
+		info = probe_gmdid_display(display, &ip_ver);
 	if (!info)
 		goto no_display;
 
-	DISPLAY_INFO(i915) = info;
+	DISPLAY_INFO(display) = info;
 
-	memcpy(DISPLAY_RUNTIME_INFO(i915),
-	       &DISPLAY_INFO(i915)->__runtime_defaults,
-	       sizeof(*DISPLAY_RUNTIME_INFO(i915)));
+	memcpy(DISPLAY_RUNTIME_INFO(display),
+	       &DISPLAY_INFO(display)->__runtime_defaults,
+	       sizeof(*DISPLAY_RUNTIME_INFO(display)));
 
-	drm_WARN_ON(&i915->drm, !desc->name ||
+	drm_WARN_ON(display->drm, !desc->name ||
 		    !display_platforms_weight(&desc->platforms));
 
 	display->platform = desc->platforms;
 
 	subdesc = find_subplatform_desc(pdev, desc);
 	if (subdesc) {
-		drm_WARN_ON(&i915->drm, !subdesc->name ||
+		drm_WARN_ON(display->drm, !subdesc->name ||
 			    !display_platforms_weight(&subdesc->platforms));
 
 		display_platforms_or(&display->platform, &subdesc->platforms);
 
 		/* Ensure platform and subplatform are distinct */
-		drm_WARN_ON(&i915->drm,
+		drm_WARN_ON(display->drm,
 			    display_platforms_weight(&display->platform) !=
 			    display_platforms_weight(&desc->platforms) +
 			    display_platforms_weight(&subdesc->platforms));
 	}
 
 	if (ip_ver.ver || ip_ver.rel || ip_ver.step) {
-		DISPLAY_RUNTIME_INFO(i915)->ip = ip_ver;
+		DISPLAY_RUNTIME_INFO(display)->ip = ip_ver;
 		step = STEP_A0 + ip_ver.step;
 		if (step > STEP_FUTURE) {
 			drm_dbg_kms(display->drm, "Using future display stepping\n");
@@ -1637,30 +1640,30 @@ void intel_display_device_probe(struct drm_i915_private *i915)
 					  subdesc ? &subdesc->step_info : NULL);
 	}
 
-	DISPLAY_RUNTIME_INFO(i915)->step = step;
+	DISPLAY_RUNTIME_INFO(display)->step = step;
 
-	drm_info(&i915->drm, "Found %s%s%s (device ID %04x) %s display version %u.%02u stepping %s\n",
+	drm_info(display->drm, "Found %s%s%s (device ID %04x) %s display version %u.%02u stepping %s\n",
 		 desc->name, subdesc ? "/" : "", subdesc ? subdesc->name : "",
 		 pdev->device, display->platform.dgfx ? "discrete" : "integrated",
-		 DISPLAY_RUNTIME_INFO(i915)->ip.ver,
-		 DISPLAY_RUNTIME_INFO(i915)->ip.rel,
+		 DISPLAY_RUNTIME_INFO(display)->ip.ver,
+		 DISPLAY_RUNTIME_INFO(display)->ip.rel,
 		 step != STEP_NONE ? intel_step_name(step) : "N/A");
 
 	return;
 
 no_display:
-	DISPLAY_INFO(i915) = &no_display;
+	DISPLAY_INFO(display) = &no_display;
 }
 
-void intel_display_device_remove(struct drm_i915_private *i915)
+void intel_display_device_remove(struct intel_display *display)
 {
-	intel_display_params_free(&i915->display.params);
+	intel_display_params_free(&display->params);
 }
 
-static void __intel_display_device_info_runtime_init(struct drm_i915_private *i915)
+static void __intel_display_device_info_runtime_init(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
-	struct intel_display_runtime_info *display_runtime = DISPLAY_RUNTIME_INFO(i915);
+	struct drm_i915_private *i915 = to_i915(display->drm);
+	struct intel_display_runtime_info *display_runtime = DISPLAY_RUNTIME_INFO(display);
 	enum pipe pipe;
 
 	BUILD_BUG_ON(BITS_PER_TYPE(display_runtime->pipe_mask) < I915_MAX_PIPES);
@@ -1668,35 +1671,35 @@ static void __intel_display_device_info_runtime_init(struct drm_i915_private *i9
 	BUILD_BUG_ON(BITS_PER_TYPE(display_runtime->port_mask) < I915_MAX_PORTS);
 
 	/* This covers both ULT and ULX */
-	if (IS_HASWELL_ULT(i915) || IS_BROADWELL_ULT(i915))
+	if (display->platform.haswell_ult || display->platform.broadwell_ult)
 		display_runtime->port_mask &= ~BIT(PORT_D);
 
-	if (IS_ICL_WITH_PORT_F(i915))
+	if (display->platform.icelake_port_f)
 		display_runtime->port_mask |= BIT(PORT_F);
 
 	/* Wa_14011765242: adl-s A0,A1 */
-	if (IS_ALDERLAKE_S(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_A2))
-		for_each_pipe(i915, pipe)
+	if (display->platform.alderlake_s && IS_DISPLAY_STEP(display, STEP_A0, STEP_A2))
+		for_each_pipe(display, pipe)
 			display_runtime->num_scalers[pipe] = 0;
-	else if (DISPLAY_VER(i915) >= 11) {
-		for_each_pipe(i915, pipe)
+	else if (DISPLAY_VER(display) >= 11) {
+		for_each_pipe(display, pipe)
 			display_runtime->num_scalers[pipe] = 2;
-	} else if (DISPLAY_VER(i915) >= 9) {
+	} else if (DISPLAY_VER(display) >= 9) {
 		display_runtime->num_scalers[PIPE_A] = 2;
 		display_runtime->num_scalers[PIPE_B] = 2;
 		display_runtime->num_scalers[PIPE_C] = 1;
 	}
 
-	if (DISPLAY_VER(i915) >= 13 || HAS_D12_PLANE_MINIMIZATION(display))
-		for_each_pipe(i915, pipe)
+	if (DISPLAY_VER(display) >= 13 || HAS_D12_PLANE_MINIMIZATION(display))
+		for_each_pipe(display, pipe)
 			display_runtime->num_sprites[pipe] = 4;
-	else if (DISPLAY_VER(i915) >= 11)
-		for_each_pipe(i915, pipe)
+	else if (DISPLAY_VER(display) >= 11)
+		for_each_pipe(display, pipe)
 			display_runtime->num_sprites[pipe] = 6;
-	else if (DISPLAY_VER(i915) == 10)
-		for_each_pipe(i915, pipe)
+	else if (DISPLAY_VER(display) == 10)
+		for_each_pipe(display, pipe)
 			display_runtime->num_sprites[pipe] = 3;
-	else if (IS_BROXTON(i915)) {
+	else if (display->platform.broxton) {
 		/*
 		 * Skylake and Broxton currently don't expose the topmost plane as its
 		 * use is exclusive with the legacy cursor and we only want to expose
@@ -1709,23 +1712,23 @@ static void __intel_display_device_info_runtime_init(struct drm_i915_private *i9
 		display_runtime->num_sprites[PIPE_A] = 2;
 		display_runtime->num_sprites[PIPE_B] = 2;
 		display_runtime->num_sprites[PIPE_C] = 1;
-	} else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
-		for_each_pipe(i915, pipe)
+	} else if (display->platform.valleyview || display->platform.cherryview) {
+		for_each_pipe(display, pipe)
 			display_runtime->num_sprites[pipe] = 2;
-	} else if (DISPLAY_VER(i915) >= 5 || IS_G4X(i915)) {
-		for_each_pipe(i915, pipe)
+	} else if (DISPLAY_VER(display) >= 5 || display->platform.g4x) {
+		for_each_pipe(display, pipe)
 			display_runtime->num_sprites[pipe] = 1;
 	}
 
-	if ((IS_DGFX(i915) || DISPLAY_VER(i915) >= 14) &&
-	    !(intel_de_read(i915, GU_CNTL_PROTECTED) & DEPRESENT)) {
-		drm_info(&i915->drm, "Display not present, disabling\n");
+	if ((display->platform.dgfx || DISPLAY_VER(display) >= 14) &&
+	    !(intel_de_read(display, GU_CNTL_PROTECTED) & DEPRESENT)) {
+		drm_info(display->drm, "Display not present, disabling\n");
 		goto display_fused_off;
 	}
 
-	if (IS_DISPLAY_VER(i915, 7, 8) && HAS_PCH_SPLIT(i915)) {
-		u32 fuse_strap = intel_de_read(i915, FUSE_STRAP);
-		u32 sfuse_strap = intel_de_read(i915, SFUSE_STRAP);
+	if (IS_DISPLAY_VER(display, 7, 8) && HAS_PCH_SPLIT(i915)) {
+		u32 fuse_strap = intel_de_read(display, FUSE_STRAP);
+		u32 sfuse_strap = intel_de_read(display, SFUSE_STRAP);
 
 		/*
 		 * SFUSE_STRAP is supposed to have a bit signalling the display
@@ -1740,16 +1743,16 @@ static void __intel_display_device_info_runtime_init(struct drm_i915_private *i9
 		    sfuse_strap & SFUSE_STRAP_DISPLAY_DISABLED ||
 		    (HAS_PCH_CPT(i915) &&
 		     !(sfuse_strap & SFUSE_STRAP_FUSE_LOCK))) {
-			drm_info(&i915->drm,
+			drm_info(display->drm,
 				 "Display fused off, disabling\n");
 			goto display_fused_off;
 		} else if (fuse_strap & IVB_PIPE_C_DISABLE) {
-			drm_info(&i915->drm, "PipeC fused off\n");
+			drm_info(display->drm, "PipeC fused off\n");
 			display_runtime->pipe_mask &= ~BIT(PIPE_C);
 			display_runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_C);
 		}
-	} else if (DISPLAY_VER(i915) >= 9) {
-		u32 dfsm = intel_de_read(i915, SKL_DFSM);
+	} else if (DISPLAY_VER(display) >= 9) {
+		u32 dfsm = intel_de_read(display, SKL_DFSM);
 
 		if (dfsm & SKL_DFSM_PIPE_A_DISABLE) {
 			display_runtime->pipe_mask &= ~BIT(PIPE_A);
@@ -1767,7 +1770,7 @@ static void __intel_display_device_info_runtime_init(struct drm_i915_private *i9
 			display_runtime->fbc_mask &= ~BIT(INTEL_FBC_C);
 		}
 
-		if (DISPLAY_VER(i915) >= 12 &&
+		if (DISPLAY_VER(display) >= 12 &&
 		    (dfsm & TGL_DFSM_PIPE_D_DISABLE)) {
 			display_runtime->pipe_mask &= ~BIT(PIPE_D);
 			display_runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_D);
@@ -1780,15 +1783,15 @@ static void __intel_display_device_info_runtime_init(struct drm_i915_private *i9
 		if (dfsm & SKL_DFSM_DISPLAY_HDCP_DISABLE)
 			display_runtime->has_hdcp = 0;
 
-		if (IS_DG2(i915) || DISPLAY_VER(i915) < 13) {
+		if (display->platform.dg2 || DISPLAY_VER(display) < 13) {
 			if (dfsm & SKL_DFSM_DISPLAY_PM_DISABLE)
 				display_runtime->fbc_mask = 0;
 		}
 
-		if (DISPLAY_VER(i915) >= 11 && (dfsm & ICL_DFSM_DMC_DISABLE))
+		if (DISPLAY_VER(display) >= 11 && (dfsm & ICL_DFSM_DMC_DISABLE))
 			display_runtime->has_dmc = 0;
 
-		if (IS_DISPLAY_VER(i915, 10, 12) &&
+		if (IS_DISPLAY_VER(display, 10, 12) &&
 		    (dfsm & GLK_DFSM_DISPLAY_DSC_DISABLE))
 			display_runtime->has_dsc = 0;
 
@@ -1797,8 +1800,8 @@ static void __intel_display_device_info_runtime_init(struct drm_i915_private *i9
 			display_runtime->has_dbuf_overlap_detection = false;
 	}
 
-	if (DISPLAY_VER(i915) >= 20) {
-		u32 cap = intel_de_read(i915, XE2LPD_DE_CAP);
+	if (DISPLAY_VER(display) >= 20) {
+		u32 cap = intel_de_read(display, XE2LPD_DE_CAP);
 
 		if (REG_FIELD_GET(XE2LPD_DE_CAP_DSC_MASK, cap) ==
 		    XE2LPD_DE_CAP_DSC_REMOVED)
@@ -1806,18 +1809,19 @@ static void __intel_display_device_info_runtime_init(struct drm_i915_private *i9
 
 		if (REG_FIELD_GET(XE2LPD_DE_CAP_SCALER_MASK, cap) ==
 		    XE2LPD_DE_CAP_SCALER_SINGLE) {
-			for_each_pipe(i915, pipe)
+			for_each_pipe(display, pipe)
 				if (display_runtime->num_scalers[pipe])
 					display_runtime->num_scalers[pipe] = 1;
 		}
 	}
 
-	if (DISPLAY_VER(i915) >= 30)
+	if (DISPLAY_VER(display) >= 30)
 		display_runtime->edp_typec_support =
 			intel_de_read(display, PICA_PHY_CONFIG_CONTROL) & EDP_ON_TYPEC;
 
 	display_runtime->rawclk_freq = intel_read_rawclk(display);
-	drm_dbg_kms(&i915->drm, "rawclk rate: %d kHz\n", display_runtime->rawclk_freq);
+	drm_dbg_kms(display->drm, "rawclk rate: %d kHz\n",
+		    display_runtime->rawclk_freq);
 
 	return;
 
@@ -1825,21 +1829,21 @@ static void __intel_display_device_info_runtime_init(struct drm_i915_private *i9
 	memset(display_runtime, 0, sizeof(*display_runtime));
 }
 
-void intel_display_device_info_runtime_init(struct drm_i915_private *i915)
+void intel_display_device_info_runtime_init(struct intel_display *display)
 {
-	if (HAS_DISPLAY(i915))
-		__intel_display_device_info_runtime_init(i915);
+	if (HAS_DISPLAY(display))
+		__intel_display_device_info_runtime_init(display);
 
 	/* Display may have been disabled by runtime init */
-	if (!HAS_DISPLAY(i915)) {
-		i915->drm.driver_features &= ~(DRIVER_MODESET | DRIVER_ATOMIC);
-		i915->display.info.__device_info = &no_display;
+	if (!HAS_DISPLAY(display)) {
+		display->drm->driver_features &= ~(DRIVER_MODESET | DRIVER_ATOMIC);
+		display->info.__device_info = &no_display;
 	}
 
 	/* Disable nuclear pageflip by default on pre-g4x */
-	if (!i915->display.params.nuclear_pageflip &&
-	    DISPLAY_VER(i915) < 5 && !IS_G4X(i915))
-		i915->drm.driver_features &= ~DRIVER_ATOMIC;
+	if (!display->params.nuclear_pageflip &&
+	    DISPLAY_VER(display) < 5 && !display->platform.g4x)
+		display->drm->driver_features &= ~DRIVER_ATOMIC;
 }
 
 void intel_display_device_info_print(const struct intel_display_device_info *info,
@@ -1876,10 +1880,8 @@ void intel_display_device_info_print(const struct intel_display_device_info *inf
  * Disabling display means taking over the display hardware, putting it to
  * sleep, and preventing connectors from being connected via any means.
  */
-bool intel_display_device_enabled(struct drm_i915_private *i915)
+bool intel_display_device_enabled(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
-
 	/* Only valid when HAS_DISPLAY() is true */
 	drm_WARN_ON(display->drm, !HAS_DISPLAY(display));
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index df805a82e623..9f9b9192d045 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -14,6 +14,7 @@
 
 struct drm_i915_private;
 struct drm_printer;
+struct intel_display;
 
 /*
  * Display platforms and subplatforms. Keep platforms in display version based
@@ -287,10 +288,10 @@ struct intel_display_device_info {
 	} color;
 };
 
-bool intel_display_device_enabled(struct drm_i915_private *i915);
+bool intel_display_device_enabled(struct intel_display *display);
 void intel_display_device_probe(struct drm_i915_private *i915);
-void intel_display_device_remove(struct drm_i915_private *i915);
-void intel_display_device_info_runtime_init(struct drm_i915_private *i915);
+void intel_display_device_remove(struct intel_display *display);
+void intel_display_device_info_runtime_init(struct intel_display *display);
 
 void intel_display_device_info_print(const struct intel_display_device_info *info,
 				     const struct intel_display_runtime_info *runtime,
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a5049f449dcb..dd2a8cbc0b57 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5633,6 +5633,7 @@ intel_dp_detect(struct drm_connector *connector,
 		struct drm_modeset_acquire_ctx *ctx,
 		bool force)
 {
+	struct intel_display *display = to_intel_display(connector->dev);
 	struct drm_i915_private *dev_priv = to_i915(connector->dev);
 	struct intel_connector *intel_connector =
 		to_intel_connector(connector);
@@ -5647,7 +5648,7 @@ intel_dp_detect(struct drm_connector *connector,
 	drm_WARN_ON(&dev_priv->drm,
 		    !drm_modeset_is_locked(&dev_priv->drm.mode_config.connection_mutex));
 
-	if (!intel_display_device_enabled(dev_priv))
+	if (!intel_display_device_enabled(display))
 		return connector_status_disconnected;
 
 	if (!intel_display_driver_check_access(dev_priv))
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 13449c85162d..29f2f8952c39 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1563,11 +1563,12 @@ static int
 intel_dp_mst_detect(struct drm_connector *connector,
 		    struct drm_modeset_acquire_ctx *ctx, bool force)
 {
+	struct intel_display *display = to_intel_display(connector->dev);
 	struct drm_i915_private *i915 = to_i915(connector->dev);
 	struct intel_connector *intel_connector = to_intel_connector(connector);
 	struct intel_dp *intel_dp = intel_connector->mst_port;
 
-	if (!intel_display_device_enabled(i915))
+	if (!intel_display_device_enabled(display))
 		return connector_status_disconnected;
 
 	if (drm_connector_is_unregistered(connector))
diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index 2d5ffb37eac9..93a9af67ca47 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -318,6 +318,7 @@ static void intel_dvo_pre_enable(struct intel_atomic_state *state,
 static enum drm_connector_status
 intel_dvo_detect(struct drm_connector *_connector, bool force)
 {
+	struct intel_display *display = to_intel_display(_connector->dev);
 	struct intel_connector *connector = to_intel_connector(_connector);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_dvo *intel_dvo = intel_attached_dvo(connector);
@@ -325,7 +326,7 @@ intel_dvo_detect(struct drm_connector *_connector, bool force)
 	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s]\n",
 		    connector->base.base.id, connector->base.name);
 
-	if (!intel_display_device_enabled(i915))
+	if (!intel_display_device_enabled(display))
 		return connector_status_disconnected;
 
 	if (!intel_display_driver_check_access(i915))
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index c6ce6bb88d7c..23c270a8c4aa 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2556,7 +2556,7 @@ intel_hdmi_detect(struct drm_connector *connector, bool force)
 	drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s]\n",
 		    connector->base.id, connector->name);
 
-	if (!intel_display_device_enabled(dev_priv))
+	if (!intel_display_device_enabled(display))
 		return connector_status_disconnected;
 
 	if (!intel_display_driver_check_access(dev_priv))
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index a013b0e0ef54..3adc791d3776 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -813,8 +813,10 @@ static void i915_hpd_poll_init_work(struct work_struct *work)
  */
 void intel_hpd_poll_enable(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
+
 	if (!HAS_DISPLAY(dev_priv) ||
-	    !intel_display_device_enabled(dev_priv))
+	    !intel_display_device_enabled(display))
 		return;
 
 	WRITE_ONCE(dev_priv->display.hotplug.poll_enabled, true);
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 313bd3f35ace..fdf9ef88a775 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -383,9 +383,10 @@ void intel_panel_add_encoder_fixed_mode(struct intel_connector *connector,
 enum drm_connector_status
 intel_panel_detect(struct drm_connector *connector, bool force)
 {
+	struct intel_display *display = to_intel_display(connector->dev);
 	struct drm_i915_private *i915 = to_i915(connector->dev);
 
-	if (!intel_display_device_enabled(i915))
+	if (!intel_display_device_enabled(display))
 		return connector_status_disconnected;
 
 	if (!intel_display_driver_check_access(i915))
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 7a28104f68ad..df855bf3ecec 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2136,6 +2136,7 @@ intel_sdvo_connector_matches_edid(struct intel_sdvo_connector *sdvo,
 static enum drm_connector_status
 intel_sdvo_detect(struct drm_connector *connector, bool force)
 {
+	struct intel_display *display = to_intel_display(connector->dev);
 	struct drm_i915_private *i915 = to_i915(connector->dev);
 	struct intel_sdvo *intel_sdvo = intel_attached_sdvo(to_intel_connector(connector));
 	struct intel_sdvo_connector *intel_sdvo_connector = to_intel_sdvo_connector(connector);
@@ -2145,7 +2146,7 @@ intel_sdvo_detect(struct drm_connector *connector, bool force)
 	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s]\n",
 		    connector->base.id, connector->name);
 
-	if (!intel_display_device_enabled(i915))
+	if (!intel_display_device_enabled(display))
 		return connector_status_disconnected;
 
 	if (!intel_display_driver_check_access(i915))
diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
index bfd16054ca05..ece16fc50429 100644
--- a/drivers/gpu/drm/i915/display/intel_tv.c
+++ b/drivers/gpu/drm/i915/display/intel_tv.c
@@ -1722,7 +1722,7 @@ intel_tv_detect(struct drm_connector *connector,
 	drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s] force=%d\n",
 		    connector->base.id, connector->name, force);
 
-	if (!intel_display_device_enabled(i915))
+	if (!intel_display_device_enabled(display))
 		return connector_status_disconnected;
 
 	if (!intel_display_driver_check_access(i915))
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 269233756e58..3d775f15f9ef 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -311,6 +311,7 @@ static void i915_driver_late_release(struct drm_i915_private *dev_priv)
  */
 static int i915_driver_mmio_probe(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct intel_gt *gt;
 	int ret, i;
 
@@ -336,7 +337,7 @@ static int i915_driver_mmio_probe(struct drm_i915_private *dev_priv)
 	/* Try to make sure MCHBAR is enabled before poking at it */
 	intel_gmch_bar_setup(dev_priv);
 	intel_device_info_runtime_init(dev_priv);
-	intel_display_device_info_runtime_init(dev_priv);
+	intel_display_device_info_runtime_init(display);
 
 	for_each_gt(gt, dev_priv, i) {
 		ret = intel_gt_init_mmio(gt);
@@ -887,6 +888,7 @@ void i915_driver_remove(struct drm_i915_private *i915)
 static void i915_driver_release(struct drm_device *dev)
 {
 	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct intel_display *display = &dev_priv->display;
 	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
 	intel_wakeref_t wakeref;
 
@@ -910,7 +912,7 @@ static void i915_driver_release(struct drm_device *dev)
 
 	i915_driver_late_release(dev_priv);
 
-	intel_display_device_remove(dev_priv);
+	intel_display_device_remove(display);
 }
 
 static int i915_driver_open(struct drm_device *dev, struct drm_file *file)
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index b5502f335f53..9b8acf2074e0 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -157,7 +157,7 @@ int xe_display_init_noirq(struct xe_device *xe)
 
 	intel_bw_init_hw(xe);
 
-	intel_display_device_info_runtime_init(xe);
+	intel_display_device_info_runtime_init(display);
 
 	err = intel_display_driver_probe_noirq(xe);
 	if (err) {
@@ -495,13 +495,14 @@ void xe_display_pm_runtime_resume(struct xe_device *xe)
 
 static void display_device_remove(struct drm_device *dev, void *arg)
 {
-	struct xe_device *xe = arg;
+	struct intel_display *display = arg;
 
-	intel_display_device_remove(xe);
+	intel_display_device_remove(display);
 }
 
 int xe_display_probe(struct xe_device *xe)
 {
+	struct intel_display *display = &xe->display;
 	int err;
 
 	if (!xe->info.probe_display)
@@ -509,7 +510,7 @@ int xe_display_probe(struct xe_device *xe)
 
 	intel_display_device_probe(xe);
 
-	err = drmm_add_action_or_reset(&xe->drm, display_device_remove, xe);
+	err = drmm_add_action_or_reset(&xe->drm, display_device_remove, display);
 	if (err)
 		return err;
 
-- 
2.39.5

