Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC87D4D9C30
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 14:28:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5F8D10E494;
	Tue, 15 Mar 2022 13:28:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E83C410E487
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 13:28:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647350898; x=1678886898;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=OR/JJAdtUWNSVWOyM0qLDwZoVCJ83KlvyaPkXj0SCG4=;
 b=YabPm1Txcj/150z2g5SDQhegeA4rwvW2sViRdIixUybNTvXrUBQknMWv
 30r/TkEVswP6tPkwYd+sxwultJc/b/zxGd9vG+X5W/Z8SBw9BNHaUg1nI
 zu3mMe2Il/8fLiS66Agpi9PJ2JQdwsK6HP3L8u5GfHCoDnUpcRCkMksVy
 u5dtf2qQyKwjxlVxEOC+1o0pCp/y7YytNGjTFOnISj4iXkf5Nj/xRX61F
 m/X5j1DBS6BTbyYtXT441ZBVYlkmmOiBgwpvyeoUgt5IHf4VV71cH0DuU
 6ihYhN80VCN/6qWE9ZMTPFPwf02bNdvTE9gPPbw6mI8h77O7IFAB2NzVv A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="238465152"
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="238465152"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 06:28:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="580510260"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga001.jf.intel.com with SMTP; 15 Mar 2022 06:28:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 15 Mar 2022 15:28:13 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Mar 2022 15:27:50 +0200
Message-Id: <20220315132752.11849-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220315132752.11849-1-ville.syrjala@linux.intel.com>
References: <20220315132752.11849-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 7/9] drm/i915: Do DRRS disable/enable during
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     |  4 --
 drivers/gpu/drm/i915/display/intel_display.c |  8 ++--
 drivers/gpu/drm/i915/display/intel_drrs.c    | 40 ++------------------
 drivers/gpu/drm/i915/display/intel_drrs.h    |  3 --
 4 files changed, 7 insertions(+), 48 deletions(-)

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
index eb49973621f0..86fc8ddd0b8f 100644
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
@@ -8127,8 +8129,6 @@ static void intel_enable_crtc(struct intel_atomic_state *state,
 	if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
 		return;
 
-	intel_drrs_enable(new_crtc_state);
-
 	/* vblanks work again, re-enable pipe CRC. */
 	intel_crtc_enable_pipe_crc(crtc);
 }
@@ -8198,8 +8198,6 @@ static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
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

