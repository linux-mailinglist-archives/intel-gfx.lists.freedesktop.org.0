Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C7BF6F0753
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Apr 2023 16:26:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC35B10EB4D;
	Thu, 27 Apr 2023 14:26:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F5EC10EB4D
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Apr 2023 14:26:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682605603; x=1714141603;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KG4G7GvU5t3eB5guFzMBGeYkaAijSo0M3PWjNewR6Gc=;
 b=Ij6tFbDIWQlwN5j7av02UocE5p1ZllG5V07s0rw4NYDZO//S7ujk4c9j
 yu2ZbKCt3Ae3GFuVpncnSzXtKHB2VypszgXUJ/cRHdEUXPuZ6ibE6DpiK
 vRC6VrOOStvITG2w53jmIHrKYfbtu1BuBiut1rWWlhemIPQWpmA2xAcDb
 Wrq137i597CJbwkIPQNpHUAQiRXgEfd8Le/5s4WrOyJIwIP5tVADNPTi2
 gbVi5TyMfRXGxiSP54hGrNUbAXDLFCmc+koOnlRirh8sXO2mLstmq7v0W
 9riukQ/gjvFvPVmmYNagVMQsNUXM3VzR6+TAU5Ks0dyDMlLTU9YaK9jk1 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="375438702"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="375438702"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2023 07:26:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="838403930"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="838403930"
Received: from jfedorov-mobl2.ccr.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.251.216.111])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2023 07:26:41 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Apr 2023 17:26:04 +0300
Message-Id: <20230427142604.1565580-9-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230427142604.1565580-1-vinod.govindapillai@intel.com>
References: <20230427142604.1565580-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 8/8] drm/i915/display: provision to suppress
 drm_warn in intel_get_crtc_new_encoder
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

While configuring pmdemand parameters, there could be
intel_get_crtc_new_encoder call where encoders could be 0. To avoid
invoking drm_warn in such cases, use a parameter to indicate drm_warn
should be suppressed.

v2: checkpatch warning fixes

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c     | 10 ++++++----
 drivers/gpu/drm/i915/display/intel_display.h     |  3 ++-
 drivers/gpu/drm/i915/display/intel_dpll.c        |  8 ++++----
 drivers/gpu/drm/i915/display/intel_pch_display.c |  2 +-
 drivers/gpu/drm/i915/display/intel_pmdemand.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_snps_phy.c    |  2 +-
 7 files changed, 16 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 83180074b512..e91fdd5a26c3 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -1879,7 +1879,7 @@ void intel_c10pll_state_verify(struct intel_atomic_state *state,
 	    !intel_crtc_needs_fastset(new_crtc_state))
 		return;
 
