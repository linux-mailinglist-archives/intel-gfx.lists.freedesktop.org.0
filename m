Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A1D14A8BBF
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Feb 2022 19:38:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37BE610EA46;
	Thu,  3 Feb 2022 18:38:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1434810EA45
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Feb 2022 18:38:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643913519; x=1675449519;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=+VoyKGj8EUTozbWkjBzNgkGXS78I9qI2uljaqFX02Qw=;
 b=b/6XIz0Ic+izL/GGmu/sJQd3VAr08yVK/xLBrijyFz9eHdFS8C4ChMrF
 NSagDSBAJw7+oU0u6ZdlS7wg7LgKVTNrf+OdC5WXobLadw0/5jelLqkSE
 i4B0wgnx+NmcpLI13DRRESG7IEg/cQhh5HzG/7czpI7D3KHuy2Kyl1aoY
 7Wjrk7pFOwpJUcNPAriVUHcXd4PS2QPjpztCA7pfZjRU1344Kalbi88Is
 a8MgKa4n2T1g8ybD0seVB1/R4JB5Sdd+HAwY3Yof/iJSJdo453dVUuoVC
 Br/YjOfx5r/zSOedpdHYRx41nW3OPPRciMj9upevGkYq01rApRL1ysi2D A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10247"; a="235623132"
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="235623132"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 10:38:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="498237345"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga002.jf.intel.com with SMTP; 03 Feb 2022 10:38:36 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 03 Feb 2022 20:38:35 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Feb 2022 20:38:17 +0200
Message-Id: <20220203183823.22890-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220203183823.22890-1-ville.syrjala@linux.intel.com>
References: <20220203183823.22890-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/10] drm/i915: Clean up the bigjoiner state
 copy logic
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

Currently the bigjoiner state copy logic is kind of
a byzantine mess.

Clean it up to operate in the following manner during a full
modeset:
1) master uapi -> hw state copy
2) master hw -> slave hw state copy

And during a non-modeset update we do:
1) master uapi -> hw state light copy
2) master hw -> slave hw state light copy

I think that is now easier to reason about since we never do
any kind of master uapi -> slave hw state copy short circuit
that could happen previously.

Obviously this does now depend on the master uapi->hw copy
always happening before the master hw -> slave hw copy, but
that is guaranteed by the fact that we always add both crtcs
to the state early, the crtcs are registered in pipe
order (so the compute_config loop happens in pipe order),
and the hardware requires the master pipe has to be lower
than the slave pipe as well. And for good measure we shall
add a check+WARN for this before doing the bigjoiner crtc
assignment.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic.c  |  11 --
 drivers/gpu/drm/i915/display/intel_atomic.h  |   2 -
 drivers/gpu/drm/i915/display/intel_display.c | 170 ++++++++++++-------
 3 files changed, 108 insertions(+), 75 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
index 093904065112..e0667d163266 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
@@ -281,17 +281,6 @@ void intel_crtc_free_hw_state(struct intel_crtc_state *crtc_state)
 	intel_crtc_put_color_blobs(crtc_state);
 }
 
