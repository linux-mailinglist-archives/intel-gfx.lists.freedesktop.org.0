Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 655B396D7A9
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2024 13:53:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B341D10E878;
	Thu,  5 Sep 2024 11:53:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mi+rZCyV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26F3410E876;
 Thu,  5 Sep 2024 11:53:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725537212; x=1757073212;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DjAzBucOGtdUGlG3WN2yWhPXGbS4T/K+A7wPpeewaO0=;
 b=Mi+rZCyVWNa6XIdMK/BzDCwSfRdI/2m9fRH2oTiDTjTLcraHXYqOUcnj
 zdcfse/emcgEK+IA7phRIV4wd5+DsJ+AFMJWCWZ91S0j0l+rPby4R78+B
 WgHgywjq7oqlDVUVrR85Ns1AZkqqPmh/H1iSBwsULw2BcKjB3s+kUs7e0
 Wbw2Alfw51u/IE2nekQMfJ0xp+r49UKEpU7eGtgF53wt3BnZHCJDCciVI
 dkJf4fbbir3EGzRa+I6j1YOTYP0ar7uV2YbpjCC1PzNHijxdbNC5xmlgP
 2RuxWFrO9Er11FC84DZmf20fG6W61U8wpFkjvbHqoaDlS7XLUzwJwGHqY Q==;
X-CSE-ConnectionGUID: JmgoAQQ+R4y5+JwsHQP1rg==
X-CSE-MsgGUID: 2+B9rT6IQamaJJXvMGxdOg==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="24406113"
X-IronPort-AV: E=Sophos;i="6.10,204,1719903600"; d="scan'208";a="24406113"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2024 04:53:32 -0700
X-CSE-ConnectionGUID: 6eMfEI+oQNqnTenAy6clmQ==
X-CSE-MsgGUID: E34MdBvLQcunpJWf23yCtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,204,1719903600"; d="scan'208";a="65918167"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2024 04:53:31 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com
Subject: [PATCH 3/5] drm/i915/display: Add bits for Wa_14021768792 for linkm/n
 ratio > 10
Date: Thu,  5 Sep 2024 17:25:03 +0530
Message-ID: <20240905115505.3629087-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240905115505.3629087-1-ankit.k.nautiyal@intel.com>
References: <20240905115505.3629087-1-ankit.k.nautiyal@intel.com>
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
 drivers/gpu/drm/i915/display/intel_display.c  | 79 ++++++++++++++++++-
 .../drm/i915/display/intel_display_types.h    |  2 +
 drivers/gpu/drm/i915/i915_reg.h               |  5 ++
 3 files changed, 83 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a28500d5f969..d23f90096b0e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2683,6 +2683,19 @@ bool intel_cpu_transcoder_has_m2_n2(struct drm_i915_private *dev_priv,
 	return IS_DISPLAY_VER(dev_priv, 5, 7) || IS_CHERRYVIEW(dev_priv);
 }
 
+static
+void bmg_bypass_m_n_limit_write(struct intel_crtc *crtc,
+				enum transcoder transcoder,
+				const struct intel_link_m_n *m_n)
+{
+	struct intel_display *display = to_intel_display(crtc);
+	int m_n_frac = m_n->link_m % m_n->link_n;
+	enum pipe pipe = crtc->pipe;
+
+	intel_de_rmw(display, MTL_CHICKEN_TRANS(transcoder), 0, BMG_DP_BYPASS_M_N_LIMIT);
+	intel_de_write(display, HDMI_EMP_DATA(pipe), m_n_frac);
+}
+
 void intel_cpu_transcoder_set_m1_n1(struct intel_crtc *crtc,
 				    enum transcoder transcoder,
 				    const struct intel_link_m_n *m_n)
@@ -2700,6 +2713,9 @@ void intel_cpu_transcoder_set_m1_n1(struct intel_crtc *crtc,
 		intel_set_m_n(dev_priv, m_n,
 			      PIPE_DATA_M_G4X(pipe), PIPE_DATA_N_G4X(pipe),
 			      PIPE_LINK_M_G4X(pipe), PIPE_LINK_N_G4X(pipe));
+
+	if (m_n->bypass_m_n_ratio_limit)
+		bmg_bypass_m_n_limit_write(crtc, transcoder, m_n);
 }
 
 void intel_cpu_transcoder_set_m2_n2(struct intel_crtc *crtc,
@@ -2716,6 +2732,9 @@ void intel_cpu_transcoder_set_m2_n2(struct intel_crtc *crtc,
 		      PIPE_DATA_N2(dev_priv, transcoder),
 		      PIPE_LINK_M2(dev_priv, transcoder),
 		      PIPE_LINK_N2(dev_priv, transcoder));
+
+	if (m_n->bypass_m_n_ratio_limit)
+		bmg_bypass_m_n_limit_write(crtc, transcoder, m_n);
 }
 
 static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
