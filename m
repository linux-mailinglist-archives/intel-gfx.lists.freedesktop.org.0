Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D57F7B844C
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Oct 2023 17:56:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02DC510E18E;
	Wed,  4 Oct 2023 15:56:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7544E10E18E
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 15:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696434982; x=1727970982;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=74IFz6CnbjH06dPnwgy8oWkIVwTJwr9KJFMUmABh+wQ=;
 b=YeNUfsatJvVDWbPkh2OUbMJ1ZKWbESzRSrFaL/JcWXhST00Nz5HWAnEj
 jaG0W0n8Qc/huMylXi73itZ1kIPbCi3+LZs7theppdJxKct4j9D+PpJJ2
 HCu+EAzBGWbFXMyYUUo6T5orPfBqMioBo8DHTu6pfH+tkHenAWCyMGERs
 QDnxgUeHplVOoOF0/Z/vh4Gjc4pj6MAv6zMWsAaqQLW61x9Md1K6nTeS/
 XTX2MilogSERvWmRD4prVRZPVr8vWhRbS22n6F1Tvme8YxuweMnn+Sdzu
 hE0yB0U68kNEcQXjPvpAurmLzez3XJKhXqtPeCMWIBVYTZqVSuPad3Fs7 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="363483787"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="363483787"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 08:56:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="867440988"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="867440988"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga002.fm.intel.com with SMTP; 04 Oct 2023 08:56:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 04 Oct 2023 18:56:19 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Oct 2023 18:55:59 +0300
Message-ID: <20231004155607.7719-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231004155607.7719-1-ville.syrjala@linux.intel.com>
References: <20231004155607.7719-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/12] drm/i915: Simplify DPLL state checker
 calling convention
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

Make life simpler by just passing in the atomic state + crtc
instead of plumbing in all kinds of crtc states.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c      | 14 +++++++++-----
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h      |  7 +++----
 .../gpu/drm/i915/display/intel_modeset_verify.c    |  4 ++--
 3 files changed, 14 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 237cfc8780a4..399653a20f98 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4512,11 +4512,14 @@ verify_single_dpll_state(struct drm_i915_private *i915,
 			"pll hw state mismatch\n");
 }
 
-void intel_shared_dpll_state_verify(struct intel_crtc *crtc,
-				    const struct intel_crtc_state *old_crtc_state,
-				    const struct intel_crtc_state *new_crtc_state)
+void intel_shared_dpll_state_verify(struct intel_atomic_state *state,
+				    struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	const struct intel_crtc_state *old_crtc_state =
+		intel_atomic_get_old_crtc_state(state, crtc);
+	const struct intel_crtc_state *new_crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
 
 	if (new_crtc_state->shared_dpll)
 		verify_single_dpll_state(i915, new_crtc_state->shared_dpll,
@@ -4536,8 +4539,9 @@ void intel_shared_dpll_state_verify(struct intel_crtc *crtc,
 	}
 }
 
-void intel_shared_dpll_verify_disabled(struct drm_i915_private *i915)
+void intel_shared_dpll_verify_disabled(struct intel_atomic_state *state)
 {
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_shared_dpll *pll;
 	int i;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index e184680606e9..dd4796a61751 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -369,9 +369,8 @@ void intel_dpll_dump_hw_state(struct drm_i915_private *i915,
 enum intel_dpll_id icl_tc_port_to_pll_id(enum tc_port tc_port);
 bool intel_dpll_is_combophy(enum intel_dpll_id id);
 
-void intel_shared_dpll_state_verify(struct intel_crtc *crtc,
-				    const struct intel_crtc_state *old_crtc_state,
-				    const struct intel_crtc_state *new_crtc_state);
-void intel_shared_dpll_verify_disabled(struct drm_i915_private *i915);
+void intel_shared_dpll_state_verify(struct intel_atomic_state *state,
+				    struct intel_crtc *crtc);
+void intel_shared_dpll_verify_disabled(struct intel_atomic_state *state);
 
 #endif /* _INTEL_DPLL_MGR_H_ */
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
index 92b55b4fb74e..47d45ba1e707 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
@@ -236,7 +236,7 @@ void intel_modeset_verify_crtc(struct intel_crtc *crtc,
 	intel_wm_state_verify(crtc, new_crtc_state);
 	verify_connector_state(state, crtc);
 	verify_crtc_state(state, crtc);
-	intel_shared_dpll_state_verify(crtc, old_crtc_state, new_crtc_state);
+	intel_shared_dpll_state_verify(state, crtc);
 	intel_mpllb_state_verify(state, new_crtc_state);
 	intel_c10pll_state_verify(state, new_crtc_state);
 }
@@ -246,5 +246,5 @@ void intel_modeset_verify_disabled(struct drm_i915_private *dev_priv,
 {
 	verify_encoder_state(dev_priv, state);
 	verify_connector_state(state, NULL);
-	intel_shared_dpll_verify_disabled(dev_priv);
+	intel_shared_dpll_verify_disabled(state);
 }
-- 
2.41.0

