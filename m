Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECDA96EF511
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 15:07:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50B2410E995;
	Wed, 26 Apr 2023 13:07:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2666F10E997
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Apr 2023 13:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682514419; x=1714050419;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4bAlvpP3KZUEseu07VtMB0ktYRYTiU+Mn9u8sVqRzm0=;
 b=IewilmD/7zxY40xEtBxUx+nyeAQaQTE/4gB69hsOMUyJfagCp04PHwS1
 g7sSGMDrAxgK/r7HM261AkT3I8ycDAWrYejvo0jACnl1su6gcIwSh57xR
 LEwL4EDl+pjZtb9cBlN8csN+dd5Z+61Ek1pUSLARFSRU/ONiWEH9u6L1L
 W0w+6G7aCT7/TTVsTc/06Ah6yMLxTJijMrW53FIHmqrSchtTo0pNSDpN4
 4q1KyuC1oMU0EO8Yw9mdFDko0Dsp5vtU3+9Hjqezt8dEidGtdRV9mh86O
 cI2fsRUlFwbbvswU33topJg7UPPhaNL2mlKklbAUqzB3iF9Sto/9PPQM8 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="336014049"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="336014049"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 06:06:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="1023612277"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="1023612277"
Received: from aeherrer-mobl2.amr.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.249.37.76])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 06:06:56 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Apr 2023 16:06:19 +0300
Message-Id: <20230426130619.1227635-9-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230426130619.1227635-1-vinod.govindapillai@intel.com>
References: <20230426130619.1227635-1-vinod.govindapillai@intel.com>
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
index 99536b4c7324..42e347132b50 100644
--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
@@ -218,7 +218,7 @@ int intel_pmdemand_atomic_check(struct intel_atomic_state *state)
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

