Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02961997BA3
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2024 06:08:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AA7C10E851;
	Thu, 10 Oct 2024 04:08:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cpaduf1s";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70E3910E852;
 Thu, 10 Oct 2024 04:08:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728533326; x=1760069326;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uc+eCdFZnIk770ZN0fVHMopXYjK4yi/+oe0LroQLr/M=;
 b=cpaduf1sNmfZOrIYEGTWmbZYqyy3B7TmOVTFF1P9Vv/lt68DUJJNbCd4
 ymI8uD7AnUMV+3M+99qmrLy7URvkXe4zE6Qd1ZrVD0msYTUps50F5H3/3
 1E79f3WvRXkVEIq3Zghb19WBNWcS+Rh01XLEAorA1St5Xy2HIM5hYlaX2
 Z/IVr4ICKtcpjYhoL6en+TNuGLL8hKKuGPUcQvC0DA7Euxag8sTo8D4I/
 sIBuOnevQwBkSErCBXAoSRq/MFO0fCkonwzrIaqGWaLl8izlF067I8VXp
 cFtV/0zouGMVGAUdmo5TnMhyW33K4KqRz1uXTGkJOMD7C07ON+uKOMKRZ Q==;
X-CSE-ConnectionGUID: FU1peS28TMyyJKF/AQ/Reg==
X-CSE-MsgGUID: g+69Da8+QSWSe491/v5KEw==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="27986964"
X-IronPort-AV: E=Sophos;i="6.11,191,1725346800"; d="scan'208";a="27986964"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 21:08:46 -0700
X-CSE-ConnectionGUID: +6kVqckqQ0uK51WhbrROig==
X-CSE-MsgGUID: P25cWc8rSYu7EhUubU7u0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,191,1725346800"; d="scan'208";a="99782659"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 21:08:43 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	uma.shankar@intel.com
Subject: [PATCH 3/4] drm/i915/display: Add bits for Wa_14021768792 for linkm/n
 ratio > 10
Date: Thu, 10 Oct 2024 09:40:44 +0530
Message-ID: <20241010041045.2014069-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241010041045.2014069-1-ankit.k.nautiyal@intel.com>
References: <20241010041045.2014069-1-ankit.k.nautiyal@intel.com>
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

To support Link M/N ratio between 10.0 and 15.0, for some BMG ultrajoiner
cases we need Wa_14021768792.

To bypass the hardware limitation within the Timing Generator DDA (TGDDA),
we need to program the LINKM and LINKN registers as defined in
the WA. Along with this we also need relvant bits in HDMI_EMP_DATA and
CHICKEN_TRANS regs.

Add the bits for the WA and a new member 'bmg_bypass_m_n_ratio_limit' to
track if we need to bypass the Link M/N ratio limit in intel_link_m_n
structure.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 119 +++++++++++++++++-
 .../drm/i915/display/intel_display_types.h    |   2 +
 drivers/gpu/drm/i915/i915_reg.h               |   5 +
 3 files changed, 120 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 9407eebf731b..75274f567ee6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2744,6 +2744,20 @@ void intel_zero_m_n(struct intel_link_m_n *m_n)
 	m_n->tu = 1;
 }
 
