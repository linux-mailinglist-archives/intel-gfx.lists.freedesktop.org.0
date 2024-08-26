Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 117BC95EF8C
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2024 13:14:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9C4E10E1D5;
	Mon, 26 Aug 2024 11:14:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hwqf1w3K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F07EC10E1D4;
 Mon, 26 Aug 2024 11:14:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724670856; x=1756206856;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6se1AjYdfve/MhduDN6fEwvPKJvIzl9MB0aMzUER1+0=;
 b=hwqf1w3KdHrLJxX+tbw0EY/lJT9YFWTa9oBTebDelKcgwiyP8/hx/SVI
 yuHzycBHHmZ+rSO+AJdztjSHPe2Mq6hRIUMYiaUDID2OJuOortRVlKnP1
 MIVNsGHv4kxVkYJb8duSWFgMydp5iNiX6H+A+DSDDuiqaFmtAqdCpUzTg
 wwILtScVihGnOB6o/CZS7SOY3/zcudygP7ttanAaO9SCXVOivbx+ll+0V
 GI17RUBn+RCTYam9isbnNB/mIJksnk0bp/LmE0IB26VdnqMYoJ0cLemsq
 5PPI4zuBAqIzzGblogGL91uCiZiVfrDIDn+udSUXKHLb6b1n16P3HFTi+ g==;
X-CSE-ConnectionGUID: oU22MeepQJ2wfs/JTUQMOQ==
X-CSE-MsgGUID: AFxJMsX8ToGFeXQTc9MR/w==
X-IronPort-AV: E=McAfee;i="6700,10204,11175"; a="23213570"
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="23213570"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 04:14:16 -0700
X-CSE-ConnectionGUID: qOizMFU1T8qH5souAK6Gkg==
X-CSE-MsgGUID: DxiV/Qu7TFa3Y+XxpK+LmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="67291404"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 04:14:14 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 07/12] drm/i915/display: Move dss stuff in intel_dss files
Date: Mon, 26 Aug 2024 16:45:21 +0530
Message-ID: <20240826111527.1113622-8-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240826111527.1113622-1-ankit.k.nautiyal@intel.com>
References: <20240826111527.1113622-1-ankit.k.nautiyal@intel.com>
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

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 34 +++-----------
 drivers/gpu/drm/i915/display/intel_dss.c     | 48 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dss.h     |  9 ++++
 3 files changed, 64 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 05ffd28cc16a..ab57c2f39cf5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3545,35 +3545,15 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
 
 	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc,
 					 joiner_pipes(dev_priv)) {
-		enum intel_display_power_domain power_domain;
-		enum pipe pipe = crtc->pipe;
-		intel_wakeref_t wakeref;
-
-		power_domain = intel_dsc_power_domain(crtc, (enum transcoder) pipe);
-		with_intel_display_power_if_enabled(dev_priv, power_domain, wakeref) {
-			u32 tmp = intel_de_read(dev_priv, ICL_PIPE_DSS_CTL1(pipe));
-
-			if (!(tmp & BIG_JOINER_ENABLE))
-				continue;
+		struct intel_display *display = &dev_priv->display;
 
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
+		intel_dss_get_compressed_joiner_pipes(display, crtc,
+						      primary_pipes,
+						      secondary_pipes);
 
-			if (tmp & UNCOMPRESSED_JOINER_PRIMARY)
-				*primary_pipes |= BIT(pipe);
-			if (tmp & UNCOMPRESSED_JOINER_SECONDARY)
-				*secondary_pipes |= BIT(pipe);
-		}
+		intel_dss_get_uncompressed_joiner_pipes(display, crtc,
+							primary_pipes,
+							secondary_pipes);
 	}
 
 	/* Joiner pipes should always be consecutive primary and secondary */
diff --git a/drivers/gpu/drm/i915/display/intel_dss.c b/drivers/gpu/drm/i915/display/intel_dss.c
index 8b2841689bfb..fadaf1f2674c 100644
--- a/drivers/gpu/drm/i915/display/intel_dss.c
+++ b/drivers/gpu/drm/i915/display/intel_dss.c
@@ -214,3 +214,51 @@ void intel_dss_get_dsc_config(struct intel_crtc_state *crtc_state)
 	crtc_state->dsc.dsc_split = (dss_ctl2 & RIGHT_BRANCH_VDSC_ENABLE) &&
 				    (dss_ctl1 & JOINER_ENABLE);
 }
+
+void intel_dss_get_compressed_joiner_pipes(struct intel_display *display,
+					   struct intel_crtc *crtc,
+					   u8 *primary_pipes,
+					   u8 *secondary_pipes)
+{
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
+void intel_dss_get_uncompressed_joiner_pipes(struct intel_display *display,
+					     struct intel_crtc *crtc,
+					     u8 *primary_pipes,
+					     u8 *secondary_pipes)
+{
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
index 2dadbe76cbf9..16d2bbc3add8 100644
--- a/drivers/gpu/drm/i915/display/intel_dss.h
+++ b/drivers/gpu/drm/i915/display/intel_dss.h
@@ -11,6 +11,7 @@
 struct intel_crtc_state;
 struct intel_display;
 struct intel_encoder;
+struct intel_crtc;
 
 u8 intel_dss_splitter_pipe_mask(struct intel_display *display);
 void intel_dss_get_mso_config(struct intel_encoder *encoder,
@@ -24,6 +25,14 @@ void intel_dss_enable_uncompressed_joiner(const struct intel_crtc_state *crtc_st
 void intel_dss_enable_compressed_joiner(const struct intel_crtc_state *crtc_state,
 					int vdsc_instances_per_pipe);
 void intel_dss_get_dsc_config(struct intel_crtc_state *crtc_state);
+void intel_dss_get_compressed_joiner_pipes(struct intel_display *display,
+					   struct intel_crtc *crtc,
+					   u8 *primary_pipes,
+					   u8 *secondary_pipes);
+void intel_dss_get_uncompressed_joiner_pipes(struct intel_display *display,
+					     struct intel_crtc *crtc,
+					     u8 *primary_pipes,
+					     u8 *secondary_pipes);
 
 #endif /* __INTEL_DSS_H__ */
 
-- 
2.45.2

