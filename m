Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ECD789907D
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Apr 2024 23:35:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54C36113578;
	Thu,  4 Apr 2024 21:35:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KH+XbBOX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9ACAE113574
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Apr 2024 21:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712266523; x=1743802523;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IWc4DNL8eFAGjSyenDY4Gkv2KPKae6sBurmhsOk3BDI=;
 b=KH+XbBOXxruGazTGP25yyaclQZNC04iCi/lTqLlJgTVaMZVCOINliNir
 nemaNXl/r56uu9GbaT4gWiWowmaHdJnSUthyhfhl9mKeYd68affHUHv2j
 gzNOly288+96GRQFeTsgbFBkDPc7QAtmlwY/fc1bxp42m+tctCsl5griE
 MB+Z6jrncUtbEdfYFqigt4T9P/2hg0CiUg/OQHAe7rnfrpYlydD0GJwVW
 Di5eAID7QKc2kPsoy+7O+erzgiAMF3B+Nxr3MpnqV/9SGR4jtiDOHGIpJ
 Gc/m0L0ELtniGcIjLXQKmTEg6EZSS5VXg8MFZXPuozC6TwXre8zPSLKcf w==;
X-CSE-ConnectionGUID: SGn178QzTi+9WVN9dHhs0w==
X-CSE-MsgGUID: /H0kwSn7R0qhPtPaLqK90Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="7710835"
X-IronPort-AV: E=Sophos;i="6.07,180,1708416000"; 
   d="scan'208";a="7710835"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 14:35:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="827790630"
X-IronPort-AV: E=Sophos;i="6.07,180,1708416000"; d="scan'208";a="827790630"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 04 Apr 2024 14:35:19 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Apr 2024 00:35:19 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Vidya Srinivas <vidya.srinivas@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH v2 11/17] drm/i915: Introduce intel_crtc_joined_pipe_mask()
Date: Fri,  5 Apr 2024 00:34:35 +0300
Message-ID: <20240404213441.17637-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240404213441.17637-1-ville.syrjala@linux.intel.com>
References: <20240404213441.17637-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

Add a small helper to compute the set of pipes that the current
crtc is using.

And we have at least one trivial place in
intel_ddi_update_active_dpll() where we can use it
immediately, so let's do that.

v2: Use the name 'pipe_crtc' for the per-pipe crtc pointer

Tested-by: Vidya Srinivas <vidya.srinivas@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     | 11 +++++------
 drivers/gpu/drm/i915/display/intel_display.c |  7 +++++++
 drivers/gpu/drm/i915/display/intel_display.h |  1 +
 3 files changed, 13 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 909c0102c865..9bfe0fd3cffc 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3463,18 +3463,17 @@ void intel_ddi_update_active_dpll(struct intel_atomic_state *state,
 				  struct intel_crtc *crtc)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	struct intel_crtc_state *crtc_state =
+	const struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
-	struct intel_crtc *slave_crtc;
+	struct intel_crtc *pipe_crtc;
 
 	/* FIXME: Add MTL pll_mgr */
 	if (DISPLAY_VER(i915) >= 14 || !intel_encoder_is_tc(encoder))
 		return;
 
-	intel_update_active_dpll(state, crtc, encoder);
-	for_each_intel_crtc_in_pipe_mask(&i915->drm, slave_crtc,
-					 intel_crtc_bigjoiner_slave_pipes(crtc_state))
-		intel_update_active_dpll(state, slave_crtc, encoder);
+	for_each_intel_crtc_in_pipe_mask(&i915->drm, pipe_crtc,
+					 intel_crtc_joined_pipe_mask(crtc_state))
+		intel_update_active_dpll(state, pipe_crtc, encoder);
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 449dd8667685..9f5ff11d74b8 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -275,6 +275,13 @@ static int intel_bigjoiner_num_pipes(const struct intel_crtc_state *crtc_state)
 	return hweight8(crtc_state->bigjoiner_pipes);
 }
 
+u8 intel_crtc_joined_pipe_mask(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	return BIT(crtc->pipe) | crtc_state->bigjoiner_pipes;
+}
+
 struct intel_crtc *intel_master_crtc(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 423074d6947a..898b11663377 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -416,6 +416,7 @@ intel_cpu_transcoder_mode_valid(struct drm_i915_private *i915,
 enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port);
 bool is_trans_port_sync_mode(const struct intel_crtc_state *state);
 bool is_trans_port_sync_master(const struct intel_crtc_state *state);
+u8 intel_crtc_joined_pipe_mask(const struct intel_crtc_state *crtc_state);
 bool intel_crtc_is_bigjoiner_slave(const struct intel_crtc_state *crtc_state);
 bool intel_crtc_is_bigjoiner_master(const struct intel_crtc_state *crtc_state);
 u8 intel_crtc_bigjoiner_slave_pipes(const struct intel_crtc_state *crtc_state);
-- 
2.43.2

