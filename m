Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D929949F767
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 11:38:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 664C910ED7C;
	Fri, 28 Jan 2022 10:38:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF48610ED7C
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 10:38:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643366283; x=1674902283;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=thoRCqX0Kmp7Czh/gl5f3J+lzEzk/l2x2HRyYvN/w0A=;
 b=ZFxp0qyKn2u0vOqdRoioVTMFGgznLmO0zZPvZ/8cvgoLkLitFFljN+0o
 9muBYmzIBvOQ4QdL7Jiha6O8Fju52w6BGkTR48W9yqsOK8nACWK6sJW4K
 KjxgHOCX05nLPV6nAcPDJ0/6LfP6hTPWpg06eilDcKG7RfabEPosR2m7V
 vGZrrOLQDTXKmFupL8UJU+mAtm3g/qqfUAo/LXW8ZaSDKjbYgcCOE8q74
 ZcjqjygS6rGlUySMXouWOXM9zDAf5Yd1y2bUhslko74jzoPtfBXZCpJVP
 UTmD4CkTbX+ImPVYo9gVFg8CbSX/vTypC9MGCASn5pVwlmWttkMqt2EV4 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="247044230"
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="247044230"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 02:38:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="618687430"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by FMSMGA003.fm.intel.com with SMTP; 28 Jan 2022 02:38:01 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 28 Jan 2022 12:38:00 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jan 2022 12:37:41 +0200
Message-Id: <20220128103757.22461-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220128103757.22461-1-ville.syrjala@linux.intel.com>
References: <20220128103757.22461-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 01/17] drm/i915: Nuke intel_dp_set_m_n()
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

I want to make a clean split betwen the CPU vs. PCH transcoder
programming. To that end eliminate intel_dp_set_m_n() and just
call the individual CPU/PCH transcoder functions directly.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      |  4 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 56 +++++++------------
 drivers/gpu/drm/i915/display/intel_display.h  |  6 +-
 .../drm/i915/display/intel_display_types.h    | 19 -------
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  4 +-
 drivers/gpu/drm/i915/display/intel_drrs.c     |  5 +-
 6 files changed, 32 insertions(+), 62 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index ca8becb07e45..41342a1333cf 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2510,7 +2510,9 @@ static void intel_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST)) {
 		intel_ddi_set_dp_msa(crtc_state, conn_state);
 
-		intel_dp_set_m_n(crtc_state, M1_N1);
+		intel_cpu_transcoder_set_m_n(crtc_state,
+					     &crtc_state->dp_m_n,
+					     &crtc_state->dp_m2_n2);
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 75de794185b2..372e7603101a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -118,9 +118,8 @@
 
 static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state);
 static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_state);
-static void intel_cpu_transcoder_set_m_n(const struct intel_crtc_state *crtc_state,
-					 const struct intel_link_m_n *m_n,
-					 const struct intel_link_m_n *m2_n2);
+static void intel_pch_transcoder_set_m_n(const struct intel_crtc_state *crtc_state,
+					 const struct intel_link_m_n *m_n);
 static void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state);
 static void ilk_set_pipeconf(const struct intel_crtc_state *crtc_state);
 static void hsw_set_transconf(const struct intel_crtc_state *crtc_state);
@@ -1835,8 +1834,15 @@ static void ilk_crtc_enable(struct intel_atomic_state *state,
 	intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, false);
 	intel_set_pch_fifo_underrun_reporting(dev_priv, pipe, false);
 
-	if (intel_crtc_has_dp_encoder(new_crtc_state))
-		intel_dp_set_m_n(new_crtc_state, M1_N1);
+	if (intel_crtc_has_dp_encoder(new_crtc_state)) {
+		if (new_crtc_state->has_pch_encoder)
+			intel_pch_transcoder_set_m_n(new_crtc_state,
+						     &new_crtc_state->dp_m_n);
+		else
+			intel_cpu_transcoder_set_m_n(new_crtc_state,
+						     &new_crtc_state->dp_m_n,
+						     &new_crtc_state->dp_m2_n2);
+	}
 
 	intel_set_transcoder_timings(new_crtc_state);
 	intel_set_pipe_src_size(new_crtc_state);
