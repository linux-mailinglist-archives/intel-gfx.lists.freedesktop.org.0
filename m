Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD3EA86D281
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Feb 2024 19:42:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B68810E123;
	Thu, 29 Feb 2024 18:42:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mI3KU4wP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5410510E123
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Feb 2024 18:42:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709232158; x=1740768158;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=O26PvYQNw+0nrTBss+r0uPPyMPRpxjXfihQrN9WsoDM=;
 b=mI3KU4wPvSANVftJrzCC1ot4M/Q6Y0JKm3wtnvh8AdP+tlUgp1FqTBis
 MoCstqMvOnMVHTnOpLIhUnFve/XBDMr2lhe33Zttf+tI8tcMWJZIfXzeF
 yeFwQrajNM7owrK2nBC2w73LdxswVUV+kKfDvl68vmsYrKhACYrQcyPbt
 eWXfaGbzBLKVklYnJqaaBoSm5b80lqSeSvxJ3utXh9GhPt+RI4+spI9dT
 2wZc9n0U68IQASjCg7nbnxqlGTMYN0lmDpzlCb8U4NAypn2O/bmKtvo+c
 OMtwwGEnk0Aax3TkWmioKW/18ROU2zaFb5lgUIaVZzStV0TNeim0y1J3g A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10999"; a="3585313"
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; 
   d="scan'208";a="3585313"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 10:42:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10999"; a="827771627"
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; d="scan'208";a="827771627"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 29 Feb 2024 10:42:35 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 29 Feb 2024 20:42:34 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 12/12] drm/i915: Create the printer only once in
 intel_pipe_config_compare()
Date: Thu, 29 Feb 2024 20:42:34 +0200
Message-ID: <20240229184234.31272-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240215164055.30585-13-ville.syrjala@linux.intel.com>
References: <20240215164055.30585-13-ville.syrjala@linux.intel.com>
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

Create the drm_printer at the start of intel_pipe_config_compare()
and pass it on to all the mismatch() functions.

v2: Rebase

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 101 +++++++++----------
 1 file changed, 46 insertions(+), 55 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 4d5ef823c5fe..69c9693dcc8d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4787,11 +4787,11 @@ intel_compare_buffer(const u8 *a, const u8 *b, size_t len)
 	return memcmp(a, b, len) == 0;
 }
 
