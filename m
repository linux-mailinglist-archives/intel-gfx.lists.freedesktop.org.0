Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FA88964634
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2024 15:17:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43A0410E699;
	Thu, 29 Aug 2024 13:17:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iic/9tDs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 660DC10E693;
 Thu, 29 Aug 2024 13:17:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724937438; x=1756473438;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Gc8KVFAQv+KwDrX26GeMNrzPHUB4d3JJeobacXyJdQA=;
 b=iic/9tDs72RFywt2qr5Kgj+VdFMKQgCu0FPyMmWuPI2NrAslL/ynUtwa
 F8JqsmqT9ThXJYiS0ZoBbyU9IwrzykSHCP+RO7GS+h13Nm2KLyvJIziWX
 twsjU+RsZv9oOIKZ75muUkPF17r6o1NtN5mEJ/8xWBfbwz3RBLvD9oMdn
 4tYgx2Gxfj7XFPOatYDr7qovmo/TZ8WjrvlCwOw2/gz9KVyJYCv64OxqH
 4HMCOhmw0dxnDRFSYGUiKuwNLTCA+GYT0sNG3bWTNmHb4ZDa08SGIf1dk
 5xMmfyDoEOSml75mJpgQNf0xHfdbD2JeoMP5m907y4k0a2kic/U+yAca/ g==;
X-CSE-ConnectionGUID: SfW3V7gyTleCZ2RLPSUhxw==
X-CSE-MsgGUID: t3vOx4Q1RmqhYAaXTyrMiw==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="23667266"
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="23667266"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 06:17:18 -0700
X-CSE-ConnectionGUID: ABAMMkfOTVSmGkUrvqCU7w==
X-CSE-MsgGUID: kDcGjc5WSBWecODYPiEz8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="63261604"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 06:17:15 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 11/19] drm/i915/display: Move dss stuff in intel_dss files
Date: Thu, 29 Aug 2024 18:48:19 +0530
Message-ID: <20240829131828.2350930-12-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240829131828.2350930-1-ankit.k.nautiyal@intel.com>
References: <20240829131828.2350930-1-ankit.k.nautiyal@intel.com>
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
index 05ffd28cc16a..3d7990f8f20f 100644
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
index cb204db56153..6a74404bd76d 100644
--- a/drivers/gpu/drm/i915/display/intel_dss.h
+++ b/drivers/gpu/drm/i915/display/intel_dss.h
@@ -11,6 +11,7 @@
 struct intel_crtc_state;
 struct intel_display;
 struct intel_encoder;
+struct intel_crtc;
 
 u8 intel_dss_mso_pipe_mask(struct intel_display *display);
 void intel_dss_mso_get_config(struct intel_encoder *encoder,
@@ -24,6 +25,12 @@ void intel_dss_enable_uncompressed_joiner(const struct intel_crtc_state *crtc_st
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