@@ -2450,7 +2456,9 @@ static void valleyview_crtc_enable(struct intel_atomic_state *state,
 		return;
 
 	if (intel_crtc_has_dp_encoder(new_crtc_state))
-		intel_dp_set_m_n(new_crtc_state, M1_N1);
+		intel_cpu_transcoder_set_m_n(new_crtc_state,
+					     &new_crtc_state->dp_m_n,
+					     &new_crtc_state->dp_m2_n2);
 
 	intel_set_transcoder_timings(new_crtc_state);
 	intel_set_pipe_src_size(new_crtc_state);
@@ -2502,7 +2510,9 @@ static void i9xx_crtc_enable(struct intel_atomic_state *state,
 		return;
 
 	if (intel_crtc_has_dp_encoder(new_crtc_state))
-		intel_dp_set_m_n(new_crtc_state, M1_N1);
+		intel_cpu_transcoder_set_m_n(new_crtc_state,
+					     &new_crtc_state->dp_m_n,
+					     &new_crtc_state->dp_m2_n2);
 
 	intel_set_transcoder_timings(new_crtc_state);
 	intel_set_pipe_src_size(new_crtc_state);
@@ -3149,9 +3159,9 @@ static bool transcoder_has_m2_n2(struct drm_i915_private *dev_priv,
 	return DISPLAY_VER(dev_priv) == 7 || IS_CHERRYVIEW(dev_priv);
 }
 
-static void intel_cpu_transcoder_set_m_n(const struct intel_crtc_state *crtc_state,
-					 const struct intel_link_m_n *m_n,
-					 const struct intel_link_m_n *m2_n2)
+void intel_cpu_transcoder_set_m_n(const struct intel_crtc_state *crtc_state,
+				  const struct intel_link_m_n *m_n,
+				  const struct intel_link_m_n *m2_n2)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
@@ -3179,32 +3189,6 @@ static void intel_cpu_transcoder_set_m_n(const struct intel_crtc_state *crtc_sta
 	}
 }
 
-void intel_dp_set_m_n(const struct intel_crtc_state *crtc_state, enum link_m_n_set m_n)
-{
-	const struct intel_link_m_n *dp_m_n, *dp_m2_n2 = NULL;
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
-
-	if (m_n == M1_N1) {
-		dp_m_n = &crtc_state->dp_m_n;
-		dp_m2_n2 = &crtc_state->dp_m2_n2;
-	} else if (m_n == M2_N2) {
-
-		/*
-		 * M2_N2 registers are not supported. Hence m2_n2 divider value
-		 * needs to be programmed into M1_N1.
-		 */
-		dp_m_n = &crtc_state->dp_m2_n2;
-	} else {
-		drm_err(&i915->drm, "Unsupported divider value\n");
-		return;
-	}
-
-	if (crtc_state->has_pch_encoder)
-		intel_pch_transcoder_set_m_n(crtc_state, &crtc_state->dp_m_n);
-	else
-		intel_cpu_transcoder_set_m_n(crtc_state, dp_m_n, dp_m2_n2);
-}
-
 static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index a241007f5c82..5c3bd1b4d9c9 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -27,7 +27,6 @@
 
 #include <drm/drm_util.h>
 
-enum link_m_n_set;
 enum drm_scaling_filter;
 struct dpll;
 struct drm_connector;
@@ -607,8 +606,9 @@ void intel_display_prepare_reset(struct drm_i915_private *dev_priv);
 void intel_display_finish_reset(struct drm_i915_private *dev_priv);
 void intel_dp_get_m_n(struct intel_crtc *crtc,
 		      struct intel_crtc_state *pipe_config);
-void intel_dp_set_m_n(const struct intel_crtc_state *crtc_state,
-		      enum link_m_n_set m_n);
+void intel_cpu_transcoder_set_m_n(const struct intel_crtc_state *crtc_state,
+				  const struct intel_link_m_n *m_n,
+				  const struct intel_link_m_n *m2_n2);
 void ilk_get_fdi_m_n_config(struct intel_crtc *crtc,
 			    struct intel_crtc_state *pipe_config);
 void i9xx_crtc_clock_get(struct intel_crtc *crtc,
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 6b107872ad39..60e15226a8cb 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1445,25 +1445,6 @@ struct intel_hdmi {
 };
 
 struct intel_dp_mst_encoder;
-/*
- * enum link_m_n_set:
- *	When platform provides two set of M_N registers for dp, we can
- *	program them and switch between them incase of DRRS.
- *	But When only one such register is provided, we have to program the
- *	required divider value on that registers itself based on the DRRS state.
- *
- * M1_N1	: Program dp_m_n on M1_N1 registers
- *			  dp_m2_n2 on M2_N2 registers (If supported)
- *
- * M2_N2	: Program dp_m2_n2 on M1_N1 registers
- *			  M2_N2 registers are not supported
- */
-
-enum link_m_n_set {
-	/* Sets the m1_n1 and m2_n2 */
-	M1_N1 = 0,
-	M2_N2
-};
 
 struct intel_dp_compliance_data {
 	unsigned long edid;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index b8bc7d397c81..7031bd786822 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -523,7 +523,9 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
 
 	intel_ddi_set_dp_msa(pipe_config, conn_state);
 
-	intel_dp_set_m_n(pipe_config, M1_N1);
+	intel_cpu_transcoder_set_m_n(pipe_config,
+				     &pipe_config->dp_m_n,
+				     &pipe_config->dp_m2_n2);
 }
 
 static void intel_mst_enable_dp(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 0cacdb174fd0..c978badbc82f 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -115,8 +115,9 @@ static void
 intel_drrs_set_refresh_rate_m_n(const struct intel_crtc_state *crtc_state,
 				enum drrs_refresh_rate_type refresh_type)
 {
-	intel_dp_set_m_n(crtc_state,
-			 refresh_type == DRRS_LOW_RR ? M2_N2 : M1_N1);
+	intel_cpu_transcoder_set_m_n(crtc_state, refresh_type == DRRS_LOW_RR ?
+				     &crtc_state->dp_m2_n2 : &crtc_state->dp_m_n,
+				     NULL);
 }
 
 static void intel_drrs_set_state(struct drm_i915_private *dev_priv,
-- 
2.34.1

