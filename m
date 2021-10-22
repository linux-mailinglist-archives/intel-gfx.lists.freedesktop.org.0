Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E7F437587
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Oct 2021 12:33:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12B826ED05;
	Fri, 22 Oct 2021 10:33:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3D036ED05
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Oct 2021 10:33:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10144"; a="210066654"
X-IronPort-AV: E=Sophos;i="5.87,172,1631602800"; d="scan'208";a="210066654"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2021 03:33:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,172,1631602800"; d="scan'208";a="463999300"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga002.jf.intel.com with SMTP; 22 Oct 2021 03:33:18 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 22 Oct 2021 13:33:17 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Manasi Navare <manasi.d.navare@intel.com>
Date: Fri, 22 Oct 2021 13:32:59 +0300
Message-Id: <20211022103304.24164-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211022103304.24164-1-ville.syrjala@linux.intel.com>
References: <20211022103304.24164-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/9] drm/i915: Introduce intel_master_crtc()
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

Add a helper to determine the master crtc for bigjoiner usage.
Also name the variables consistently.

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     |  6 +--
 drivers/gpu/drm/i915/display/intel_display.c | 57 +++++++++++---------
 2 files changed, 33 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 6c11992496f2..f8d07689d20c 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2825,12 +2825,10 @@ static void intel_ddi_post_disable(struct intel_atomic_state *state,
 	}
 
 	if (old_crtc_state->bigjoiner_linked_crtc) {
-		struct intel_atomic_state *state =
-			to_intel_atomic_state(old_crtc_state->uapi.state);
-		struct intel_crtc *slave =
+		struct intel_crtc *slave_crtc =
 			old_crtc_state->bigjoiner_linked_crtc;
 		const struct intel_crtc_state *old_slave_crtc_state =
-			intel_atomic_get_old_crtc_state(state, slave);
+			intel_atomic_get_old_crtc_state(state, slave_crtc);
 
 		intel_crtc_vblank_off(old_slave_crtc_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1d920ba83521..640d87a00e15 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -335,6 +335,14 @@ is_trans_port_sync_mode(const struct intel_crtc_state *crtc_state)
 		is_trans_port_sync_slave(crtc_state);
 }
 
+static struct intel_crtc *intel_master_crtc(const struct intel_crtc_state *crtc_state)
+{
+	if (crtc_state->bigjoiner_slave)
+		return crtc_state->bigjoiner_linked_crtc;
+	else
+		return to_intel_crtc(crtc_state->uapi.crtc);
+}
+
 static bool pipe_scanline_is_moving(struct drm_i915_private *dev_priv,
 				    enum pipe pipe)
 {
@@ -1947,21 +1955,19 @@ static void hsw_set_frame_start_delay(const struct intel_crtc_state *crtc_state)
 static void icl_ddi_bigjoiner_pre_enable(struct intel_atomic_state *state,
 					 const struct intel_crtc_state *crtc_state)
 {
-	struct intel_crtc *master = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(master->base.dev);
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_crtc_state *master_crtc_state;
+	struct intel_crtc *master_crtc;
 	struct drm_connector_state *conn_state;
 	struct drm_connector *conn;
 	struct intel_encoder *encoder = NULL;
 	int i;
 
-	if (crtc_state->bigjoiner_slave)
-		master = crtc_state->bigjoiner_linked_crtc;
-
-	master_crtc_state = intel_atomic_get_new_crtc_state(state, master);
+	master_crtc = intel_master_crtc(crtc_state);
+	master_crtc_state = intel_atomic_get_new_crtc_state(state, master_crtc);
 
 	for_each_new_connector_in_state(&state->base, conn, conn_state, i) {
-		if (conn_state->crtc != &master->base)
+		if (conn_state->crtc != &master_crtc->base)
 			continue;
 
 		encoder = to_intel_encoder(conn_state->best_encoder);
@@ -1975,10 +1981,10 @@ static void icl_ddi_bigjoiner_pre_enable(struct intel_atomic_state *state,
 		/*
 		 * Enable sequence steps 1-7 on bigjoiner master
 		 */
-		intel_encoders_pre_pll_enable(state, master);
+		intel_encoders_pre_pll_enable(state, master_crtc);
 		if (master_crtc_state->shared_dpll)
 			intel_enable_shared_dpll(master_crtc_state);
-		intel_encoders_pre_enable(state, master);
+		intel_encoders_pre_enable(state, master_crtc);
 
 		/* and DSC on slave */
 		intel_dsc_enable(NULL, crtc_state);
@@ -6877,7 +6883,7 @@ verify_crtc_state(struct intel_crtc *crtc,
 	struct intel_encoder *encoder;
 	struct intel_crtc_state *pipe_config = old_crtc_state;
 	struct drm_atomic_state *state = old_crtc_state->uapi.state;
-	struct intel_crtc *master = crtc;
+	struct intel_crtc *master_crtc;
 
 	__drm_atomic_helper_crtc_destroy_state(&old_crtc_state->uapi);
 	intel_crtc_free_hw_state(old_crtc_state);
@@ -6905,10 +6911,9 @@ verify_crtc_state(struct intel_crtc *crtc,
 			"(expected %i, found %i)\n",
 			new_crtc_state->hw.active, crtc->active);
 
-	if (new_crtc_state->bigjoiner_slave)
-		master = new_crtc_state->bigjoiner_linked_crtc;
+	master_crtc = intel_master_crtc(new_crtc_state);
 
-	for_each_encoder_on_crtc(dev, &master->base, encoder) {
+	for_each_encoder_on_crtc(dev, &master_crtc->base, encoder) {
 		enum pipe pipe;
 		bool active;
 
@@ -6918,7 +6923,7 @@ verify_crtc_state(struct intel_crtc *crtc,
 				encoder->base.base.id, active,
 				new_crtc_state->hw.active);
 
-		I915_STATE_WARN(active && master->pipe != pipe,
+		I915_STATE_WARN(active && master_crtc->pipe != pipe,
 				"Encoder connected to wrong pipe %c\n",
 				pipe_name(pipe));
 
@@ -7590,13 +7595,13 @@ static int intel_atomic_check_bigjoiner(struct intel_atomic_state *state,
 					struct intel_crtc_state *new_crtc_state)
 {
 	struct intel_crtc_state *slave_crtc_state, *master_crtc_state;
-	struct intel_crtc *slave, *master;
+	struct intel_crtc *slave_crtc, *master_crtc;
 
 	/* slave being enabled, is master is still claiming this crtc? */
 	if (old_crtc_state->bigjoiner_slave) {
-		slave = crtc;
-		master = old_crtc_state->bigjoiner_linked_crtc;
-		master_crtc_state = intel_atomic_get_new_crtc_state(state, master);
+		slave_crtc = crtc;
+		master_crtc = old_crtc_state->bigjoiner_linked_crtc;
+		master_crtc_state = intel_atomic_get_new_crtc_state(state, master_crtc);
 		if (!master_crtc_state || !intel_crtc_needs_modeset(master_crtc_state))
 			goto claimed;
 	}
@@ -7604,17 +7609,17 @@ static int intel_atomic_check_bigjoiner(struct intel_atomic_state *state,
 	if (!new_crtc_state->bigjoiner)
 		return 0;
 
-	slave = intel_dsc_get_bigjoiner_secondary(crtc);
-	if (!slave) {
+	slave_crtc = intel_dsc_get_bigjoiner_secondary(crtc);
+	if (!slave_crtc) {
 		DRM_DEBUG_KMS("[CRTC:%d:%s] Big joiner configuration requires "
 			      "CRTC + 1 to be used, doesn't exist\n",
 			      crtc->base.base.id, crtc->base.name);
 		return -EINVAL;
 	}
 
-	new_crtc_state->bigjoiner_linked_crtc = slave;
-	slave_crtc_state = intel_atomic_get_crtc_state(&state->base, slave);
-	master = crtc;
+	new_crtc_state->bigjoiner_linked_crtc = slave_crtc;
+	slave_crtc_state = intel_atomic_get_crtc_state(&state->base, slave_crtc);
+	master_crtc = crtc;
 	if (IS_ERR(slave_crtc_state))
 		return PTR_ERR(slave_crtc_state);
 
@@ -7623,15 +7628,15 @@ static int intel_atomic_check_bigjoiner(struct intel_atomic_state *state,
 		goto claimed;
 
 	DRM_DEBUG_KMS("[CRTC:%d:%s] Used as slave for big joiner\n",
-		      slave->base.base.id, slave->base.name);
+		      slave_crtc->base.base.id, slave_crtc->base.name);
 
 	return copy_bigjoiner_crtc_state(slave_crtc_state, new_crtc_state);
 
 claimed:
 	DRM_DEBUG_KMS("[CRTC:%d:%s] Slave is enabled as normal CRTC, but "
 		      "[CRTC:%d:%s] claiming this CRTC for bigjoiner.\n",
-		      slave->base.base.id, slave->base.name,
-		      master->base.base.id, master->base.name);
+		      slave_crtc->base.base.id, slave_crtc->base.name,
+		      master_crtc->base.base.id, master_crtc->base.name);
 	return -EINVAL;
 }
 
-- 
2.32.0

