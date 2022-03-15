Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 374344DA4B9
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 22:39:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17B6010E233;
	Tue, 15 Mar 2022 21:39:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A565110E22F
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 21:39:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647380388; x=1678916388;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6xoqFcLWINGkdZG3GdGF+2GLhxCuvq89KCOZ0ymmSCw=;
 b=erqGFQCmks0WPh3Ts/IwrjAoKvVdfTazptBObQcIc9wwStk9jz7Uzpzm
 Jl1obTvVgTUJzAVBGW6NwpSo4G64iQjNsHQka1V2os7puuZfLtV26Fj5W
 KyF6+iNUo53Q1sWuhHj0Sbgp+fCvjNKntCECxBKffqoil5mySqrvnODiZ
 NSqH00KOk/qBp/v6rxeAWRQkkH8gfvXO07t7sPSS64N6lqjqTLoWafi10
 d5WLx35IjGReBBEAgVr4IfwrQKWBAEbUiQOuuAb5+6d4kUvOAKVSRlSWj
 djFESzZxJTii7pi83a1o76lAQmeXPnuxiRP46TVD/RsXC1SR2Lrk4u/TQ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="256619338"
X-IronPort-AV: E=Sophos;i="5.90,184,1643702400"; d="scan'208";a="256619338"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 14:39:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,184,1643702400"; d="scan'208";a="644418652"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga002.fm.intel.com with SMTP; 15 Mar 2022 14:39:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 15 Mar 2022 23:39:44 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Mar 2022 23:39:44 +0200
Message-Id: <20220315213944.17132-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220315132752.11849-8-ville.syrjala@linux.intel.com>
References: <20220315132752.11849-8-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 7/9] drm/i915: Do DRRS disable/enable during
 pre/post_plane_update()
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

Let's just do a full DRRS disable/enable across all pipe updates.
This guarantees that the DRRS work doesn't interfere with anything
while the atomic commit is busy reprogramming the pipe.

Needed so that we can start reprogramming M/N seamlessly during
fastsets whenever possible. Also avoids the pre-bdw DRRS PIPECONF
rmw racing with the potential PIPECONF write from the atomic
commit (eg. due to GAMMA_MODE changes).

v2: Include has_drrs in state dump (José)

Reviewed-by: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     |  4 --
 drivers/gpu/drm/i915/display/intel_display.c | 13 +++----
 drivers/gpu/drm/i915/display/intel_drrs.c    | 40 ++------------------
 drivers/gpu/drm/i915/display/intel_drrs.h    |  3 --
 4 files changed, 10 insertions(+), 50 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index e2b297d2c295..dc208df829f1 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -45,7 +45,6 @@
 #include "intel_dp_link_training.h"
 #include "intel_dp_mst.h"
 #include "intel_dpio_phy.h"
-#include "intel_drrs.h"
 #include "intel_dsi.h"
 #include "intel_fdi.h"
 #include "intel_fifo_underrun.h"
@@ -3010,12 +3009,9 @@ static void intel_ddi_update_pipe_dp(struct intel_atomic_state *state,
 				     const struct intel_crtc_state *crtc_state,
 				     const struct drm_connector_state *conn_state)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-
 	intel_ddi_set_dp_msa(crtc_state, conn_state);
 
 	intel_dp_set_infoframes(encoder, true, crtc_state, conn_state);
-	intel_drrs_update(state, crtc);
 
 	intel_backlight_update(state, encoder, crtc_state, conn_state);
 	drm_connector_update_privacy_screen(conn_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index eb49973621f0..b4dda23bcb70 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1229,7 +1229,6 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
 
 	hsw_ips_post_update(state, crtc);
 	intel_fbc_post_update(state, crtc);
-	intel_drrs_page_flip(crtc);
 
 	if (needs_async_flip_vtd_wa(old_crtc_state) &&
 	    !needs_async_flip_vtd_wa(new_crtc_state))
@@ -1247,6 +1246,7 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
 	    !needs_cursorclk_wa(new_crtc_state))
 		icl_wa_cursorclkgating(dev_priv, pipe, false);
 
