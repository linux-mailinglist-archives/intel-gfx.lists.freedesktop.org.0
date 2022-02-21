Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E38924BD950
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Feb 2022 12:04:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32F6E10E4D5;
	Mon, 21 Feb 2022 11:04:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56DE110E4D5
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Feb 2022 11:04:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645441446; x=1676977446;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=SEQHGBKbQH4bkTbYBgiqL4mYLQBwy7RuPRksxkyvPDM=;
 b=g5UwyHYZqPqaYcYIII/ik8FoFXnX9wG37YOQZlL5Q4Yk7sw6TcCJZ71C
 /0TG9H7V5hb4kktuc6NhcmIOW8BTUFL7SZA5itsQ1Lxq5VF0CMAdzqr1B
 ODiHrEpfGYRzQz1r3GgQkMsb8eNJvuTC2iQJfkHk40ANxCsJQXE0fAZVM
 3fLkkOBrXRfZ+oDl8X+zT9aESLj02VD/CMdCtD0IrMncnvzpFXwAVUkdA
 /X8f+i+EE6B5WQVfxZeJzhVi6cSNWD5wVdyF/NxdY5h6UcQVG45DD2EQK
 9pUb+XGf0Zpp5FykSUIBT3bSagzltW8HaVXDEnodhv92RugVHY70IJk8P w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10264"; a="238902527"
X-IronPort-AV: E=Sophos;i="5.88,385,1635231600"; d="scan'208";a="238902527"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 03:04:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,385,1635231600"; d="scan'208";a="573075606"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga001.jf.intel.com with SMTP; 21 Feb 2022 03:04:03 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 21 Feb 2022 13:04:02 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Feb 2022 13:03:55 +0200
Message-Id: <20220221110356.5532-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220221110356.5532-1-ville.syrjala@linux.intel.com>
References: <20220221110356.5532-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: Relocate ibx pch port sanitation
 code
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

Move the ibx pch port sanitation code into intel_pch_display.c
where it now belongs.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 63 +----------------
 .../gpu/drm/i915/display/intel_pch_display.c  | 67 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_pch_display.h  |  3 +
 3 files changed, 71 insertions(+), 62 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 656c8319e546..7f0ba41ad35b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -10249,66 +10249,6 @@ static void intel_early_display_was(struct drm_i915_private *dev_priv)
 	}
 }
 
-static void ibx_sanitize_pch_hdmi_port(struct drm_i915_private *dev_priv,
-				       enum port port, i915_reg_t hdmi_reg)
-{
-	u32 val = intel_de_read(dev_priv, hdmi_reg);
-
-	if (val & SDVO_ENABLE ||
-	    (val & SDVO_PIPE_SEL_MASK) == SDVO_PIPE_SEL(PIPE_A))
-		return;
-
-	drm_dbg_kms(&dev_priv->drm,
-		    "Sanitizing transcoder select for HDMI %c\n",
-		    port_name(port));
-
-	val &= ~SDVO_PIPE_SEL_MASK;
-	val |= SDVO_PIPE_SEL(PIPE_A);
-
-	intel_de_write(dev_priv, hdmi_reg, val);
-}
-
-static void ibx_sanitize_pch_dp_port(struct drm_i915_private *dev_priv,
-				     enum port port, i915_reg_t dp_reg)
-{
-	u32 val = intel_de_read(dev_priv, dp_reg);
-
-	if (val & DP_PORT_EN ||
-	    (val & DP_PIPE_SEL_MASK) == DP_PIPE_SEL(PIPE_A))
-		return;
-
-	drm_dbg_kms(&dev_priv->drm,
-		    "Sanitizing transcoder select for DP %c\n",
-		    port_name(port));
-
-	val &= ~DP_PIPE_SEL_MASK;
-	val |= DP_PIPE_SEL(PIPE_A);
-
-	intel_de_write(dev_priv, dp_reg, val);
-}
-
-static void ibx_sanitize_pch_ports(struct drm_i915_private *dev_priv)
-{
-	/*
-	 * The BIOS may select transcoder B on some of the PCH
-	 * ports even it doesn't enable the port. This would trip
-	 * assert_pch_dp_disabled() and assert_pch_hdmi_disabled().
-	 * Sanitize the transcoder select bits to prevent that. We
-	 * assume that the BIOS never actually enabled the port,
-	 * because if it did we'd actually have to toggle the port
-	 * on and back off to make the transcoder A select stick
-	 * (see. intel_dp_link_down(), intel_disable_hdmi(),
-	 * intel_disable_sdvo()).
-	 */
-	ibx_sanitize_pch_dp_port(dev_priv, PORT_B, PCH_DP_B);
-	ibx_sanitize_pch_dp_port(dev_priv, PORT_C, PCH_DP_C);
-	ibx_sanitize_pch_dp_port(dev_priv, PORT_D, PCH_DP_D);
-
-	/* PCH SDVOB multiplex with HDMIB */
-	ibx_sanitize_pch_hdmi_port(dev_priv, PORT_B, PCH_HDMIB);
-	ibx_sanitize_pch_hdmi_port(dev_priv, PORT_C, PCH_HDMIC);
-	ibx_sanitize_pch_hdmi_port(dev_priv, PORT_D, PCH_HDMID);
-}
 
 /* Scan out the current hw modeset state,
  * and sanitizes it to the current state
@@ -10330,8 +10270,7 @@ intel_modeset_setup_hw_state(struct drm_device *dev,
 	/* HW state is read out, now we need to sanitize this mess. */
 	get_encoder_power_domains(dev_priv);
 
