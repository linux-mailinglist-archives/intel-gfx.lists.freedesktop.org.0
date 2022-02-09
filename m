Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D48DB4AEFFF
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 12:35:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF9DF10E6F1;
	Wed,  9 Feb 2022 11:35:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5253A10E6F1
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Feb 2022 11:35:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644406530; x=1675942530;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=r7GWXgjZZIWVT4AZOuWrI3M828mOXG+QSoXDt/jvumU=;
 b=kRgdjXfaZ9lUjAo4Xpk2FMrsu2sNSZ7NGhbxc1IQkEPGHG6PAfIPA683
 MJe5Q1WsNF2L9ZSuj1UVyQt23K9cQ7KXgCm7FTjbsTKoMSiyjeBMtLGQ4
 litPm90A7H0ZZfWVgcsnYeGdwSBomKC4/1GG+BFQukvHd7kqYYMlYaK0D
 jv9O23iy6FMmi1nVLKBgHT0ghJrk8Zz+j12qNjsJikOb1PJQ+UO5yb9sy
 hPDkpqirjOu9P+uDyn6OxzAqpZ8eHsj1LPFewH+vNjJY8HPjzZqvRdJ39
 bYxrZ6sp250TscRael0hh0JkqZhnGen+3qYeS0TWXdoA8bPLCDYUl6Axe w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="229832921"
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="229832921"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 03:35:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="525954714"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga007.jf.intel.com with SMTP; 09 Feb 2022 03:35:27 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Feb 2022 13:35:26 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Feb 2022 13:35:20 +0200
Message-Id: <20220209113526.7595-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/7] drm/i915: Move vblank waits out from IPS
 code
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

Hoist the IPS related vblank waits one level up. Later on we'll
want to consolidate all the potential pre-plane update vblank
waits into one so we can't be hiding any in low level code.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 19 ++++++++++++-------
 drivers/gpu/drm/i915/display/intel_display.h |  2 +-
 2 files changed, 13 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7f512f9e9e5c..5cc142a83ad7 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -752,8 +752,9 @@ void intel_plane_disable_noatomic(struct intel_crtc *crtc,
 	crtc_state->data_rate[plane->id] = 0;
 	crtc_state->min_cdclk[plane->id] = 0;
 
-	if (plane->id == PLANE_PRIMARY)
-		hsw_disable_ips(crtc_state);
+	if (plane->id == PLANE_PRIMARY &&
+	    hsw_disable_ips(crtc_state))
+		intel_crtc_wait_for_next_vblank(crtc);
 
 	/*
 	 * Vblank time updates from the shadow to live plane control register
@@ -1127,14 +1128,15 @@ void hsw_enable_ips(const struct intel_crtc_state *crtc_state)
 	}
 }
 
-void hsw_disable_ips(const struct intel_crtc_state *crtc_state)
+bool hsw_disable_ips(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_device *dev = crtc->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
+	bool need_vblank_wait = false;
 
 	if (!crtc_state->ips_enabled)
-		return;
+		return need_vblank_wait;
 
 	if (IS_BROADWELL(dev_priv)) {
 		drm_WARN_ON(dev,
@@ -1153,7 +1155,9 @@ void hsw_disable_ips(const struct intel_crtc_state *crtc_state)
 	}
 
 	/* We need to wait for a vblank before we can disable the plane. */
-	intel_crtc_wait_for_next_vblank(crtc);
+	need_vblank_wait = true;
+
+	return need_vblank_wait;
 }
 
 static void intel_crtc_dpms_overlay_disable(struct intel_crtc *crtc)
@@ -1426,8 +1430,9 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 
 	intel_psr_pre_plane_update(state, crtc);
 
-	if (hsw_pre_update_disable_ips(old_crtc_state, new_crtc_state))
-		hsw_disable_ips(old_crtc_state);
+	if (hsw_pre_update_disable_ips(old_crtc_state, new_crtc_state) &&
+	    hsw_disable_ips(old_crtc_state))
+		intel_crtc_wait_for_next_vblank(crtc);
 
 	if (intel_fbc_pre_update(state, crtc))
 		intel_crtc_wait_for_next_vblank(crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 457738aeee3e..8f9bec36898e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -634,7 +634,7 @@ void i9xx_crtc_clock_get(struct intel_crtc *crtc,
 int intel_dotclock_calculate(int link_freq, const struct intel_link_m_n *m_n);
 bool hsw_crtc_state_ips_capable(const struct intel_crtc_state *crtc_state);
 void hsw_enable_ips(const struct intel_crtc_state *crtc_state);
-void hsw_disable_ips(const struct intel_crtc_state *crtc_state);
+bool hsw_disable_ips(const struct intel_crtc_state *crtc_state);
 enum intel_display_power_domain intel_port_to_power_domain(enum port port);
 enum intel_display_power_domain
 intel_aux_power_domain(struct intel_digital_port *dig_port);
-- 
2.34.1

