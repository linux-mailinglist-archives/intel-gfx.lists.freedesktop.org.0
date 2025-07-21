Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A52DB0C042
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Jul 2025 11:26:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C89CE10E4C6;
	Mon, 21 Jul 2025 09:26:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fiCiKUFc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07CF310E4C5;
 Mon, 21 Jul 2025 09:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753089967; x=1784625967;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sWwWnXyRvuuuGK4se634zWbba3e++CvmkVdge/YDxGE=;
 b=fiCiKUFcACzMaIlsKav5vplznHfj1KJRtvrCi5SZJRwvC+UlsrXVPfrZ
 19NqIyJ+SxN8k80j0I0yG4a1/NEmliRmMd50l3iZpufLDaH1ja+WLNXvZ
 XQV7iS9CEja9M0D8CTwBfJ2MLNd7KJqFPdeIhh4SHsQ7aU/bqW7aTJzjt
 +WIhkK0VlU3wDhwrISx6XC/s6WViMsKjouL+YOOplkssU3nQRG5wTVEEf
 8B6Es3A2NpdZvcVNmVx/66c2rEXAOMUAghNBOZa46/8CrxfW+CAELEvxy
 3zvIZNJstIlJGoC5TbQAwWjcCNL6Jqm+WPkBrz+TZwvGn5MZ2puWI6OWO w==;
X-CSE-ConnectionGUID: 5txgKgVPQFCvSgjxP8V+Kw==
X-CSE-MsgGUID: wCB0fXkiSKivuvzKbE7dSQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11498"; a="55455388"
X-IronPort-AV: E=Sophos;i="6.16,328,1744095600"; d="scan'208";a="55455388"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 02:26:06 -0700
X-CSE-ConnectionGUID: /5wyOzw7RG+nM8zEdqU5Eg==
X-CSE-MsgGUID: 9EAzcGT5Sw6EYeb8XMEjfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,328,1744095600"; d="scan'208";a="163335165"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 02:26:04 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 7/9] drm/i915/display: Add bits for Wa_14021768792 for linkm/n
 ratio > 10
Date: Mon, 21 Jul 2025 14:45:27 +0530
Message-ID: <20250721091529.3864004-8-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250721091529.3864004-1-ankit.k.nautiyal@intel.com>
References: <20250721091529.3864004-1-ankit.k.nautiyal@intel.com>
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
 drivers/gpu/drm/i915/display/intel_display.c  | 115 +++++++++++++++++-
 .../gpu/drm/i915/display/intel_display_regs.h |   5 +
 .../drm/i915/display/intel_display_types.h    |   2 +
 3 files changed, 116 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 5232478613aa..bb50928762f6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -76,6 +76,7 @@
 #include "intel_display_regs.h"
 #include "intel_display_rpm.h"
 #include "intel_display_types.h"
+#include "intel_display_wa.h"
 #include "intel_dmc.h"
 #include "intel_dp.h"
 #include "intel_dp_link_training.h"
