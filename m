Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA4C44AF003
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 12:35:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B23D210E6FF;
	Wed,  9 Feb 2022 11:35:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A97C310E69B
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Feb 2022 11:35:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644406540; x=1675942540;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=BO6SVBl1m8QJyOUSPLSe/8tkGn/iYtwqmepdUbqJoMw=;
 b=TAbCvMF3DL5fj4lGxVT9vICNYjPmJgqA9NZ4Csm0r3s0zF8uPlJZFeSS
 cryiOGTzYnSJ0FNK5snI0piFN52DKePfywo5PVhPt5L0nJWGIk3CoN4cH
 istEVaN+OhbzoSCQ0Dx/+8pkV29gwh5Uif5ys4fxp0fS+BYGQ+U75RiLS
 Wh/PJbpXE1Vk7oGoGwDY2vbwpvNKAfwjtQX0IE4MXwmeN52gaTCN2Iywx
 NhUQxmiCbE1F/KrqaXDf1gUnE1u0CMstYV/ehAZSGvSL8gbf9l84atla5
 +pehiUSmpvGFIFkpYTssxWljoS826mqmX4Ci/cJAuMKMWwAFDuHVNTGBF g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="335586444"
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="335586444"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 03:35:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="485210519"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga006.jf.intel.com with SMTP; 09 Feb 2022 03:35:30 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Feb 2022 13:35:29 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Feb 2022 13:35:21 +0200
Message-Id: <20220209113526.7595-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220209113526.7595-1-ville.syrjala@linux.intel.com>
References: <20220209113526.7595-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/7] drm/i915: Change IPS calling convention
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

Follow the modern state+crtc calling convention for the IPS
code as well.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 38 +++++++++++---------
 1 file changed, 22 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 5cc142a83ad7..c5d30c683911 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1170,11 +1170,14 @@ static void intel_crtc_dpms_overlay_disable(struct intel_crtc *crtc)
 	 */
 }
 
-static bool hsw_pre_update_disable_ips(const struct intel_crtc_state *old_crtc_state,
-				       const struct intel_crtc_state *new_crtc_state)
+static bool hsw_pre_update_disable_ips(struct intel_atomic_state *state,
+				       struct intel_crtc *crtc)
 {
-	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	const struct intel_crtc_state *old_crtc_state =
+		intel_atomic_get_old_crtc_state(state, crtc);
+	const struct intel_crtc_state *new_crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
 
 	if (!old_crtc_state->ips_enabled)
 		return false;
@@ -1197,11 +1200,14 @@ static bool hsw_pre_update_disable_ips(const struct intel_crtc_state *old_crtc_s
 	return !new_crtc_state->ips_enabled;
 }
 
-static bool hsw_post_update_enable_ips(const struct intel_crtc_state *old_crtc_state,
-				       const struct intel_crtc_state *new_crtc_state)
+static bool hsw_post_update_enable_ips(struct intel_atomic_state *state,
+				       struct intel_crtc *crtc)
 {
-	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	const struct intel_crtc_state *old_crtc_state =
+		intel_atomic_get_old_crtc_state(state, crtc);
+	const struct intel_crtc_state *new_crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
 
 	if (!new_crtc_state->ips_enabled)
 		return false;
@@ -1325,7 +1331,7 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
 	if (new_crtc_state->update_wm_post && new_crtc_state->hw.active)
 		intel_update_watermarks(dev_priv);
 
-	if (hsw_post_update_enable_ips(old_crtc_state, new_crtc_state))
+	if (hsw_post_update_enable_ips(state, crtc))
 		hsw_enable_ips(new_crtc_state);
 
 	intel_fbc_post_update(state, crtc);
@@ -1430,7 +1436,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 
 	intel_psr_pre_plane_update(state, crtc);
 
-	if (hsw_pre_update_disable_ips(old_crtc_state, new_crtc_state) &&
+	if (hsw_pre_update_disable_ips(state, crtc) &&
 	    hsw_disable_ips(old_crtc_state))
 		intel_crtc_wait_for_next_vblank(crtc);
 
@@ -2812,12 +2818,12 @@ bool hsw_crtc_state_ips_capable(const struct intel_crtc_state *crtc_state)
 	return true;
 }
 
-static int hsw_compute_ips_config(struct intel_crtc_state *crtc_state)
+static int hsw_ips_compute_config(struct intel_atomic_state *state,
+				  struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv =
-		to_i915(crtc_state->uapi.crtc->dev);
-	struct intel_atomic_state *state =
-		to_intel_atomic_state(crtc_state->uapi.state);
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
 
 	crtc_state->ips_enabled = false;
 
@@ -5322,7 +5328,7 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 	}
 
 	if (HAS_IPS(dev_priv)) {
-		ret = hsw_compute_ips_config(crtc_state);
+		ret = hsw_ips_compute_config(state, crtc);
 		if (ret)
 			return ret;
 	}
-- 
2.34.1

