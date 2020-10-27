Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7401429A44E
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Oct 2020 06:49:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A211E6EAD3;
	Tue, 27 Oct 2020 05:49:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 772486EAD3
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Oct 2020 05:49:12 +0000 (UTC)
IronPort-SDR: UUCzmrh689xm6gqzUhxmTVKRapYEtizpS04VpdPzEibi90F8od/RtOkdVgQ7RDfmy1nfAqV3Nu
 T/a2geG8g1KA==
X-IronPort-AV: E=McAfee;i="6000,8403,9786"; a="167249521"
X-IronPort-AV: E=Sophos;i="5.77,422,1596524400"; d="scan'208";a="167249521"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2020 22:49:11 -0700
IronPort-SDR: wTMM6rLSFfxGhTC3u3+/g7Ss8Wki2cQ1CXN40Kyz9Pbfgw7+A5JU9JzhbFkpglz5yxFsp5/eUH
 f2uJfgnggsFQ==
X-IronPort-AV: E=Sophos;i="5.77,422,1596524400"; d="scan'208";a="525762380"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 26 Oct 2020 22:49:11 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Oct 2020 22:50:52 -0700
Message-Id: <20201027055054.32697-2-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20201022054223.25071-9-manasi.d.navare@intel.com>
References: <20201022054223.25071-9-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v12 08/12] drm/i915/dp: Master/Slave
 enable/disable sequence for bigjoiner
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Enabling is done in a special sequence and so should plane updates
be. Ideally the end user never notices the second pipe is used.

This way ideally everything will be tear free, and updates are
really atomic as userspace expects it.

This uses generic modeset_enables() calls like trans port sync
but still has special handling for disable since for slave we
should not disable things like encoder, plls that are not enabled
for  slave.

Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     |  25 +++-
 drivers/gpu/drm/i915/display/intel_display.c | 118 +++++++++++++++----
 2 files changed, 118 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 753ac6f4d4e3..a710b5958d45 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -28,6 +28,7 @@
 #include <drm/drm_scdc_helper.h>
 
 #include "i915_drv.h"
+#include "i915_trace.h"
 #include "intel_audio.h"
 #include "intel_combo_phy.h"
 #include "intel_connector.h"
@@ -3500,7 +3501,8 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 
 	/* 7.l Configure and enable FEC if needed */
 	intel_ddi_enable_fec(encoder, crtc_state);
-	intel_dsc_enable(encoder, crtc_state);
+	if (!crtc_state->bigjoiner)
+		intel_dsc_enable(encoder, crtc_state);
 }
 
 static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
@@ -3572,7 +3574,8 @@ static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	if (!is_mst)
 		intel_ddi_enable_pipe_clock(encoder, crtc_state);
 
