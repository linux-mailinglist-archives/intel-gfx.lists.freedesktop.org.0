Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11FC554C8F3
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jun 2022 14:48:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61C0410E628;
	Wed, 15 Jun 2022 12:48:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3548E10E5D5
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jun 2022 12:48:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655297321; x=1686833321;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bfmApNjy+R375WPPTDqHVyFkiRVFsRpt4XVQ39/f/nY=;
 b=JlktDwJ6N/g8rcdoAuSy2es+z+U03jNde/V+oYjKcqEH+JkLvP9KIwA7
 aVQGpaOyDvD4V2qtZrSr7ATR4qkP4rzRD4xNaoXKuW6GZ3EzkGChbqIKF
 JqztCGlyOfuIwsOwJlUsiKM1hjmseuozLiNe5cnzxGMuzQMHQqcUfH/OO
 9cDwijw8uwEisog1Y6WfZXcqOTwiyQ8lx2h3iDBpYVHCG4YIPdZMN2iMe
 ePoIySpJB0dVcVMfrmdMN5eq98RfYYLF8ShZTYRhdy9QMpY6JfEYQjaTb
 6Qh0iJzL/o+iHfJqElA4K52W82Nw1BONab4hPrHM4n8Nl5pXy2mLUjFHj A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10378"; a="279665096"
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; d="scan'208";a="279665096"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 05:48:31 -0700
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; d="scan'208";a="674481339"
Received: from jazuniga-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.33.103])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 05:48:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Jun 2022 15:48:00 +0300
Message-Id: <260425937edf78aae6129cf1385e9554af43875b.1655297182.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1655297182.git.jani.nikula@intel.com>
References: <cover.1655297182.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/7] drm/i915/display: split out pipe config
 compare to a separate file
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Declutter intel_display.c by splitting out pipe config comparison to a
separate file.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_display.c  | 571 +----------------
 drivers/gpu/drm/i915/display/intel_display.h  |   3 -
 .../drm/i915/display/intel_modeset_verify.c   |   1 +
 .../i915/display/intel_pipe_config_compare.c  | 581 ++++++++++++++++++
 .../i915/display/intel_pipe_config_compare.h  |  17 +
 6 files changed, 601 insertions(+), 573 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_pipe_config_compare.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_pipe_config_compare.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index e4f008e9ace9..8b4e5c59ee70 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -246,6 +246,7 @@ i915-y += \
 	display/intel_overlay.o \
 	display/intel_pch_display.o \
 	display/intel_pch_refclk.o \
+	display/intel_pipe_config_compare.o \
 	display/intel_plane_initial.o \
 	display/intel_psr.o \
 	display/intel_quirks.o \
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index be91a9afdf36..093ba6bde105 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -105,6 +105,7 @@
 #include "intel_pch_display.h"
 #include "intel_pch_refclk.h"
 #include "intel_pcode.h"
+#include "intel_pipe_config_compare.h"
 #include "intel_pipe_crc.h"
 #include "intel_plane_initial.h"
 #include "intel_pm.h"
@@ -5797,576 +5798,6 @@ bool intel_fuzzy_clock_check(int clock1, int clock2)
 	return false;
 }
 
