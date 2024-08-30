Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADD299656B7
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 07:08:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D62610E7DD;
	Fri, 30 Aug 2024 05:08:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SQbALkSZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5DEA10E7DF;
 Fri, 30 Aug 2024 05:08:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724994520; x=1756530520;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=51hKrBW6pqohnQA/v1s6AfBurcH7KhpGQX9rBkExYxE=;
 b=SQbALkSZyhXYVTj7ED8w/GT7m08xGLPYX0Sm8oQZRp4htr44j3YI3myD
 ZPIZRM9BkSf0nIPbK0B3UuXYI6H/mgZg1gYnMaF2s4B/ExNtR5Stky552
 jEhccmR5QG9To6YxdqN/mUVjEeWHAIqaTlgtULaNL72BdwqXlk1s2X5in
 876eaQfMpfO0II1GYA11jmnPoIa+u/1uynw7WC31VnniokKCOL43Ha77a
 6qilMIOw7+TAxB1AUAKqrYmQqXUVRnOQWxHtXpgu/dBwcIZAlMcO6hewT
 DxjTLHjsqgUSFyjR4LcRvZF/2/+0sFHp/WnrvNTDbe0HwSyiwWyckFYUg A==;
X-CSE-ConnectionGUID: Q30Da5hDQ3CdSCbwX49ULQ==
X-CSE-MsgGUID: d20uSgCMTPK6bPU6Or5C7Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="23421687"
X-IronPort-AV: E=Sophos;i="6.10,187,1719903600"; d="scan'208";a="23421687"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 22:08:40 -0700
X-CSE-ConnectionGUID: 8njWcwtpSdimjrO0V10d7w==
X-CSE-MsgGUID: aPVCu8KfQ0S0U6phKgLr8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,187,1719903600"; d="scan'208";a="94610267"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 22:08:38 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 11/19] drm/i915/display: Move dss stuff in intel_dss files
Date: Fri, 30 Aug 2024 10:39:41 +0530
Message-ID: <20240830050950.2528450-12-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240830050950.2528450-1-ankit.k.nautiyal@intel.com>
References: <20240830050950.2528450-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
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

Move helper to retrieve the compressed and uncompressed joiner pipes from
dss ctl to intel_dss files.

v2: Derive intel_display from crtc. (Jani)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 34 +++-----------
 drivers/gpu/drm/i915/display/intel_dss.c     | 48 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dss.h     |  7 +++
 3 files changed, 61 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 9bcbb9c923a9..7b407ebccd54 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3545,35 +3545,13 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
 
 	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc,
 					 joiner_pipes(dev_priv)) {
-		enum intel_display_power_domain power_domain;
-		enum pipe pipe = crtc->pipe;
-		intel_wakeref_t wakeref;
-
-		power_domain = intel_dsc_power_domain(crtc, (enum transcoder) pipe);
-		with_intel_display_power_if_enabled(dev_priv, power_domain, wakeref) {
-			u32 tmp = intel_de_read(dev_priv, ICL_PIPE_DSS_CTL1(pipe));
+		intel_dss_get_compressed_joiner_pipes(crtc,
+						      primary_pipes,
+						      secondary_pipes);
 
-			if (!(tmp & BIG_JOINER_ENABLE))
-				continue;
-
-			if (tmp & PRIMARY_BIG_JOINER_ENABLE)
-				*primary_pipes |= BIT(pipe);
-			else
-				*secondary_pipes |= BIT(pipe);
-		}
-
-		if (DISPLAY_VER(dev_priv) < 13)
-			continue;
-
-		power_domain = POWER_DOMAIN_PIPE(pipe);
-		with_intel_display_power_if_enabled(dev_priv, power_domain, wakeref) {
-			u32 tmp = intel_de_read(dev_priv, ICL_PIPE_DSS_CTL1(pipe));
-
-			if (tmp & UNCOMPRESSED_JOINER_PRIMARY)
-				*primary_pipes |= BIT(pipe);
-			if (tmp & UNCOMPRESSED_JOINER_SECONDARY)
-				*secondary_pipes |= BIT(pipe);
-		}
+		intel_dss_get_uncompressed_joiner_pipes(crtc,
+							primary_pipes,
+							secondary_pipes);
 	}
 
 	/* Joiner pipes should always be consecutive primary and secondary */
