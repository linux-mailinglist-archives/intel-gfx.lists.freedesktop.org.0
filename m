Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E855D6C0DC1
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 10:55:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C43A10E2C4;
	Mon, 20 Mar 2023 09:55:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 241FB10E2B8
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 09:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679306105; x=1710842105;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RGT5yzL4LfuFGNUlE+XFpAby9YT+Bi5JgLXeFKXFqSY=;
 b=DD7J44DFvIQqMxwJwTkaJoVSVJ1KJtwOdAzYLQIgz786358mLQ2W0kKV
 VRvXNq4H5Jql78Kxv5fwEnclopGVb3Rr7HsfCRfGP66SXs6teQ3gnlSuw
 QmmX3FZ2xdVg0UyHnrlDqESu6wY/53qA+cTpIJA2lDDev0RItFQdOedOG
 R2DLnZ6Bb3dE4xOdwxkI+1+GAWRU9/OflUuUCyAHmcLFCeAj3IxLt1Hgn
 ssqtnNM8QIzJQRsUz8k3VmFxnvwOG9E1rgm2Nivd63A8/DSxZn07LupCV
 ur8voWgZQN58wnIFSswcMH8dLSLBgbgsfUXLGeZQWu/qSelXOa89lHrU2 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="337337380"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="337337380"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 02:55:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="683396465"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="683396465"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga007.fm.intel.com with SMTP; 20 Mar 2023 02:54:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Mar 2023 11:54:58 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Mar 2023 11:54:37 +0200
Message-Id: <20230320095438.17328-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230320095438.17328-1-ville.syrjala@linux.intel.com>
References: <20230320095438.17328-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/6] drm/i915: Disable DC states for all commits
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
Cc: Drew Davenport <ddavenport@chromium.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Keeping DC states enabled is incompatible with the _noarm()/_arm()
split we use for writing pipe/plane registers. When DC5 and PSR
are enabled, all pipe/plane registers effectively become self-arming
on account of DC5 exit arming the update, and PSR exit latching it.

What probably saves us most of the time is that (with PIPE_MISC[21]=0)
all pipe register writes themselves trigger PSR exit, and then
we don't re-enter PSR until the idle frame count has elapsed.
So it may be that the PSR exit happens alreday before we're
update the state too much.

Also the PSR1 panel (at least on this KBL) seems to discard the first
frame we trasmit, presumably still scanning out from its internal
framebuffer at that point. So only the second frame we transmit is
actually visible. But I suppose that could also be panel specific
behaviour. I haven't checked out how other PSR panels behave, nor
did I bother to check what the eDP spec has to say about this.

And since this really is all about DC states, let's switch from
the MODESET domain to the DC_OFF domain. Functionally they are
100% identical. We should probably remove the MODESET domain...

And for good measure let's toss in an assert to the place where
we do the _noarm() register writes to make sure DC states are
in fact off.

Cc: Manasi Navare <navaremanasi@google.com>
Cc: Drew Davenport <ddavenport@chromium.org>
Cc: Imre Deak <imre.deak@intel.com>
Cc: Jouni Högander <jouni.hogander@intel.com>
Fixes: d13dde449580 ("drm/i915: Split pipe+output CSC programming to noarm+arm pair")
Fixes: f8a005eb8972 ("drm/i915: Optimize icl+ universal plane programming")
Fixes: 890b6ec4a522 ("drm/i915: Split skl+ plane update into noarm+arm pair")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 28 +++++++++++++++++--
 .../drm/i915/display/intel_display_power.c    | 15 ++++++++++
 .../drm/i915/display/intel_display_power.h    |  1 +
 3 files changed, 41 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 5146d6cc7400..074b6a53ea19 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6989,6 +6989,8 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 
 	intel_fbc_update(state, crtc);
 
+	intel_display_power_assert_dc_off(i915);
+
 	if (!modeset &&
 	    intel_crtc_needs_color_update(new_crtc_state))
 		intel_color_commit_noarm(new_crtc_state);
@@ -7356,8 +7358,28 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	drm_atomic_helper_wait_for_dependencies(&state->base);
 	drm_dp_mst_atomic_wait_for_dependencies(&state->base);
 
-	if (state->modeset)
-		wakeref = intel_display_power_get(dev_priv, POWER_DOMAIN_MODESET);
+	/*
+	 * During full modesets we write a lot of registers, wait
+	 * for PLLs, etc. Doing that while DC states are enabled
+	 * is not a good idea.
+	 *
+	 * During fastsets and other updates we also need to
+	 * disable DC states due to the following scenario:
+	 * 1. DC5 exit and PSR exit happen
+	 * 2. Some or all _noarm() registers are written
+	 * 3. Due to some long delay PSR is re-entered
+	 * 4. DC5 entry -> DMC saves the already written new
+	 *    _noarm() registers and the old not yet written
+	 *    _arm() registers
+	 * 5. DC5 exit -> DMC restores a mixture of old and
+	 *    new register values and arms the update
+	 * 6. PSR exit -> hardware latches a mixture of old and
+	 *    new register values -> corrupted frame, or worse
+	 * 7. New _arm() registers are finally written
+	 * 8. Hardware finally latches a complete set of new
+	 *    register values, and subsequent frames will be OK again
+	 */
+	wakeref = intel_display_power_get(dev_priv, POWER_DOMAIN_DC_OFF);
 
 	intel_atomic_prepare_plane_clear_colors(state);
 
@@ -7506,8 +7528,8 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 		 * the culprit.
 		 */
 		intel_uncore_arm_unclaimed_mmio_detection(&dev_priv->uncore);
-		intel_display_power_put(dev_priv, POWER_DOMAIN_MODESET, wakeref);
 	}
+	intel_display_power_put(dev_priv, POWER_DOMAIN_DC_OFF, wakeref);
 	intel_runtime_pm_put(&dev_priv->runtime_pm, state->wakeref);
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index f86060195987..f2c9f88e7aef 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -2502,3 +2502,18 @@ intel_display_power_tbt_aux_domain(struct drm_i915_private *i915, enum aux_ch au
 
 	return domains->aux_tbt + (int)(aux_ch - domains->aux_ch_start);
 }
+
+void intel_display_power_assert_dc_off(struct drm_i915_private *i915)
+{
+	struct i915_power_domains *power_domains = &i915->display.power.domains;
+	struct i915_power_well *power_well;
+
+	mutex_lock(&power_domains->lock);
+
+	power_well = lookup_power_well(i915, SKL_DISP_DC_OFF);
+
+	drm_WARN_ON(&i915->drm, power_well &&
+		    !intel_power_well_is_enabled(i915, power_well));
+
+	mutex_unlock(&power_domains->lock);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 8e96be8e6330..9ca48e233185 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -182,6 +182,7 @@ void intel_display_power_suspend(struct drm_i915_private *i915);
 void intel_display_power_resume(struct drm_i915_private *i915);
 void intel_display_power_set_target_dc_state(struct drm_i915_private *dev_priv,
 					     u32 state);
+void intel_display_power_assert_dc_off(struct drm_i915_private *dev_priv);
 
 const char *
 intel_display_power_domain_str(enum intel_display_power_domain domain);
-- 
2.39.2

