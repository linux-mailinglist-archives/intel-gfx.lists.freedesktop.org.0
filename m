Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E3C96F8A50
	for <lists+intel-gfx@lfdr.de>; Fri,  5 May 2023 22:45:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7A1110E674;
	Fri,  5 May 2023 20:45:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFF4810E674
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 May 2023 20:45:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683319549; x=1714855549;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9tDO5g34LbHBAgMvkuMZSQRVAaccK6fb8Fu6ELh1Btw=;
 b=YTuC6oNCJqFGHnteLEQ78lSXmaqppk4kMNOeRdFnX6bP4hm0/YwrhUr7
 0D4TqTfLtKz9RKch925GbExgJFsI95mMdjNHvOILyO2YqTQobGofxYVqV
 +BskAQy0pRivLIzN8Lnt1aAuj4Q5AMD67413kl1J4gzfVozY8vzl0caJC
 W/IyVFOVJjWZD5Lr47J27h1wSOC9B5PBnzgPDpZkSimJXxIdLSOyuLcWe
 Um5y9lNGr+fWp9arGhUFi/cod6J8Bt+tBezhN/MS6JISvwU3TdRNmLdJg
 pZGokNN+Q1KUq6Wfvz7ND0Uu/M0cdGVGZMgVQCj+Yym7wpStUMXfZQsaJ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="346763336"
X-IronPort-AV: E=Sophos;i="5.99,253,1677571200"; d="scan'208";a="346763336"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 13:45:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="821860249"
X-IronPort-AV: E=Sophos;i="5.99,253,1677571200"; d="scan'208";a="821860249"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.72.78])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 13:45:35 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 May 2023 23:46:04 +0300
Message-Id: <20230505204611.682946-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230503231048.432368-3-imre.deak@intel.com>
References: <20230503231048.432368-3-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 02/12] drm/i915: Make the CRTC state
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

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 23 +++++++++++++------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  3 +++
 .../drm/i915/display/intel_modeset_setup.c    | 13 ++++++-----
 3 files changed, 26 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index ed372d227aa73..e436127bfe94e 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -374,22 +374,31 @@ intel_reference_shared_dpll(struct intel_atomic_state *state,
 		    crtc->base.base.id, crtc->base.name, pll->info->name);
 }
 
+void
+intel_unreference_shared_dpll_crtc(const struct intel_crtc *crtc,
+				   const struct intel_shared_dpll *pll,
+				   struct intel_shared_dpll_state *shared_dpll_state)
+{
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+
+	drm_WARN_ON(&i915->drm, (shared_dpll_state->pipe_mask & BIT(crtc->pipe)) == 0);
+
+	shared_dpll_state->pipe_mask &= ~BIT(crtc->pipe);
+
+	drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] releasing %s\n",
+		    crtc->base.base.id, crtc->base.name, pll->info->name);
+}
+
 static void intel_unreference_shared_dpll(struct intel_atomic_state *state,
 					  const struct intel_crtc *crtc,
 					  const struct intel_shared_dpll *pll)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_shared_dpll_state *shared_dpll;
 	const enum intel_dpll_id id = pll->info->id;
 
 	shared_dpll = intel_atomic_get_shared_dpll_state(&state->base);
 
-	drm_WARN_ON(&i915->drm, (shared_dpll[id].pipe_mask & BIT(crtc->pipe)) == 0);
-
-	shared_dpll[id].pipe_mask &= ~BIT(crtc->pipe);
-
-	drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] releasing %s\n",
-		    crtc->base.base.id, crtc->base.name, pll->info->name);
+	intel_unreference_shared_dpll_crtc(crtc, pll, &shared_dpll[id]);
 }
 
 static void intel_put_dpll(struct intel_atomic_state *state,
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