+	intel_drrs_enable(new_crtc_state);
 }
 
 static void intel_crtc_enable_flip_done(struct intel_atomic_state *state,
@@ -1324,6 +1324,8 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	enum pipe pipe = crtc->pipe;
 
+	intel_drrs_disable(old_crtc_state);
+
 	intel_psr_pre_plane_update(state, crtc);
 
 	if (hsw_ips_pre_update(state, crtc))
@@ -5442,8 +5444,9 @@ static void intel_dump_pipe_config(const struct intel_crtc_state *pipe_config,
 			    str_enabled_disabled(pipe_config->pch_pfit.enabled),
 			    str_yes_no(pipe_config->pch_pfit.force_thru));
 
-	drm_dbg_kms(&dev_priv->drm, "ips: %i, double wide: %i\n",
-		    pipe_config->ips_enabled, pipe_config->double_wide);
+	drm_dbg_kms(&dev_priv->drm, "ips: %i, double wide: %i, drrs: %i\n",
+		    pipe_config->ips_enabled, pipe_config->double_wide,
+		    pipe_config->has_drrs);
 
 	intel_dpll_dump_hw_state(dev_priv, &pipe_config->dpll_hw_state);
 
@@ -8127,8 +8130,6 @@ static void intel_enable_crtc(struct intel_atomic_state *state,
 	if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
 		return;
 
-	intel_drrs_enable(new_crtc_state);
-
 	/* vblanks work again, re-enable pipe CRC. */
 	intel_crtc_enable_pipe_crc(crtc);
 }
@@ -8198,8 +8199,6 @@ static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
 	 */
 	intel_crtc_disable_pipe_crc(crtc);
 
-	intel_drrs_disable(old_crtc_state);
-
 	dev_priv->display->crtc_disable(state, crtc);
 	crtc->active = false;
 	intel_fbc_disable(crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 8f9e0fde0c5a..44c9af8f8b9b 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -189,13 +189,12 @@ static unsigned int intel_drrs_frontbuffer_bits(const struct intel_crtc_state *c
 void intel_drrs_enable(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
 	if (!crtc_state->has_drrs)
 		return;
 
-	drm_dbg_kms(&dev_priv->drm, "[CRTC:%d:%s] Enabling DRRS\n",
-		    crtc->base.base.id, crtc->base.name);
+	if (!crtc_state->hw.active)
+		return;
 
 	mutex_lock(&crtc->drrs.mutex);
 
@@ -217,13 +216,12 @@ void intel_drrs_enable(const struct intel_crtc_state *crtc_state)
 void intel_drrs_disable(const struct intel_crtc_state *old_crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
 	if (!old_crtc_state->has_drrs)
 		return;
 
-	drm_dbg_kms(&dev_priv->drm, "[CRTC:%d:%s] Disabling DRRS\n",
-		    crtc->base.base.id, crtc->base.name);
+	if (!old_crtc_state->hw.active)
+		return;
 
 	mutex_lock(&crtc->drrs.mutex);
 
@@ -239,28 +237,6 @@ void intel_drrs_disable(const struct intel_crtc_state *old_crtc_state)
 	cancel_delayed_work_sync(&crtc->drrs.work);
 }
 
-/**
- * intel_drrs_update - Update DRRS during fastset
- * @state: atomic state
- * @crtc: crtc
- */
-void intel_drrs_update(struct intel_atomic_state *state,
-		       struct intel_crtc *crtc)
-{
-	const struct intel_crtc_state *old_crtc_state =
-		intel_atomic_get_old_crtc_state(state, crtc);
-	const struct intel_crtc_state *new_crtc_state =
-		intel_atomic_get_new_crtc_state(state, crtc);
-
-	if (old_crtc_state->has_drrs == new_crtc_state->has_drrs)
-		return;
-
-	if (new_crtc_state->has_drrs)
-		intel_drrs_enable(new_crtc_state);
-	else
-		intel_drrs_disable(old_crtc_state);
-}
-
 static void intel_drrs_downclock_work(struct work_struct *work)
 {
 	struct intel_crtc *crtc = container_of(work, typeof(*crtc), drrs.work.work);
@@ -348,14 +324,6 @@ void intel_drrs_flush(struct drm_i915_private *dev_priv,
 	intel_drrs_frontbuffer_update(dev_priv, frontbuffer_bits, false);
 }
 
-void intel_drrs_page_flip(struct intel_crtc *crtc)
-{
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	unsigned int frontbuffer_bits = INTEL_FRONTBUFFER_ALL_MASK(crtc->pipe);
-
-	intel_drrs_frontbuffer_update(dev_priv, frontbuffer_bits, false);
-}
-
 /**
  * intel_crtc_drrs_init - Init DRRS for CRTC
  * @crtc: crtc
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.h b/drivers/gpu/drm/i915/display/intel_drrs.h
index c6e325a91552..6e84b8e800a6 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.h
+++ b/drivers/gpu/drm/i915/display/intel_drrs.h
@@ -19,13 +19,10 @@ const char *intel_drrs_type_str(enum drrs_type drrs_type);
 bool intel_drrs_is_enabled(struct intel_crtc *crtc);
 void intel_drrs_enable(const struct intel_crtc_state *crtc_state);
 void intel_drrs_disable(const struct intel_crtc_state *crtc_state);
-void intel_drrs_update(struct intel_atomic_state *state,
-		       struct intel_crtc *crtc);
 void intel_drrs_invalidate(struct drm_i915_private *dev_priv,
 			   unsigned int frontbuffer_bits);
 void intel_drrs_flush(struct drm_i915_private *dev_priv,
 		      unsigned int frontbuffer_bits);
-void intel_drrs_page_flip(struct intel_crtc *crtc);
 void intel_drrs_compute_config(struct intel_connector *connector,
 			       struct intel_crtc_state *pipe_config,
 			       int output_bpp, bool constant_n);
-- 
2.34.1

