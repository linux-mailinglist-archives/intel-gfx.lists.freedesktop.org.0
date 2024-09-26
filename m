Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D093986D71
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 09:24:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3471D10EA9B;
	Thu, 26 Sep 2024 07:24:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XDoWwxcq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B57310EA9B;
 Thu, 26 Sep 2024 07:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727335493; x=1758871493;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=S2ZClsJJ97aOjfyBJS7p3tRJURDWZl1o3O5bNJbVfaU=;
 b=XDoWwxcqTX3c9Kdk+viyGgbnRH5hrpNDOKBV3v0jQtAIRvbZuqKvYMj/
 NYsbq8ia70TGW/QBq4Rp12QOSFp+FU8tyxMVM07jEKxItNGa6bw3LYM9Z
 xgYOaIEVLtGEhnw06zpS1TprCDw3htkHKnoo1ahavS7Gg2b3h+XB1IIBT
 W9XVb26um5Omr1MIZg33LZitYibSsOe+l08ozRtikxWYAecGK59YfhNW8
 Lg8o18zPdmA84tL14tZdrJh/owrZNDmGzGso1DXGqO1RsKz+gOZyO2gZY
 JRIFk/wJV91gav7ILmBzgJAI/XyJ954cJkarXsrn+vkpG7lCczdZ0PfmO A==;
X-CSE-ConnectionGUID: u9TgPrf4SM2QqFD5zdNGcw==
X-CSE-MsgGUID: dA0BwJY0TgGui+OxSHaNqQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="51829447"
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="51829447"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 00:24:53 -0700
X-CSE-ConnectionGUID: KReFU+yPTKqbf0Ny7x3RSA==
X-CSE-MsgGUID: +Tr7mVpvRK28Y5xGDVLiMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="72334421"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 00:24:52 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 05/15] drm/i915: Split current joiner hw state readout
Date: Thu, 26 Sep 2024 12:56:28 +0530
Message-ID: <20240926072638.3689367-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240926072638.3689367-1-ankit.k.nautiyal@intel.com>
References: <20240926072638.3689367-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

We need to add a new sanity checks and also do
some preparations for adding ultrajoiner hw state readout.
Lets first split reading of the uncompressed joiner and bigjoiner
bit masks into separate functions.

v2: Fixed checkpatch warnings (Ankit)
v3: Use struct intel_display in the new functions. (Ankit)
v4: Use check for bigjoiner before reading the regs. (Ville)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 74 +++++++++++++++-----
 1 file changed, 55 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f7667931f9d9..8d37973864ee 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3580,26 +3580,57 @@ static bool transcoder_ddi_func_is_enabled(struct drm_i915_private *dev_priv,
 	return tmp & TRANS_DDI_FUNC_ENABLE;
 }
 
-static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
-				 u8 *primary_pipes, u8 *secondary_pipes)
+static void enabled_uncompressed_joiner_pipes(struct intel_display *display,
+					      u8 *primary_pipes, u8 *secondary_pipes)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_crtc *crtc;
 
 	*primary_pipes = 0;
 	*secondary_pipes = 0;
 
-	if (!HAS_BIGJOINER(dev_priv))
+	if (!HAS_UNCOMPRESSED_JOINER(display))
 		return;
 
-	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc,
-					 joiner_pipes(dev_priv)) {
+	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc,
+					 joiner_pipes(i915)) {
 		enum intel_display_power_domain power_domain;
 		enum pipe pipe = crtc->pipe;
 		intel_wakeref_t wakeref;
 
-		power_domain = intel_dsc_power_domain(crtc, (enum transcoder) pipe);
-		with_intel_display_power_if_enabled(dev_priv, power_domain, wakeref) {
-			u32 tmp = intel_de_read(dev_priv, ICL_PIPE_DSS_CTL1(pipe));
+		power_domain = POWER_DOMAIN_PIPE(pipe);
+		with_intel_display_power_if_enabled(i915, power_domain, wakeref) {
+			u32 tmp = intel_de_read(display, ICL_PIPE_DSS_CTL1(pipe));
+
+			if (tmp & UNCOMPRESSED_JOINER_PRIMARY)
+				*primary_pipes |= BIT(pipe);
+			if (tmp & UNCOMPRESSED_JOINER_SECONDARY)
+				*secondary_pipes |= BIT(pipe);
+		}
+	}
+}
+
+static void enabled_bigjoiner_pipes(struct intel_display *display,
+				    u8 *primary_pipes, u8 *secondary_pipes)
+{
+	struct drm_i915_private *i915 = to_i915(display->drm);
+	struct intel_crtc *crtc;
+
+	*primary_pipes = 0;
+	*secondary_pipes = 0;
+
+	if (!HAS_BIGJOINER(display))
+		return;
+
+	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc,
+					 joiner_pipes(i915)) {
+		enum intel_display_power_domain power_domain;
+		enum pipe pipe = crtc->pipe;
+		intel_wakeref_t wakeref;
+
+		power_domain = intel_dsc_power_domain(crtc, (enum transcoder)pipe);
+		with_intel_display_power_if_enabled(i915, power_domain, wakeref) {
+			u32 tmp = intel_de_read(display, ICL_PIPE_DSS_CTL1(pipe));
 
 			if (!(tmp & BIG_JOINER_ENABLE))
 				continue;
@@ -3609,20 +3640,25 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
 			else
 				*secondary_pipes |= BIT(pipe);
 		}
+	}
+}
 
-		if (!HAS_UNCOMPRESSED_JOINER(dev_priv))
-			continue;
+static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
+				 u8 *primary_pipes, u8 *secondary_pipes)
+{
+	struct intel_display *display = to_intel_display(&dev_priv->drm);
+	u8 primary_uncompressed_joiner_pipes, primary_bigjoiner_pipes;
+	u8 secondary_uncompressed_joiner_pipes, secondary_bigjoiner_pipes;
 
-		power_domain = POWER_DOMAIN_PIPE(pipe);
-		with_intel_display_power_if_enabled(dev_priv, power_domain, wakeref) {
-			u32 tmp = intel_de_read(dev_priv, ICL_PIPE_DSS_CTL1(pipe));
+	enabled_uncompressed_joiner_pipes(display, &primary_uncompressed_joiner_pipes,
+					  &secondary_uncompressed_joiner_pipes);
 
-			if (tmp & UNCOMPRESSED_JOINER_PRIMARY)
-				*primary_pipes |= BIT(pipe);
-			if (tmp & UNCOMPRESSED_JOINER_SECONDARY)
-				*secondary_pipes |= BIT(pipe);
-		}
-	}
+	enabled_bigjoiner_pipes(display, &primary_bigjoiner_pipes,
+				&secondary_bigjoiner_pipes);
+
+	*primary_pipes = primary_uncompressed_joiner_pipes | primary_bigjoiner_pipes;
+
+	*secondary_pipes = secondary_uncompressed_joiner_pipes | secondary_bigjoiner_pipes;
 
 	/* Joiner pipes should always be consecutive primary and secondary */
 	drm_WARN(&dev_priv->drm, *secondary_pipes != *primary_pipes << 1,
-- 
2.45.2

