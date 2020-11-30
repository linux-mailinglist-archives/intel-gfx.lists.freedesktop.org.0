Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25CAA2C8FDF
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 22:22:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 254566E8BA;
	Mon, 30 Nov 2020 21:22:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A33A86E8B5
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 21:22:07 +0000 (UTC)
IronPort-SDR: bCdKANzdtF+IWpEvqFkSqn7k96EwhkO2br7+hgL3ekG0hd1DQwqXIAgonjPyOO1QXGhcYtmluv
 8KG6aHsfr26A==
X-IronPort-AV: E=McAfee;i="6000,8403,9821"; a="257424732"
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="257424732"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 13:22:07 -0800
IronPort-SDR: ducz9HoyO6W6z9FwocliI2bi7fO8AU35nKaKYUkaj7lHFgT3XFoItTrJI/5kHCo99O66qXeoHh
 jKsFGRFCv2tA==
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="480810542"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 13:22:06 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Nov 2020 23:21:54 +0200
Message-Id: <20201130212200.2811939-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201130212200.2811939-1-imre.deak@intel.com>
References: <20201130212200.2811939-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/9] drm/i915: Track power references taken for
 enabled CRTCs
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add wakeref tracking for display power domain references taken for
enabled CRTCs.

Cc: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 38 ++++++++-----------
 .../drm/i915/display/intel_display_types.h    |  2 +-
 2 files changed, 17 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d80d15d96d4c..a6043197171b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7575,25 +7575,25 @@ modeset_get_crtc_power_domains(struct intel_crtc_state *crtc_state)
 	enum intel_display_power_domain domain;
 	u64 domains, new_domains, old_domains;
 
-	old_domains = crtc->enabled_power_domains;
-	crtc->enabled_power_domains = new_domains =
-		get_crtc_power_domains(crtc_state);
+	domains = get_crtc_power_domains(crtc_state);
 
-	domains = new_domains & ~old_domains;
+	new_domains = domains & ~crtc->enabled_power_domains.mask;
+	old_domains = crtc->enabled_power_domains.mask & ~domains;
 
-	for_each_power_domain(domain, domains)
-		intel_display_power_get(dev_priv, domain);
+	for_each_power_domain(domain, new_domains)
+		intel_display_power_get_in_set(dev_priv,
+					       &crtc->enabled_power_domains,
+					       domain);
 
-	return old_domains & ~new_domains;
+	return old_domains;
 }
 
-static void modeset_put_power_domains(struct drm_i915_private *dev_priv,
-				      u64 domains)
+static void modeset_put_crtc_power_domains(struct intel_crtc *crtc,
+					   u64 domains)
 {
-	enum intel_display_power_domain domain;
-
-	for_each_power_domain(domain, domains)
-		intel_display_power_put_unchecked(dev_priv, domain);
+	intel_display_power_put_mask_in_set(to_i915(crtc->base.dev),
+					    &crtc->enabled_power_domains,
+					    domains);
 }
 
 static void valleyview_crtc_enable(struct intel_atomic_state *state,
@@ -7789,12 +7789,10 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
 		to_intel_dbuf_state(dev_priv->dbuf.obj.state);
 	struct intel_crtc_state *crtc_state =
 		to_intel_crtc_state(crtc->base.state);
-	enum intel_display_power_domain domain;
 	struct intel_plane *plane;
 	struct drm_atomic_state *state;
 	struct intel_crtc_state *temp_crtc_state;
 	enum pipe pipe = crtc->pipe;
-	u64 domains;
 	int ret;
 
 	if (!crtc_state->hw.active)
@@ -7850,10 +7848,7 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
 	intel_update_watermarks(crtc);
 	intel_disable_shared_dpll(crtc_state);
 
-	domains = crtc->enabled_power_domains;
-	for_each_power_domain(domain, domains)
-		intel_display_power_put_unchecked(dev_priv, domain);
-	crtc->enabled_power_domains = 0;
+	intel_display_power_put_all_in_set(dev_priv, &crtc->enabled_power_domains);
 
 	dev_priv->active_pipes &= ~BIT(pipe);
 	cdclk_state->min_cdclk[pipe] = 0;
@@ -16342,8 +16337,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state, i) {
 		intel_post_plane_update(state, crtc);
 
-		if (put_domains[crtc->pipe])
-			modeset_put_power_domains(dev_priv, put_domains[crtc->pipe]);
+		modeset_put_crtc_power_domains(crtc, put_domains[crtc->pipe]);
 
 		intel_modeset_verify_crtc(crtc, state, old_crtc_state, new_crtc_state);
 
@@ -19554,7 +19548,7 @@ intel_modeset_setup_hw_state(struct drm_device *dev,
 
 		put_domains = modeset_get_crtc_power_domains(crtc_state);
 		if (drm_WARN_ON(dev, put_domains))
-			modeset_put_power_domains(dev_priv, put_domains);
+			modeset_put_crtc_power_domains(crtc, put_domains);
 	}
 
 	intel_display_power_put(dev_priv, POWER_DOMAIN_INIT, wakeref);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index ce82d654d0f2..2dcda480b714 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1160,7 +1160,7 @@ struct intel_crtc {
 	/* I915_MODE_FLAG_* */
 	u8 mode_flags;
 
-	unsigned long long enabled_power_domains;
+	struct intel_display_power_domain_set enabled_power_domains;
 	struct intel_overlay *overlay;
 
 	struct intel_crtc_state *config;
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