-	intel_dsc_enable(encoder, crtc_state);
+	if (!crtc_state->bigjoiner)
+		intel_dsc_enable(encoder, crtc_state);
 }
 
 static void intel_ddi_pre_enable_dp(struct intel_atomic_state *state,
@@ -3821,6 +3824,21 @@ static void intel_ddi_post_disable(struct intel_atomic_state *state,
 			ilk_pfit_disable(old_crtc_state);
 	}
 
+	if (old_crtc_state->bigjoiner_linked_crtc) {
+		struct intel_atomic_state *state =
+			to_intel_atomic_state(old_crtc_state->uapi.state);
+		struct intel_crtc *slave =
+			old_crtc_state->bigjoiner_linked_crtc;
+		const struct intel_crtc_state *old_slave_crtc_state =
+			intel_atomic_get_old_crtc_state(state, slave);
+
+		intel_crtc_vblank_off(old_slave_crtc_state);
+		trace_intel_pipe_disable(slave);
+
+		intel_dsc_disable(old_slave_crtc_state);
+		skl_scaler_disable(old_slave_crtc_state);
+	}
+
 	/*
 	 * When called from DP MST code:
 	 * - old_conn_state will be NULL
@@ -4037,7 +4055,8 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
 {
 	drm_WARN_ON(state->base.dev, crtc_state->has_pch_encoder);
 
-	intel_ddi_enable_transcoder_func(encoder, crtc_state);
+	if (!crtc_state->bigjoiner_slave)
+		intel_ddi_enable_transcoder_func(encoder, crtc_state);
 
 	intel_enable_pipe(crtc_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c4716fda3c06..5cf128668a79 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7232,6 +7232,45 @@ static void hsw_set_frame_start_delay(const struct intel_crtc_state *crtc_state)
 	intel_de_write(dev_priv, reg, val);
 }
 
+static void icl_ddi_bigjoiner_pre_enable(struct intel_atomic_state *state,
+					 const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *master = to_intel_crtc(crtc_state->uapi.crtc);
+	struct intel_crtc_state *master_crtc_state;
+	struct drm_connector_state *conn_state;
+	struct drm_connector *conn;
+	struct intel_encoder *encoder = NULL;
+	int i;
+
+	if (crtc_state->bigjoiner_slave)
+		master = crtc_state->bigjoiner_linked_crtc;
+
+	master_crtc_state = intel_atomic_get_new_crtc_state(state, master);
+
+	for_each_new_connector_in_state(&state->base, conn, conn_state, i) {
+		if (conn_state->crtc != &master->base)
+			continue;
+
+		encoder = to_intel_encoder(conn_state->best_encoder);
+		break;
+	}
+
+	if (!crtc_state->bigjoiner_slave) {
+		/* need to enable VDSC, which we skipped in pre-enable */
+		intel_dsc_enable(encoder, crtc_state);
+	} else {
+		/*
+                 * Enable sequence steps 1-7 on bigjoiner master
+                 */
+		intel_encoders_pre_pll_enable(state, master);
+		intel_enable_shared_dpll(master_crtc_state);
+		intel_encoders_pre_enable(state, master);
+
+		/* and DSC on slave */
+		intel_dsc_enable(NULL, crtc_state);
+	}
+}
+
 static void hsw_crtc_enable(struct intel_atomic_state *state,
 			    struct intel_crtc *crtc)
 {
@@ -7245,34 +7284,39 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
 		return;
 
-	intel_encoders_pre_pll_enable(state, crtc);
-
-	if (new_crtc_state->shared_dpll)
-		intel_enable_shared_dpll(new_crtc_state);
+	if (!new_crtc_state->bigjoiner) {
+		intel_encoders_pre_pll_enable(state, crtc);
 
-	intel_encoders_pre_enable(state, crtc);
+		if (new_crtc_state->shared_dpll)
+			intel_enable_shared_dpll(new_crtc_state);
 
-	if (!transcoder_is_dsi(cpu_transcoder))
-		intel_set_transcoder_timings(new_crtc_state);
+		intel_encoders_pre_enable(state, crtc);
+	} else {
+		icl_ddi_bigjoiner_pre_enable(state, new_crtc_state);
+	}
 
 	intel_set_pipe_src_size(new_crtc_state);
+	if (INTEL_GEN(dev_priv) >= 9 || IS_BROADWELL(dev_priv))
+		bdw_set_pipemisc(new_crtc_state);
 
-	if (cpu_transcoder != TRANSCODER_EDP &&
-	    !transcoder_is_dsi(cpu_transcoder))
-		intel_de_write(dev_priv, PIPE_MULT(cpu_transcoder),
-			       new_crtc_state->pixel_multiplier - 1);
+	if (!new_crtc_state->bigjoiner_slave || !transcoder_is_dsi(cpu_transcoder)){
+		if (!transcoder_is_dsi(cpu_transcoder))
+			intel_set_transcoder_timings(new_crtc_state);
 
-	if (new_crtc_state->has_pch_encoder)
-		intel_cpu_transcoder_set_m_n(new_crtc_state,
-					     &new_crtc_state->fdi_m_n, NULL);
+		if (cpu_transcoder != TRANSCODER_EDP &&
+		    !transcoder_is_dsi(cpu_transcoder))
+			intel_de_write(dev_priv, PIPE_MULT(cpu_transcoder),
+				       new_crtc_state->pixel_multiplier - 1);
+
+		if (new_crtc_state->has_pch_encoder)
+			intel_cpu_transcoder_set_m_n(new_crtc_state,
+						     &new_crtc_state->fdi_m_n, NULL);
 
-	if (!transcoder_is_dsi(cpu_transcoder)) {
 		hsw_set_frame_start_delay(new_crtc_state);
-		hsw_set_pipeconf(new_crtc_state);
 	}
 
-	if (INTEL_GEN(dev_priv) >= 9 || IS_BROADWELL(dev_priv))
-		bdw_set_pipemisc(new_crtc_state);
+	if (!transcoder_is_dsi(cpu_transcoder))
+		hsw_set_pipeconf(new_crtc_state);
 
 	crtc->active = true;
 
@@ -7308,6 +7352,11 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	if (INTEL_GEN(dev_priv) >= 11)
 		icl_pipe_mbus_enable(crtc);
 
+	if (new_crtc_state->bigjoiner_slave) {
+		trace_intel_pipe_enable(crtc);
+		intel_crtc_vblank_on(new_crtc_state);
+	}
+
 	intel_encoders_enable(state, crtc);
 
 	if (psl_clkgate_wa) {
@@ -15687,6 +15736,9 @@ static void intel_enable_crtc(struct intel_atomic_state *state,
 
 	dev_priv->display.crtc_enable(state, crtc);
 
+	if (new_crtc_state->bigjoiner_slave)
+		return;
+
 	/* vblanks work again, re-enable pipe CRC. */
 	intel_crtc_enable_pipe_crc(crtc);
 }
@@ -15751,8 +15803,21 @@ static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 
+	drm_WARN_ON(&dev_priv->drm, old_crtc_state->bigjoiner_slave);
+
 	intel_crtc_disable_planes(state, crtc);
 
+	/*
+	 * We still need special handling for disabling bigjoiner master
+	 * and slaves since for slave we do not have encoder or plls
+	 * so we dont need to disable those.
+	 */
+	if (old_crtc_state->bigjoiner) {
+		intel_crtc_disable_planes(state,
+					  old_crtc_state->bigjoiner_linked_crtc);
+		old_crtc_state->bigjoiner_linked_crtc->active = false;
+	}
+
 	/*
 	 * We need to disable pipe CRC before disabling the pipe,
 	 * or we race against vblank off.
@@ -15781,7 +15846,7 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 	/* Only disable port sync and MST slaves */
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i) {
-		if (!needs_modeset(new_crtc_state))
+		if (!needs_modeset(new_crtc_state) || old_crtc_state->bigjoiner)
 			continue;
 
 		if (!old_crtc_state->hw.active)
@@ -15806,10 +15871,18 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i) {
 		if (!needs_modeset(new_crtc_state) ||
-		    (handled & BIT(crtc->pipe)))
+		    (handled & BIT(crtc->pipe)) ||
+		    old_crtc_state->bigjoiner_slave)
 			continue;
 
 		intel_pre_plane_update(state, crtc);
+		if (old_crtc_state->bigjoiner) {
+			struct intel_crtc *slave =
+				old_crtc_state->bigjoiner_linked_crtc;
+
+			intel_pre_plane_update(state, slave);
+		}
+
 		if (old_crtc_state->hw.active)
 			intel_old_crtc_state_disables(state, old_crtc_state,
 						      new_crtc_state, crtc);
@@ -15907,7 +15980,8 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 			continue;
 
 		if (intel_dp_mst_is_slave_trans(new_crtc_state) ||
-		    is_trans_port_sync_master(new_crtc_state))
+		    is_trans_port_sync_master(new_crtc_state) ||
+		    (new_crtc_state->bigjoiner && !new_crtc_state->bigjoiner_slave))
 			continue;
 
 		modeset_pipes &= ~BIT(pipe);
@@ -15917,7 +15991,7 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 
 	/*
 	 * Then we enable all remaining pipes that depend on other
-	 * pipes: MST slaves and port sync masters.
+	 * pipes: MST slaves and port sync masters, big joiner master
 	 */
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
 		enum pipe pipe = crtc->pipe;
-- 
2.19.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