-void intel_crtc_copy_color_blobs(struct intel_crtc_state *crtc_state,
-				 const struct intel_crtc_state *from_crtc_state)
-{
-	drm_property_replace_blob(&crtc_state->hw.degamma_lut,
-				  from_crtc_state->uapi.degamma_lut);
-	drm_property_replace_blob(&crtc_state->hw.gamma_lut,
-				  from_crtc_state->uapi.gamma_lut);
-	drm_property_replace_blob(&crtc_state->hw.ctm,
-				  from_crtc_state->uapi.ctm);
-}
-
 /**
  * intel_crtc_destroy_state - destroy crtc state
  * @crtc: drm crtc
diff --git a/drivers/gpu/drm/i915/display/intel_atomic.h b/drivers/gpu/drm/i915/display/intel_atomic.h
index d2700c74c9da..1dc439983dd9 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.h
+++ b/drivers/gpu/drm/i915/display/intel_atomic.h
@@ -44,8 +44,6 @@ struct drm_crtc_state *intel_crtc_duplicate_state(struct drm_crtc *crtc);
 void intel_crtc_destroy_state(struct drm_crtc *crtc,
 			       struct drm_crtc_state *state);
 void intel_crtc_free_hw_state(struct intel_crtc_state *crtc_state);
-void intel_crtc_copy_color_blobs(struct intel_crtc_state *crtc_state,
-				 const struct intel_crtc_state *from_crtc_state);
 struct drm_atomic_state *intel_atomic_state_alloc(struct drm_device *dev);
 void intel_atomic_state_free(struct drm_atomic_state *state);
 void intel_atomic_state_clear(struct drm_atomic_state *state);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b5701ca57889..48869478efc2 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5818,32 +5818,37 @@ static bool check_digital_port_conflicts(struct intel_atomic_state *state)
 
 static void
 intel_crtc_copy_uapi_to_hw_state_nomodeset(struct intel_atomic_state *state,
-					   struct intel_crtc_state *crtc_state)
+					   struct intel_crtc *crtc)
 {
-	const struct intel_crtc_state *master_crtc_state;
-	struct intel_crtc *master_crtc;
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
 
-	master_crtc = intel_master_crtc(crtc_state);
-	master_crtc_state = intel_atomic_get_new_crtc_state(state, master_crtc);
+	WARN_ON(crtc_state->bigjoiner_slave);
 
-	/* No need to copy state if the master state is unchanged */
-	if (master_crtc_state) {
-		crtc_state->uapi.color_mgmt_changed = master_crtc_state->uapi.color_mgmt_changed;
-		intel_crtc_copy_color_blobs(crtc_state, master_crtc_state);
-	}
+	drm_property_replace_blob(&crtc_state->hw.degamma_lut,
+				  crtc_state->uapi.degamma_lut);
+	drm_property_replace_blob(&crtc_state->hw.gamma_lut,
+				  crtc_state->uapi.gamma_lut);
+	drm_property_replace_blob(&crtc_state->hw.ctm,
+				  crtc_state->uapi.ctm);
 }
 
 static void
-intel_crtc_copy_uapi_to_hw_state(struct intel_atomic_state *state,
-				 struct intel_crtc_state *crtc_state)
+intel_crtc_copy_uapi_to_hw_state_modeset(struct intel_atomic_state *state,
+					 struct intel_crtc *crtc)
 {
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+
+	WARN_ON(crtc_state->bigjoiner_slave);
+
 	crtc_state->hw.enable = crtc_state->uapi.enable;
 	crtc_state->hw.active = crtc_state->uapi.active;
 	crtc_state->hw.mode = crtc_state->uapi.mode;
 	crtc_state->hw.adjusted_mode = crtc_state->uapi.adjusted_mode;
 	crtc_state->hw.scaling_filter = crtc_state->uapi.scaling_filter;
 
-	intel_crtc_copy_uapi_to_hw_state_nomodeset(state, crtc_state);
+	intel_crtc_copy_uapi_to_hw_state_nomodeset(state, crtc);
 }
 
 static void intel_crtc_copy_hw_to_uapi_state(struct intel_crtc_state *crtc_state)