-	encoder = intel_get_crtc_new_encoder(state, new_crtc_state);
+	encoder = intel_get_crtc_new_encoder(state, new_crtc_state, true);
 	phy = intel_port_to_phy(i915, encoder->port);
 
 	if (!intel_is_c10phy(i915, phy))
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f98e235fadc6..4cadda4acce4 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -763,7 +763,8 @@ bool intel_has_pending_fb_unpin(struct drm_i915_private *dev_priv)
  */
 struct intel_encoder *
 intel_get_crtc_new_encoder(const struct intel_atomic_state *state,
-			   const struct intel_crtc_state *crtc_state)
+			   const struct intel_crtc_state *crtc_state,
+			   bool warn)
 {
 	const struct drm_connector_state *connector_state;
 	const struct drm_connector *connector;
@@ -782,9 +783,10 @@ intel_get_crtc_new_encoder(const struct intel_atomic_state *state,
 		num_encoders++;
 	}
 
-	drm_WARN(state->base.dev, num_encoders != 1,
-		 "%d encoders for pipe %c\n",
-		 num_encoders, pipe_name(master_crtc->pipe));
+	if (warn)
+		drm_WARN(state->base.dev, num_encoders != 1,
+			 "%d encoders for pipe %c\n",
+			 num_encoders, pipe_name(master_crtc->pipe));
 
 	return encoder;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index ac95961f68ba..4620ed991ff0 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -501,7 +501,8 @@ bool intel_plane_uses_fence(const struct intel_plane_state *plane_state);
 
 struct intel_encoder *
 intel_get_crtc_new_encoder(const struct intel_atomic_state *state,
-			   const struct intel_crtc_state *crtc_state);
+			   const struct intel_crtc_state *crtc_state,
+			   bool warn);
 void intel_plane_disable_noatomic(struct intel_crtc *crtc,
 				  struct intel_plane *plane);
 void intel_set_plane_visible(struct intel_crtc_state *crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index a9fbef0fa817..9d30f273130e 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -940,7 +940,7 @@ static int hsw_crtc_compute_clock(struct intel_atomic_state *state,
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_encoder *encoder =
-		intel_get_crtc_new_encoder(state, crtc_state);
+		intel_get_crtc_new_encoder(state, crtc_state, true);
 	int ret;
 
 	if (DISPLAY_VER(dev_priv) < 11 &&
@@ -969,7 +969,7 @@ static int hsw_crtc_get_shared_dpll(struct intel_atomic_state *state,
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_encoder *encoder =
-		intel_get_crtc_new_encoder(state, crtc_state);
+		intel_get_crtc_new_encoder(state, crtc_state, true);
 
 	if (DISPLAY_VER(dev_priv) < 11 &&
 	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
@@ -984,7 +984,7 @@ static int dg2_crtc_compute_clock(struct intel_atomic_state *state,
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_encoder *encoder =
-		intel_get_crtc_new_encoder(state, crtc_state);
+		intel_get_crtc_new_encoder(state, crtc_state, true);
 	int ret;
 
 	ret = intel_mpllb_calc_state(crtc_state, encoder);
@@ -1003,7 +1003,7 @@ static int mtl_crtc_compute_clock(struct intel_atomic_state *state,
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_encoder *encoder =
-		intel_get_crtc_new_encoder(state, crtc_state);
+		intel_get_crtc_new_encoder(state, crtc_state, true);
 	enum phy phy = intel_port_to_phy(i915, encoder->port);
 	int ret;
 
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index 2411fe4dee8b..fa91a9f66422 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -427,7 +427,7 @@ void ilk_pch_enable(struct intel_atomic_state *state,
 		if (adjusted_mode->flags & DRM_MODE_FLAG_PVSYNC)
 			temp |= TRANS_DP_VSYNC_ACTIVE_HIGH;
 
-		port = intel_get_crtc_new_encoder(state, crtc_state)->port;
+		port = intel_get_crtc_new_encoder(state, crtc_state, true)->port;
 		drm_WARN_ON(&dev_priv->drm, port < PORT_B || port > PORT_D);
 		temp |= TRANS_DP_PORT_SEL(port);
 
diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
index df6429e7059d..046bf3b7d208 100644
--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
@@ -216,7 +216,7 @@ int intel_pmdemand_atomic_check(struct intel_atomic_state *state)
 		if (!new_crtc_state->hw.active)
 			continue;
 
-		encoder = intel_get_crtc_new_encoder(state, new_crtc_state);
+		encoder = intel_get_crtc_new_encoder(state, new_crtc_state, false);
 		if (!encoder)
 			continue;
 
diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
index a72677bf617b..a4d56a2a670a 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
@@ -2012,7 +2012,7 @@ void intel_mpllb_state_verify(struct intel_atomic_state *state,
 	    !intel_crtc_needs_fastset(new_crtc_state))
 		return;
 
-	encoder = intel_get_crtc_new_encoder(state, new_crtc_state);
+	encoder = intel_get_crtc_new_encoder(state, new_crtc_state, true);
 	intel_mpllb_readout_hw_state(encoder, &mpllb_hw_state);
 
 #define MPLLB_CHECK(__name)						\
-- 
2.34.1

