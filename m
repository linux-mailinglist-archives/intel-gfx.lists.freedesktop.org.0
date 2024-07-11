Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9817792E1C3
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2024 10:14:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4498910E996;
	Thu, 11 Jul 2024 08:14:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JzHdtEKD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F6C010E996
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2024 08:14:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720685687; x=1752221687;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CQmkyH5xkpV+fRceGlkXutD6sLkG8K5F99IkUt0tfWQ=;
 b=JzHdtEKDzarQuidb5Fvd1nRW+icnx0J2mjTD4D3r7MVLUSkEV+0/IGFE
 jmwKF9rJkVDxe/X6rIas5sps2UjXE+md2Ftu5Gn3M141b5KLjQGM91BZh
 gY/FGcCwNBbRdjnpqwcPNy/ymwWaGo7L8K6KVLm1bl53gXyqOCzwUPkKY
 3QnZIpFnK3LWbZ7yoPHZWrxR60Rn32kSwCMl/afBv0T+F0WBPAjrXVjWx
 GemfG9RvWmJ4RKn3QV3NqPRb27R4aeMNHIPalvzRijARNFrYR9ZDibX9K
 NB28TxOXiExVsVMcwp1onX51TOzBQ/IAc66moHdvfPZODRDgirKeZ72FR Q==;
X-CSE-ConnectionGUID: 4eNGg/HQSrO7EBxLUTMSLQ==
X-CSE-MsgGUID: lcSDplBQRy2SXtyxIjA/2A==
X-IronPort-AV: E=McAfee;i="6700,10204,11129"; a="21814082"
X-IronPort-AV: E=Sophos;i="6.09,199,1716274800"; d="scan'208";a="21814082"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2024 01:14:47 -0700
X-CSE-ConnectionGUID: OuqXRXPLTTqp4reNtzecUw==
X-CSE-MsgGUID: Q6KEjZOoQ0ajruBuJKU2Ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,199,1716274800"; d="scan'208";a="52785632"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmviesa003.fm.intel.com with ESMTP; 11 Jul 2024 01:14:46 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.saarinen@intel.com, ville.syrjala@linux.intel.com,
 ankit.k.nautiyal@intel.com
Subject: [PATCH 2/6] drm/i915: Split current joiner hw state readout
Date: Thu, 11 Jul 2024 11:14:37 +0300
Message-Id: <20240711081441.17415-3-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20240711081441.17415-1-stanislav.lisovskiy@intel.com>
References: <20240711081441.17415-1-stanislav.lisovskiy@intel.com>
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

We need to add a new sanity checks and also do
some preparations for adding ultrajoiner hw state readout.
Lets first split reading of the uncompressed joiner and bigjoiner
bit masks into separate functions.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 65 +++++++++++++++-----
 1 file changed, 48 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ab2f4c046c9b..3954b13ba662 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3581,51 +3581,82 @@ static bool transcoder_ddi_func_is_enabled(struct drm_i915_private *dev_priv,
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
+		power_domain = intel_dsc_power_domain(crtc, (enum transcoder) pipe);
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
2.37.3

