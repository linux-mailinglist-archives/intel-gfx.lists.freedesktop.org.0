Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC1D45B934
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Nov 2021 12:37:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 407916E885;
	Wed, 24 Nov 2021 11:37:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E2206E86F
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Nov 2021 11:37:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10177"; a="215287720"
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="215287720"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 03:37:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="509843789"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 24 Nov 2021 03:37:16 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 24 Nov 2021 13:37:15 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Nov 2021 13:36:39 +0200
Message-Id: <20211124113652.22090-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
References: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/20] drm/i915/fbc: Pass around FBC instance
 instead of crtc
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

Pass the FBC instance instead of the crtc to a bunch of places.

We also adjust intel_fbc_post_update() to do the
intel_fbc_get_reg_params() things instead of doing it from the lower
level function (which also gets called for front buffer tracking).
Nothing in there will change during front buffer updates.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 29 ++++++++++--------------
 1 file changed, 12 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 8625825cbee8..db390c29c665 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1091,10 +1091,9 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 	return 0;
 }
 
-static bool intel_fbc_can_activate(struct intel_crtc *crtc)
+static bool intel_fbc_can_activate(struct intel_fbc *fbc)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	struct intel_fbc *fbc = &i915->fbc;
+	struct drm_i915_private *i915 = fbc->i915;
 	struct intel_fbc_state *cache = &fbc->state_cache;
 
 	if (!intel_fbc_can_enable(fbc))
@@ -1186,7 +1185,7 @@ static bool intel_fbc_can_flip_nuke(struct intel_atomic_state *state,
 	if (drm_atomic_crtc_needs_modeset(&new_crtc_state->uapi))
 		return false;
 
-	if (!intel_fbc_can_activate(crtc))
+	if (!intel_fbc_can_activate(fbc))
 		return false;
 
 	if (!old_fb || !new_fb)
@@ -1280,18 +1279,12 @@ static void __intel_fbc_disable(struct intel_fbc *fbc)
 	fbc->crtc = NULL;
 }
 
-static void __intel_fbc_post_update(struct intel_crtc *crtc)
+static void __intel_fbc_post_update(struct intel_fbc *fbc)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	struct intel_fbc *fbc = &i915->fbc;
+	struct drm_i915_private *i915 = fbc->i915;
 
 	drm_WARN_ON(&i915->drm, !mutex_is_locked(&fbc->lock));
 
-	if (fbc->crtc != crtc)
-		return;
-
-	fbc->flip_pending = false;
-
 	if (!i915->params.enable_fbc) {
 		intel_fbc_deactivate(fbc, "disabled at runtime per module param");
 		__intel_fbc_disable(fbc);
@@ -1299,9 +1292,7 @@ static void __intel_fbc_post_update(struct intel_crtc *crtc)
 		return;
 	}
 
-	intel_fbc_get_reg_params(fbc, crtc);
-
-	if (!intel_fbc_can_activate(crtc))
+	if (!intel_fbc_can_activate(fbc))
 		return;
 
 	if (!fbc->busy_bits)
@@ -1322,7 +1313,11 @@ void intel_fbc_post_update(struct intel_atomic_state *state,
 		return;
 
 	mutex_lock(&fbc->lock);
-	__intel_fbc_post_update(crtc);
+	if (fbc->crtc == crtc) {
+		fbc->flip_pending = false;
+		intel_fbc_get_reg_params(fbc, crtc);
+		__intel_fbc_post_update(fbc);
+	}
 	mutex_unlock(&fbc->lock);
 }
 
@@ -1376,7 +1371,7 @@ void intel_fbc_flush(struct drm_i915_private *i915,
 		if (fbc->active)
 			intel_fbc_nuke(fbc);
 		else if (!fbc->flip_pending)
-			__intel_fbc_post_update(fbc->crtc);
+			__intel_fbc_post_update(fbc);
 	}
 
 out:
-- 
2.32.0

