Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28101CBEA4B
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Dec 2025 16:29:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8F2810E5E2;
	Mon, 15 Dec 2025 15:28:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z3KWTPrH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81F2C10E5E2;
 Mon, 15 Dec 2025 15:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765812539; x=1797348539;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5yIYYMsCYpK4BLXY2TOp4xwsoiuXctctM8RdxwNNOX8=;
 b=Z3KWTPrHrTdXuSQauHex84S12nuTLJNKorR+jz5c1yCVmJCFVgC/hexo
 Yp7Tl872ICkaaCYCtIQq6lsdqjPOZevNhF5cX2UMBBTK1jk4s6cRPyASt
 k4nSdkinYO6eHqqjoY8FRKEXH06mWlQ6+FesTqiZfLWlUBHsfmQ5kg7KQ
 9n4SmCVIBPi03G6UisJB1xD+wfbChtoMFH1c3sSQC0Bo77guz9cO1U6oT
 W5IrfM5E3Q1tNWNy/W/07OiScC+/dXOkZqoV7Hu//Bdd03h8ZLeEVfsWY
 TPOQJxd7Esc13rQlNMeCOlVl6dLMeHKLw8IVIQbZA4JRckUWzM9SvTkak w==;
X-CSE-ConnectionGUID: NoYq29HJTw+hDXfPLRjJ4w==
X-CSE-MsgGUID: 5DfSDn4xRhCm/kNwbZIAMw==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="78354371"
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="78354371"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 07:28:58 -0800
X-CSE-ConnectionGUID: VhYV3XMyTRqZW+aQM9V57g==
X-CSE-MsgGUID: oBQAdApNQ3GpfDZ3Qzp7Pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="201931648"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.106])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 07:28:56 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 05/15] drm/{i915,
 xe}: deduplicate intel_initial_plane_config() between i915 and xe
Date: Mon, 15 Dec 2025 17:28:19 +0200
Message-ID: <0cb4077a5a39274c7a2dae95d548d7b33365a518.1765812266.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1765812266.git.jani.nikula@intel.com>
References: <cover.1765812266.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
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

Move the parent interface at one step lower level, allowing
deduplication.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_initial_plane.c    | 48 ++++++++++++++++++-
 drivers/gpu/drm/i915/i915_initial_plane.c     | 47 +++---------------
 drivers/gpu/drm/xe/display/xe_initial_plane.c | 47 +++---------------
 include/drm/intel/display_parent_interface.h  |  4 +-
 4 files changed, 62 insertions(+), 84 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_initial_plane.c b/drivers/gpu/drm/i915/display/intel_initial_plane.c
index c68d7555aee5..561a2ba2a486 100644
--- a/drivers/gpu/drm/i915/display/intel_initial_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_initial_plane.c
@@ -14,7 +14,53 @@ void intel_initial_plane_vblank_wait(struct intel_crtc *crtc)
 	display->parent->initial_plane->vblank_wait(&crtc->base);
 }
 
+static void
+intel_find_initial_plane_obj(struct intel_crtc *crtc,
+			     struct intel_initial_plane_config plane_configs[])
+{
+	struct intel_display *display = to_intel_display(crtc);
+
+	display->parent->initial_plane->find_obj(&crtc->base, plane_configs);
+}
+
+static void plane_config_fini(struct intel_display *display,
+			      struct intel_initial_plane_config *plane_config)
+{
+	display->parent->initial_plane->config_fini(plane_config);
+}
+
 void intel_initial_plane_config(struct intel_display *display)
 {
-	display->parent->initial_plane->config(display->drm);
+	struct intel_initial_plane_config plane_configs[I915_MAX_PIPES] = {};
+	struct intel_crtc *crtc;
+
+	for_each_intel_crtc(display->drm, crtc) {
+		const struct intel_crtc_state *crtc_state =
+			to_intel_crtc_state(crtc->base.state);
+		struct intel_initial_plane_config *plane_config =
+			&plane_configs[crtc->pipe];
+
+		if (!crtc_state->hw.active)
+			continue;
+
+		/*
+		 * Note that reserving the BIOS fb up front prevents us
+		 * from stuffing other stolen allocations like the ring
+		 * on top.  This prevents some ugliness at boot time, and
+		 * can even allow for smooth boot transitions if the BIOS
+		 * fb is large enough for the active pipe configuration.
+		 */
+		display->funcs.display->get_initial_plane_config(crtc, plane_config);
+
+		/*
+		 * If the fb is shared between multiple heads, we'll
+		 * just get the first one.
+		 */
+		intel_find_initial_plane_obj(crtc, plane_configs);
+
+		if (display->funcs.display->fixup_initial_plane_config(crtc, plane_config))
+			intel_initial_plane_vblank_wait(crtc);
+
+		plane_config_fini(display, plane_config);
+	}
 }
