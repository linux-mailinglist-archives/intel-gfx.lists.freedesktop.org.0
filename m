Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4A0397B3B9
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 19:40:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 009A610E4E0;
	Tue, 17 Sep 2024 17:40:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KQXaFG+r";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67D1810E4EA;
 Tue, 17 Sep 2024 17:40:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726594817; x=1758130817;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Fpu9hdlf6ocz0JEaiDf/zkurb2PE2O2vE6Eo9w1ahtU=;
 b=KQXaFG+rWL//XUBDBr4TngbsAVZRNISyp3hLyID2Qs0VEXHLpGMdVEh4
 Lgd/hLhXLjd79dPQ4iQYDmHTEzQnXVqwcfxWGRY0eOLyfpDgtE7Vy0EQu
 6bBb3c+5swfEyC0TEmpAX6QG4IXFcVxqiCE3wMTt79irZx3svwXLMsQq7
 j7wPU+PjVhJqbktFgvGhLmKUe1Q9NcdOt8UrhIQbzAFarQMihuxrg963b
 frAcSZEAAlWIHXbDLhsOChKMSBX7HEB5yOHw7YQ1yBXOz0OkrR1BstzWW
 iWX5lN7PNBJKQf7qDSu9eYLvMzTBBESVQmCMZ/by87fRjPzBs/Qp9yzRo Q==;
X-CSE-ConnectionGUID: vNf3rE/jTh6cqveQO3GarA==
X-CSE-MsgGUID: ebWcXat7T5mcXwKUnmFuLw==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="13560980"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="13560980"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 10:40:17 -0700
X-CSE-ConnectionGUID: 5RFbklvuQv2xViL5uvwKbw==
X-CSE-MsgGUID: jfmQifBCR3Kn55JjSAn22A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="69486167"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 10:40:16 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com
Subject: [PATCH 3/4] drm/i915/display: Add bits for Wa_14021768792 for linkm/n
 ratio > 10
Date: Tue, 17 Sep 2024 23:11:59 +0530
Message-ID: <20240917174200.2563528-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240917174200.2563528-1-ankit.k.nautiyal@intel.com>
References: <20240917174200.2563528-1-ankit.k.nautiyal@intel.com>
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
 drivers/gpu/drm/i915/display/intel_display.c  | 102 +++++++++++++++++-
 .../drm/i915/display/intel_display_types.h    |   2 +
 drivers/gpu/drm/i915/i915_reg.h               |   5 +
 3 files changed, 104 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 57a438d8ecfc..abb499de1c56 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2687,15 +2687,43 @@ bool intel_cpu_transcoder_has_m2_n2(struct drm_i915_private *dev_priv,
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
+static
+u8 bmg_get_link_n_ext(const struct intel_link_m_n *m_n)
+{
+	int m_n_ratio, m_n_frac;
+
+	m_n_ratio = DIV_ROUND_UP(m_n->link_m, m_n->link_n);
+	m_n_frac = m_n->link_m % m_n->link_n;
+
+	return m_n_ratio + (m_n_frac  > 0 ? 1 : 0);
+}
+
 void intel_cpu_transcoder_set_m1_n1(struct intel_crtc *crtc,
 				    enum transcoder transcoder,
 				    const struct intel_link_m_n *m_n)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
+	u8 link_n_ext = 0;
+
+	if (m_n->bypass_m_n_ratio_limit)
+		link_n_ext = bmg_get_link_n_ext(m_n);
 
 	if (DISPLAY_VER(dev_priv) >= 5)
-		intel_set_m_n(dev_priv, m_n, 0,
+		intel_set_m_n(dev_priv, m_n, link_n_ext,
 			      PIPE_DATA_M1(dev_priv, transcoder),
 			      PIPE_DATA_N1(dev_priv, transcoder),
 			      PIPE_LINK_M1(dev_priv, transcoder),
@@ -2704,6 +2732,9 @@ void intel_cpu_transcoder_set_m1_n1(struct intel_crtc *crtc,
 		intel_set_m_n(dev_priv, m_n, 0,
 			      PIPE_DATA_M_G4X(pipe), PIPE_DATA_N_G4X(pipe),
 			      PIPE_LINK_M_G4X(pipe), PIPE_LINK_N_G4X(pipe));
+
+	if (m_n->bypass_m_n_ratio_limit)
+		bmg_bypass_m_n_limit_write(crtc, transcoder, m_n);
 }
 
 void intel_cpu_transcoder_set_m2_n2(struct intel_crtc *crtc,
@@ -2711,15 +2742,22 @@ void intel_cpu_transcoder_set_m2_n2(struct intel_crtc *crtc,
 				    const struct intel_link_m_n *m_n)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	u8 link_n_ext = 0;
 
 	if (!intel_cpu_transcoder_has_m2_n2(dev_priv, transcoder))
 		return;
 
-	intel_set_m_n(dev_priv, m_n, 0,
+	if (m_n->bypass_m_n_ratio_limit)
+		link_n_ext = bmg_get_link_n_ext(m_n);
+
+	intel_set_m_n(dev_priv, m_n, link_n_ext,
 		      PIPE_DATA_M2(dev_priv, transcoder),
 		      PIPE_DATA_N2(dev_priv, transcoder),
 		      PIPE_LINK_M2(dev_priv, transcoder),
 		      PIPE_LINK_N2(dev_priv, transcoder));
+
+	if (m_n->bypass_m_n_ratio_limit)
+		bmg_bypass_m_n_limit_write(crtc, transcoder, m_n);
 }
 
 static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
@@ -3393,12 +3431,51 @@ void intel_get_m_n(struct drm_i915_private *i915,
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
@@ -3410,6 +3487,11 @@ void intel_cpu_transcoder_get_m1_n1(struct intel_crtc *crtc,
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
@@ -3417,6 +3499,9 @@ void intel_cpu_transcoder_get_m2_n2(struct intel_crtc *crtc,
 				    struct intel_link_m_n *m_n)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
+	enum pipe pipe = crtc->pipe;
+	int m_n_ratio;
 
 	if (!intel_cpu_transcoder_has_m2_n2(dev_priv, transcoder))
 		return;
@@ -3426,6 +3511,11 @@ void intel_cpu_transcoder_get_m2_n2(struct intel_crtc *crtc,
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
@@ -5176,18 +5266,20 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
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
index 000ab373c887..e6a4bd60667b 100644
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
index a770b5dbf5e4..551ce90e1c46 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1138,6 +1138,10 @@
 #define _TRANS_MULT_B		0x6102c
 #define TRANS_MULT(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_MULT_A)
 
+#define _HDMI_EMP_DATA_A	0x600d8
+#define _HDMI_EMP_DATA_B	0x610d8
+#define HDMI_EMP_DATA(pipe)	_MMIO_PIPE(pipe, _HDMI_EMP_DATA_A, _HDMI_EMP_DATA_B)
+
 /* VGA port control */
 #define ADPA			_MMIO(0x61100)
 #define PCH_ADPA                _MMIO(0xe1100)
@@ -2787,6 +2791,7 @@
 #define   PSR2_ADD_VERTICAL_LINE_COUNT	REG_BIT(15)
 #define   DP_FEC_BS_JITTER_WA		REG_BIT(15)
 #define   PSR2_VSC_ENABLE_PROG_HEADER	REG_BIT(12)
+#define   BMG_DP_BYPASS_M_N_LIMIT	REG_BIT(11)
 #define   DP_DSC_INSERT_SF_AT_EOL_WA	REG_BIT(4)
 #define   HDCP_LINE_REKEY_DISABLE	REG_BIT(0)
 
-- 
2.45.2