-static bool
-intel_compare_m_n(unsigned int m, unsigned int n,
-		  unsigned int m2, unsigned int n2,
-		  bool exact)
-{
-	if (m == m2 && n == n2)
-		return true;
-
-	if (exact || !m || !n || !m2 || !n2)
-		return false;
-
-	BUILD_BUG_ON(DATA_LINK_M_N_MASK > INT_MAX);
-
-	if (n > n2) {
-		while (n > n2) {
-			m2 <<= 1;
-			n2 <<= 1;
-		}
-	} else if (n < n2) {
-		while (n < n2) {
-			m <<= 1;
-			n <<= 1;
-		}
-	}
-
-	if (n != n2)
-		return false;
-
-	return intel_fuzzy_clock_check(m, m2);
-}
-
-static bool
-intel_compare_link_m_n(const struct intel_link_m_n *m_n,
-		       const struct intel_link_m_n *m2_n2,
-		       bool exact)
-{
-	return m_n->tu == m2_n2->tu &&
-		intel_compare_m_n(m_n->data_m, m_n->data_n,
-				  m2_n2->data_m, m2_n2->data_n, exact) &&
-		intel_compare_m_n(m_n->link_m, m_n->link_n,
-				  m2_n2->link_m, m2_n2->link_n, exact);
-}
-
-static bool
-intel_compare_infoframe(const union hdmi_infoframe *a,
-			const union hdmi_infoframe *b)
-{
-	return memcmp(a, b, sizeof(*a)) == 0;
-}
-
-static bool
-intel_compare_dp_vsc_sdp(const struct drm_dp_vsc_sdp *a,
-			 const struct drm_dp_vsc_sdp *b)
-{
-	return memcmp(a, b, sizeof(*a)) == 0;
-}
-
-static void
-pipe_config_infoframe_mismatch(struct drm_i915_private *dev_priv,
-			       bool fastset, const char *name,
-			       const union hdmi_infoframe *a,
-			       const union hdmi_infoframe *b)
-{
-	if (fastset) {
-		if (!drm_debug_enabled(DRM_UT_KMS))
-			return;
-
-		drm_dbg_kms(&dev_priv->drm,
-			    "fastset mismatch in %s infoframe\n", name);
-		drm_dbg_kms(&dev_priv->drm, "expected:\n");
-		hdmi_infoframe_log(KERN_DEBUG, dev_priv->drm.dev, a);
-		drm_dbg_kms(&dev_priv->drm, "found:\n");
-		hdmi_infoframe_log(KERN_DEBUG, dev_priv->drm.dev, b);
-	} else {
-		drm_err(&dev_priv->drm, "mismatch in %s infoframe\n", name);
-		drm_err(&dev_priv->drm, "expected:\n");
-		hdmi_infoframe_log(KERN_ERR, dev_priv->drm.dev, a);
-		drm_err(&dev_priv->drm, "found:\n");
-		hdmi_infoframe_log(KERN_ERR, dev_priv->drm.dev, b);
-	}
-}
-
-static void
-pipe_config_dp_vsc_sdp_mismatch(struct drm_i915_private *dev_priv,
-				bool fastset, const char *name,
-				const struct drm_dp_vsc_sdp *a,
-				const struct drm_dp_vsc_sdp *b)
-{
-	if (fastset) {
-		if (!drm_debug_enabled(DRM_UT_KMS))
-			return;
-
-		drm_dbg_kms(&dev_priv->drm,
-			    "fastset mismatch in %s dp sdp\n", name);
-		drm_dbg_kms(&dev_priv->drm, "expected:\n");
-		drm_dp_vsc_sdp_log(KERN_DEBUG, dev_priv->drm.dev, a);
-		drm_dbg_kms(&dev_priv->drm, "found:\n");
-		drm_dp_vsc_sdp_log(KERN_DEBUG, dev_priv->drm.dev, b);
-	} else {
-		drm_err(&dev_priv->drm, "mismatch in %s dp sdp\n", name);
-		drm_err(&dev_priv->drm, "expected:\n");
-		drm_dp_vsc_sdp_log(KERN_ERR, dev_priv->drm.dev, a);
-		drm_err(&dev_priv->drm, "found:\n");
-		drm_dp_vsc_sdp_log(KERN_ERR, dev_priv->drm.dev, b);
-	}
-}
-
-static void __printf(4, 5)
-pipe_config_mismatch(bool fastset, const struct intel_crtc *crtc,
-		     const char *name, const char *format, ...)
-{
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	struct va_format vaf;
-	va_list args;
-
-	va_start(args, format);
-	vaf.fmt = format;
-	vaf.va = &args;
-
-	if (fastset)
-		drm_dbg_kms(&i915->drm,
-			    "[CRTC:%d:%s] fastset mismatch in %s %pV\n",
-			    crtc->base.base.id, crtc->base.name, name, &vaf);
-	else
-		drm_err(&i915->drm, "[CRTC:%d:%s] mismatch in %s %pV\n",
-			crtc->base.base.id, crtc->base.name, name, &vaf);
-
-	va_end(args);
-}
-
-static bool fastboot_enabled(struct drm_i915_private *dev_priv)
-{
-	if (dev_priv->params.fastboot != -1)
-		return dev_priv->params.fastboot;
-
-	/* Enable fastboot by default on Skylake and newer */
-	if (DISPLAY_VER(dev_priv) >= 9)
-		return true;
-
-	/* Enable fastboot by default on VLV and CHV */
-	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
-		return true;
-
-	/* Disabled by default on all others */
-	return false;
-}
-
-bool
-intel_pipe_config_compare(const struct intel_crtc_state *current_config,
-			  const struct intel_crtc_state *pipe_config,
-			  bool fastset)
-{
-	struct drm_i915_private *dev_priv = to_i915(current_config->uapi.crtc->dev);
-	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
-	bool ret = true;
-	u32 bp_gamma = 0;
-	bool fixup_inherited = fastset &&
-		current_config->inherited && !pipe_config->inherited;
-
-	if (fixup_inherited && !fastboot_enabled(dev_priv)) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "initial modeset and fastboot not set\n");
-		ret = false;
-	}
-
-#define PIPE_CONF_CHECK_X(name) do { \
-	if (current_config->name != pipe_config->name) { \
-		pipe_config_mismatch(fastset, crtc, __stringify(name), \
-				     "(expected 0x%08x, found 0x%08x)", \
-				     current_config->name, \
-				     pipe_config->name); \
-		ret = false; \
-	} \
-} while (0)
-
-#define PIPE_CONF_CHECK_X_WITH_MASK(name, mask) do { \
-	if ((current_config->name & (mask)) != (pipe_config->name & (mask))) { \
-		pipe_config_mismatch(fastset, crtc, __stringify(name), \
-				     "(expected 0x%08x, found 0x%08x)", \
-				     current_config->name & (mask), \
-				     pipe_config->name & (mask)); \
-		ret = false; \
-	} \
-} while (0)
-
-#define PIPE_CONF_CHECK_I(name) do { \
-	if (current_config->name != pipe_config->name) { \
-		pipe_config_mismatch(fastset, crtc, __stringify(name), \
-				     "(expected %i, found %i)", \
-				     current_config->name, \
-				     pipe_config->name); \
-		ret = false; \
-	} \
-} while (0)
-
-#define PIPE_CONF_CHECK_BOOL(name) do { \
-	if (current_config->name != pipe_config->name) { \
-		pipe_config_mismatch(fastset, crtc,  __stringify(name), \
-				     "(expected %s, found %s)", \
-				     str_yes_no(current_config->name), \
-				     str_yes_no(pipe_config->name)); \
-		ret = false; \
-	} \
-} while (0)
-
-/*
- * Checks state where we only read out the enabling, but not the entire
- * state itself (like full infoframes or ELD for audio). These states
- * require a full modeset on bootup to fix up.
- */
-#define PIPE_CONF_CHECK_BOOL_INCOMPLETE(name) do { \
-	if (!fixup_inherited || (!current_config->name && !pipe_config->name)) { \
-		PIPE_CONF_CHECK_BOOL(name); \
-	} else { \
-		pipe_config_mismatch(fastset, crtc, __stringify(name), \
-				     "unable to verify whether state matches exactly, forcing modeset (expected %s, found %s)", \
-				     str_yes_no(current_config->name), \
-				     str_yes_no(pipe_config->name)); \
-		ret = false; \
-	} \
-} while (0)
-
-#define PIPE_CONF_CHECK_P(name) do { \
-	if (current_config->name != pipe_config->name) { \
-		pipe_config_mismatch(fastset, crtc, __stringify(name), \
-				     "(expected %p, found %p)", \
-				     current_config->name, \
-				     pipe_config->name); \
-		ret = false; \
-	} \
-} while (0)
-
-#define PIPE_CONF_CHECK_M_N(name) do { \
-	if (!intel_compare_link_m_n(&current_config->name, \
-				    &pipe_config->name,\
-				    !fastset)) { \
-		pipe_config_mismatch(fastset, crtc, __stringify(name), \
-				     "(expected tu %i data %i/%i link %i/%i, " \
-				     "found tu %i, data %i/%i link %i/%i)", \
-				     current_config->name.tu, \
-				     current_config->name.data_m, \
-				     current_config->name.data_n, \
-				     current_config->name.link_m, \
-				     current_config->name.link_n, \
-				     pipe_config->name.tu, \
-				     pipe_config->name.data_m, \
-				     pipe_config->name.data_n, \
-				     pipe_config->name.link_m, \
-				     pipe_config->name.link_n); \
-		ret = false; \
-	} \
-} while (0)
-
-#define PIPE_CONF_CHECK_TIMINGS(name) do { \
-	PIPE_CONF_CHECK_I(name.crtc_hdisplay); \
-	PIPE_CONF_CHECK_I(name.crtc_htotal); \
-	PIPE_CONF_CHECK_I(name.crtc_hblank_start); \
-	PIPE_CONF_CHECK_I(name.crtc_hblank_end); \
-	PIPE_CONF_CHECK_I(name.crtc_hsync_start); \
-	PIPE_CONF_CHECK_I(name.crtc_hsync_end); \
-	PIPE_CONF_CHECK_I(name.crtc_vdisplay); \
-	PIPE_CONF_CHECK_I(name.crtc_vtotal); \
-	PIPE_CONF_CHECK_I(name.crtc_vblank_start); \
-	PIPE_CONF_CHECK_I(name.crtc_vblank_end); \
-	PIPE_CONF_CHECK_I(name.crtc_vsync_start); \
-	PIPE_CONF_CHECK_I(name.crtc_vsync_end); \
-} while (0)
-
-#define PIPE_CONF_CHECK_RECT(name) do { \
-	PIPE_CONF_CHECK_I(name.x1); \
-	PIPE_CONF_CHECK_I(name.x2); \
-	PIPE_CONF_CHECK_I(name.y1); \
-	PIPE_CONF_CHECK_I(name.y2); \
-} while (0)
-
-/* This is required for BDW+ where there is only one set of registers for
- * switching between high and low RR.
- * This macro can be used whenever a comparison has to be made between one
- * hw state and multiple sw state variables.
- */
-#define PIPE_CONF_CHECK_M_N_ALT(name, alt_name) do { \
-	if (!intel_compare_link_m_n(&current_config->name, \
-				    &pipe_config->name, !fastset) && \
-	    !intel_compare_link_m_n(&current_config->alt_name, \
-				    &pipe_config->name, !fastset)) { \
-		pipe_config_mismatch(fastset, crtc, __stringify(name), \
-				     "(expected tu %i data %i/%i link %i/%i, " \
-				     "or tu %i data %i/%i link %i/%i, " \
-				     "found tu %i, data %i/%i link %i/%i)", \
-				     current_config->name.tu, \
-				     current_config->name.data_m, \
-				     current_config->name.data_n, \
-				     current_config->name.link_m, \
-				     current_config->name.link_n, \
-				     current_config->alt_name.tu, \
-				     current_config->alt_name.data_m, \
-				     current_config->alt_name.data_n, \
-				     current_config->alt_name.link_m, \
-				     current_config->alt_name.link_n, \
-				     pipe_config->name.tu, \
-				     pipe_config->name.data_m, \
-				     pipe_config->name.data_n, \
-				     pipe_config->name.link_m, \
-				     pipe_config->name.link_n); \
-		ret = false; \
-	} \
-} while (0)
-
-#define PIPE_CONF_CHECK_FLAGS(name, mask) do { \
-	if ((current_config->name ^ pipe_config->name) & (mask)) { \
-		pipe_config_mismatch(fastset, crtc, __stringify(name), \
-				     "(%x) (expected %i, found %i)", \
-				     (mask), \
-				     current_config->name & (mask), \
-				     pipe_config->name & (mask)); \
-		ret = false; \
-	} \
-} while (0)
-
-#define PIPE_CONF_CHECK_CLOCK_FUZZY(name) do { \
-	if (!intel_fuzzy_clock_check(current_config->name, pipe_config->name)) { \
-		pipe_config_mismatch(fastset, crtc, __stringify(name), \
-				     "(expected %i, found %i)", \
-				     current_config->name, \
-				     pipe_config->name); \
-		ret = false; \
-	} \
-} while (0)
-
-#define PIPE_CONF_CHECK_INFOFRAME(name) do { \
-	if (!intel_compare_infoframe(&current_config->infoframes.name, \
-				     &pipe_config->infoframes.name)) { \
-		pipe_config_infoframe_mismatch(dev_priv, fastset, __stringify(name), \
-					       &current_config->infoframes.name, \
-					       &pipe_config->infoframes.name); \
-		ret = false; \
-	} \
-} while (0)
-
-#define PIPE_CONF_CHECK_DP_VSC_SDP(name) do { \
-	if (!current_config->has_psr && !pipe_config->has_psr && \
-	    !intel_compare_dp_vsc_sdp(&current_config->infoframes.name, \
-				      &pipe_config->infoframes.name)) { \
-		pipe_config_dp_vsc_sdp_mismatch(dev_priv, fastset, __stringify(name), \
-						&current_config->infoframes.name, \
-						&pipe_config->infoframes.name); \
-		ret = false; \
-	} \
-} while (0)
-
-#define PIPE_CONF_CHECK_COLOR_LUT(name1, name2, bit_precision) do { \
-	if (current_config->name1 != pipe_config->name1) { \
-		pipe_config_mismatch(fastset, crtc, __stringify(name1), \
-				"(expected %i, found %i, won't compare lut values)", \
-				current_config->name1, \
-				pipe_config->name1); \
-		ret = false;\
-	} else { \
-		if (!intel_color_lut_equal(current_config->name2, \
-					pipe_config->name2, pipe_config->name1, \
-					bit_precision)) { \
-			pipe_config_mismatch(fastset, crtc, __stringify(name2), \
-					"hw_state doesn't match sw_state"); \
-			ret = false; \
-		} \
-	} \
-} while (0)
-
-#define PIPE_CONF_QUIRK(quirk) \
-	((current_config->quirks | pipe_config->quirks) & (quirk))
-
-	PIPE_CONF_CHECK_I(hw.enable);
-	PIPE_CONF_CHECK_I(hw.active);
-
-	PIPE_CONF_CHECK_I(cpu_transcoder);
-	PIPE_CONF_CHECK_I(mst_master_transcoder);
-
-	PIPE_CONF_CHECK_BOOL(has_pch_encoder);
-	PIPE_CONF_CHECK_I(fdi_lanes);
-	PIPE_CONF_CHECK_M_N(fdi_m_n);
-
-	PIPE_CONF_CHECK_I(lane_count);
-	PIPE_CONF_CHECK_X(lane_lat_optim_mask);
-
-	if (DISPLAY_VER(dev_priv) >= 9 || IS_BROADWELL(dev_priv)) {
-		PIPE_CONF_CHECK_M_N_ALT(dp_m_n, dp_m2_n2);
-	} else {
-		PIPE_CONF_CHECK_M_N(dp_m_n);
-		PIPE_CONF_CHECK_M_N(dp_m2_n2);
-	}
-
-	PIPE_CONF_CHECK_X(output_types);
-
-	PIPE_CONF_CHECK_I(framestart_delay);
-	PIPE_CONF_CHECK_I(msa_timing_delay);
-
-	PIPE_CONF_CHECK_TIMINGS(hw.pipe_mode);
-	PIPE_CONF_CHECK_TIMINGS(hw.adjusted_mode);
-
-	PIPE_CONF_CHECK_I(pixel_multiplier);
-
-	PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
-			      DRM_MODE_FLAG_INTERLACE);
-
-	if (!PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_MODE_SYNC_FLAGS)) {
-		PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
-				      DRM_MODE_FLAG_PHSYNC);
-		PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
-				      DRM_MODE_FLAG_NHSYNC);
-		PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
-				      DRM_MODE_FLAG_PVSYNC);
-		PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
-				      DRM_MODE_FLAG_NVSYNC);
-	}
-
-	PIPE_CONF_CHECK_I(output_format);
-	PIPE_CONF_CHECK_BOOL(has_hdmi_sink);
-	if ((DISPLAY_VER(dev_priv) < 8 && !IS_HASWELL(dev_priv)) ||
-	    IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
-		PIPE_CONF_CHECK_BOOL(limited_color_range);
-
-	PIPE_CONF_CHECK_BOOL(hdmi_scrambling);
-	PIPE_CONF_CHECK_BOOL(hdmi_high_tmds_clock_ratio);
-	PIPE_CONF_CHECK_BOOL(has_infoframe);
-	PIPE_CONF_CHECK_BOOL(fec_enable);
-
-	PIPE_CONF_CHECK_BOOL_INCOMPLETE(has_audio);
-
-	PIPE_CONF_CHECK_X(gmch_pfit.control);
-	/* pfit ratios are autocomputed by the hw on gen4+ */
-	if (DISPLAY_VER(dev_priv) < 4)
-		PIPE_CONF_CHECK_X(gmch_pfit.pgm_ratios);
-	PIPE_CONF_CHECK_X(gmch_pfit.lvds_border_bits);
-
-	/*
-	 * Changing the EDP transcoder input mux
-	 * (A_ONOFF vs. A_ON) requires a full modeset.
-	 */
-	PIPE_CONF_CHECK_BOOL(pch_pfit.force_thru);
-
-	if (!fastset) {
-		PIPE_CONF_CHECK_RECT(pipe_src);
-
-		PIPE_CONF_CHECK_BOOL(pch_pfit.enabled);
-		PIPE_CONF_CHECK_RECT(pch_pfit.dst);
-
-		PIPE_CONF_CHECK_I(scaler_state.scaler_id);
-		PIPE_CONF_CHECK_CLOCK_FUZZY(pixel_rate);
-
-		PIPE_CONF_CHECK_X(gamma_mode);
-		if (IS_CHERRYVIEW(dev_priv))
-			PIPE_CONF_CHECK_X(cgm_mode);
-		else
-			PIPE_CONF_CHECK_X(csc_mode);
-		PIPE_CONF_CHECK_BOOL(gamma_enable);
-		PIPE_CONF_CHECK_BOOL(csc_enable);
-
-		PIPE_CONF_CHECK_I(linetime);
-		PIPE_CONF_CHECK_I(ips_linetime);
-
-		bp_gamma = intel_color_get_gamma_bit_precision(pipe_config);
-		if (bp_gamma)
-			PIPE_CONF_CHECK_COLOR_LUT(gamma_mode, hw.gamma_lut, bp_gamma);
-
-		if (current_config->active_planes) {
-			PIPE_CONF_CHECK_BOOL(has_psr);
-			PIPE_CONF_CHECK_BOOL(has_psr2);
-			PIPE_CONF_CHECK_BOOL(enable_psr2_sel_fetch);
-			PIPE_CONF_CHECK_I(dc3co_exitline);
-		}
-	}
-
-	PIPE_CONF_CHECK_BOOL(double_wide);
-
-	if (dev_priv->dpll.mgr) {
-		PIPE_CONF_CHECK_P(shared_dpll);
-
-		PIPE_CONF_CHECK_X(dpll_hw_state.dpll);
-		PIPE_CONF_CHECK_X(dpll_hw_state.dpll_md);
-		PIPE_CONF_CHECK_X(dpll_hw_state.fp0);
-		PIPE_CONF_CHECK_X(dpll_hw_state.fp1);
-		PIPE_CONF_CHECK_X(dpll_hw_state.wrpll);
-		PIPE_CONF_CHECK_X(dpll_hw_state.spll);
-		PIPE_CONF_CHECK_X(dpll_hw_state.ctrl1);
-		PIPE_CONF_CHECK_X(dpll_hw_state.cfgcr1);
-		PIPE_CONF_CHECK_X(dpll_hw_state.cfgcr2);
-		PIPE_CONF_CHECK_X(dpll_hw_state.cfgcr0);
-		PIPE_CONF_CHECK_X(dpll_hw_state.div0);
-		PIPE_CONF_CHECK_X(dpll_hw_state.ebb0);
-		PIPE_CONF_CHECK_X(dpll_hw_state.ebb4);
-		PIPE_CONF_CHECK_X(dpll_hw_state.pll0);
-		PIPE_CONF_CHECK_X(dpll_hw_state.pll1);
-		PIPE_CONF_CHECK_X(dpll_hw_state.pll2);
-		PIPE_CONF_CHECK_X(dpll_hw_state.pll3);
-		PIPE_CONF_CHECK_X(dpll_hw_state.pll6);
-		PIPE_CONF_CHECK_X(dpll_hw_state.pll8);
-		PIPE_CONF_CHECK_X(dpll_hw_state.pll9);
-		PIPE_CONF_CHECK_X(dpll_hw_state.pll10);
-		PIPE_CONF_CHECK_X(dpll_hw_state.pcsdw12);
-		PIPE_CONF_CHECK_X(dpll_hw_state.mg_refclkin_ctl);
-		PIPE_CONF_CHECK_X(dpll_hw_state.mg_clktop2_coreclkctl1);
-		PIPE_CONF_CHECK_X(dpll_hw_state.mg_clktop2_hsclkctl);
-		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_div0);
-		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_div1);
-		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_lf);
-		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_frac_lock);
-		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_ssc);
-		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_bias);
-		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_tdc_coldst_bias);
-	}
-
-	PIPE_CONF_CHECK_X(dsi_pll.ctrl);
-	PIPE_CONF_CHECK_X(dsi_pll.div);
-
-	if (IS_G4X(dev_priv) || DISPLAY_VER(dev_priv) >= 5)
-		PIPE_CONF_CHECK_I(pipe_bpp);
-
-	PIPE_CONF_CHECK_CLOCK_FUZZY(hw.pipe_mode.crtc_clock);
-	PIPE_CONF_CHECK_CLOCK_FUZZY(hw.adjusted_mode.crtc_clock);
-	PIPE_CONF_CHECK_CLOCK_FUZZY(port_clock);
-
-	PIPE_CONF_CHECK_I(min_voltage_level);
-
-	if (current_config->has_psr || pipe_config->has_psr)
-		PIPE_CONF_CHECK_X_WITH_MASK(infoframes.enable,
-					    ~intel_hdmi_infoframe_enable(DP_SDP_VSC));
-	else
-		PIPE_CONF_CHECK_X(infoframes.enable);
-
-	PIPE_CONF_CHECK_X(infoframes.gcp);
-	PIPE_CONF_CHECK_INFOFRAME(avi);
-	PIPE_CONF_CHECK_INFOFRAME(spd);
-	PIPE_CONF_CHECK_INFOFRAME(hdmi);
-	PIPE_CONF_CHECK_INFOFRAME(drm);
-	PIPE_CONF_CHECK_DP_VSC_SDP(vsc);
-
-	PIPE_CONF_CHECK_X(sync_mode_slaves_mask);
-	PIPE_CONF_CHECK_I(master_transcoder);
-	PIPE_CONF_CHECK_X(bigjoiner_pipes);
-
-	PIPE_CONF_CHECK_I(dsc.compression_enable);
-	PIPE_CONF_CHECK_I(dsc.dsc_split);
-	PIPE_CONF_CHECK_I(dsc.compressed_bpp);
-
-	PIPE_CONF_CHECK_BOOL(splitter.enable);
-	PIPE_CONF_CHECK_I(splitter.link_count);
-	PIPE_CONF_CHECK_I(splitter.pixel_overlap);
-
-	PIPE_CONF_CHECK_BOOL(vrr.enable);
-	PIPE_CONF_CHECK_I(vrr.vmin);
-	PIPE_CONF_CHECK_I(vrr.vmax);
-	PIPE_CONF_CHECK_I(vrr.flipline);
-	PIPE_CONF_CHECK_I(vrr.pipeline_full);
-	PIPE_CONF_CHECK_I(vrr.guardband);
-
-#undef PIPE_CONF_CHECK_X
-#undef PIPE_CONF_CHECK_I
-#undef PIPE_CONF_CHECK_BOOL
-#undef PIPE_CONF_CHECK_BOOL_INCOMPLETE
-#undef PIPE_CONF_CHECK_P
-#undef PIPE_CONF_CHECK_FLAGS
-#undef PIPE_CONF_CHECK_CLOCK_FUZZY
-#undef PIPE_CONF_CHECK_COLOR_LUT
-#undef PIPE_CONF_CHECK_TIMINGS
-#undef PIPE_CONF_CHECK_RECT
-#undef PIPE_CONF_QUIRK
-
-	return ret;
-}
-
 static void
 intel_verify_planes(struct intel_atomic_state *state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 70410eeb19c8..e827c84ece56 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -560,9 +560,6 @@ bool intel_crtc_is_bigjoiner_master(const struct intel_crtc_state *crtc_state);
 u8 intel_crtc_bigjoiner_slave_pipes(const struct intel_crtc_state *crtc_state);
 struct intel_crtc *intel_master_crtc(const struct intel_crtc_state *crtc_state);
 bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state);