@@ -2573,6 +2574,20 @@ void intel_zero_m_n(struct intel_link_m_n *m_n)
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
@@ -2584,7 +2599,9 @@ void intel_set_m_n(struct intel_display *display,
 	intel_de_write(display, data_n_reg, m_n->data_n);
 	intel_de_write(display, link_m_reg, m_n->link_m);
 
-	if (DISPLAY_VER(display) >= 14)
+	if (DISPLAY_VER(display) >= 14 && m_n->bypass_m_n_ratio_limit)
+		link_n |= PIPE_LINK_N1_EXTENDED(bmg_get_link_n_ext(m_n));
+	else if (DISPLAY_VER(display) >= 14)
 		link_n &= ~PIPE_LINK_N1_EXTENDED_MASK;
 	else
 		link_n &= DATA_LINK_M_N_MASK;
@@ -2605,6 +2622,24 @@ bool intel_cpu_transcoder_has_m2_n2(struct intel_display *display,
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
@@ -2622,6 +2657,9 @@ void intel_cpu_transcoder_set_m1_n1(struct intel_crtc *crtc,
 		intel_set_m_n(display, m_n,
 			      PIPE_DATA_M_G4X(pipe), PIPE_DATA_N_G4X(pipe),
 			      PIPE_LINK_M_G4X(pipe), PIPE_LINK_N_G4X(pipe));
+
+	if (m_n->bypass_m_n_ratio_limit)
+		bmg_bypass_m_n_limit_write(crtc, transcoder, m_n);
 }
 
 void intel_cpu_transcoder_set_m2_n2(struct intel_crtc *crtc,
@@ -2638,6 +2676,9 @@ void intel_cpu_transcoder_set_m2_n2(struct intel_crtc *crtc,
 		      PIPE_DATA_N2(display, transcoder),
 		      PIPE_LINK_M2(display, transcoder),
 		      PIPE_LINK_N2(display, transcoder));
+
+	if (m_n->bypass_m_n_ratio_limit)
+		bmg_bypass_m_n_limit_write(crtc, transcoder, m_n);
 }
 
 static bool
@@ -3331,22 +3372,64 @@ void intel_get_m_n(struct intel_display *display,
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
+bool intel_display_can_bypass_m_n_limit(struct intel_display *display,
+					int m_n_ratio,
+					enum pipe pipe)
+{
+	if (m_n_ratio > 15)
+		return false;
+
+	if (pipe != PIPE_A)
+		return false;
+
+	if (!intel_display_wa(display, 14021768792))
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
@@ -3358,6 +3441,14 @@ void intel_cpu_transcoder_get_m1_n1(struct intel_crtc *crtc,
 		intel_get_m_n(display, m_n,
 			      PIPE_DATA_M_G4X(pipe), PIPE_DATA_N_G4X(pipe),
 			      PIPE_LINK_M_G4X(pipe), PIPE_LINK_N_G4X(pipe));
+	if (!m_n->link_n)
+		return;
+
+	m_n_ratio = DIV_ROUND_UP(m_n->link_m, m_n->link_n);
+
+	if (intel_display_can_bypass_m_n_limit(display, m_n_ratio, pipe))
+		bmg_bypass_m_n_limit_read(crtc, transcoder, m_n);
+
 }
 
 void intel_cpu_transcoder_get_m2_n2(struct intel_crtc *crtc,
@@ -3365,6 +3456,8 @@ void intel_cpu_transcoder_get_m2_n2(struct intel_crtc *crtc,
 				    struct intel_link_m_n *m_n)
 {
 	struct intel_display *display = to_intel_display(crtc);
+	enum pipe pipe = crtc->pipe;
+	int m_n_ratio;
 
 	if (!intel_cpu_transcoder_has_m2_n2(display, transcoder))
 		return;
@@ -3374,6 +3467,14 @@ void intel_cpu_transcoder_get_m2_n2(struct intel_crtc *crtc,
 		      PIPE_DATA_N2(display, transcoder),
 		      PIPE_LINK_M2(display, transcoder),
 		      PIPE_LINK_N2(display, transcoder));
+
+	if (!m_n->link_n)
+		return;
+
+	m_n_ratio = DIV_ROUND_UP(m_n->link_m, m_n->link_n);
+
+	if (intel_display_can_bypass_m_n_limit(display, m_n_ratio, pipe))
+		bmg_bypass_m_n_limit_read(crtc, transcoder, m_n);
 }
 
 static bool ilk_get_pipe_config(struct intel_crtc *crtc,
@@ -5106,18 +5207,20 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
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
diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index 9248561aec5f..ee7eb19920b2 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -411,6 +411,10 @@
 #define _TRANS_MULT_B		0x6102c
 #define TRANS_MULT(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_MULT_A)
 
+#define _HDMI_EMP_DATA_A	0x600d8
+#define _HDMI_EMP_DATA_B	0x610d8
+#define HDMI_EMP_DATA(pipe)	_MMIO_PIPE(pipe, _HDMI_EMP_DATA_A, _HDMI_EMP_DATA_B)
+
 /* Hotplug control (945+ only) */
 #define PORT_HOTPLUG_EN(dev_priv)		_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61110)
 #define   PORTB_HOTPLUG_INT_EN			(1 << 29)
@@ -1483,6 +1487,7 @@
 #define   PSR2_ADD_VERTICAL_LINE_COUNT	REG_BIT(15)
 #define   DP_FEC_BS_JITTER_WA		REG_BIT(15)
 #define   PSR2_VSC_ENABLE_PROG_HEADER	REG_BIT(12)
+#define   BMG_DP_BYPASS_M_N_LIMIT	REG_BIT(11)
 #define   DP_DSC_INSERT_SF_AT_EOL_WA	REG_BIT(4)
 #define   HDCP_LINE_REKEY_DISABLE	REG_BIT(0)
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 8f8019d40d77..55e0e8065af3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -935,6 +935,8 @@ struct intel_link_m_n {
 	u32 data_n;
 	u32 link_m;
 	u32 link_n;
+	/* Wa_14021768792 for linkm/n ratio > 10 */
+	bool bypass_m_n_ratio_limit;
 };
 
 struct intel_csc_matrix {
-- 
2.45.2