diff --git a/drivers/gpu/drm/i915/i915_initial_plane.c b/drivers/gpu/drm/i915/i915_initial_plane.c
index f26563eed9ba..68cf2499855a 100644
--- a/drivers/gpu/drm/i915/i915_initial_plane.c
+++ b/drivers/gpu/drm/i915/i915_initial_plane.c
@@ -312,9 +312,10 @@ intel_alloc_initial_plane_obj(struct intel_crtc *crtc,
 }
 
 static void
-intel_find_initial_plane_obj(struct intel_crtc *crtc,
-			     struct intel_initial_plane_config plane_configs[])
+i915_find_initial_plane_obj(struct drm_crtc *_crtc,
+			    struct intel_initial_plane_config plane_configs[])
 {
+	struct intel_crtc *crtc = to_intel_crtc(_crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	struct intel_initial_plane_config *plane_config =
 		&plane_configs[crtc->pipe];
@@ -392,7 +393,7 @@ intel_find_initial_plane_obj(struct intel_crtc *crtc,
 	atomic_or(plane->frontbuffer_bit, &to_intel_frontbuffer(fb)->bits);
 }
 
-static void plane_config_fini(struct intel_initial_plane_config *plane_config)
+static void i915_plane_config_fini(struct intel_initial_plane_config *plane_config)
 {
 	if (plane_config->fb) {
 		struct drm_framebuffer *fb = &plane_config->fb->base;
@@ -408,44 +409,8 @@ static void plane_config_fini(struct intel_initial_plane_config *plane_config)
 		i915_vma_put(plane_config->vma);
 }
 
-static void i915_initial_plane_config(struct drm_device *drm)
-{
-	struct intel_display *display = to_intel_display(drm);
-	struct intel_initial_plane_config plane_configs[I915_MAX_PIPES] = {};
-	struct intel_crtc *crtc;
-
-	for_each_intel_crtc(display->drm, crtc) {
-		const struct intel_crtc_state *crtc_state =
-			to_intel_crtc_state(crtc->base.state);
-		struct intel_initial_plane_config *plane_config =
-			&plane_configs[crtc->pipe];
-
-		if (!crtc_state->hw.active)
-			continue;
-
-		/*
-		 * Note that reserving the BIOS fb up front prevents us
-		 * from stuffing other stolen allocations like the ring
-		 * on top.  This prevents some ugliness at boot time, and
-		 * can even allow for smooth boot transitions if the BIOS
-		 * fb is large enough for the active pipe configuration.
-		 */
-		display->funcs.display->get_initial_plane_config(crtc, plane_config);
-
-		/*
-		 * If the fb is shared between multiple heads, we'll
-		 * just get the first one.
-		 */
-		intel_find_initial_plane_obj(crtc, plane_configs);
-
-		if (display->funcs.display->fixup_initial_plane_config(crtc, plane_config))
-			i915_initial_plane_vblank_wait(&crtc->base);
-
-		plane_config_fini(plane_config);
-	}
-}
-
 const struct intel_display_initial_plane_interface i915_display_initial_plane_interface = {
 	.vblank_wait = i915_initial_plane_vblank_wait,
-	.config = i915_initial_plane_config,
+	.find_obj = i915_find_initial_plane_obj,
+	.config_fini = i915_plane_config_fini,
 };
diff --git a/drivers/gpu/drm/xe/display/xe_initial_plane.c b/drivers/gpu/drm/xe/display/xe_initial_plane.c
index dd69f1c65903..0007337c60da 100644
--- a/drivers/gpu/drm/xe/display/xe_initial_plane.c
+++ b/drivers/gpu/drm/xe/display/xe_initial_plane.c
@@ -204,9 +204,10 @@ intel_alloc_initial_plane_obj(struct intel_crtc *crtc,
 }
 
 static void
-intel_find_initial_plane_obj(struct intel_crtc *crtc,
-			     struct intel_initial_plane_config plane_configs[])
+xe_find_initial_plane_obj(struct drm_crtc *_crtc,
+			  struct intel_initial_plane_config plane_configs[])
 {
+	struct intel_crtc *crtc = to_intel_crtc(_crtc);
 	struct intel_initial_plane_config *plane_config =
 		&plane_configs[crtc->pipe];
 	struct intel_plane *plane =
@@ -274,7 +275,7 @@ intel_find_initial_plane_obj(struct intel_crtc *crtc,
 	intel_plane_disable_noatomic(crtc, plane);
 }
 
-static void plane_config_fini(struct intel_initial_plane_config *plane_config)
+static void xe_plane_config_fini(struct intel_initial_plane_config *plane_config)
 {
 	if (plane_config->fb) {
 		struct drm_framebuffer *fb = &plane_config->fb->base;
@@ -287,44 +288,8 @@ static void plane_config_fini(struct intel_initial_plane_config *plane_config)
 	}
 }
 
-static void xe_initial_plane_config(struct drm_device *drm)
-{
-	struct intel_display *display = to_intel_display(drm);
-	struct intel_initial_plane_config plane_configs[I915_MAX_PIPES] = {};
-	struct intel_crtc *crtc;
-
-	for_each_intel_crtc(display->drm, crtc) {
-		const struct intel_crtc_state *crtc_state =
-			to_intel_crtc_state(crtc->base.state);
-		struct intel_initial_plane_config *plane_config =
-			&plane_configs[crtc->pipe];
-
-		if (!crtc_state->hw.active)
-			continue;
-
-		/*
-		 * Note that reserving the BIOS fb up front prevents us
-		 * from stuffing other stolen allocations like the ring
-		 * on top.  This prevents some ugliness at boot time, and
-		 * can even allow for smooth boot transitions if the BIOS
-		 * fb is large enough for the active pipe configuration.
-		 */
-		display->funcs.display->get_initial_plane_config(crtc, plane_config);
-
-		/*
-		 * If the fb is shared between multiple heads, we'll
-		 * just get the first one.
-		 */
-		intel_find_initial_plane_obj(crtc, plane_configs);
-
-		if (display->funcs.display->fixup_initial_plane_config(crtc, plane_config))
-			xe_initial_plane_vblank_wait(&crtc->base);
-
-		plane_config_fini(plane_config);
-	}
-}
-
 const struct intel_display_initial_plane_interface xe_display_initial_plane_interface = {
 	.vblank_wait = xe_initial_plane_vblank_wait,
-	.config = xe_initial_plane_config,
+	.find_obj = xe_find_initial_plane_obj,
+	.config_fini = xe_plane_config_fini,
 };
diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
index 76341b4b03f7..b6559fe22d1c 100644
--- a/include/drm/intel/display_parent_interface.h
+++ b/include/drm/intel/display_parent_interface.h
@@ -11,6 +11,7 @@ struct drm_crtc;
 struct drm_device;
 struct drm_scanout_buffer;
 struct intel_hdcp_gsc_context;
+struct intel_initial_plane_config;
 struct intel_panic;
 struct intel_stolen_node;
 struct ref_tracker;
@@ -28,7 +29,8 @@ struct intel_display_hdcp_interface {
 
 struct intel_display_initial_plane_interface {
 	void (*vblank_wait)(struct drm_crtc *crtc);
-	void (*config)(struct drm_device *drm);
+	void (*find_obj)(struct drm_crtc *crtc, struct intel_initial_plane_config *plane_configs);
+	void (*config_fini)(struct intel_initial_plane_config *plane_configs);
 };
 
 struct intel_display_irq_interface {
-- 
2.47.3