-bool intel_pipe_config_compare(const struct intel_crtc_state *current_config,
-			       const struct intel_crtc_state *pipe_config,
-			       bool fastset);
 void intel_dump_pipe_config(const struct intel_crtc_state *pipe_config,
 			    struct intel_atomic_state *state,
 			    const char *context);
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
index 7a91c926598b..fd752c61d854 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
@@ -14,6 +14,7 @@
 #include "intel_display_types.h"
 #include "intel_fdi.h"
 #include "intel_modeset_verify.h"
+#include "intel_pipe_config_compare.h"
 #include "intel_pm.h"
 #include "intel_snps_phy.h"
 
diff --git a/drivers/gpu/drm/i915/display/intel_pipe_config_compare.c b/drivers/gpu/drm/i915/display/intel_pipe_config_compare.c
new file mode 100644
index 000000000000..ec50373e0242
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_pipe_config_compare.c
@@ -0,0 +1,581 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#include "i915_drv.h"
+#include "i915_reg.h"
+#include "intel_color.h"
+#include "intel_display_types.h"
+#include "intel_hdmi.h"
+#include "intel_pipe_config_compare.h"
+
+static bool fastboot_enabled(struct drm_i915_private *dev_priv)
+{
+	if (dev_priv->params.fastboot != -1)
+		return dev_priv->params.fastboot;
+
+	/* Enable fastboot by default on Skylake and newer */
+	if (DISPLAY_VER(dev_priv) >= 9)
+		return true;
+
+	/* Enable fastboot by default on VLV and CHV */
+	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
+		return true;
+
+	/* Disabled by default on all others */
+	return false;
+}
+
+static bool
+intel_compare_m_n(unsigned int m, unsigned int n,
+		  unsigned int m2, unsigned int n2,
+		  bool exact)
+{
+	if (m == m2 && n == n2)
+		return true;
+
+	if (exact || !m || !n || !m2 || !n2)
+		return false;
+
+	BUILD_BUG_ON(DATA_LINK_M_N_MASK > INT_MAX);
+
+	if (n > n2) {
+		while (n > n2) {
+			m2 <<= 1;
+			n2 <<= 1;
+		}
+	} else if (n < n2) {
+		while (n < n2) {
+			m <<= 1;
+			n <<= 1;
+		}
+	}
+
+	if (n != n2)
+		return false;
+
+	return intel_fuzzy_clock_check(m, m2);
+}
+
+static bool
+intel_compare_link_m_n(const struct intel_link_m_n *m_n,
+		       const struct intel_link_m_n *m2_n2,
+		       bool exact)
+{
+	return m_n->tu == m2_n2->tu &&
+		intel_compare_m_n(m_n->data_m, m_n->data_n,
+				  m2_n2->data_m, m2_n2->data_n, exact) &&
+		intel_compare_m_n(m_n->link_m, m_n->link_n,
+				  m2_n2->link_m, m2_n2->link_n, exact);
+}
+
+static bool
+intel_compare_infoframe(const union hdmi_infoframe *a,
+			const union hdmi_infoframe *b)
+{
+	return memcmp(a, b, sizeof(*a)) == 0;
+}
+
+static bool
+intel_compare_dp_vsc_sdp(const struct drm_dp_vsc_sdp *a,
+			 const struct drm_dp_vsc_sdp *b)
+{
+	return memcmp(a, b, sizeof(*a)) == 0;
+}
+
+static void
+pipe_config_infoframe_mismatch(struct drm_i915_private *dev_priv,
+			       bool fastset, const char *name,
+			       const union hdmi_infoframe *a,
+			       const union hdmi_infoframe *b)
+{
+	if (fastset) {
+		if (!drm_debug_enabled(DRM_UT_KMS))
+			return;
+
+		drm_dbg_kms(&dev_priv->drm,
+			    "fastset mismatch in %s infoframe\n", name);
+		drm_dbg_kms(&dev_priv->drm, "expected:\n");
+		hdmi_infoframe_log(KERN_DEBUG, dev_priv->drm.dev, a);
+		drm_dbg_kms(&dev_priv->drm, "found:\n");
+		hdmi_infoframe_log(KERN_DEBUG, dev_priv->drm.dev, b);
+	} else {
+		drm_err(&dev_priv->drm, "mismatch in %s infoframe\n", name);
+		drm_err(&dev_priv->drm, "expected:\n");
+		hdmi_infoframe_log(KERN_ERR, dev_priv->drm.dev, a);
+		drm_err(&dev_priv->drm, "found:\n");
+		hdmi_infoframe_log(KERN_ERR, dev_priv->drm.dev, b);
+	}
+}
+
+static void
+pipe_config_dp_vsc_sdp_mismatch(struct drm_i915_private *dev_priv,
+				bool fastset, const char *name,
+				const struct drm_dp_vsc_sdp *a,
+				const struct drm_dp_vsc_sdp *b)
+{
+	if (fastset) {
+		if (!drm_debug_enabled(DRM_UT_KMS))
+			return;
+
+		drm_dbg_kms(&dev_priv->drm,
+			    "fastset mismatch in %s dp sdp\n", name);
+		drm_dbg_kms(&dev_priv->drm, "expected:\n");
+		drm_dp_vsc_sdp_log(KERN_DEBUG, dev_priv->drm.dev, a);
+		drm_dbg_kms(&dev_priv->drm, "found:\n");
+		drm_dp_vsc_sdp_log(KERN_DEBUG, dev_priv->drm.dev, b);
+	} else {
+		drm_err(&dev_priv->drm, "mismatch in %s dp sdp\n", name);
+		drm_err(&dev_priv->drm, "expected:\n");
+		drm_dp_vsc_sdp_log(KERN_ERR, dev_priv->drm.dev, a);
+		drm_err(&dev_priv->drm, "found:\n");
+		drm_dp_vsc_sdp_log(KERN_ERR, dev_priv->drm.dev, b);
+	}
+}
+
+static void __printf(4, 5)
+pipe_config_mismatch(bool fastset, const struct intel_crtc *crtc,
+		     const char *name, const char *format, ...)
+{
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct va_format vaf;
+	va_list args;
+
+	va_start(args, format);
+	vaf.fmt = format;
+	vaf.va = &args;
+
+	if (fastset)
+		drm_dbg_kms(&i915->drm,
+			    "[CRTC:%d:%s] fastset mismatch in %s %pV\n",
+			    crtc->base.base.id, crtc->base.name, name, &vaf);
+	else
+		drm_err(&i915->drm, "[CRTC:%d:%s] mismatch in %s %pV\n",
+			crtc->base.base.id, crtc->base.name, name, &vaf);
+
+	va_end(args);
+}
+
+bool
+intel_pipe_config_compare(const struct intel_crtc_state *current_config,
+			  const struct intel_crtc_state *pipe_config,
+			  bool fastset)
+{
+	struct drm_i915_private *dev_priv = to_i915(current_config->uapi.crtc->dev);
+	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
+	bool ret = true;
+	u32 bp_gamma = 0;
+	bool fixup_inherited = fastset &&
+		current_config->inherited && !pipe_config->inherited;
+
+	if (fixup_inherited && !fastboot_enabled(dev_priv)) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "initial modeset and fastboot not set\n");
+		ret = false;
+	}
+
+#define PIPE_CONF_CHECK_X(name) do { \
+	if (current_config->name != pipe_config->name) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name), \
+				     "(expected 0x%08x, found 0x%08x)", \
+				     current_config->name, \
+				     pipe_config->name); \
+		ret = false; \
+	} \
+} while (0)
+
+#define PIPE_CONF_CHECK_X_WITH_MASK(name, mask) do { \
+	if ((current_config->name & (mask)) != (pipe_config->name & (mask))) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name), \
+				     "(expected 0x%08x, found 0x%08x)", \
+				     current_config->name & (mask), \
+				     pipe_config->name & (mask)); \
+		ret = false; \
+	} \
+} while (0)
+
+#define PIPE_CONF_CHECK_I(name) do { \
+	if (current_config->name != pipe_config->name) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name), \
+				     "(expected %i, found %i)", \
+				     current_config->name, \
+				     pipe_config->name); \
+		ret = false; \
+	} \
+} while (0)
+
+#define PIPE_CONF_CHECK_BOOL(name) do { \
+	if (current_config->name != pipe_config->name) { \
+		pipe_config_mismatch(fastset, crtc,  __stringify(name), \
+				     "(expected %s, found %s)", \
+				     str_yes_no(current_config->name), \
+				     str_yes_no(pipe_config->name)); \
+		ret = false; \
+	} \
+} while (0)
+
+/*
+ * Checks state where we only read out the enabling, but not the entire
+ * state itself (like full infoframes or ELD for audio). These states
+ * require a full modeset on bootup to fix up.
+ */
+#define PIPE_CONF_CHECK_BOOL_INCOMPLETE(name) do { \
+	if (!fixup_inherited || (!current_config->name && !pipe_config->name)) { \
+		PIPE_CONF_CHECK_BOOL(name); \
+	} else { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name), \
+				     "unable to verify whether state matches exactly, forcing modeset (expected %s, found %s)", \
+				     str_yes_no(current_config->name), \
+				     str_yes_no(pipe_config->name)); \
+		ret = false; \
+	} \
+} while (0)
+
+#define PIPE_CONF_CHECK_P(name) do { \
+	if (current_config->name != pipe_config->name) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name), \
+				     "(expected %p, found %p)", \
+				     current_config->name, \
+				     pipe_config->name); \
+		ret = false; \
+	} \
+} while (0)
+
+#define PIPE_CONF_CHECK_M_N(name) do { \
+	if (!intel_compare_link_m_n(&current_config->name, \
+				    &pipe_config->name,\
+				    !fastset)) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name), \
+				     "(expected tu %i data %i/%i link %i/%i, " \
+				     "found tu %i, data %i/%i link %i/%i)", \
+				     current_config->name.tu, \
+				     current_config->name.data_m, \
+				     current_config->name.data_n, \
+				     current_config->name.link_m, \
+				     current_config->name.link_n, \
+				     pipe_config->name.tu, \
+				     pipe_config->name.data_m, \
+				     pipe_config->name.data_n, \
+				     pipe_config->name.link_m, \
+				     pipe_config->name.link_n); \
+		ret = false; \
+	} \
+} while (0)
+
+#define PIPE_CONF_CHECK_TIMINGS(name) do { \
+	PIPE_CONF_CHECK_I(name.crtc_hdisplay); \
+	PIPE_CONF_CHECK_I(name.crtc_htotal); \
+	PIPE_CONF_CHECK_I(name.crtc_hblank_start); \
+	PIPE_CONF_CHECK_I(name.crtc_hblank_end); \
+	PIPE_CONF_CHECK_I(name.crtc_hsync_start); \
+	PIPE_CONF_CHECK_I(name.crtc_hsync_end); \
+	PIPE_CONF_CHECK_I(name.crtc_vdisplay); \
+	PIPE_CONF_CHECK_I(name.crtc_vtotal); \
+	PIPE_CONF_CHECK_I(name.crtc_vblank_start); \
+	PIPE_CONF_CHECK_I(name.crtc_vblank_end); \
+	PIPE_CONF_CHECK_I(name.crtc_vsync_start); \
+	PIPE_CONF_CHECK_I(name.crtc_vsync_end); \
+} while (0)
+
+#define PIPE_CONF_CHECK_RECT(name) do { \
+	PIPE_CONF_CHECK_I(name.x1); \
+	PIPE_CONF_CHECK_I(name.x2); \
+	PIPE_CONF_CHECK_I(name.y1); \
+	PIPE_CONF_CHECK_I(name.y2); \
+} while (0)
+
+/* This is required for BDW+ where there is only one set of registers for
+ * switching between high and low RR.
+ * This macro can be used whenever a comparison has to be made between one
+ * hw state and multiple sw state variables.
+ */
+#define PIPE_CONF_CHECK_M_N_ALT(name, alt_name) do { \
+	if (!intel_compare_link_m_n(&current_config->name, \
+				    &pipe_config->name, !fastset) && \
+	    !intel_compare_link_m_n(&current_config->alt_name, \
+				    &pipe_config->name, !fastset)) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name), \
+				     "(expected tu %i data %i/%i link %i/%i, " \
+				     "or tu %i data %i/%i link %i/%i, " \
+				     "found tu %i, data %i/%i link %i/%i)", \
+				     current_config->name.tu, \
+				     current_config->name.data_m, \
+				     current_config->name.data_n, \
+				     current_config->name.link_m, \
+				     current_config->name.link_n, \
+				     current_config->alt_name.tu, \
+				     current_config->alt_name.data_m, \
+				     current_config->alt_name.data_n, \
+				     current_config->alt_name.link_m, \
+				     current_config->alt_name.link_n, \
+				     pipe_config->name.tu, \
+				     pipe_config->name.data_m, \
+				     pipe_config->name.data_n, \
+				     pipe_config->name.link_m, \
+				     pipe_config->name.link_n); \
+		ret = false; \
+	} \
+} while (0)
+
+#define PIPE_CONF_CHECK_FLAGS(name, mask) do { \
+	if ((current_config->name ^ pipe_config->name) & (mask)) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name), \
+				     "(%x) (expected %i, found %i)", \
+				     (mask), \
+				     current_config->name & (mask), \
+				     pipe_config->name & (mask)); \
+		ret = false; \
+	} \
+} while (0)
+
+#define PIPE_CONF_CHECK_CLOCK_FUZZY(name) do { \
+	if (!intel_fuzzy_clock_check(current_config->name, pipe_config->name)) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name), \
+				     "(expected %i, found %i)", \
+				     current_config->name, \
+				     pipe_config->name); \
+		ret = false; \
+	} \
+} while (0)
+
+#define PIPE_CONF_CHECK_INFOFRAME(name) do { \
+	if (!intel_compare_infoframe(&current_config->infoframes.name, \
+				     &pipe_config->infoframes.name)) { \
+		pipe_config_infoframe_mismatch(dev_priv, fastset, __stringify(name), \
+					       &current_config->infoframes.name, \
+					       &pipe_config->infoframes.name); \
+		ret = false; \
+	} \
+} while (0)
+
+#define PIPE_CONF_CHECK_DP_VSC_SDP(name) do { \
+	if (!current_config->has_psr && !pipe_config->has_psr && \
+	    !intel_compare_dp_vsc_sdp(&current_config->infoframes.name, \
+				      &pipe_config->infoframes.name)) { \
+		pipe_config_dp_vsc_sdp_mismatch(dev_priv, fastset, __stringify(name), \
+						&current_config->infoframes.name, \
+						&pipe_config->infoframes.name); \
+		ret = false; \
+	} \
+} while (0)
+
+#define PIPE_CONF_CHECK_COLOR_LUT(name1, name2, bit_precision) do { \
+	if (current_config->name1 != pipe_config->name1) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name1), \
+				"(expected %i, found %i, won't compare lut values)", \
+				current_config->name1, \
+				pipe_config->name1); \
+		ret = false;\
+	} else { \
+		if (!intel_color_lut_equal(current_config->name2, \
+					pipe_config->name2, pipe_config->name1, \
+					bit_precision)) { \
+			pipe_config_mismatch(fastset, crtc, __stringify(name2), \
+					"hw_state doesn't match sw_state"); \
+			ret = false; \
+		} \
+	} \
+} while (0)
+
+#define PIPE_CONF_QUIRK(quirk) \
+	((current_config->quirks | pipe_config->quirks) & (quirk))
+
+	PIPE_CONF_CHECK_I(hw.enable);
+	PIPE_CONF_CHECK_I(hw.active);
+
+	PIPE_CONF_CHECK_I(cpu_transcoder);
+	PIPE_CONF_CHECK_I(mst_master_transcoder);
+
+	PIPE_CONF_CHECK_BOOL(has_pch_encoder);
+	PIPE_CONF_CHECK_I(fdi_lanes);
+	PIPE_CONF_CHECK_M_N(fdi_m_n);
+
+	PIPE_CONF_CHECK_I(lane_count);
+	PIPE_CONF_CHECK_X(lane_lat_optim_mask);
+
+	if (DISPLAY_VER(dev_priv) >= 9 || IS_BROADWELL(dev_priv)) {
+		PIPE_CONF_CHECK_M_N_ALT(dp_m_n, dp_m2_n2);
+	} else {
+		PIPE_CONF_CHECK_M_N(dp_m_n);
+		PIPE_CONF_CHECK_M_N(dp_m2_n2);
+	}
+
+	PIPE_CONF_CHECK_X(output_types);
+
+	PIPE_CONF_CHECK_I(framestart_delay);
+	PIPE_CONF_CHECK_I(msa_timing_delay);
+
+	PIPE_CONF_CHECK_TIMINGS(hw.pipe_mode);
+	PIPE_CONF_CHECK_TIMINGS(hw.adjusted_mode);
+
+	PIPE_CONF_CHECK_I(pixel_multiplier);
+
+	PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
+			      DRM_MODE_FLAG_INTERLACE);
+
+	if (!PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_MODE_SYNC_FLAGS)) {
+		PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
+				      DRM_MODE_FLAG_PHSYNC);
+		PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
+				      DRM_MODE_FLAG_NHSYNC);
+		PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
+				      DRM_MODE_FLAG_PVSYNC);
+		PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
+				      DRM_MODE_FLAG_NVSYNC);
+	}
+
+	PIPE_CONF_CHECK_I(output_format);
+	PIPE_CONF_CHECK_BOOL(has_hdmi_sink);
+	if ((DISPLAY_VER(dev_priv) < 8 && !IS_HASWELL(dev_priv)) ||
+	    IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
+		PIPE_CONF_CHECK_BOOL(limited_color_range);
+
+	PIPE_CONF_CHECK_BOOL(hdmi_scrambling);
+	PIPE_CONF_CHECK_BOOL(hdmi_high_tmds_clock_ratio);
+	PIPE_CONF_CHECK_BOOL(has_infoframe);
+	PIPE_CONF_CHECK_BOOL(fec_enable);
+
+	PIPE_CONF_CHECK_BOOL_INCOMPLETE(has_audio);
+
+	PIPE_CONF_CHECK_X(gmch_pfit.control);
+	/* pfit ratios are autocomputed by the hw on gen4+ */
+	if (DISPLAY_VER(dev_priv) < 4)
+		PIPE_CONF_CHECK_X(gmch_pfit.pgm_ratios);
+	PIPE_CONF_CHECK_X(gmch_pfit.lvds_border_bits);
+
+	/*
+	 * Changing the EDP transcoder input mux
+	 * (A_ONOFF vs. A_ON) requires a full modeset.
+	 */
+	PIPE_CONF_CHECK_BOOL(pch_pfit.force_thru);
+
+	if (!fastset) {
+		PIPE_CONF_CHECK_RECT(pipe_src);
+
+		PIPE_CONF_CHECK_BOOL(pch_pfit.enabled);
+		PIPE_CONF_CHECK_RECT(pch_pfit.dst);
+
+		PIPE_CONF_CHECK_I(scaler_state.scaler_id);
+		PIPE_CONF_CHECK_CLOCK_FUZZY(pixel_rate);
+
+		PIPE_CONF_CHECK_X(gamma_mode);
+		if (IS_CHERRYVIEW(dev_priv))
+			PIPE_CONF_CHECK_X(cgm_mode);
+		else
+			PIPE_CONF_CHECK_X(csc_mode);
+		PIPE_CONF_CHECK_BOOL(gamma_enable);
+		PIPE_CONF_CHECK_BOOL(csc_enable);
+
+		PIPE_CONF_CHECK_I(linetime);
+		PIPE_CONF_CHECK_I(ips_linetime);
+
+		bp_gamma = intel_color_get_gamma_bit_precision(pipe_config);
+		if (bp_gamma)
+			PIPE_CONF_CHECK_COLOR_LUT(gamma_mode, hw.gamma_lut, bp_gamma);
+
+		if (current_config->active_planes) {
+			PIPE_CONF_CHECK_BOOL(has_psr);
+			PIPE_CONF_CHECK_BOOL(has_psr2);
+			PIPE_CONF_CHECK_BOOL(enable_psr2_sel_fetch);
+			PIPE_CONF_CHECK_I(dc3co_exitline);
+		}
+	}
+
+	PIPE_CONF_CHECK_BOOL(double_wide);
+
+	if (dev_priv->dpll.mgr) {
+		PIPE_CONF_CHECK_P(shared_dpll);
+
+		PIPE_CONF_CHECK_X(dpll_hw_state.dpll);
+		PIPE_CONF_CHECK_X(dpll_hw_state.dpll_md);
+		PIPE_CONF_CHECK_X(dpll_hw_state.fp0);
+		PIPE_CONF_CHECK_X(dpll_hw_state.fp1);
+		PIPE_CONF_CHECK_X(dpll_hw_state.wrpll);
+		PIPE_CONF_CHECK_X(dpll_hw_state.spll);
+		PIPE_CONF_CHECK_X(dpll_hw_state.ctrl1);
+		PIPE_CONF_CHECK_X(dpll_hw_state.cfgcr1);
+		PIPE_CONF_CHECK_X(dpll_hw_state.cfgcr2);
+		PIPE_CONF_CHECK_X(dpll_hw_state.cfgcr0);
+		PIPE_CONF_CHECK_X(dpll_hw_state.div0);
+		PIPE_CONF_CHECK_X(dpll_hw_state.ebb0);
+		PIPE_CONF_CHECK_X(dpll_hw_state.ebb4);
+		PIPE_CONF_CHECK_X(dpll_hw_state.pll0);
+		PIPE_CONF_CHECK_X(dpll_hw_state.pll1);
+		PIPE_CONF_CHECK_X(dpll_hw_state.pll2);
+		PIPE_CONF_CHECK_X(dpll_hw_state.pll3);
+		PIPE_CONF_CHECK_X(dpll_hw_state.pll6);
+		PIPE_CONF_CHECK_X(dpll_hw_state.pll8);
+		PIPE_CONF_CHECK_X(dpll_hw_state.pll9);
+		PIPE_CONF_CHECK_X(dpll_hw_state.pll10);
+		PIPE_CONF_CHECK_X(dpll_hw_state.pcsdw12);
+		PIPE_CONF_CHECK_X(dpll_hw_state.mg_refclkin_ctl);
+		PIPE_CONF_CHECK_X(dpll_hw_state.mg_clktop2_coreclkctl1);
+		PIPE_CONF_CHECK_X(dpll_hw_state.mg_clktop2_hsclkctl);
+		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_div0);
+		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_div1);
+		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_lf);
+		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_frac_lock);
+		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_ssc);
+		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_bias);
+		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_tdc_coldst_bias);
+	}
+
+	PIPE_CONF_CHECK_X(dsi_pll.ctrl);
+	PIPE_CONF_CHECK_X(dsi_pll.div);
+
+	if (IS_G4X(dev_priv) || DISPLAY_VER(dev_priv) >= 5)
+		PIPE_CONF_CHECK_I(pipe_bpp);
+
+	PIPE_CONF_CHECK_CLOCK_FUZZY(hw.pipe_mode.crtc_clock);
+	PIPE_CONF_CHECK_CLOCK_FUZZY(hw.adjusted_mode.crtc_clock);
+	PIPE_CONF_CHECK_CLOCK_FUZZY(port_clock);
+
+	PIPE_CONF_CHECK_I(min_voltage_level);
+
+	if (current_config->has_psr || pipe_config->has_psr)
+		PIPE_CONF_CHECK_X_WITH_MASK(infoframes.enable,
+					    ~intel_hdmi_infoframe_enable(DP_SDP_VSC));
+	else
+		PIPE_CONF_CHECK_X(infoframes.enable);
+
+	PIPE_CONF_CHECK_X(infoframes.gcp);
+	PIPE_CONF_CHECK_INFOFRAME(avi);
+	PIPE_CONF_CHECK_INFOFRAME(spd);
+	PIPE_CONF_CHECK_INFOFRAME(hdmi);
+	PIPE_CONF_CHECK_INFOFRAME(drm);
+	PIPE_CONF_CHECK_DP_VSC_SDP(vsc);
+
+	PIPE_CONF_CHECK_X(sync_mode_slaves_mask);
+	PIPE_CONF_CHECK_I(master_transcoder);
+	PIPE_CONF_CHECK_X(bigjoiner_pipes);
+
+	PIPE_CONF_CHECK_I(dsc.compression_enable);
+	PIPE_CONF_CHECK_I(dsc.dsc_split);
+	PIPE_CONF_CHECK_I(dsc.compressed_bpp);
+
+	PIPE_CONF_CHECK_BOOL(splitter.enable);
+	PIPE_CONF_CHECK_I(splitter.link_count);
+	PIPE_CONF_CHECK_I(splitter.pixel_overlap);
+
+	PIPE_CONF_CHECK_BOOL(vrr.enable);
+	PIPE_CONF_CHECK_I(vrr.vmin);
+	PIPE_CONF_CHECK_I(vrr.vmax);
+	PIPE_CONF_CHECK_I(vrr.flipline);
+	PIPE_CONF_CHECK_I(vrr.pipeline_full);
+	PIPE_CONF_CHECK_I(vrr.guardband);
+
+#undef PIPE_CONF_CHECK_X
+#undef PIPE_CONF_CHECK_I
+#undef PIPE_CONF_CHECK_BOOL
+#undef PIPE_CONF_CHECK_BOOL_INCOMPLETE
+#undef PIPE_CONF_CHECK_P
+#undef PIPE_CONF_CHECK_FLAGS
+#undef PIPE_CONF_CHECK_CLOCK_FUZZY
+#undef PIPE_CONF_CHECK_COLOR_LUT
+#undef PIPE_CONF_CHECK_TIMINGS
+#undef PIPE_CONF_CHECK_RECT
+#undef PIPE_CONF_QUIRK
+
+	return ret;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_pipe_config_compare.h b/drivers/gpu/drm/i915/display/intel_pipe_config_compare.h
new file mode 100644
index 000000000000..f57d6c7a305e
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_pipe_config_compare.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef __INTEL_PIPE_CONFIG_COMPARE_H__
+#define __INTEL_PIPE_CONFIG_COMPARE_H__
+
+#include <linux/types.h>
+
+struct intel_crtc_state;
+
+bool intel_pipe_config_compare(const struct intel_crtc_state *current_config,
+			       const struct intel_crtc_state *pipe_config,
+			       bool fastset);
+
+#endif /* __INTEL_PIPE_CONFIG_COMPARE_H__ */
-- 
2.30.2