@@ -5859,7 +5864,6 @@ static void intel_crtc_copy_hw_to_uapi_state(struct intel_crtc_state *crtc_state
 	crtc_state->uapi.adjusted_mode = crtc_state->hw.adjusted_mode;
 	crtc_state->uapi.scaling_filter = crtc_state->hw.scaling_filter;
 
-	/* copy color blobs to uapi */
 	drm_property_replace_blob(&crtc_state->uapi.degamma_lut,
 				  crtc_state->hw.degamma_lut);
 	drm_property_replace_blob(&crtc_state->uapi.gamma_lut,
@@ -5868,61 +5872,79 @@ static void intel_crtc_copy_hw_to_uapi_state(struct intel_crtc_state *crtc_state
 				  crtc_state->hw.ctm);
 }
 
+static void
+copy_bigjoiner_crtc_state_nomodeset(struct intel_atomic_state *state,
+				    struct intel_crtc *slave_crtc)
+{
+	struct intel_crtc_state *slave_crtc_state =
+		intel_atomic_get_new_crtc_state(state, slave_crtc);
+	struct intel_crtc *master_crtc = intel_master_crtc(slave_crtc_state);
+	const struct intel_crtc_state *master_crtc_state =
+		intel_atomic_get_new_crtc_state(state, master_crtc);
+
+	drm_property_replace_blob(&slave_crtc_state->hw.degamma_lut,
+				  master_crtc_state->hw.degamma_lut);
+	drm_property_replace_blob(&slave_crtc_state->hw.gamma_lut,
+				  master_crtc_state->hw.gamma_lut);
+	drm_property_replace_blob(&slave_crtc_state->uapi.ctm,
+				  master_crtc_state->hw.ctm);
+
+	slave_crtc_state->uapi.color_mgmt_changed = master_crtc_state->uapi.color_mgmt_changed;
+}
+
 static int
-copy_bigjoiner_crtc_state(struct intel_crtc_state *crtc_state,
-			  const struct intel_crtc_state *from_crtc_state)
+copy_bigjoiner_crtc_state_modeset(struct intel_atomic_state *state,
+				  struct intel_crtc *slave_crtc)
 {
+	struct intel_crtc_state *slave_crtc_state =
+		intel_atomic_get_new_crtc_state(state, slave_crtc);
+	struct intel_crtc *master_crtc = intel_master_crtc(slave_crtc_state);
+	const struct intel_crtc_state *master_crtc_state =
+		intel_atomic_get_new_crtc_state(state, master_crtc);
 	struct intel_crtc_state *saved_state;
 
-	saved_state = kmemdup(from_crtc_state, sizeof(*saved_state), GFP_KERNEL);
+	saved_state = kmemdup(master_crtc_state, sizeof(*saved_state), GFP_KERNEL);
 	if (!saved_state)
 		return -ENOMEM;
 
-	saved_state->uapi = crtc_state->uapi;
-	saved_state->scaler_state = crtc_state->scaler_state;
-	saved_state->shared_dpll = crtc_state->shared_dpll;
-	saved_state->dpll_hw_state = crtc_state->dpll_hw_state;
-	saved_state->crc_enabled = crtc_state->crc_enabled;
+	/* preserve some things from the slave's original crtc state */
+	saved_state->uapi = slave_crtc_state->uapi;
+	saved_state->scaler_state = slave_crtc_state->scaler_state;
+	saved_state->shared_dpll = slave_crtc_state->shared_dpll;
+	saved_state->dpll_hw_state = slave_crtc_state->dpll_hw_state;
+	saved_state->crc_enabled = slave_crtc_state->crc_enabled;
 
-	intel_crtc_free_hw_state(crtc_state);
-	memcpy(crtc_state, saved_state, sizeof(*crtc_state));
+	intel_crtc_free_hw_state(slave_crtc_state);
+	memcpy(slave_crtc_state, saved_state, sizeof(*slave_crtc_state));
 	kfree(saved_state);
 
 	/* Re-init hw state */
-	memset(&crtc_state->hw, 0, sizeof(saved_state->hw));
-	crtc_state->hw.enable = from_crtc_state->hw.enable;
-	crtc_state->hw.active = from_crtc_state->hw.active;
-	crtc_state->hw.mode = from_crtc_state->hw.mode;
-	crtc_state->hw.pipe_mode = from_crtc_state->hw.pipe_mode;
-	crtc_state->hw.adjusted_mode = from_crtc_state->hw.adjusted_mode;
-	crtc_state->hw.scaling_filter = from_crtc_state->hw.scaling_filter;
+	memset(&slave_crtc_state->hw, 0, sizeof(slave_crtc_state->hw));
+	slave_crtc_state->hw.enable = master_crtc_state->hw.enable;
+	slave_crtc_state->hw.active = master_crtc_state->hw.active;
+	slave_crtc_state->hw.mode = master_crtc_state->hw.mode;
+	slave_crtc_state->hw.pipe_mode = master_crtc_state->hw.pipe_mode;
+	slave_crtc_state->hw.adjusted_mode = master_crtc_state->hw.adjusted_mode;
+	slave_crtc_state->hw.scaling_filter = master_crtc_state->hw.scaling_filter;
 
-	drm_property_replace_blob(&crtc_state->hw.degamma_lut,
-				  from_crtc_state->hw.degamma_lut);
-	drm_property_replace_blob(&crtc_state->hw.gamma_lut,
-				  from_crtc_state->hw.gamma_lut);
-	drm_property_replace_blob(&crtc_state->uapi.ctm,
-				  from_crtc_state->hw.ctm);
+	copy_bigjoiner_crtc_state_nomodeset(state, slave_crtc);
 
 	/* Some fixups */
-	crtc_state->uapi.mode_changed = from_crtc_state->uapi.mode_changed;
-	crtc_state->uapi.connectors_changed = from_crtc_state->uapi.connectors_changed;
-	crtc_state->uapi.active_changed = from_crtc_state->uapi.active_changed;
-	crtc_state->uapi.color_mgmt_changed = from_crtc_state->uapi.color_mgmt_changed;
-	crtc_state->nv12_planes = crtc_state->c8_planes = crtc_state->update_planes = 0;
-	crtc_state->bigjoiner_linked_crtc = to_intel_crtc(from_crtc_state->uapi.crtc);
-	crtc_state->bigjoiner_slave = true;
-	crtc_state->cpu_transcoder = from_crtc_state->cpu_transcoder;
-	crtc_state->has_audio = from_crtc_state->has_audio;
+	slave_crtc_state->uapi.mode_changed = master_crtc_state->uapi.mode_changed;
+	slave_crtc_state->uapi.connectors_changed = master_crtc_state->uapi.connectors_changed;
+	slave_crtc_state->uapi.active_changed = master_crtc_state->uapi.active_changed;
+	slave_crtc_state->cpu_transcoder = master_crtc_state->cpu_transcoder;
+	slave_crtc_state->has_audio = master_crtc_state->has_audio;
 
 	return 0;
 }
 
 static int
 intel_crtc_prepare_cleared_state(struct intel_atomic_state *state,
-				 struct intel_crtc_state *crtc_state)
+				 struct intel_crtc *crtc)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	struct intel_crtc_state *saved_state;
 
