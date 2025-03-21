Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD557A6BA03
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 12:38:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 241FB10E7B7;
	Fri, 21 Mar 2025 11:38:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jmafj0bS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1255110E7B3;
 Fri, 21 Mar 2025 11:38:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742557128; x=1774093128;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kPd36xyJyT1XoAuc2gQ0QgoUtMlMFlBnf5o+fxMl8jE=;
 b=jmafj0bSsWNaTDbfJpzUYOyWJl+lI8D8k6JbGuX65GJcGJjko0vG1rDc
 gp+nn550frfH8OATn7n1CM42YervoLSSvyi2mgGGn9TGQmVAqzNN2N9Nc
 kPAMMxqIdyhs75NxAbV739y/1gn45Su4gMllLYkxacgyN1vPkIOyskYke
 e/Ds1PdpRBft8zDr+DBHi5VXD5j0TPNQn0C8yr6mRGAThRN/Mwrzz8yGm
 IoVsR+K04+NxD1ZcBnKccfy44/Cd4i5G83FEb7R0ptwmpEoiZ/pI3L7ya
 CNOwb8fPgiW9DwwA6k46NwN6ELAlHcfnoMR+v9tiReHhhSVRSWbTgfU62 Q==;
X-CSE-ConnectionGUID: Cgl0J16XR8esGr2xU/ZkoA==
X-CSE-MsgGUID: Ti2/ck5eRNS37aprVyHpvQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11379"; a="61216884"
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="61216884"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 04:38:48 -0700
X-CSE-ConnectionGUID: jTjH7m3yS7iaIxBd7TVU+Q==
X-CSE-MsgGUID: TzVQH7FZRB+3vkSG3guLYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="128206602"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 04:38:46 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	uma.shankar@intel.com
Subject: [PATCH 3/4] drm/i915/display: Add bits for Wa_14021768792 for linkm/n
 ratio > 10