diff --git a/drivers/gpu/drm/i915/display/intel_dss.c b/drivers/gpu/drm/i915/display/intel_dss.c
index fe55f4b1a9bf..01303feadcef 100644
--- a/drivers/gpu/drm/i915/display/intel_dss.c
+++ b/drivers/gpu/drm/i915/display/intel_dss.c
@@ -217,3 +217,51 @@ void intel_dss_dsc_get_config(struct intel_crtc_state *crtc_state)
 	crtc_state->dsc.dsc_split = (dss_ctl2 & RIGHT_BRANCH_VDSC_ENABLE) &&
 				    (dss_ctl1 & JOINER_ENABLE);
 }
+
+void intel_dss_get_compressed_joiner_pipes(struct intel_crtc *crtc,
+					   u8 *primary_pipes,
+					   u8 *secondary_pipes)
+{
+	struct intel_display *display = to_intel_display(crtc);
+	struct drm_i915_private *i915 = to_i915(display->drm);
+	enum intel_display_power_domain power_domain;
+	enum pipe pipe = crtc->pipe;
+	intel_wakeref_t wakeref;
+
+	power_domain = intel_dsc_power_domain(crtc, (enum transcoder) pipe);
+	with_intel_display_power_if_enabled(i915, power_domain, wakeref) {
+		u32 tmp = intel_de_read(display, ICL_PIPE_DSS_CTL1(pipe));
+
+		if (!(tmp & BIG_JOINER_ENABLE))
+			continue;
+
+		if (tmp & PRIMARY_BIG_JOINER_ENABLE)
+			*primary_pipes |= BIT(pipe);
+		else
+			*secondary_pipes |= BIT(pipe);
+	}
+}
+
+void intel_dss_get_uncompressed_joiner_pipes(struct intel_crtc *crtc,
+					     u8 *primary_pipes,
+					     u8 *secondary_pipes)
+{
+	struct intel_display *display = to_intel_display(crtc);
+	struct drm_i915_private *i915 = to_i915(display->drm);
+	enum intel_display_power_domain power_domain;
+	enum pipe pipe = crtc->pipe;
+	intel_wakeref_t wakeref;
+
+	if (DISPLAY_VER(display) < 13)
+		return;
+
+	power_domain = POWER_DOMAIN_PIPE(pipe);
+	with_intel_display_power_if_enabled(i915, power_domain, wakeref) {
+		u32 tmp = intel_de_read(display, ICL_PIPE_DSS_CTL1(pipe));
+
+		if (tmp & UNCOMPRESSED_JOINER_PRIMARY)
+			*primary_pipes |= BIT(pipe);
+		if (tmp & UNCOMPRESSED_JOINER_SECONDARY)
+			*secondary_pipes |= BIT(pipe);
+	}
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dss.h b/drivers/gpu/drm/i915/display/intel_dss.h
index 2d06bbe52687..9a63e18cce2e 100644
--- a/drivers/gpu/drm/i915/display/intel_dss.h
+++ b/drivers/gpu/drm/i915/display/intel_dss.h
@@ -11,6 +11,7 @@
 struct intel_crtc_state;
 struct intel_display;
 struct intel_encoder;
+struct intel_crtc;
 
 u8 intel_dss_mso_pipe_mask(struct intel_display *display);
 void intel_dss_mso_get_config(struct intel_encoder *encoder,
@@ -24,5 +25,11 @@ void intel_dss_enable_uncompressed_joiner(const struct intel_crtc_state *crtc_st
 void intel_dss_enable_compressed_joiner(const struct intel_crtc_state *crtc_state,
 					int vdsc_instances_per_pipe);
 void intel_dss_dsc_get_config(struct intel_crtc_state *crtc_state);
+void intel_dss_get_compressed_joiner_pipes(struct intel_crtc *crtc,
+					   u8 *primary_pipes,
+					   u8 *secondary_pipes);
+void intel_dss_get_uncompressed_joiner_pipes(struct intel_crtc *crtc,
+					     u8 *primary_pipes,
+					     u8 *secondary_pipes);
 
 #endif /* __INTEL_DSS_H__ */
-- 
2.45.2

