Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB534A8BC2
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Feb 2022 19:38:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35D1910EA54;
	Thu,  3 Feb 2022 18:38:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1A5110EA54
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Feb 2022 18:38:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643913524; x=1675449524;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=5G57JHUExbSYMBYGFSDRoEqKeoWScG6beLJ5Ey/UI8o=;
 b=WgMyYkwx7ZvPiel0nuz+t/Sluv7PRoh1+nHHSHWvxEhQCTmZGVdFBVsN
 UzXvra5GxYoMqVhOt1D01if1VKAtuJ1XojJ9dc4nsqc8mRNTFshvD+znL
 9ivgs6bPwJd9c4oPaSmXwSDXiz4ZTW+sDSsK38JYzlCb+41IfBeUVN59e
 Hu+11iXwQCSXvMF1Qp1KxVnizINOvQtvjNe23WC8Ny2M97qcAYqFrRQgm
 w4M9r84rJH12BJh3Pb80/hSHWU6bJw1C4gh4ZIPhkJWVXo5qyFgB+MbRH
 eGnajGkmWQUtQp/QwMRa/Ho0y3naMhA7v3HZMozJT3q6pghOTW8eBrGV5 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10247"; a="247987995"
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="247987995"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 10:38:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="583884582"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga008.fm.intel.com with SMTP; 03 Feb 2022 10:38:41 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 03 Feb 2022 20:38:41 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Feb 2022 20:38:19 +0200
Message-Id: <20220203183823.22890-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220203183823.22890-1-ville.syrjala@linux.intel.com>
References: <20220203183823.22890-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/10] drm/i915: Introduce
 intel_crtc_is_bigjoiner_{slave, master}()
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

Introduce helpers to query whether the crtc is the slave/master
for bigjoiner. This decouples most places from the exact
state layout we use to track this relationship, allowing us
to change and extend it more easily.

Performed with cocci:
@@
expression S, E;
@@
(
  S->bigjoiner_slave = E;
|
- S->bigjoiner_slave
+ intel_crtc_is_bigjoiner_slave(S)
)

@@
expression S, E;
@@
(
- E && S->bigjoiner && !intel_crtc_is_bigjoiner_slave(S)
+ E && intel_crtc_is_bigjoiner_master(S)
|
- S->bigjoiner && !intel_crtc_is_bigjoiner_slave(S)
+ intel_crtc_is_bigjoiner_master(S)
)

@@
expression S;
@@
- (intel_crtc_is_bigjoiner_master(S))
+ intel_crtc_is_bigjoiner_master(S)

@@
expression S, E1, E2, E3;
@@
- intel_crtc_is_bigjoiner_slave(S) ? E1 : S->bigjoiner ? E2 : E3
+ intel_crtc_is_bigjoiner_slave(S) ? E1 : intel_crtc_is_bigjoiner_master(S) ? E2 : E3

@@
typedef bool;
@@
+ bool intel_crtc_is_bigjoiner_slave(const struct intel_crtc_state *crtc_state)
+ {
+ 	return crtc_state->bigjoiner_slave;
+ }
+
  intel_master_crtc(...) {...}

@@
typedef bool;
@@
+ bool intel_crtc_is_bigjoiner_master(const struct intel_crtc_state *crtc_state)
+ {
+ 	return crtc_state->bigjoiner && !crtc_state->bigjoiner_slave;
+ }
+
  intel_master_crtc(...) {...}

