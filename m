Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEEB786D27F
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Feb 2024 19:42:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BE4C10E4A3;
	Thu, 29 Feb 2024 18:42:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J07ei62I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5918210E4A3
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Feb 2024 18:42:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709232131; x=1740768131;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nu1OSSRGOCHnLGZy+z9C1gBm/oXKzl6QjuGXGTxKs6I=;
 b=J07ei62ILlccxgPVDBB1NuWeJxZt/DPOT6SRgTq/9verEjxD+FtYHvJe
 +LoFXsSTGMQgLPGkgHxd6/TjoVLv16l+Q3TR5vAX2021Ce6HlQrqPHHx+
 WK3g+uyooL4//hC+ZSqbHrCP2C/zPmlq0/D8LTlht77n0g2jklFNU0pGR
 sXo9Hsa13MBk+ixcE0C3NqUiRB6ZU2rL7HOwbJXoFmYVGwaOCFdYloSud
 58YY8YW450vLuEW5YaQZhknobTz8npxI0efnwnIkXdzI5XlBOOkCCsrM7
 SwgxRMo6mzTBoglXNH3EoWO/IsNB2DBQHRhyxG8rodnzkuTgz61MnY06F Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10999"; a="3585249"
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; 
   d="scan'208";a="3585249"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 10:42:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10999"; a="827771624"
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; d="scan'208";a="827771624"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 29 Feb 2024 10:42:08 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 29 Feb 2024 20:42:07 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 11/12] drm/i915: Reuse pipe_config_mismatch() more
Date: Thu, 29 Feb 2024 20:42:07 +0200
Message-ID: <20240229184207.31233-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240215164055.30585-12-ville.syrjala@linux.intel.com>
References: <20240215164055.30585-12-ville.syrjala@linux.intel.com>
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

v2: Eliminate the dpll drm_debug_enabled() in an earlier patch (Jani)

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 42 +++++---------------
 1 file changed, 10 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 68522fcfd3e4..4d5ef823c5fe 100644
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
 
@@ -4929,17 +4912,12 @@ pipe_config_pll_mismatch(bool fastset,
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct drm_printer p;
 
-	if (fastset) {
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
 
 	drm_printf(&p, "expected:\n");
 	intel_dpll_dump_hw_state(i915, &p, a);
-- 
2.43.0

