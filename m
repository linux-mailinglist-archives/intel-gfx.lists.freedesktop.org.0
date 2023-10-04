Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C5CA7B8449
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Oct 2023 17:56:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7373010E11F;
	Wed,  4 Oct 2023 15:56:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC77510E11F
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 15:56:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696434973; x=1727970973;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=zaA45SaiA9pS52GQrSr2FCuaXj1spdQxrs7jbsMHJaw=;
 b=jMmvF28z5UbbRKKLp3O3rw2IUz9rZkUiE37S7V+OBtLZDaqrhYjtaqza
 nEPZawPpJGWG8XP8PabJsb+rN1hySiobKO+p7pYBd0L9qYhp+lX0Vvu34
 C/LywfMurJPULj2v8uUnclo54cn4glM4fCPyLxUu+D8fOt18U610oq7ZV
 SgCYhDaNMQq75J+IYj05UD6dRa8VLJRGqFtoHZu9R38YKF/4IHLZ4vP5D
 Xc0jI3LlKnZwz0K7SVLshSGoklg3vNA+dlE2vCOdcnClZDHwRZBa3ZqZi
 rmjLIh3jKhfhuqE+O/ioJBzD+Nx4o1vUE1mfCziP0UhFqpGi4HJEz4l4L Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="363483754"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="363483754"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 08:56:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="867440823"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="867440823"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga002.fm.intel.com with SMTP; 04 Oct 2023 08:56:11 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 04 Oct 2023 18:56:10 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Oct 2023 18:55:56 +0300
Message-ID: <20231004155607.7719-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231004155607.7719-1-ville.syrjala@linux.intel.com>
References: <20231004155607.7719-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/12] drm/i915/psr: Unify PSR pre/post plane
 update hooks
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

intel_psr_pre_plane_update() operates on a per-crtc level, whereas
intel_psr_post_plane_update() operates on the whole atomic commit,
for no real reason that I can see. Adjust intel_psr_post_plane_update()
to match the intel_psr_pre_plane_update() approach.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  3 ++-
 drivers/gpu/drm/i915/display/intel_psr.c     | 20 ++++----------------
 drivers/gpu/drm/i915/display/intel_psr.h     |  3 ++-
 3 files changed, 8 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b3ae81a6ab16..8683b030cebb 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -956,6 +956,8 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	enum pipe pipe = crtc->pipe;
 
+	intel_psr_post_plane_update(state, crtc);
+
 	intel_frontbuffer_flip(dev_priv, new_crtc_state->fb_bits);
 
 	if (new_crtc_state->update_wm_post && new_crtc_state->hw.active)
@@ -7296,7 +7298,6 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	}
 
 	intel_dbuf_post_plane_update(state);
-	intel_psr_post_plane_update(state);
 
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state, i) {
 		intel_post_plane_update(state, crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 850b11f20285..bb65881e87cc 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2195,10 +2195,12 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 	}
 }
 
-static void _intel_psr_post_plane_update(const struct intel_atomic_state *state,
-					 const struct intel_crtc_state *crtc_state)
+void intel_psr_post_plane_update(struct intel_atomic_state *state,
+				 struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	const struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_encoder *encoder;
 
 	if (!crtc_state->has_psr)
@@ -2241,20 +2243,6 @@ static void _intel_psr_post_plane_update(const struct intel_atomic_state *state,
 	}
 }
 
-void intel_psr_post_plane_update(const struct intel_atomic_state *state)
-{
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	struct intel_crtc_state *crtc_state;
-	struct intel_crtc *crtc;
-	int i;
-
-	if (!HAS_PSR(dev_priv))
-		return;
-
-	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i)
-		_intel_psr_post_plane_update(state, crtc_state);
-}
-
 static int _psr2_ready_for_pipe_update_locked(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index 0b95e8aa615f..bf35f42df6bc 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -24,7 +24,8 @@ struct intel_plane_state;
 void intel_psr_init_dpcd(struct intel_dp *intel_dp);
 void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 				struct intel_crtc *crtc);
-void intel_psr_post_plane_update(const struct intel_atomic_state *state);
+void intel_psr_post_plane_update(struct intel_atomic_state *state,
+				 struct intel_crtc *crtc);
 void intel_psr_disable(struct intel_dp *intel_dp,
 		       const struct intel_crtc_state *old_crtc_state);
 int intel_psr_debug_set(struct intel_dp *intel_dp, u64 value);
-- 
2.41.0

