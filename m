Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58ECD9349AC
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2024 10:17:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F153710E5CC;
	Thu, 18 Jul 2024 08:17:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Hm1JBx0M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A97510E5C0
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2024 08:17:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721290634; x=1752826634;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bcWAb4wSjH0yIRo7DZqhWtsdlFI3N17DfcuZDPU9XWA=;
 b=Hm1JBx0MMuC8fkQoskED7WNwouPM+KdFWvGT41mqY5XOeysYj9JcgCu/
 FbDPR/PVkNQ8zD8L+Zoucs2aBMctjR55JBdCv6hyrQ4FsYJfVem1hBzEP
 AlM1ziQtzGhuEQ7P/RqwE3XS4xHr9LVe0kbso0oW0aE+V2ko0tkO6FCPp
 Gp2HIhxdQS/BYk4iMEgxLnGJUKID+b4Y6FWnOpTeyktjtKybq5KOGdT+r
 1ihRl/k73UkixTJoznE0IlozZtP71Ck08zxqaBGMACPmS/sjFfXFp3rN/
 5ye8ff5V00xRba4EJxvq3eXAKL3uousjAPE2EO+s/K79gxEbccYdUXpea A==;
X-CSE-ConnectionGUID: XPcMcIP9Qx6bStqyygiwMQ==
X-CSE-MsgGUID: HJFaLcYMRFO8hf9mINjF1Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11136"; a="18706056"
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="18706056"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2024 01:17:14 -0700
X-CSE-ConnectionGUID: xJ8XY2jbR1uXRCmjPaxPiw==
X-CSE-MsgGUID: JID3ONnRS/y1wB6fdXhETQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="51400618"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2024 01:17:12 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: stanislav.lisovskiy@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 06/12] drm/i915: Split current joiner hw state readout
Date: Thu, 18 Jul 2024 13:47:57 +0530
Message-ID: <20240718081803.3338564-7-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240718081803.3338564-1-ankit.k.nautiyal@intel.com>
References: <20240718081803.3338564-1-ankit.k.nautiyal@intel.com>
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

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

We need to add a new sanity checks and also do
some preparations for adding ultrajoiner hw state readout.
Lets first split reading of the uncompressed joiner and bigjoiner
bit masks into separate functions.

v2: Fixed checkpatch warnings (Ankit)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 65 +++++++++++++++-----
 1 file changed, 48 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 38e7c6811bf3..4aed8117f614 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3590,51 +3590,82 @@ static bool transcoder_ddi_func_is_enabled(struct drm_i915_private *dev_priv,
 	return tmp & TRANS_DDI_FUNC_ENABLE;
 }
 
-static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
-				 u8 *primary_pipes, u8 *secondary_pipes)
+static void enabled_uncompressed_joiner_pipes(struct drm_i915_private *dev_priv,
+					      u8 *primary_pipes, u8 *secondary_pipes)
 {
 	struct intel_crtc *crtc;
 
 	*primary_pipes = 0;
 	*secondary_pipes = 0;
 
+	if (DISPLAY_VER(dev_priv) < 13)
+		return;
+
 	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc,
 					 joiner_pipes(dev_priv)) {
 		enum intel_display_power_domain power_domain;
 		enum pipe pipe = crtc->pipe;
 		intel_wakeref_t wakeref;
 
-		power_domain = intel_dsc_power_domain(crtc, (enum transcoder) pipe);
+		power_domain = POWER_DOMAIN_PIPE(pipe);
 		with_intel_display_power_if_enabled(dev_priv, power_domain, wakeref) {
 			u32 tmp = intel_de_read(dev_priv, ICL_PIPE_DSS_CTL1(pipe));
 
-			if (!(tmp & BIG_JOINER_ENABLE))
-				continue;
-
-			if (tmp & PRIMARY_BIG_JOINER_ENABLE)
+			if (tmp & UNCOMPRESSED_JOINER_PRIMARY)
 				*primary_pipes |= BIT(pipe);
-			else
+			if (tmp & UNCOMPRESSED_JOINER_SECONDARY)
 				*secondary_pipes |= BIT(pipe);
 		}
+	}
+}
 
-		if (DISPLAY_VER(dev_priv) < 13)
-			continue;
+static void enabled_bigjoiner_pipes(struct drm_i915_private *dev_priv,
+				    u8 *primary_pipes, u8 *secondary_pipes)
+{
+	struct intel_crtc *crtc;
 
-		power_domain = POWER_DOMAIN_PIPE(pipe);
+	*primary_pipes = 0;
+	*secondary_pipes = 0;
+
+	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc,
+					 joiner_pipes(dev_priv)) {
+		enum intel_display_power_domain power_domain;
+		enum pipe pipe = crtc->pipe;
+		intel_wakeref_t wakeref;
+
+		power_domain = intel_dsc_power_domain(crtc, (enum transcoder)pipe);
 		with_intel_display_power_if_enabled(dev_priv, power_domain, wakeref) {
 			u32 tmp = intel_de_read(dev_priv, ICL_PIPE_DSS_CTL1(pipe));
 
-			if (tmp & UNCOMPRESSED_JOINER_PRIMARY)
+			if (!(tmp & BIG_JOINER_ENABLE))
+				continue;
+
+			if (tmp & PRIMARY_BIG_JOINER_ENABLE)
 				*primary_pipes |= BIT(pipe);
-			if (tmp & UNCOMPRESSED_JOINER_SECONDARY)
+			else
 				*secondary_pipes |= BIT(pipe);
 		}
 	}
+}
+
+static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
+				 u8 *primary_pipes, u8 *secondary_pipes)
+{
+	u8 primary_uncompressed_joiner_pipes, primary_bigjoiner_pipes;
+	u8 secondary_uncompressed_joiner_pipes, secondary_bigjoiner_pipes;
+
+	enabled_uncompressed_joiner_pipes(dev_priv, &primary_uncompressed_joiner_pipes,
+					  &secondary_uncompressed_joiner_pipes);
+
+	enabled_bigjoiner_pipes(dev_priv, &primary_bigjoiner_pipes,
+				&secondary_bigjoiner_pipes);
+
+	*primary_pipes = 0;
+	*secondary_pipes = 0;
+
+	*primary_pipes = primary_uncompressed_joiner_pipes | primary_bigjoiner_pipes;
 
-	/* Joiner pipes should always be consecutive primary and secondary */
-	drm_WARN(&dev_priv->drm, *secondary_pipes != *primary_pipes << 1,
-		 "Joiner misconfigured (primary pipes 0x%x, secondary pipes 0x%x)\n",
-		 *primary_pipes, *secondary_pipes);
+	*secondary_pipes = secondary_uncompressed_joiner_pipes | secondary_bigjoiner_pipes;
 }
 
 static enum pipe get_joiner_primary_pipe(enum pipe pipe, u8 primary_pipes, u8 secondary_pipes)
-- 
2.45.2

