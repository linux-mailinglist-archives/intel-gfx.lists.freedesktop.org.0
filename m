Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6742496F4CD
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2024 14:56:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E325110EA46;
	Fri,  6 Sep 2024 12:56:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eqaDAipD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28DC010EA43
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2024 12:56:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725627399; x=1757163399;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ve1/r6E2uhwwBfEJfkhyr+6pm5jAgpdFfMX1RZ+5nWA=;
 b=eqaDAipDQjaPs0Py1kpfzWvxwz25CVyr4voaudkUJLRtwx87dbVmc5Sl
 FTudfsdwU8ykIA656EiRcJh9VekiWbLNrtoGsh+7DfUxtFKLr+O+BfJ0O
 /yfn0spZNlrBS4lQnqoXuM5AvboZRl8alvM1cL2VFRGfuPfvXDn0BI5Be
 vjsWR1wOlEIhLZp54RX/4FmijeKaKAnQXyMP4AhOsZ/5QLOvuSE34I3qP
 BYwewO2o2pyGDeD4nWrXA0UgYKA60VnOxn2MkI+n4kG71vUPoaIgxhhKI
 YkQrtwApz1AV+zugfAaRJxBG/FtgAr1DKWbGvkj6d3nR8uG1G2bZEtJu1 g==;
X-CSE-ConnectionGUID: W4IhrbfjQ16XhH18IWq38A==
X-CSE-MsgGUID: 7XPiv94mR8a+hZE946Sl8g==
X-IronPort-AV: E=McAfee;i="6700,10204,11187"; a="24257406"
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="24257406"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 05:56:39 -0700
X-CSE-ConnectionGUID: AzLW8EzKQ0OLkGnLRP8AqA==
X-CSE-MsgGUID: j9bV5FcwQaqGLsdx753JIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="66691070"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 05:56:38 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.saarinen@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 06/14] drm/i915: Split current joiner hw state readout
Date: Fri,  6 Sep 2024 18:27:59 +0530
Message-ID: <20240906125807.3960642-7-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240906125807.3960642-1-ankit.k.nautiyal@intel.com>
References: <20240906125807.3960642-1-ankit.k.nautiyal@intel.com>
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
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 65 +++++++++++++++-----
 1 file changed, 48 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 3278debf47cc..cdc7531311fc 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3580,51 +3580,82 @@ static bool transcoder_ddi_func_is_enabled(struct drm_i915_private *dev_priv,
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