-	if (HAS_PCH_IBX(dev_priv))
-		ibx_sanitize_pch_ports(dev_priv);
+	intel_pch_sanitize(dev_priv);
 
 	/*
 	 * intel_sanitize_plane_mapping() may need to do vblank
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index 00232dab217d..43e717f4f8e7 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -88,6 +88,67 @@ static void assert_pch_transcoder_disabled(struct drm_i915_private *dev_priv,
 			pipe_name(pipe));
 }
 
+static void ibx_sanitize_pch_hdmi_port(struct drm_i915_private *dev_priv,
+				       enum port port, i915_reg_t hdmi_reg)
+{
+	u32 val = intel_de_read(dev_priv, hdmi_reg);
+
+	if (val & SDVO_ENABLE ||
+	    (val & SDVO_PIPE_SEL_MASK) == SDVO_PIPE_SEL(PIPE_A))
+		return;
+
+	drm_dbg_kms(&dev_priv->drm,
+		    "Sanitizing transcoder select for HDMI %c\n",
+		    port_name(port));
+
+	val &= ~SDVO_PIPE_SEL_MASK;
+	val |= SDVO_PIPE_SEL(PIPE_A);
+
+	intel_de_write(dev_priv, hdmi_reg, val);
+}
+
+static void ibx_sanitize_pch_dp_port(struct drm_i915_private *dev_priv,
+				     enum port port, i915_reg_t dp_reg)
+{
+	u32 val = intel_de_read(dev_priv, dp_reg);
+
+	if (val & DP_PORT_EN ||
+	    (val & DP_PIPE_SEL_MASK) == DP_PIPE_SEL(PIPE_A))
+		return;
+
+	drm_dbg_kms(&dev_priv->drm,
+		    "Sanitizing transcoder select for DP %c\n",
+		    port_name(port));
+
+	val &= ~DP_PIPE_SEL_MASK;
+	val |= DP_PIPE_SEL(PIPE_A);
+
+	intel_de_write(dev_priv, dp_reg, val);
+}
+
+static void ibx_sanitize_pch_ports(struct drm_i915_private *dev_priv)
+{
+	/*
+	 * The BIOS may select transcoder B on some of the PCH
+	 * ports even it doesn't enable the port. This would trip
+	 * assert_pch_dp_disabled() and assert_pch_hdmi_disabled().
+	 * Sanitize the transcoder select bits to prevent that. We
+	 * assume that the BIOS never actually enabled the port,
+	 * because if it did we'd actually have to toggle the port
+	 * on and back off to make the transcoder A select stick
+	 * (see. intel_dp_link_down(), intel_disable_hdmi(),
+	 * intel_disable_sdvo()).
+	 */
+	ibx_sanitize_pch_dp_port(dev_priv, PORT_B, PCH_DP_B);
+	ibx_sanitize_pch_dp_port(dev_priv, PORT_C, PCH_DP_C);
+	ibx_sanitize_pch_dp_port(dev_priv, PORT_D, PCH_DP_D);
+
+	/* PCH SDVOB multiplex with HDMIB */
+	ibx_sanitize_pch_hdmi_port(dev_priv, PORT_B, PCH_HDMIB);
+	ibx_sanitize_pch_hdmi_port(dev_priv, PORT_C, PCH_HDMIC);
+	ibx_sanitize_pch_hdmi_port(dev_priv, PORT_D, PCH_HDMID);
+}
+
 static void intel_pch_transcoder_set_m1_n1(struct intel_crtc *crtc,
 					   const struct intel_link_m_n *m_n)
 {
@@ -564,3 +625,9 @@ void lpt_pch_get_config(struct intel_crtc_state *crtc_state)
 
 	crtc_state->hw.adjusted_mode.crtc_clock = lpt_get_iclkip(dev_priv);
 }
+
+void intel_pch_sanitize(struct drm_i915_private *i915)
+{
+	if (HAS_PCH_IBX(i915))
+		ibx_sanitize_pch_ports(i915);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.h b/drivers/gpu/drm/i915/display/intel_pch_display.h
index 749473d99320..4ef033bb5807 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.h
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.h
@@ -6,6 +6,7 @@
 #ifndef _INTEL_PCH_DISPLAY_H_
 #define _INTEL_PCH_DISPLAY_H_
 
+struct drm_i915_private;
 struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
@@ -32,4 +33,6 @@ void intel_pch_transcoder_get_m1_n1(struct intel_crtc *crtc,
 void intel_pch_transcoder_get_m2_n2(struct intel_crtc *crtc,
 				    struct intel_link_m_n *m_n);
 
+void intel_pch_sanitize(struct drm_i915_private *i915);
+
 #endif
-- 
2.34.1

