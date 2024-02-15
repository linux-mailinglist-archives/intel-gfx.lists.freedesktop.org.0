Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61E0A8569C5
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Feb 2024 17:41:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A754A10E9DB;
	Thu, 15 Feb 2024 16:41:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DV3sDduW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0506110E9DB
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Feb 2024 16:41:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708015294; x=1739551294;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=yqAByW6M9ldlLfXuvcUQud1yg0dPPGe3Tyd0xpp2V6s=;
 b=DV3sDduWVpKN73AwFRRavMcImQFy5XsQglLRKaynCfRzg++6NeJAVJl0
 P9JI2rkYAOj0i+65rw/zE9xAyUm7RPCZxfloxaIfjcfeZ40AzK9ncsdab
 yhyMyWJHOvgw0RL3M1DNAFYFdmIfEe2dLmRVucaLSE+FMaXuO8/W5cAGY
 tLIibNvnF807/1SA+rwlteBljW3Rrc8gOvCSUeehSvqw1Lg2XWLlO/rtR
 70mJPpX8HAfRdy4LOuYbeserXGwsdOFmQOU/RB9/ZF7F90B2P7/fBJml5
 SEfLxGcJMuHjzKMyZVWF4tMYIUt0VJ05raqea3rvVJvUaE+B9JSjrthdb Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10985"; a="19630101"
X-IronPort-AV: E=Sophos;i="6.06,162,1705392000"; d="scan'208";a="19630101"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2024 08:41:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10985"; a="826434885"
X-IronPort-AV: E=Sophos;i="6.06,162,1705392000"; d="scan'208";a="826434885"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 15 Feb 2024 08:41:29 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 15 Feb 2024 18:41:29 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 11/12] drm/i915: Reuse pipe_config_mismatch() more
Date: Thu, 15 Feb 2024 18:40:54 +0200
Message-ID: <20240215164055.30585-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240215164055.30585-1-ville.syrjala@linux.intel.com>
References: <20240215164055.30585-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Just call pipe_config_mismatch() from all the more specialized
mismatch() functions instead of hand rolling the same printfs
all over.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 45 +++++---------------
 1 file changed, 10 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a9dd3632898c..26580d4aef2d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4826,17 +4826,13 @@ pipe_config_infoframe_mismatch(bool fastset, const struct intel_crtc *crtc,
 
 		p = drm_dbg_printer(&i915->drm, DRM_UT_KMS, NULL);
 		loglevel = KERN_DEBUG;
-
-		drm_printf(&p, "[CRTC:%d:%s] fastset requirement not met in %s infoframe\n",
-			   crtc->base.base.id, crtc->base.name, name);
 	} else {
 		p = drm_err_printer(&i915->drm, NULL);
 		loglevel = KERN_ERR;
-
-		drm_printf(&p, "[CRTC:%d:%s] mismatch in %s infoframe\n",
-			   crtc->base.base.id, crtc->base.name, name);
 	}
 
+	pipe_config_mismatch(fastset, crtc, name, "infoframe");
+
 	drm_printf(&p, "expected:\n");
 	hdmi_infoframe_log(loglevel, i915->drm.dev, a);
 	drm_printf(&p, "found:\n");
@@ -4852,17 +4848,12 @@ pipe_config_dp_vsc_sdp_mismatch(bool fastset, const struct intel_crtc *crtc,
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct drm_printer p;
 
-	if (fastset) {
+	if (fastset)
 		p = drm_dbg_printer(&i915->drm, DRM_UT_KMS, NULL);
-
-		drm_printf(&p, "[CRTC:%d:%s] fastset requirement not met in %s dp sdp\n",
-			   crtc->base.base.id, crtc->base.name, name);
-	} else {
+	else
 		p = drm_err_printer(&i915->drm, NULL);
 
-		drm_printf(&p, "[CRTC:%d:%s] mismatch in %s dp sdp\n",
-			   crtc->base.base.id, crtc->base.name, name);
-	}
+	pipe_config_mismatch(fastset, crtc, name, "dp sdp");
 
 	drm_printf(&p, "expected:\n");
 	drm_dp_vsc_sdp_log(&p, a);
@@ -4889,27 +4880,19 @@ pipe_config_buffer_mismatch(bool fastset, const struct intel_crtc *crtc,
 			    const char *name,
 			    const u8 *a, const u8 *b, size_t len)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	struct drm_printer p;
 	const char *loglevel;
 
 	if (fastset) {
 		if (!drm_debug_enabled(DRM_UT_KMS))
 			return;
 
-		p = drm_dbg_printer(&i915->drm, DRM_UT_KMS, NULL);
 		loglevel = KERN_DEBUG;
-
-		drm_printf(&p, "[CRTC:%d:%s] fastset requirement not met in %s buffer\n",
-			   crtc->base.base.id, crtc->base.name, name);
 	} else {
-		p = drm_err_printer(&i915->drm, NULL);
 		loglevel = KERN_ERR;
-
-		drm_printf(&p, "[CRTC:%d:%s] mismatch in %s buffer\n",
-			   crtc->base.base.id, crtc->base.name, name);
 	}
 
+	pipe_config_mismatch(fastset, crtc, name, "buffer");
+
 	/* only dump up to the last difference */
 	len = memcmp_diff_len(a, b, len);
 
@@ -4929,20 +4912,12 @@ pipe_config_pll_mismatch(bool fastset,
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct drm_printer p;
 
-	if (fastset) {
-		if (!drm_debug_enabled(DRM_UT_KMS))
-			return;
-
+	if (fastset)
 		p = drm_dbg_printer(&i915->drm, DRM_UT_KMS, NULL);
-
-		drm_printf(&p, "[CRTC:%d:%s] fastset requirement not met in %s\n",
-			   crtc->base.base.id, crtc->base.name, name);
-	} else {
+	else
 		p = drm_err_printer(&i915->drm, NULL);
 
-		drm_printf(&p, "[CRTC:%d:%s] mismatch in %s\n",
-			   crtc->base.base.id, crtc->base.name, name);
-	}
+	pipe_config_mismatch(fastset, crtc, name, " "); /* stupid -Werror=format-zero-length */
 
 	drm_dbg_kms(&i915->drm, "expected:\n");
 	intel_dpll_dump_hw_state(i915, &p, a);
-- 
2.43.0