Date: Fri, 21 Mar 2025 16:56:49 +0530
Message-ID: <20250321112650.3594298-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250321112650.3594298-1-ankit.k.nautiyal@intel.com>
References: <20250321112650.3594298-1-ankit.k.nautiyal@intel.com>
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
 drivers/gpu/drm/i915/display/intel_display.c  | 117 +++++++++++++++++-
 .../drm/i915/display/intel_display_types.h    |   2 +
 drivers/gpu/drm/i915/i915_reg.h               |   5 +
 3 files changed, 118 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c50dce9afd9b..8a6b9196ef9b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2606,6 +2606,20 @@ void intel_zero_m_n(struct intel_link_m_n *m_n)
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
 void intel_set_m_n(struct intel_display *display,
 		   const struct intel_link_m_n *m_n,
 		   i915_reg_t data_m_reg, i915_reg_t data_n_reg,
@@ -2617,7 +2631,9 @@ void intel_set_m_n(struct intel_display *display,
 	intel_de_write(display, data_n_reg, m_n->data_n);
 	intel_de_write(display, link_m_reg, m_n->link_m);
 
-	if (DISPLAY_VER(display) >= 14)
+	if (DISPLAY_VER(display) >= 14 && m_n->bypass_m_n_ratio_limit)
+		link_n |= PIPE_LINK_N1_EXTENDED(bmg_get_link_n_ext(m_n));
+	else if (DISPLAY_VER(display) >= 14)
 		link_n &= ~PIPE_LINK_N1_EXTENDED_MASK;
 	else
 		link_n &= DATA_LINK_M_N_MASK;
@@ -2638,6 +2654,24 @@ bool intel_cpu_transcoder_has_m2_n2(struct intel_display *display,
 	return IS_DISPLAY_VER(display, 5, 7) || display->platform.cherryview;
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
+	intel_de_rmw(display, CHICKEN_TRANS(display, transcoder), 0, BMG_DP_BYPASS_M_N_LIMIT);
+	intel_de_write(display, HDMI_EMP_DATA(pipe), m_n_frac);
+}
+
 void intel_cpu_transcoder_set_m1_n1(struct intel_crtc *crtc,
 				    enum transcoder transcoder,
 				    const struct intel_link_m_n *m_n)
@@ -2655,6 +2689,9 @@ void intel_cpu_transcoder_set_m1_n1(struct intel_crtc *crtc,
 		intel_set_m_n(display, m_n,
 			      PIPE_DATA_M_G4X(pipe), PIPE_DATA_N_G4X(pipe),
 			      PIPE_LINK_M_G4X(pipe), PIPE_LINK_N_G4X(pipe));
+
+	if (m_n->bypass_m_n_ratio_limit)
+		bmg_bypass_m_n_limit_write(crtc, transcoder, m_n);
 }
 
 void intel_cpu_transcoder_set_m2_n2(struct intel_crtc *crtc,
@@ -2671,6 +2708,9 @@ void intel_cpu_transcoder_set_m2_n2(struct intel_crtc *crtc,
 		      PIPE_DATA_N2(display, transcoder),
 		      PIPE_LINK_M2(display, transcoder),
 		      PIPE_LINK_N2(display, transcoder));
+
+	if (m_n->bypass_m_n_ratio_limit)
+		bmg_bypass_m_n_limit_write(crtc, transcoder, m_n);
 }
 
 static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
@@ -3317,22 +3357,67 @@ void intel_get_m_n(struct intel_display *display,
 	m_n->link_m = intel_de_read(display, link_m_reg) & DATA_LINK_M_N_MASK;
 	m_n->link_n = intel_de_read(display, link_n_reg);
 
-	if (DISPLAY_VER(display) >= 14)
+	if (DISPLAY_VER(display) >= 14) {
+		u8 link_n_ext = REG_FIELD_GET(PIPE_LINK_N1_EXTENDED_MASK, m_n->link_n);
+
 		m_n->link_n &= ~PIPE_LINK_N1_EXTENDED_MASK;
-	else
+		drm_WARN_ON(display->drm, link_n_ext && link_n_ext != bmg_get_link_n_ext(m_n));
+	} else {
 		m_n->link_n &= DATA_LINK_M_N_MASK;
+	}
 
 	m_n->data_m = intel_de_read(display, data_m_reg) & DATA_LINK_M_N_MASK;
 	m_n->data_n = intel_de_read(display, data_n_reg) & DATA_LINK_M_N_MASK;
 	m_n->tu = REG_FIELD_GET(TU_SIZE_MASK, intel_de_read(display, data_m_reg)) + 1;
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
+	chicken_trans = intel_de_read(display, CHICKEN_TRANS(display, transcoder));
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
 	struct intel_display *display = to_intel_display(crtc);
 	enum pipe pipe = crtc->pipe;
+	int m_n_ratio;
 
 	if (DISPLAY_VER(display) >= 5)
 		intel_get_m_n(display, m_n,
@@ -3344,6 +3429,14 @@ void intel_cpu_transcoder_get_m1_n1(struct intel_crtc *crtc,
 		intel_get_m_n(display, m_n,
 			      PIPE_DATA_M_G4X(pipe), PIPE_DATA_N_G4X(pipe),
 			      PIPE_LINK_M_G4X(pipe), PIPE_LINK_N_G4X(pipe));
+	if (!m_n->link_n)
+		return;
+
+	m_n_ratio = DIV_ROUND_UP(m_n->link_m, m_n->link_n);
+
+	if (bmg_can_bypass_m_n_limit(display, m_n_ratio, pipe))
+		bmg_bypass_m_n_limit_read(crtc, transcoder, m_n);
+
 }
 
 void intel_cpu_transcoder_get_m2_n2(struct intel_crtc *crtc,
@@ -3351,6 +3444,8 @@ void intel_cpu_transcoder_get_m2_n2(struct intel_crtc *crtc,
 				    struct intel_link_m_n *m_n)
 {
 	struct intel_display *display = to_intel_display(crtc);
+	enum pipe pipe = crtc->pipe;
+	int m_n_ratio;
 
 	if (!intel_cpu_transcoder_has_m2_n2(display, transcoder))
 		return;
@@ -3360,6 +3455,14 @@ void intel_cpu_transcoder_get_m2_n2(struct intel_crtc *crtc,
 		      PIPE_DATA_N2(display, transcoder),
 		      PIPE_LINK_M2(display, transcoder),
 		      PIPE_LINK_N2(display, transcoder));
+
+	if (!m_n->link_n)
+		return;
+
+	m_n_ratio = DIV_ROUND_UP(m_n->link_m, m_n->link_n);
+
+	if (bmg_can_bypass_m_n_limit(display, m_n_ratio, pipe))
+		bmg_bypass_m_n_limit_read(crtc, transcoder, m_n);
 }
 
 static bool ilk_get_pipe_config(struct intel_crtc *crtc,
@@ -5087,18 +5190,20 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
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
index 99a6fd2900b9..6d02e206a6fa 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -923,6 +923,8 @@ struct intel_link_m_n {
 	u32 data_n;
 	u32 link_m;
 	u32 link_n;
+	/* Wa_14021768792 for linkm/n ratio > 10 */
+	bool bypass_m_n_ratio_limit;
 };
 
 struct intel_csc_matrix {
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index a2054aced4f8..6c8e3717329f 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1175,6 +1175,10 @@
 #define _TRANS_MULT_B		0x6102c
 #define TRANS_MULT(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_MULT_A)
 
+#define _HDMI_EMP_DATA_A	0x600d8
+#define _HDMI_EMP_DATA_B	0x610d8
+#define HDMI_EMP_DATA(pipe)	_MMIO_PIPE(pipe, _HDMI_EMP_DATA_A, _HDMI_EMP_DATA_B)
+
 /* Hotplug control (945+ only) */
 #define PORT_HOTPLUG_EN(dev_priv)		_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61110)
 #define   PORTB_HOTPLUG_INT_EN			(1 << 29)
@@ -2500,6 +2504,7 @@
 #define   DDIE_TRAINING_OVERRIDE_VALUE	REG_BIT(16) /* CHICKEN_TRANS_A only */
 #define   PSR2_ADD_VERTICAL_LINE_COUNT	REG_BIT(15)
 #define   DP_FEC_BS_JITTER_WA		REG_BIT(15)
+#define   BMG_DP_BYPASS_M_N_LIMIT	REG_BIT(11)
 #define   PSR2_VSC_ENABLE_PROG_HEADER	REG_BIT(12)
 #define   DP_DSC_INSERT_SF_AT_EOL_WA	REG_BIT(4)
 #define   HDCP_LINE_REKEY_DISABLE	REG_BIT(0)
-- 
2.45.2