@@ -3394,12 +3413,51 @@ void intel_get_m_n(struct drm_i915_private *i915,
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
@@ -3411,6 +3469,11 @@ void intel_cpu_transcoder_get_m1_n1(struct intel_crtc *crtc,
 		intel_get_m_n(dev_priv, m_n,
 			      PIPE_DATA_M_G4X(pipe), PIPE_DATA_N_G4X(pipe),
 			      PIPE_LINK_M_G4X(pipe), PIPE_LINK_N_G4X(pipe));
+
+	m_n_ratio = DIV_ROUND_UP(m_n->link_m, m_n->link_n);
+
+	if (bmg_can_bypass_m_n_limit(display, m_n_ratio, pipe))
+		bmg_bypass_m_n_limit_read(crtc, transcoder, m_n);
 }
 
 void intel_cpu_transcoder_get_m2_n2(struct intel_crtc *crtc,
@@ -3418,6 +3481,9 @@ void intel_cpu_transcoder_get_m2_n2(struct intel_crtc *crtc,
 				    struct intel_link_m_n *m_n)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
+	enum pipe pipe = crtc->pipe;
+	int m_n_ratio;
 
 	if (!intel_cpu_transcoder_has_m2_n2(dev_priv, transcoder))
 		return;
@@ -3427,6 +3493,11 @@ void intel_cpu_transcoder_get_m2_n2(struct intel_crtc *crtc,
 		      PIPE_DATA_N2(dev_priv, transcoder),
 		      PIPE_LINK_M2(dev_priv, transcoder),
 		      PIPE_LINK_N2(dev_priv, transcoder));
+
+	m_n_ratio = DIV_ROUND_UP(m_n->link_m, m_n->link_n);
+
+	if (bmg_can_bypass_m_n_limit(display, m_n_ratio, pipe))
+		bmg_bypass_m_n_limit_read(crtc, transcoder, m_n);
 }
 
 static void ilk_get_pfit_config(struct intel_crtc_state *crtc_state)
@@ -5175,20 +5246,22 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	if (!intel_compare_link_m_n(&current_config->name, \
 				    &pipe_config->name)) { \
 		pipe_config_mismatch(&p, fastset, crtc, __stringify(name), \
-				     "(expected tu %i data %i/%i link %i/%i link_n_ext %i, " \
-				     "found tu %i, data %i/%i link %i/%i link_n_ext %i)", \
+				     "(expected tu %i data %i/%i link %i/%i link_n_ext %i bypass_m_n_ratio_limit %s, " \
+				     "found tu %i, data %i/%i link %i/%i link_n_ext %i bypass_m_n_ratio_limit %s)", \
 				     current_config->name.tu, \
 				     current_config->name.data_m, \
 				     current_config->name.data_n, \
 				     current_config->name.link_m, \
 				     current_config->name.link_n, \
 				     current_config->name.link_n_ext, \
+				     str_yes_no(current_config->name.bypass_m_n_ratio_limit), \
 				     pipe_config->name.tu, \
 				     pipe_config->name.data_m, \
 				     pipe_config->name.data_n, \
 				     pipe_config->name.link_m, \
 				     pipe_config->name.link_n, \
-				     pipe_config->name.link_n_ext); \
+				     pipe_config->name.link_n_ext, \
+				     str_yes_no(pipe_config->name.bypass_m_n_ratio_limit)); \
 		ret = false; \
 	} \
 } while (0)
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 1328e2e89786..d7ea7d437a6d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1029,6 +1029,8 @@ struct intel_link_m_n {
 	u32 link_m;
 	u32 link_n;
 	u8 link_n_ext;
+	/* Wa_14021768792 for linkm/n ratio > 10 */
+	bool bypass_m_n_ratio_limit;
 };
 
 struct intel_csc_matrix {
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 941d273dbf8c..4e16a129d891 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1110,6 +1110,10 @@
 #define _TRANS_VSYNCSHIFT_A	0x60028
 #define _TRANS_MULT_A		0x6002c
 
+#define _HDMI_EMP_DATA_A	0x600d8
+#define _HDMI_EMP_DATA_B	0x610d8
+#define HDMI_EMP_DATA(pipe)	_MMIO_PIPE(pipe, _HDMI_EMP_DATA_A, _HDMI_EMP_DATA_B)
+
 /* Pipe/transcoder B timing regs */
 #define _TRANS_HTOTAL_B		0x61000
 #define _TRANS_HBLANK_B		0x61004
@@ -2802,6 +2806,7 @@
 #define   PSR2_ADD_VERTICAL_LINE_COUNT	REG_BIT(15)
 #define   DP_FEC_BS_JITTER_WA		REG_BIT(15)
 #define   PSR2_VSC_ENABLE_PROG_HEADER	REG_BIT(12)
+#define   BMG_DP_BYPASS_M_N_LIMIT	REG_BIT(11)
 #define   DP_DSC_INSERT_SF_AT_EOL_WA	REG_BIT(4)
 #define   HDCP_LINE_REKEY_DISABLE	REG_BIT(0)
 
-- 
2.45.2

