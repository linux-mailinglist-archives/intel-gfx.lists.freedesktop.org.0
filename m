Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C91A99656B1
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 07:08:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F34610E7D6;
	Fri, 30 Aug 2024 05:08:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OnaYyAy5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E230F10E7D6;
 Fri, 30 Aug 2024 05:08:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724994516; x=1756530516;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RIlmEABhaKDaDimwrYUT8yCg7k7yET8y0Xa15rMlHq8=;
 b=OnaYyAy5srwtfzReTJeWs4Tf3Te/EJrE/4bRFVf7nSpj73epFNu8DBEH
 cEvHok0yUe/RTIDaGzLlLSWiWyAWf8quJxU7k8NEUVJQlVnyf+RZA1Jte
 ZrLQiYEEh8s8A9uq0ZE4VRxphLmasCWcjVKw9SXR5qJVA8iDKGwkbdL2z
 isyDAVBnXHUJ9TWL4bk0vOYjm+zg1N490CpnS+o6AFZp2gpchg+2aRBIF
 5PI8GW/X80rqm9Jpa5ASOn9kuoP4tRSnzhhYaXf69txPGqLwffiIuqANb
 LuyE+uhscKdRw35f/Upg3VNujd/Llu3bGbidvgIGjINHum5Y8cFPrgEr5 A==;
X-CSE-ConnectionGUID: yBhd2GOATnOlWA1UFElWUA==
X-CSE-MsgGUID: wlwMB/b4RGaHtnAdQtqfMA==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="23421685"
X-IronPort-AV: E=Sophos;i="6.10,187,1719903600"; d="scan'208";a="23421685"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 22:08:36 -0700
X-CSE-ConnectionGUID: /f3SeIAPTISp9v+Jok9lkQ==
X-CSE-MsgGUID: H6/oAhK9TpOQrgBQSI1pGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,187,1719903600"; d="scan'208";a="94610260"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 22:08:34 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 09/19] drm/i915/vdsc: Move all dss stuff in dss files
Date: Fri, 30 Aug 2024 10:39:39 +0530
Message-ID: <20240830050950.2528450-10-ankit.k.nautiyal@intel.com>
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

Move helpers to configure dss for compressed and uncompressed joiner to
intel_dss files. While at it, replace struct drm_i915_private to struct
intel_display wherever possible.

v2:
-Move modification to use struct intel_display to another patch. (Jani)
-Tweak the name for helper to get_config helper. (Jani)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  3 +-
 drivers/gpu/drm/i915/display/intel_dss.c     | 80 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dss.h     |  5 ++
 drivers/gpu/drm/i915/display/intel_vdsc.c    | 67 ++--------------
 drivers/gpu/drm/i915/display/intel_vdsc.h    |  2 +-
 5 files changed, 94 insertions(+), 63 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 3cb960ca6eda..9bcbb9c923a9 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -87,6 +87,7 @@
 #include "intel_drrs.h"
 #include "intel_dsb.h"
 #include "intel_dsi.h"
+#include "intel_dss.h"
 #include "intel_dss_regs.h"
 #include "intel_dvo.h"
 #include "intel_fb.h"
@@ -1711,7 +1712,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 		intel_dsc_enable(pipe_crtc_state);
 
 		if (DISPLAY_VER(dev_priv) >= 13)
