Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 137D84A9AD3
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Feb 2022 15:18:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E6D510E73B;
	Fri,  4 Feb 2022 14:18:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C46AD10E73B
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Feb 2022 14:18:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643984307; x=1675520307;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=UqejQR0Regt5UwwII6BZ5YFPLPu+D75e2i9wdyR8noc=;
 b=lJBq0iI7Ze/153sjOEW1COo1bMBmTUk+b08HzN5D84QH+79n9h+D4DrI
 scaUFuJfZAxnhSu7yVlQdZAZoSNEunE7zjppyH2LPWRYhkvvc3RHUzxJK
 d1+Y5Umsy1DlP9QCxnkkReObwe2H5PfrMCFCYI2a557uzuVfdUnFl3bvI
 S0jge5l8ZQ5KkW5os4XqeD4HHaBjAbSZr72jGGmaEKFjVRmEhUJzOJc3/
 x90WLfCEjvtVF/5jrJdKSVPyRMzN9by5Oh8fOY3xTqrleOvGPec6N37TP
 Wob5s9Lh6fgAOo0aJeIM/t4Upvo3GayvkEx3lIpBJfGvxe2PsJnPQ+reE Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10247"; a="247205025"
X-IronPort-AV: E=Sophos;i="5.88,342,1635231600"; d="scan'208";a="247205025"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2022 06:18:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,342,1635231600"; d="scan'208";a="524320608"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga007.jf.intel.com with SMTP; 04 Feb 2022 06:18:25 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 04 Feb 2022 16:18:24 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Feb 2022 16:18:18 +0200
Message-Id: <20220204141818.1900-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220204141818.1900-1-ville.syrjala@linux.intel.com>
References: <20220204141818.1900-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Workaround broken BIOS DBUF
 configuration on TGL/RKL
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

On TGL/RKL the BIOS likes to use some kind of bogus DBUF layout
that doesn't match what the spec recommends. With a single active
pipe that is not going to be a problem, but with multiple pipes
active skl_commit_modeset_enables() goes into an infinite loop
since it can't figure out any order in which it can commit the
pipes without causing DBUF overlaps between the planes.

We'd need some kind of extra DBUF defrag stage in between to
make the transition possible. But that is clearly way too complex
a solution, so in the name of simplicity let's just sanitize the
DBUF state by simply turning off all planes when we detect a
pipe encroaching on its neighbours' DBUF slices. We only have
to disable the primary planes as all other planes should have
already been disabled (if they somehow were enabled) by
earlier sanitization steps.

And for good measure let's also sanitize in case the DBUF
allocations of the pipes already seem to overlap each other.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4762
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  1 +
 drivers/gpu/drm/i915/intel_pm.c              | 68 ++++++++++++++++++++
 drivers/gpu/drm/i915/intel_pm.h              |  1 +
 3 files changed, 70 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index df347329d90e..7f512f9e9e5c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -10649,6 +10649,7 @@ intel_modeset_setup_hw_state(struct drm_device *dev,
 		vlv_wm_sanitize(dev_priv);
 	} else if (DISPLAY_VER(dev_priv) >= 9) {
 		skl_wm_get_hw_state(dev_priv);
+		skl_wm_sanitize(dev_priv);
 	} else if (HAS_PCH_SPLIT(dev_priv)) {
 		ilk_wm_get_hw_state(dev_priv);
 	}
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 79d61a2935ea..02084652fe3d 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -6710,6 +6710,74 @@ void skl_wm_get_hw_state(struct drm_i915_private *dev_priv)
 	dbuf_state->enabled_slices = dev_priv->dbuf.enabled_slices;
 }
 
+static bool skl_dbuf_is_misconfigured(struct drm_i915_private *i915)
+{
+	const struct intel_dbuf_state *dbuf_state =
+		to_intel_dbuf_state(i915->dbuf.obj.state);
+	struct skl_ddb_entry entries[I915_MAX_PIPES] = {};
+	struct intel_crtc *crtc;
+
+	for_each_intel_crtc(&i915->drm, crtc) {
+		const struct intel_crtc_state *crtc_state =
+			to_intel_crtc_state(crtc->base.state);
+
+		entries[crtc->pipe] = crtc_state->wm.skl.ddb;
+	}
+
+	for_each_intel_crtc(&i915->drm, crtc) {
+		const struct intel_crtc_state *crtc_state =
+			to_intel_crtc_state(crtc->base.state);
+		u8 slices;
+
+		slices = skl_compute_dbuf_slices(crtc, dbuf_state->active_pipes,
+						 dbuf_state->joined_mbus);
+		if (dbuf_state->slices[crtc->pipe] & ~slices)
+			return true;
+
+		if (skl_ddb_allocation_overlaps(&crtc_state->wm.skl.ddb, entries,
+						I915_MAX_PIPES, crtc->pipe))
+			return true;
+	}
+
+	return false;
+}
+
+void skl_wm_sanitize(struct drm_i915_private *i915)
+{
+	struct intel_crtc *crtc;
+
+	/*
+	 * On TGL/RKL (at least) the BIOS likes to assign the planes
+	 * to the wrong DBUF slices. This will cause an infinite loop
+	 * in skl_commit_modeset_enables() as it can't find a way to
+	 * transition between the old bogus DBUF layout to the new
+	 * proper DBUF layout without DBUF allocation overlaps between
+	 * the planes (which cannot be allowed or else the hardware
+	 * may hang). If we detect a bogus DBUF layout just turn off
+	 * all the planes so that skl_commit_modeset_enables() can
+	 * simply ignore them.
+	 */
+	if (!skl_dbuf_is_misconfigured(i915))
+		return;
+
+	drm_dbg_kms(&i915->drm, "BIOS has misprogrammed the DBUF, disabling all planes\n");
+
+	for_each_intel_crtc(&i915->drm, crtc) {
+		struct intel_plane *plane = to_intel_plane(crtc->base.primary);
+		const struct intel_plane_state *plane_state =
+			to_intel_plane_state(plane->base.state);
+		struct intel_crtc_state *crtc_state =
+			to_intel_crtc_state(crtc->base.state);
+
+		if (plane_state->uapi.visible)
+			intel_plane_disable_noatomic(crtc, plane);
+
+		drm_WARN_ON(&i915->drm, crtc_state->active_planes != 0);
+
+		memset(&crtc_state->wm.skl.ddb, 0, sizeof(crtc_state->wm.skl.ddb));
+	}
+}
+
 static void ilk_pipe_wm_get_hw_state(struct intel_crtc *crtc)
 {
 	struct drm_device *dev = crtc->base.dev;
diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel_pm.h
index ae821e35d5fc..51705151b842 100644
--- a/drivers/gpu/drm/i915/intel_pm.h
+++ b/drivers/gpu/drm/i915/intel_pm.h
@@ -46,6 +46,7 @@ void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
 			      struct skl_pipe_wm *out);
 void g4x_wm_sanitize(struct drm_i915_private *dev_priv);
 void vlv_wm_sanitize(struct drm_i915_private *dev_priv);
+void skl_wm_sanitize(struct drm_i915_private *dev_priv);
 bool intel_can_enable_sagv(struct drm_i915_private *dev_priv,
 			   const struct intel_bw_state *bw_state);
 void intel_sagv_pre_plane_update(struct intel_atomic_state *state);
-- 
2.34.1

