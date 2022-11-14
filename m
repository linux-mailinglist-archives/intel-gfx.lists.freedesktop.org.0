Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E864E627DA0
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Nov 2022 13:23:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56B7F10E0A0;
	Mon, 14 Nov 2022 12:23:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A287E10E0B7
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Nov 2022 12:23:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668428593; x=1699964593;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3r/iZmyqHns4CQKSymk3+/a8huEx792O5yiH+lxE54o=;
 b=dPsArmSmQbm245Rgi2VMDvRnk5hnRqOoMIyzwC3dq9r7PF6VRPXFV55C
 6pn0FQZ1LZRrPiqh9hs+qxXTJxph9vqUmIyHeqm1HH627tMGxwOh9fIdz
 pk0WlpBMbjBuy5che7f5UV6Q1Vd48CJoCQazGA4YQLrJbS/9CqfYNzwk8
 2ivu+9rSvU7yS6M7biV48uAIpW6zxUxZMtcs4UDUOOHpoA6tFmAjxC8YC
 XtA4bNQkpzGUUYyjeolScyLup86y+t9LeT7rvr8KOccd8vCu78triL444
 YHsM0x7/eiDTRDeH4tA3EFOecNjjzwHgBdZ/Ip59bAPW5bxZP8/7vJ46f Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10530"; a="310664117"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="310664117"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 04:22:58 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10530"; a="671539841"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="671539841"
Received: from ideak-desk.fi.intel.com ([10.237.68.144])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 04:22:57 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Nov 2022 14:22:44 +0200
Message-Id: <20221114122251.21327-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20221114122251.21327-1-imre.deak@intel.com>
References: <20221114122251.21327-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 2/9] drm/i915: Preallocate the debug power
 domain wakerefs array
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since the current size of intel_display_power_domain_set struct is
close to 1kB, it's better to use preallocated memory for it. The only
user of the intel_display_power_get/put_in_set() allocating the struct
on stack is hsw_get_pipe_config(), so we can avoid potential stack
overallocations by moving the struct here to the preallocated
intel_crtc struct (hsw_get_pipe_config() is non-reentrant wrt. each
CRTC).

This patch replaces
https://lore.kernel.org/intel-gfx/20221107170917.3566758-5-imre.deak@intel.com/T/#md3f6cdf17fcd

Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c       | 11 +++++------
 drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7cceaa6b11663..a0d5c56e8331c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4050,20 +4050,19 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 				struct intel_crtc_state *pipe_config)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	struct intel_display_power_domain_set power_domain_set = { };
 	bool active;
 	u32 tmp;
 
-	if (!intel_display_power_get_in_set_if_enabled(dev_priv, &power_domain_set,
+	if (!intel_display_power_get_in_set_if_enabled(dev_priv, &crtc->hw_readout_power_domains,
 						       POWER_DOMAIN_PIPE(crtc->pipe)))
 		return false;
 
 	pipe_config->shared_dpll = NULL;
 
-	active = hsw_get_transcoder_state(crtc, pipe_config, &power_domain_set);
+	active = hsw_get_transcoder_state(crtc, pipe_config, &crtc->hw_readout_power_domains);
 
 	if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) &&
-	    bxt_get_dsi_transcoder_state(crtc, pipe_config, &power_domain_set)) {
+	    bxt_get_dsi_transcoder_state(crtc, pipe_config, &crtc->hw_readout_power_domains)) {
 		drm_WARN_ON(&dev_priv->drm, active);
 		active = true;
 	}
@@ -4122,7 +4121,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 		pipe_config->ips_linetime =
 			REG_FIELD_GET(HSW_IPS_LINETIME_MASK, tmp);
 
-	if (intel_display_power_get_in_set_if_enabled(dev_priv, &power_domain_set,
+	if (intel_display_power_get_in_set_if_enabled(dev_priv, &crtc->hw_readout_power_domains,
 						      POWER_DOMAIN_PIPE_PANEL_FITTER(crtc->pipe))) {
 		if (DISPLAY_VER(dev_priv) >= 9)
 			skl_get_pfit_config(pipe_config);
@@ -4153,7 +4152,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 	}
 
 out:
-	intel_display_power_put_all_in_set(dev_priv, &power_domain_set);
+	intel_display_power_put_all_in_set(dev_priv, &crtc->hw_readout_power_domains);
 
 	return active;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 8da87cbb172bd..f07395065a69f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1375,6 +1375,7 @@ struct intel_crtc {
 	u16 vmax_vblank_start;
 
 	struct intel_display_power_domain_set enabled_power_domains;
+	struct intel_display_power_domain_set hw_readout_power_domains;
 	struct intel_overlay *overlay;
 
 	struct intel_crtc_state *config;
-- 
2.37.1