-			intel_uncompressed_joiner_enable(pipe_crtc_state);
+			intel_dss_enable_uncompressed_joiner(pipe_crtc_state);
 
 		intel_set_pipe_src_size(pipe_crtc_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dss.c b/drivers/gpu/drm/i915/display/intel_dss.c
index 969e32143983..b37e9112ab77 100644
--- a/drivers/gpu/drm/i915/display/intel_dss.c
+++ b/drivers/gpu/drm/i915/display/intel_dss.c
@@ -6,10 +6,12 @@
 #include "i915_drv.h"
 #include "i915_reg_defs.h"
 #include "intel_de.h"
+#include "intel_display_limits.h"
 #include "intel_display_types.h"
 #include "intel_dsi.h"
 #include "intel_dss.h"
 #include "intel_dss_regs.h"
+#include "intel_vdsc.h"
 
 /*
  * Splitter enable for eDP MSO is limited to certain pipes, on certain
@@ -137,3 +139,81 @@ void intel_dss_dsi_dual_link_mode_configure(struct intel_encoder *encoder,
 
 	intel_de_write(display, dss_ctl1_reg, dss_ctl1);
 }
+
+static i915_reg_t dss_ctl1_reg(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
+{
+	return intel_dsc_is_dsc_pipe(crtc, cpu_transcoder) ?
+		ICL_PIPE_DSS_CTL1(crtc->pipe) : DSS_CTL1;
+}
+
+static i915_reg_t dss_ctl2_reg(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
+{
+	return intel_dsc_is_dsc_pipe(crtc, cpu_transcoder) ?
+		ICL_PIPE_DSS_CTL2(crtc->pipe) : DSS_CTL2;
+}
+
+void intel_dss_reset(const struct intel_crtc_state *old_crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+
+	intel_de_write(dev_priv, dss_ctl1_reg(crtc, old_crtc_state->cpu_transcoder), 0);
+	intel_de_write(dev_priv, dss_ctl2_reg(crtc, old_crtc_state->cpu_transcoder), 0);
+}
+
+void intel_dss_enable_uncompressed_joiner(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	u32 dss_ctl1_val = 0;
+
+	if (crtc_state->joiner_pipes && !crtc_state->dsc.compression_enable) {
+		if (intel_crtc_is_joiner_secondary(crtc_state))
+			dss_ctl1_val |= UNCOMPRESSED_JOINER_SECONDARY;
+		else
+			dss_ctl1_val |= UNCOMPRESSED_JOINER_PRIMARY;
+
+		intel_de_write(dev_priv,
+			       dss_ctl1_reg(crtc, crtc_state->cpu_transcoder),
+			       dss_ctl1_val);
+	}
+}
+
+void intel_dss_enable_compressed_joiner(const struct intel_crtc_state *crtc_state,
+					int vdsc_instances_per_pipe)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	u32 dss_ctl1_val = 0;
+	u32 dss_ctl2_val = 0;
+
+	dss_ctl2_val |= LEFT_BRANCH_VDSC_ENABLE;
+	if (vdsc_instances_per_pipe > 1) {
+		dss_ctl2_val |= RIGHT_BRANCH_VDSC_ENABLE;
+		dss_ctl1_val |= JOINER_ENABLE;
+	}
+	if (crtc_state->joiner_pipes) {
+		dss_ctl1_val |= BIG_JOINER_ENABLE;
+		if (!intel_crtc_is_joiner_secondary(crtc_state))
+			dss_ctl1_val |= PRIMARY_BIG_JOINER_ENABLE;
+	}
+	intel_de_write(dev_priv, dss_ctl1_reg(crtc, crtc_state->cpu_transcoder), dss_ctl1_val);
+	intel_de_write(dev_priv, dss_ctl2_reg(crtc, crtc_state->cpu_transcoder), dss_ctl2_val);
+}
+
+void intel_dss_dsc_get_config(struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	u32 dss_ctl1, dss_ctl2;
+
+	dss_ctl1 = intel_de_read(dev_priv, dss_ctl1_reg(crtc, crtc_state->cpu_transcoder));
+	dss_ctl2 = intel_de_read(dev_priv, dss_ctl2_reg(crtc, crtc_state->cpu_transcoder));
+
+	crtc_state->dsc.compression_enable = dss_ctl2 & LEFT_BRANCH_VDSC_ENABLE;
+	if (!crtc_state->dsc.compression_enable)
+		return;
+
+	crtc_state->dsc.dsc_split = (dss_ctl2 & RIGHT_BRANCH_VDSC_ENABLE) &&
+				    (dss_ctl1 & JOINER_ENABLE);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dss.h b/drivers/gpu/drm/i915/display/intel_dss.h
index aa8c67c15855..2d06bbe52687 100644
--- a/drivers/gpu/drm/i915/display/intel_dss.h
+++ b/drivers/gpu/drm/i915/display/intel_dss.h
@@ -19,5 +19,10 @@ void intel_dss_mso_configure(const struct intel_crtc_state *crtc_state);
 void intel_dss_dsi_dual_link_mode_configure(struct intel_encoder *encoder,
 					    const struct intel_crtc_state *pipe_config,
 					    u8 dual_link, u8 pixel_overlap);
+void intel_dss_reset(const struct intel_crtc_state *old_crtc_state);
+void intel_dss_enable_uncompressed_joiner(const struct intel_crtc_state *crtc_state);
+void intel_dss_enable_compressed_joiner(const struct intel_crtc_state *crtc_state,
+					int vdsc_instances_per_pipe);
+void intel_dss_dsc_get_config(struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_DSS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 6d60b72a9dfb..7e7c7694e56f 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -15,7 +15,7 @@
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dsi.h"
-#include "intel_dss_regs.h"
+#include "intel_dss.h"
 #include "intel_qp_tables.h"
 #include "intel_vdsc.h"
 #include "intel_vdsc_regs.h"
@@ -35,7 +35,7 @@ bool intel_dsc_source_support(const struct intel_crtc_state *crtc_state)
 	return true;
 }
 
-static bool intel_dsc_is_dsc_pipe(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
+bool intel_dsc_is_dsc_pipe(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
 {
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 
@@ -724,72 +724,23 @@ void intel_dsc_dp_pps_write(struct intel_encoder *encoder,
 				  sizeof(dp_dsc_pps_sdp));
 }
 
-static i915_reg_t dss_ctl1_reg(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
-{
-	return intel_dsc_is_dsc_pipe(crtc, cpu_transcoder) ?
-		ICL_PIPE_DSS_CTL1(crtc->pipe) : DSS_CTL1;
-}
-
-static i915_reg_t dss_ctl2_reg(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
-{
-	return intel_dsc_is_dsc_pipe(crtc, cpu_transcoder) ?
-		ICL_PIPE_DSS_CTL2(crtc->pipe) : DSS_CTL2;
-}
-
-void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state)
-{
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	u32 dss_ctl1_val = 0;
-
-	if (crtc_state->joiner_pipes && !crtc_state->dsc.compression_enable) {
-		if (intel_crtc_is_joiner_secondary(crtc_state))
-			dss_ctl1_val |= UNCOMPRESSED_JOINER_SECONDARY;
-		else
-			dss_ctl1_val |= UNCOMPRESSED_JOINER_PRIMARY;
-
-		intel_de_write(dev_priv, dss_ctl1_reg(crtc, crtc_state->cpu_transcoder), dss_ctl1_val);
-	}
-}
-
 void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	u32 dss_ctl1_val = 0;
-	u32 dss_ctl2_val = 0;
 	int vdsc_instances_per_pipe = intel_dsc_get_vdsc_per_pipe(crtc_state);
 
 	if (!crtc_state->dsc.compression_enable)
 		return;
 
 	intel_dsc_pps_configure(crtc_state);
-
-	dss_ctl2_val |= LEFT_BRANCH_VDSC_ENABLE;
-	if (vdsc_instances_per_pipe > 1) {
-		dss_ctl2_val |= RIGHT_BRANCH_VDSC_ENABLE;
-		dss_ctl1_val |= JOINER_ENABLE;
-	}
-	if (crtc_state->joiner_pipes) {
-		dss_ctl1_val |= BIG_JOINER_ENABLE;
-		if (!intel_crtc_is_joiner_secondary(crtc_state))
-			dss_ctl1_val |= PRIMARY_BIG_JOINER_ENABLE;
-	}
-	intel_de_write(dev_priv, dss_ctl1_reg(crtc, crtc_state->cpu_transcoder), dss_ctl1_val);
-	intel_de_write(dev_priv, dss_ctl2_reg(crtc, crtc_state->cpu_transcoder), dss_ctl2_val);
+	intel_dss_enable_compressed_joiner(crtc_state, vdsc_instances_per_pipe);
 }
 
 void intel_dsc_disable(const struct intel_crtc_state *old_crtc_state)
 {
-	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-
 	/* Disable only if either of them is enabled */
 	if (old_crtc_state->dsc.compression_enable ||
-	    old_crtc_state->joiner_pipes) {
-		intel_de_write(dev_priv, dss_ctl1_reg(crtc, old_crtc_state->cpu_transcoder), 0);
-		intel_de_write(dev_priv, dss_ctl2_reg(crtc, old_crtc_state->cpu_transcoder), 0);
-	}
+	    old_crtc_state->joiner_pipes)
+		intel_dss_reset(old_crtc_state);
 }
 
 static u32 intel_dsc_pps_read(struct intel_crtc_state *crtc_state, int pps,
@@ -946,7 +897,6 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	enum intel_display_power_domain power_domain;
 	intel_wakeref_t wakeref;
-	u32 dss_ctl1, dss_ctl2;
 
 	if (!intel_dsc_source_support(crtc_state))
 		return;
@@ -957,16 +907,11 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
 	if (!wakeref)
 		return;
 
-	dss_ctl1 = intel_de_read(dev_priv, dss_ctl1_reg(crtc, cpu_transcoder));
-	dss_ctl2 = intel_de_read(dev_priv, dss_ctl2_reg(crtc, cpu_transcoder));
+	intel_dss_dsc_get_config(crtc_state);
 
-	crtc_state->dsc.compression_enable = dss_ctl2 & LEFT_BRANCH_VDSC_ENABLE;
 	if (!crtc_state->dsc.compression_enable)
 		goto out;
 
-	crtc_state->dsc.dsc_split = (dss_ctl2 & RIGHT_BRANCH_VDSC_ENABLE) &&
-		(dss_ctl1 & JOINER_ENABLE);
-
 	intel_dsc_get_pps_config(crtc_state);
 out:
 	intel_display_power_put(dev_priv, power_domain, wakeref);
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h b/drivers/gpu/drm/i915/display/intel_vdsc.h
index 290b2e9b3482..345956d0c77e 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
@@ -16,7 +16,6 @@ struct intel_crtc_state;
 struct intel_encoder;
 
 bool intel_dsc_source_support(const struct intel_crtc_state *crtc_state);
-void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state);
 void intel_dsc_enable(const struct intel_crtc_state *crtc_state);
 void intel_dsc_disable(const struct intel_crtc_state *crtc_state);
 int intel_dsc_compute_params(struct intel_crtc_state *pipe_config);
@@ -31,5 +30,6 @@ void intel_dsc_dp_pps_write(struct intel_encoder *encoder,
 			    const struct intel_crtc_state *crtc_state);
 void intel_vdsc_state_dump(struct drm_printer *p, int indent,
 			   const struct intel_crtc_state *crtc_state);
+bool intel_dsc_is_dsc_pipe(struct intel_crtc *crtc, enum transcoder cpu_transcoder);
 
 #endif /* __INTEL_VDSC_H__ */
-- 
2.45.2

