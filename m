Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A5FD46FDBAA
	for <lists+intel-gfx@lfdr.de>; Wed, 10 May 2023 12:31:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AE8410E478;
	Wed, 10 May 2023 10:31:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B1F110E471
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 May 2023 10:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683714659; x=1715250659;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HIV+EBPsGSV8xIgx725jSZ+KmFrih2Atvz89wIRrsQk=;
 b=Zz8meM6jdwFu04aoXSq8frZ5tNOul5gfqa4bDv2tIIE9YOw6aJwx90qm
 Pud++mCe2NWHPC3YZQfVKNiO5k1KzE6IYYvfQvoprpuGbTrBVvcy7HcNY
 0ZQs/4O2mS3iEgbYN+BjaVvq46TFEt3oyK4W9aS92TABTCxolsiUVcsjR
 uS5vy+mgsM8x84o6HUDdxGTkY2d1/vZKdgn8mtPSk625JafQ0MgVwgMWy
 fJ0O7GQMnf9KK8YJVqN5NVTBYzFEuZXjI9MjWO1jt76k8jCr7mYBofyFR
 a/hAvIFGFP9DHq1ikgL7BX9sFQKKcTpWLaMWg1C+iVGU4mkVS9jQrZCa0 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="350214407"
X-IronPort-AV: E=Sophos;i="5.99,264,1677571200"; d="scan'208";a="350214407"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 03:30:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="676796699"
X-IronPort-AV: E=Sophos;i="5.99,264,1677571200"; d="scan'208";a="676796699"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.72.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 03:30:57 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 May 2023 13:31:20 +0300
Message-Id: <20230510103131.1618266-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230510103131.1618266-1-imre.deak@intel.com>
References: <20230510103131.1618266-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 03/14] drm/i915: Make the CRTC state
 consistent during sanitize-disabling
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

Make sure that the CRTC state is reset correctly, as expected after
disabling the CRTC.

In particular this change will:
- Zero all the CSC blob pointers after intel_crtc_free_hw_state()
  has freed them.
- Zero the shared DPLL and port PLL pointers and clear the
  corresponding CRTC reference flag in the PLL state.
- Reset all the transcoder and pipe fields.

v2:
- Reset fully the CRTC state. (Ville)
- Clear pipe active flags in the DPLL state.

v3:
- Clear only the CRTC reference flag and add a helper for this.
  (Ville)

v4:
- Rebased on previous patch, adding
  intel_unreference_shared_dpll_crtc() separately. (Ville)

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h      |  3 +++
 drivers/gpu/drm/i915/display/intel_modeset_setup.c | 13 +++++++------
 3 files changed, 11 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 84ebe66012b1d..f603ab1e9a0e2 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -399,7 +399,7 @@ intel_reference_shared_dpll(struct intel_atomic_state *state,
  *
  * Drop a reference for @pll tracking the end of use of it by @crtc.
  */
-static void
+void
 intel_unreference_shared_dpll_crtc(const struct intel_crtc *crtc,
 				   const struct intel_shared_dpll *pll,
 				   struct intel_shared_dpll_state *shared_dpll_state)
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index 3854f1b4299ac..ba62eb5d7c517 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -341,6 +341,9 @@ int intel_reserve_shared_dplls(struct intel_atomic_state *state,
 			       struct intel_encoder *encoder);
 void intel_release_shared_dplls(struct intel_atomic_state *state,
 				struct intel_crtc *crtc);
+void intel_unreference_shared_dpll_crtc(const struct intel_crtc *crtc,
+					const struct intel_shared_dpll *pll,
+					struct intel_shared_dpll_state *shared_dpll_state);
 void icl_set_active_port_dpll(struct intel_crtc_state *crtc_state,
 			      enum icl_port_dpll_id port_dpll_id);
 void intel_update_active_dpll(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index eefa4018dc0c2..6e55806bbe066 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -88,13 +88,14 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
 	crtc->active = false;
 	crtc->base.enabled = false;
 
-	drm_WARN_ON(&i915->drm,
-		    drm_atomic_set_mode_for_crtc(&crtc_state->uapi, NULL) < 0);
-	crtc_state->uapi.active = false;
-	crtc_state->uapi.connector_mask = 0;
-	crtc_state->uapi.encoder_mask = 0;
+	if (crtc_state->shared_dpll)
+		intel_unreference_shared_dpll_crtc(crtc,
+						   crtc_state->shared_dpll,
+						   &crtc_state->shared_dpll->state);
+
+	__drm_atomic_helper_crtc_destroy_state(&crtc_state->uapi);
 	intel_crtc_free_hw_state(crtc_state);
-	memset(&crtc_state->hw, 0, sizeof(crtc_state->hw));
+	intel_crtc_state_reset(crtc_state, crtc);
 
 	for_each_encoder_on_crtc(&i915->drm, &crtc->base, encoder)
 		encoder->base.crtc = NULL;
-- 
2.37.2