@@
typedef bool;
identifier S;
@@
- bool is_trans_port_sync_mode(const struct intel_crtc_state *S);
+ bool is_trans_port_sync_mode(const struct intel_crtc_state *state);
+ bool intel_crtc_is_bigjoiner_slave(const struct intel_crtc_state *crtc_state);
+ bool intel_crtc_is_bigjoiner_master(const struct intel_crtc_state *crtc_state);

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c |  4 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 51 +++++++++++--------
 drivers/gpu/drm/i915/display/intel_display.h  |  2 +
 .../drm/i915/display/intel_display_debugfs.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c     |  4 +-
 6 files changed, 39 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index bec02333bdeb..41d52889dfce 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -403,7 +403,7 @@ int intel_plane_atomic_check(struct intel_atomic_state *state,
 	struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
-	if (new_crtc_state && new_crtc_state->bigjoiner_slave) {
+	if (new_crtc_state && intel_crtc_is_bigjoiner_slave(new_crtc_state)) {
 		struct intel_plane *master_plane =
 			intel_crtc_get_plane(new_crtc_state->bigjoiner_linked_crtc,
 					     plane->id);
@@ -633,7 +633,7 @@ int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_state,
 	}
 
 	/* right side of the image is on the slave crtc, adjust dst to match */
-	if (crtc_state->bigjoiner_slave)
+	if (intel_crtc_is_bigjoiner_slave(crtc_state))
 		drm_rect_translate(dst, -crtc_state->pipe_src_w, 0);
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 354b08d6f81d..3f0e1e127595 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2926,7 +2926,7 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
 {
 	drm_WARN_ON(state->base.dev, crtc_state->has_pch_encoder);
 
-	if (!crtc_state->bigjoiner_slave)
+	if (!intel_crtc_is_bigjoiner_slave(crtc_state))
 		intel_ddi_enable_transcoder_func(encoder, crtc_state);
 
 	intel_vrr_enable(encoder, crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d5dc2c25c1f6..9a7f40d17b79 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -337,9 +337,19 @@ is_trans_port_sync_mode(const struct intel_crtc_state *crtc_state)
 		is_trans_port_sync_slave(crtc_state);
 }
 
+bool intel_crtc_is_bigjoiner_slave(const struct intel_crtc_state *crtc_state)
+{
+	return crtc_state->bigjoiner_slave;
+}
+
+bool intel_crtc_is_bigjoiner_master(const struct intel_crtc_state *crtc_state)
+{
+	return crtc_state->bigjoiner && !crtc_state->bigjoiner_slave;
+}
+
 static struct intel_crtc *intel_master_crtc(const struct intel_crtc_state *crtc_state)
 {
-	if (crtc_state->bigjoiner_slave)
+	if (intel_crtc_is_bigjoiner_slave(crtc_state))
 		return crtc_state->bigjoiner_linked_crtc;
 	else
 		return to_intel_crtc(crtc_state->uapi.crtc);
@@ -1979,13 +1989,13 @@ static void icl_ddi_bigjoiner_pre_enable(struct intel_atomic_state *state,
 	/*
 	 * Enable sequence steps 1-7 on bigjoiner master
 	 */
-	if (crtc_state->bigjoiner_slave)
+	if (intel_crtc_is_bigjoiner_slave(crtc_state))
 		intel_encoders_pre_pll_enable(state, master_crtc);
 
 	if (crtc_state->shared_dpll)
 		intel_enable_shared_dpll(crtc_state);
 
-	if (crtc_state->bigjoiner_slave)
+	if (intel_crtc_is_bigjoiner_slave(crtc_state))
 		intel_encoders_pre_enable(state, master_crtc);
 }
 
@@ -2049,7 +2059,8 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	if (DISPLAY_VER(dev_priv) >= 9 || IS_BROADWELL(dev_priv))
 		bdw_set_pipemisc(new_crtc_state);
 
-	if (!new_crtc_state->bigjoiner_slave && !transcoder_is_dsi(cpu_transcoder))
+	if (!intel_crtc_is_bigjoiner_slave(new_crtc_state) &&
+	    !transcoder_is_dsi(cpu_transcoder))
 		hsw_configure_cpu_transcoder(new_crtc_state);
 
 	crtc->active = true;
@@ -2089,7 +2100,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 		icl_pipe_mbus_enable(crtc, dbuf_state->joined_mbus);
 	}
 
-	if (new_crtc_state->bigjoiner_slave)
+	if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
 		intel_crtc_vblank_on(new_crtc_state);
 
 	intel_encoders_enable(state, crtc);
@@ -2174,7 +2185,7 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 	 * FIXME collapse everything to one hook.
 	 * Need care with mst->ddi interactions.
 	 */
-	if (!old_crtc_state->bigjoiner_slave) {
+	if (!intel_crtc_is_bigjoiner_slave(old_crtc_state)) {
 		intel_encoders_disable(state, crtc);
 		intel_encoders_post_disable(state, crtc);
 	}
@@ -5604,8 +5615,8 @@ static void intel_dump_pipe_config(const struct intel_crtc_state *pipe_config,
 		    pipe_config->sync_mode_slaves_mask);
 
 	drm_dbg_kms(&dev_priv->drm, "bigjoiner: %s\n",
-		    pipe_config->bigjoiner_slave ? "slave" :
-		    pipe_config->bigjoiner ? "master" : "no");
+		    intel_crtc_is_bigjoiner_slave(pipe_config) ? "slave" :
+		    intel_crtc_is_bigjoiner_master(pipe_config) ? "master" : "no");
 
 	drm_dbg_kms(&dev_priv->drm, "splitter: %s, link count %d, overlap %d\n",
 		    enableddisabled(pipe_config->splitter.enable),
@@ -5807,7 +5818,7 @@ intel_crtc_copy_uapi_to_hw_state_nomodeset(struct intel_atomic_state *state,
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
-	WARN_ON(crtc_state->bigjoiner_slave);
+	WARN_ON(intel_crtc_is_bigjoiner_slave(crtc_state));
 
 	drm_property_replace_blob(&crtc_state->hw.degamma_lut,
 				  crtc_state->uapi.degamma_lut);
@@ -5824,7 +5835,7 @@ intel_crtc_copy_uapi_to_hw_state_modeset(struct intel_atomic_state *state,
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
-	WARN_ON(crtc_state->bigjoiner_slave);
+	WARN_ON(intel_crtc_is_bigjoiner_slave(crtc_state));
 
 	crtc_state->hw.enable = crtc_state->uapi.enable;
 	crtc_state->hw.active = crtc_state->uapi.active;
@@ -5837,7 +5848,7 @@ intel_crtc_copy_uapi_to_hw_state_modeset(struct intel_atomic_state *state,
 
 static void intel_crtc_copy_hw_to_uapi_state(struct intel_crtc_state *crtc_state)
 {
-	if (crtc_state->bigjoiner_slave)
+	if (intel_crtc_is_bigjoiner_slave(crtc_state))
 		return;
 
 	crtc_state->uapi.enable = crtc_state->hw.enable;
@@ -7599,7 +7610,7 @@ static int intel_atomic_check_bigjoiner(struct intel_atomic_state *state,
 	struct intel_crtc *slave_crtc;
 
 	WARN_ON(master_crtc_state->bigjoiner_linked_crtc);
-	WARN_ON(master_crtc_state->bigjoiner_slave);
+	WARN_ON(intel_crtc_is_bigjoiner_slave(master_crtc_state));
 
 	if (!master_crtc_state->bigjoiner)
 		return 0;
@@ -7851,7 +7862,7 @@ static int intel_bigjoiner_add_affected_crtcs(struct intel_atomic_state *state)
 	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
 		/* Kill old bigjoiner link, we may re-establish afterwards */
 		if (intel_crtc_needs_modeset(crtc_state) &&
-		    crtc_state->bigjoiner && !crtc_state->bigjoiner_slave)
+		    intel_crtc_is_bigjoiner_master(crtc_state))
 			kill_bigjoiner_slave(state, crtc);
 	}
 
@@ -7896,7 +7907,7 @@ static int intel_atomic_check(struct drm_device *dev,
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i) {
 		if (!intel_crtc_needs_modeset(new_crtc_state)) {
-			if (new_crtc_state->bigjoiner_slave)
+			if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
 				copy_bigjoiner_crtc_state_nomodeset(state, crtc);
 			else
 				intel_crtc_copy_uapi_to_hw_state_nomodeset(state, crtc);
@@ -7904,7 +7915,7 @@ static int intel_atomic_check(struct drm_device *dev,
 		}
 
 		if (!new_crtc_state->uapi.enable) {
-			if (!new_crtc_state->bigjoiner_slave) {
+			if (!intel_crtc_is_bigjoiner_slave(new_crtc_state)) {
 				intel_crtc_copy_uapi_to_hw_state_modeset(state, crtc);
 				any_ms = true;
 			}
@@ -8223,7 +8234,7 @@ static void intel_enable_crtc(struct intel_atomic_state *state,
 
 	dev_priv->display->crtc_enable(state, crtc);
 
-	if (new_crtc_state->bigjoiner_slave)
+	if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
 		return;
 
 	/* vblanks work again, re-enable pipe CRC. */
@@ -8340,7 +8351,7 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 		 */
 		if (!is_trans_port_sync_slave(old_crtc_state) &&
 		    !intel_dp_mst_is_slave_trans(old_crtc_state) &&
-		    !old_crtc_state->bigjoiner_slave)
+		    !intel_crtc_is_bigjoiner_slave(old_crtc_state))
 			continue;
 
 		intel_old_crtc_state_disables(state, old_crtc_state,
@@ -8455,7 +8466,7 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 
 		if (intel_dp_mst_is_slave_trans(new_crtc_state) ||
 		    is_trans_port_sync_master(new_crtc_state) ||
-		    (new_crtc_state->bigjoiner && !new_crtc_state->bigjoiner_slave))
+		    intel_crtc_is_bigjoiner_master(new_crtc_state))
 			continue;
 
 		modeset_pipes &= ~BIT(pipe);
@@ -10167,7 +10178,7 @@ static void intel_sanitize_crtc(struct intel_crtc *crtc,
 	/* Adjust the state of the output pipe according to whether we
 	 * have active connectors/encoders. */
 	if (crtc_state->hw.active && !intel_crtc_has_encoders(crtc) &&
-	    !crtc_state->bigjoiner_slave)
+	    !intel_crtc_is_bigjoiner_slave(crtc_state))
 		intel_crtc_disable_noatomic(crtc, ctx);
 
 	if (crtc_state->hw.active || HAS_GMCH(dev_priv)) {
@@ -10381,7 +10392,7 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
 			/* read out to slave crtc as well for bigjoiner */
 			if (crtc_state->bigjoiner) {
 				/* encoder should read be linked to bigjoiner master */
-				WARN_ON(crtc_state->bigjoiner_slave);
+				WARN_ON(intel_crtc_is_bigjoiner_slave(crtc_state));
 
 				crtc = crtc_state->bigjoiner_linked_crtc;
 				crtc_state = to_intel_crtc_state(crtc->base.state);
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 457738aeee3e..22e5f0d6e171 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -555,6 +555,8 @@ intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
 				bool bigjoiner);
 enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port);
 bool is_trans_port_sync_mode(const struct intel_crtc_state *state);
+bool intel_crtc_is_bigjoiner_slave(const struct intel_crtc_state *crtc_state);
+bool intel_crtc_is_bigjoiner_master(const struct intel_crtc_state *crtc_state);
 
 void intel_plane_destroy(struct drm_plane *plane);
 void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index f4de004d470f..053c74afe721 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -939,7 +939,7 @@ static void intel_crtc_info(struct seq_file *m, struct intel_crtc *crtc)
 		seq_printf(m, "\tLinked to [CRTC:%d:%s] as a %s\n",
 			   crtc_state->bigjoiner_linked_crtc->base.base.id,
 			   crtc_state->bigjoiner_linked_crtc->base.name,
-			   crtc_state->bigjoiner_slave ? "slave" : "master");
+			   intel_crtc_is_bigjoiner_slave(crtc_state) ? "slave" : "master");
 
 	for_each_intel_encoder_mask(&dev_priv->drm, encoder,
 				    crtc_state->uapi.encoder_mask)
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 3faea903b9ae..b83b59cf2b78 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -1126,7 +1126,7 @@ void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state)
 	u32 dss_ctl1_val = 0;
 
 	if (crtc_state->bigjoiner && !crtc_state->dsc.compression_enable) {
-		if (crtc_state->bigjoiner_slave)
+		if (intel_crtc_is_bigjoiner_slave(crtc_state))
 			dss_ctl1_val |= UNCOMPRESSED_JOINER_SLAVE;
 		else
 			dss_ctl1_val |= UNCOMPRESSED_JOINER_MASTER;
@@ -1154,7 +1154,7 @@ void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
 	}
 	if (crtc_state->bigjoiner) {
 		dss_ctl1_val |= BIG_JOINER_ENABLE;
-		if (!crtc_state->bigjoiner_slave)
+		if (!intel_crtc_is_bigjoiner_slave(crtc_state))
 			dss_ctl1_val |= MASTER_BIG_JOINER_ENABLE;
 	}
 	intel_de_write(dev_priv, dss_ctl1_reg(crtc, crtc_state->cpu_transcoder), dss_ctl1_val);
-- 
2.34.1