-static void __printf(4, 5)
-pipe_config_mismatch(bool fastset, const struct intel_crtc *crtc,
+static void __printf(5, 6)
+pipe_config_mismatch(struct drm_printer *p, bool fastset,
+		     const struct intel_crtc *crtc,
 		     const char *name, const char *format, ...)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct va_format vaf;
 	va_list args;
 
@@ -4800,65 +4800,55 @@ pipe_config_mismatch(bool fastset, const struct intel_crtc *crtc,
 	vaf.va = &args;
 
 	if (fastset)
-		drm_dbg_kms(&i915->drm,
-			    "[CRTC:%d:%s] fastset requirement not met in %s %pV\n",
-			    crtc->base.base.id, crtc->base.name, name, &vaf);
+		drm_printf(p, "[CRTC:%d:%s] fastset requirement not met in %s %pV\n",
+			   crtc->base.base.id, crtc->base.name, name, &vaf);
 	else
-		drm_err(&i915->drm, "[CRTC:%d:%s] mismatch in %s %pV\n",
-			crtc->base.base.id, crtc->base.name, name, &vaf);
+		drm_printf(p, "[CRTC:%d:%s] mismatch in %s %pV\n",
+			   crtc->base.base.id, crtc->base.name, name, &vaf);
 
 	va_end(args);
 }
 
 static void
-pipe_config_infoframe_mismatch(bool fastset, const struct intel_crtc *crtc,
+pipe_config_infoframe_mismatch(struct drm_printer *p, bool fastset,
+			       const struct intel_crtc *crtc,
 			       const char *name,
 			       const union hdmi_infoframe *a,
 			       const union hdmi_infoframe *b)
 {
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	struct drm_printer p;
 	const char *loglevel;
 
 	if (fastset) {
 		if (!drm_debug_enabled(DRM_UT_KMS))
 			return;
 
-		p = drm_dbg_printer(&i915->drm, DRM_UT_KMS, NULL);
 		loglevel = KERN_DEBUG;
 	} else {
-		p = drm_err_printer(&i915->drm, NULL);
 		loglevel = KERN_ERR;
 	}
 
-	pipe_config_mismatch(fastset, crtc, name, "infoframe");
+	pipe_config_mismatch(p, fastset, crtc, name, "infoframe");
 
-	drm_printf(&p, "expected:\n");
+	drm_printf(p, "expected:\n");
 	hdmi_infoframe_log(loglevel, i915->drm.dev, a);
-	drm_printf(&p, "found:\n");
+	drm_printf(p, "found:\n");
 	hdmi_infoframe_log(loglevel, i915->drm.dev, b);
 }
 
 static void
-pipe_config_dp_vsc_sdp_mismatch(bool fastset, const struct intel_crtc *crtc,
+pipe_config_dp_vsc_sdp_mismatch(struct drm_printer *p, bool fastset,
+				const struct intel_crtc *crtc,
 				const char *name,
 				const struct drm_dp_vsc_sdp *a,
 				const struct drm_dp_vsc_sdp *b)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	struct drm_printer p;
+	pipe_config_mismatch(p, fastset, crtc, name, "dp sdp");
 
-	if (fastset)
-		p = drm_dbg_printer(&i915->drm, DRM_UT_KMS, NULL);
-	else
-		p = drm_err_printer(&i915->drm, NULL);
-
-	pipe_config_mismatch(fastset, crtc, name, "dp sdp");
-
-	drm_printf(&p, "expected:\n");
-	drm_dp_vsc_sdp_log(&p, a);
-	drm_printf(&p, "found:\n");
-	drm_dp_vsc_sdp_log(&p, b);
+	drm_printf(p, "expected:\n");
+	drm_dp_vsc_sdp_log(p, a);
+	drm_printf(p, "found:\n");
+	drm_dp_vsc_sdp_log(p, b);
 }
 
 /* Returns the length up to and including the last differing byte */
@@ -4876,7 +4866,8 @@ memcmp_diff_len(const u8 *a, const u8 *b, size_t len)
 }
 
 static void
-pipe_config_buffer_mismatch(bool fastset, const struct intel_crtc *crtc,
+pipe_config_buffer_mismatch(struct drm_printer *p, bool fastset,
+			    const struct intel_crtc *crtc,
 			    const char *name,
 			    const u8 *a, const u8 *b, size_t len)
 {
@@ -4891,7 +4882,7 @@ pipe_config_buffer_mismatch(bool fastset, const struct intel_crtc *crtc,
 		loglevel = KERN_ERR;
 	}
 
-	pipe_config_mismatch(fastset, crtc, name, "buffer");
+	pipe_config_mismatch(p, fastset, crtc, name, "buffer");
 
 	/* only dump up to the last difference */
 	len = memcmp_diff_len(a, b, len);
@@ -4903,26 +4894,20 @@ pipe_config_buffer_mismatch(bool fastset, const struct intel_crtc *crtc,
 }
 
 static void
-pipe_config_pll_mismatch(bool fastset,
+pipe_config_pll_mismatch(struct drm_printer *p, bool fastset,
 			 const struct intel_crtc *crtc,
 			 const char *name,
 			 const struct intel_dpll_hw_state *a,
 			 const struct intel_dpll_hw_state *b)
 {
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	struct drm_printer p;
 
-	if (fastset)
-		p = drm_dbg_printer(&i915->drm, DRM_UT_KMS, NULL);
-	else
-		p = drm_err_printer(&i915->drm, NULL);
+	pipe_config_mismatch(p, fastset, crtc, name, " "); /* stupid -Werror=format-zero-length */
 
-	pipe_config_mismatch(fastset, crtc, name, " "); /* stupid -Werror=format-zero-length */
-
-	drm_printf(&p, "expected:\n");
-	intel_dpll_dump_hw_state(i915, &p, a);
-	drm_printf(&p, "found:\n");
-	intel_dpll_dump_hw_state(i915, &p, b);
+	drm_printf(p, "expected:\n");
+	intel_dpll_dump_hw_state(i915, p, a);
+	drm_printf(p, "found:\n");
+	intel_dpll_dump_hw_state(i915, p, b);
 }
 
 bool
@@ -4932,13 +4917,19 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 {
 	struct drm_i915_private *dev_priv = to_i915(current_config->uapi.crtc->dev);
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
+	struct drm_printer p;
 	bool ret = true;
 
+	if (fastset)
+		p = drm_dbg_printer(&dev_priv->drm, DRM_UT_KMS, NULL);
+	else
+		p = drm_err_printer(&dev_priv->drm, NULL);
+
 #define PIPE_CONF_CHECK_X(name) do { \
 	if (current_config->name != pipe_config->name) { \
 		BUILD_BUG_ON_MSG(__same_type(current_config->name, bool), \
 				 __stringify(name) " is bool");	\
-		pipe_config_mismatch(fastset, crtc, __stringify(name), \
+		pipe_config_mismatch(&p, fastset, crtc, __stringify(name), \
 				     "(expected 0x%08x, found 0x%08x)", \
 				     current_config->name, \
 				     pipe_config->name); \
@@ -4950,7 +4941,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	if ((current_config->name & (mask)) != (pipe_config->name & (mask))) { \
 		BUILD_BUG_ON_MSG(__same_type(current_config->name, bool), \
 				 __stringify(name) " is bool");	\
-		pipe_config_mismatch(fastset, crtc, __stringify(name), \
+		pipe_config_mismatch(&p, fastset, crtc, __stringify(name), \
 				     "(expected 0x%08x, found 0x%08x)", \
 				     current_config->name & (mask), \
 				     pipe_config->name & (mask)); \
@@ -4962,7 +4953,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	if (current_config->name != pipe_config->name) { \
 		BUILD_BUG_ON_MSG(__same_type(current_config->name, bool), \
 				 __stringify(name) " is bool");	\
-		pipe_config_mismatch(fastset, crtc, __stringify(name), \
+		pipe_config_mismatch(&p, fastset, crtc, __stringify(name), \
 				     "(expected %i, found %i)", \
 				     current_config->name, \
 				     pipe_config->name); \
@@ -4974,7 +4965,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	if (current_config->name != pipe_config->name) { \
 		BUILD_BUG_ON_MSG(!__same_type(current_config->name, bool), \
 				 __stringify(name) " is not bool");	\
-		pipe_config_mismatch(fastset, crtc,  __stringify(name), \
+		pipe_config_mismatch(&p, fastset, crtc,  __stringify(name), \
 				     "(expected %s, found %s)", \
 				     str_yes_no(current_config->name), \
 				     str_yes_no(pipe_config->name)); \
@@ -4984,7 +4975,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 
 #define PIPE_CONF_CHECK_P(name) do { \
 	if (current_config->name != pipe_config->name) { \
-		pipe_config_mismatch(fastset, crtc, __stringify(name), \
+		pipe_config_mismatch(&p, fastset, crtc, __stringify(name), \
 				     "(expected %p, found %p)", \
 				     current_config->name, \
 				     pipe_config->name); \
@@ -4995,7 +4986,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 #define PIPE_CONF_CHECK_M_N(name) do { \
 	if (!intel_compare_link_m_n(&current_config->name, \
 				    &pipe_config->name)) { \
-		pipe_config_mismatch(fastset, crtc, __stringify(name), \
+		pipe_config_mismatch(&p, fastset, crtc, __stringify(name), \
 				     "(expected tu %i data %i/%i link %i/%i, " \
 				     "found tu %i, data %i/%i link %i/%i)", \
 				     current_config->name.tu, \
@@ -5015,7 +5006,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 #define PIPE_CONF_CHECK_PLL(name) do { \
 	if (!intel_dpll_compare_hw_state(dev_priv, &current_config->name, \
 					 &pipe_config->name)) { \
-		pipe_config_pll_mismatch(fastset, crtc, __stringify(name), \
+		pipe_config_pll_mismatch(&p, fastset, crtc, __stringify(name), \
 					 &current_config->name, \
 					 &pipe_config->name); \
 		ret = false; \
@@ -5048,7 +5039,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 
 #define PIPE_CONF_CHECK_FLAGS(name, mask) do { \
 	if ((current_config->name ^ pipe_config->name) & (mask)) { \
-		pipe_config_mismatch(fastset, crtc, __stringify(name), \
+		pipe_config_mismatch(&p, fastset, crtc, __stringify(name), \
 				     "(%x) (expected %i, found %i)", \
 				     (mask), \
 				     current_config->name & (mask), \
@@ -5060,7 +5051,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 #define PIPE_CONF_CHECK_INFOFRAME(name) do { \
 	if (!intel_compare_infoframe(&current_config->infoframes.name, \
 				     &pipe_config->infoframes.name)) { \
-		pipe_config_infoframe_mismatch(fastset, crtc, __stringify(name), \
+		pipe_config_infoframe_mismatch(&p, fastset, crtc, __stringify(name), \
 					       &current_config->infoframes.name, \
 					       &pipe_config->infoframes.name); \
 		ret = false; \
@@ -5070,7 +5061,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 #define PIPE_CONF_CHECK_DP_VSC_SDP(name) do { \
 	if (!intel_compare_dp_vsc_sdp(&current_config->infoframes.name, \
 				      &pipe_config->infoframes.name)) { \
-		pipe_config_dp_vsc_sdp_mismatch(fastset, crtc, __stringify(name), \
+		pipe_config_dp_vsc_sdp_mismatch(&p, fastset, crtc, __stringify(name), \
 						&current_config->infoframes.name, \
 						&pipe_config->infoframes.name); \
 		ret = false; \
@@ -5081,7 +5072,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	BUILD_BUG_ON(sizeof(current_config->name) != (len)); \
 	BUILD_BUG_ON(sizeof(pipe_config->name) != (len)); \
 	if (!intel_compare_buffer(current_config->name, pipe_config->name, (len))) { \
-		pipe_config_buffer_mismatch(fastset, crtc, __stringify(name), \
+		pipe_config_buffer_mismatch(&p, fastset, crtc, __stringify(name), \
 					    current_config->name, \
 					    pipe_config->name, \
 					    (len)); \
@@ -5094,7 +5085,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	    !intel_color_lut_equal(current_config, \
 				   current_config->lut, pipe_config->lut, \
 				   is_pre_csc_lut)) {	\
-		pipe_config_mismatch(fastset, crtc, __stringify(lut), \
+		pipe_config_mismatch(&p, fastset, crtc, __stringify(lut), \
 				     "hw_state doesn't match sw_state"); \
 		ret = false; \
 	} \
-- 
2.43.0