@@ -5952,7 +5974,7 @@ intel_crtc_prepare_cleared_state(struct intel_atomic_state *state,
 	memcpy(crtc_state, saved_state, sizeof(*crtc_state));
 	kfree(saved_state);
 
-	intel_crtc_copy_uapi_to_hw_state(state, crtc_state);
+	intel_crtc_copy_uapi_to_hw_state_modeset(state, crtc);
 
 	return 0;
 }
@@ -7592,6 +7614,9 @@ static int intel_atomic_check_bigjoiner(struct intel_atomic_state *state,
 	struct intel_crtc_state *slave_crtc_state;
 	struct intel_crtc *slave_crtc;
 
+	WARN_ON(master_crtc_state->bigjoiner_linked_crtc);
+	WARN_ON(master_crtc_state->bigjoiner_slave);
+
 	if (!master_crtc_state->bigjoiner)
 		return 0;
 
@@ -7604,7 +7629,6 @@ static int intel_atomic_check_bigjoiner(struct intel_atomic_state *state,
 		return -EINVAL;
 	}
 
-	master_crtc_state->bigjoiner_linked_crtc = slave_crtc;
 	slave_crtc_state = intel_atomic_get_crtc_state(&state->base, slave_crtc);
 	if (IS_ERR(slave_crtc_state))
 		return PTR_ERR(slave_crtc_state);
@@ -7613,11 +7637,28 @@ static int intel_atomic_check_bigjoiner(struct intel_atomic_state *state,
 	if (slave_crtc_state->uapi.enable)
 		goto claimed;
 
+	/*
+	 * The state copy logic assumes the master crtc gets processed
+	 * before the slave crtc during the main compute_config loop.
+	 * This works because the crtcs are created in pipe order,
+	 * and the hardware requires master pipe < slave pipe as well.
+	 * Should that change we need to rethink the logic.
+	 */
+	if (WARN_ON(drm_crtc_index(&master_crtc->base) > drm_crtc_index(&slave_crtc->base)))
+		return -EINVAL;
+
 	drm_dbg_kms(&i915->drm,
-		    "[CRTC:%d:%s] Used as slave for big joiner\n",
-		    slave_crtc->base.base.id, slave_crtc->base.name);
+		    "[CRTC:%d:%s] Used as slave for big joiner master [CRTC:%d:%s]\n",
+		    slave_crtc->base.base.id, slave_crtc->base.name,
+		    master_crtc->base.base.id, master_crtc->base.name);
 
-	return copy_bigjoiner_crtc_state(slave_crtc_state, master_crtc_state);
+	master_crtc_state->bigjoiner_linked_crtc = slave_crtc;
+	master_crtc_state->bigjoiner_slave = false;
+
+	slave_crtc_state->bigjoiner_linked_crtc = master_crtc;
+	slave_crtc_state->bigjoiner_slave = true;
+
+	return copy_bigjoiner_crtc_state_modeset(state, slave_crtc);
 
 claimed:
 	drm_dbg_kms(&i915->drm,
@@ -7629,15 +7670,19 @@ static int intel_atomic_check_bigjoiner(struct intel_atomic_state *state,
 }
 
 static void kill_bigjoiner_slave(struct intel_atomic_state *state,
-				 struct intel_crtc_state *master_crtc_state)
+				 struct intel_crtc *master_crtc)
 {
+	struct intel_crtc_state *master_crtc_state =
+		intel_atomic_get_new_crtc_state(state, master_crtc);
+	struct intel_crtc *slave_crtc = master_crtc_state->bigjoiner_linked_crtc;
 	struct intel_crtc_state *slave_crtc_state =
-		intel_atomic_get_new_crtc_state(state, master_crtc_state->bigjoiner_linked_crtc);
+		intel_atomic_get_new_crtc_state(state, slave_crtc);
 
 	slave_crtc_state->bigjoiner = master_crtc_state->bigjoiner = false;
 	slave_crtc_state->bigjoiner_slave = master_crtc_state->bigjoiner_slave = false;
 	slave_crtc_state->bigjoiner_linked_crtc = master_crtc_state->bigjoiner_linked_crtc = NULL;
-	intel_crtc_copy_uapi_to_hw_state(state, slave_crtc_state);
+
+	intel_crtc_copy_uapi_to_hw_state_modeset(state, slave_crtc);
 }
 
 /**
@@ -7823,7 +7868,7 @@ static int intel_bigjoiner_add_affected_crtcs(struct intel_atomic_state *state)
 		/* Kill old bigjoiner link, we may re-establish afterwards */
 		if (intel_crtc_needs_modeset(crtc_state) &&
 		    crtc_state->bigjoiner && !crtc_state->bigjoiner_slave)
-			kill_bigjoiner_slave(state, crtc_state);
+			kill_bigjoiner_slave(state, crtc);
 	}
 
 	return 0;
@@ -7867,21 +7912,22 @@ static int intel_atomic_check(struct drm_device *dev,
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i) {
 		if (!intel_crtc_needs_modeset(new_crtc_state)) {
-			/* Light copy */
-			intel_crtc_copy_uapi_to_hw_state_nomodeset(state, new_crtc_state);
-
+			if (new_crtc_state->bigjoiner_slave)
+				copy_bigjoiner_crtc_state_nomodeset(state, crtc);
+			else
+				intel_crtc_copy_uapi_to_hw_state_nomodeset(state, crtc);
 			continue;
 		}
 
 		if (!new_crtc_state->uapi.enable) {
 			if (!new_crtc_state->bigjoiner_slave) {
-				intel_crtc_copy_uapi_to_hw_state(state, new_crtc_state);
+				intel_crtc_copy_uapi_to_hw_state_modeset(state, crtc);
 				any_ms = true;
 			}
 			continue;
 		}
 
-		ret = intel_crtc_prepare_cleared_state(state, new_crtc_state);
+		ret = intel_crtc_prepare_cleared_state(state, crtc);
 		if (ret)
 			goto fail;
 
-- 
2.34.1