+static
+u8 bmg_get_link_n_ext(const struct intel_link_m_n *m_n)
+{
+	int m_n_ratio, m_n_frac;
+
+	if (!m_n->link_n)
+		return 0;
+
+	m_n_ratio = DIV_ROUND_UP(m_n->link_m, m_n->link_n);
+	m_n_frac = m_n->link_m % m_n->link_n;
+
+	return m_n_ratio + (m_n_frac  > 0 ? 1 : 0);
+}
+
 void intel_set_m_n(struct drm_i915_private *i915,
 		   const struct intel_link_m_n *m_n,
 		   i915_reg_t data_m_reg, i915_reg_t data_n_reg,
@@ -2755,7 +2769,9 @@ void intel_set_m_n(struct drm_i915_private *i915,
 	intel_de_write(i915, data_n_reg, m_n->data_n);
 	intel_de_write(i915, link_m_reg, m_n->link_m);
 
-	if (DISPLAY_VER(i915) >= 14)
+	if (DISPLAY_VER(i915) >= 14 && m_n->bypass_m_n_ratio_limit)
+		link_n |= PIPE_LINK_N1_EXTENDED(bmg_get_link_n_ext(m_n));
+	else if (DISPLAY_VER(i915) >= 14)
 		link_n &= ~PIPE_LINK_N1_EXTENDED_MASK;
 	else
 		link_n &= DATA_LINK_M_N_MASK;
@@ -2775,6 +2791,24 @@ bool intel_cpu_transcoder_has_m2_n2(struct drm_i915_private *dev_priv,
 	return IS_DISPLAY_VER(dev_priv, 5, 7) || IS_CHERRYVIEW(dev_priv);
 }
 
+static
+void bmg_bypass_m_n_limit_write(struct intel_crtc *crtc,
+				enum transcoder transcoder,
+				const struct intel_link_m_n *m_n)
+{
+	struct intel_display *display = to_intel_display(crtc);
+	int m_n_frac;
+	enum pipe pipe = crtc->pipe;
+
+	if (!m_n->link_n)
+		return;
+
+	m_n_frac = m_n->link_m % m_n->link_n;
+
+	intel_de_rmw(display, MTL_CHICKEN_TRANS(transcoder), 0, BMG_DP_BYPASS_M_N_LIMIT);
+	intel_de_write(display, HDMI_EMP_DATA(pipe), m_n_frac);
+}
+
 void intel_cpu_transcoder_set_m1_n1(struct intel_crtc *crtc,
 				    enum transcoder transcoder,
 				    const struct intel_link_m_n *m_n)
@@ -2792,6 +2826,9 @@ void intel_cpu_transcoder_set_m1_n1(struct intel_crtc *crtc,
 		intel_set_m_n(dev_priv, m_n,
 			      PIPE_DATA_M_G4X(pipe), PIPE_DATA_N_G4X(pipe),
 			      PIPE_LINK_M_G4X(pipe), PIPE_LINK_N_G4X(pipe));
+
+	if (m_n->bypass_m_n_ratio_limit)
+		bmg_bypass_m_n_limit_write(crtc, transcoder, m_n);
 }
 
 void intel_cpu_transcoder_set_m2_n2(struct intel_crtc *crtc,
@@ -2808,6 +2845,9 @@ void intel_cpu_transcoder_set_m2_n2(struct intel_crtc *crtc,
 		      PIPE_DATA_N2(dev_priv, transcoder),
 		      PIPE_LINK_M2(dev_priv, transcoder),
 		      PIPE_LINK_N2(dev_priv, transcoder));
+
+	if (m_n->bypass_m_n_ratio_limit)
+		bmg_bypass_m_n_limit_write(crtc, transcoder, m_n);
 }
 
 static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
@@ -3475,22 +3515,68 @@ void intel_get_m_n(struct drm_i915_private *i915,
 	m_n->link_m = intel_de_read(i915, link_m_reg) & DATA_LINK_M_N_MASK;
 	m_n->link_n = intel_de_read(i915, link_n_reg);
 
-	if (DISPLAY_VER(i915) >= 14)
+	if (DISPLAY_VER(i915) >= 14) {
+		u8 link_n_ext = REG_FIELD_GET(PIPE_LINK_N1_EXTENDED_MASK, m_n->link_n);
+
 		m_n->link_n &= ~PIPE_LINK_N1_EXTENDED_MASK;
-	else
+		drm_WARN_ON(&i915->drm, link_n_ext && link_n_ext != bmg_get_link_n_ext(m_n));
+	} else {
 		m_n->link_n &= DATA_LINK_M_N_MASK;
+	}
 
 	m_n->data_m = intel_de_read(i915, data_m_reg) & DATA_LINK_M_N_MASK;
 	m_n->data_n = intel_de_read(i915, data_n_reg) & DATA_LINK_M_N_MASK;
 	m_n->tu = REG_FIELD_GET(TU_SIZE_MASK, intel_de_read(i915, data_m_reg)) + 1;
 }
 
+static
+void bmg_bypass_m_n_limit_read(struct intel_crtc *crtc,
+			       enum transcoder transcoder,
+			       struct intel_link_m_n *m_n)
+{
+	struct intel_display *display = to_intel_display(crtc);
+	enum pipe pipe = crtc->pipe;
+	u32 chicken_trans, m_n_frac;
+
+	chicken_trans = intel_de_read(display, MTL_CHICKEN_TRANS(transcoder));
+	m_n_frac = intel_de_read(display, HDMI_EMP_DATA(pipe));
+
+	if (!m_n->link_n)
+		return;
+
+	if ((chicken_trans & BMG_DP_BYPASS_M_N_LIMIT) &&
+	    m_n_frac == (m_n->link_m % m_n->link_n))
+		m_n->bypass_m_n_ratio_limit = true;
+}
+
+static
+int bmg_can_bypass_m_n_limit(struct intel_display *display,
+			     int m_n_ratio,
+			     enum pipe pipe)
+{
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
+	if (DISPLAY_VER(display) != 14 || !IS_DGFX(i915) ||
+	    !IS_DISPLAY_STEP(display, STEP_C0, STEP_FOREVER))
+		return false;
+
+	if (pipe != PIPE_A)
+		return false;
+
+	if (m_n_ratio > 15)
+		return false;
+
+	return true;
+}
+
 void intel_cpu_transcoder_get_m1_n1(struct intel_crtc *crtc,
 				    enum transcoder transcoder,
 				    struct intel_link_m_n *m_n)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	enum pipe pipe = crtc->pipe;
+	int m_n_ratio;
 
 	if (DISPLAY_VER(dev_priv) >= 5)
 		intel_get_m_n(dev_priv, m_n,
@@ -3502,6 +3588,14 @@ void intel_cpu_transcoder_get_m1_n1(struct intel_crtc *crtc,
 		intel_get_m_n(dev_priv, m_n,
 			      PIPE_DATA_M_G4X(pipe), PIPE_DATA_N_G4X(pipe),
 			      PIPE_LINK_M_G4X(pipe), PIPE_LINK_N_G4X(pipe));
+
+	if (!m_n->link_n)
+		return;
+
+	m_n_ratio = DIV_ROUND_UP(m_n->link_m, m_n->link_n);
+
+	if (bmg_can_bypass_m_n_limit(display, m_n_ratio, pipe))
+		bmg_bypass_m_n_limit_read(crtc, transcoder, m_n);
 }
 
 void intel_cpu_transcoder_get_m2_n2(struct intel_crtc *crtc,
@@ -3509,6 +3603,9 @@ void intel_cpu_transcoder_get_m2_n2(struct intel_crtc *crtc,
 				    struct intel_link_m_n *m_n)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
+	enum pipe pipe = crtc->pipe;
+	int m_n_ratio;
 
 	if (!intel_cpu_transcoder_has_m2_n2(dev_priv, transcoder))
 		return;
@@ -3518,6 +3615,14 @@ void intel_cpu_transcoder_get_m2_n2(struct intel_crtc *crtc,
 		      PIPE_DATA_N2(dev_priv, transcoder),
 		      PIPE_LINK_M2(dev_priv, transcoder),
 		      PIPE_LINK_N2(dev_priv, transcoder));
+
+	if (!m_n->link_n)
+		return;
+
+	m_n_ratio = DIV_ROUND_UP(m_n->link_m, m_n->link_n);
+
+	if (bmg_can_bypass_m_n_limit(display, m_n_ratio, pipe))
+		bmg_bypass_m_n_limit_read(crtc, transcoder, m_n);
 }
 
 static void ilk_get_pfit_config(struct intel_crtc_state *crtc_state)
@@ -5426,18 +5531,20 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	if (!intel_compare_link_m_n(&current_config->name, \
 				    &pipe_config->name)) { \
 		pipe_config_mismatch(&p, fastset, crtc, __stringify(name), \
-				     "(expected tu %i data %i/%i link %i/%i, " \
-				     "found tu %i, data %i/%i link %i/%i)", \
+				     "(expected tu %i data %i/%i link %i/%i bypass_m_n_ratio_limit %s, " \
+				     "found tu %i, data %i/%i link %i/%i bypass_m_n_ratio_limit %s)", \
 				     current_config->name.tu, \
 				     current_config->name.data_m, \
 				     current_config->name.data_n, \
 				     current_config->name.link_m, \
 				     current_config->name.link_n, \
+				     str_yes_no(current_config->name.bypass_m_n_ratio_limit), \
 				     pipe_config->name.tu, \
 				     pipe_config->name.data_m, \
 				     pipe_config->name.data_n, \
 				     pipe_config->name.link_m, \
-				     pipe_config->name.link_n); \
+				     pipe_config->name.link_n, \
+				     str_yes_no(pipe_config->name.bypass_m_n_ratio_limit)); \
 		ret = false; \
 	} \
 } while (0)
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 2bb1fa64da2f..20be908581c7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -901,6 +901,8 @@ struct intel_link_m_n {
 	u32 data_n;
 	u32 link_m;
 	u32 link_n;
+	/* Wa_14021768792 for linkm/n ratio > 10 */
+	bool bypass_m_n_ratio_limit;
 };
 
 struct intel_csc_matrix {
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index c605642ffc3e..2b964821a334 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1147,6 +1147,10 @@
 #define _TRANS_MULT_B		0x6102c
 #define TRANS_MULT(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_MULT_A)
 
+#define _HDMI_EMP_DATA_A	0x600d8
+#define _HDMI_EMP_DATA_B	0x610d8
+#define HDMI_EMP_DATA(pipe)	_MMIO_PIPE(pipe, _HDMI_EMP_DATA_A, _HDMI_EMP_DATA_B)
+
 /* VGA port control */
 #define ADPA			_MMIO(0x61100)
 #define PCH_ADPA                _MMIO(0xe1100)
@@ -2836,6 +2840,7 @@
 #define   PSR2_ADD_VERTICAL_LINE_COUNT	REG_BIT(15)
 #define   DP_FEC_BS_JITTER_WA		REG_BIT(15)
 #define   PSR2_VSC_ENABLE_PROG_HEADER	REG_BIT(12)
+#define   BMG_DP_BYPASS_M_N_LIMIT	REG_BIT(11)
 #define   DP_DSC_INSERT_SF_AT_EOL_WA	REG_BIT(4)
 #define   HDCP_LINE_REKEY_DISABLE	REG_BIT(0)
 
-- 
2.45.2

