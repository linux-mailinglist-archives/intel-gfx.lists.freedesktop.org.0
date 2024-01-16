Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 410F382EA79
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jan 2024 08:58:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF4F810E43B;
	Tue, 16 Jan 2024 07:57:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4010310E437
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jan 2024 07:57:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705391850; x=1736927850;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZwThCSMkZJ1Jv7t6bOWgoMQjRNkwTNF9v15p3OdiQbg=;
 b=JDqZPR5fl5MqGvkb+H8hYuFKOVqW5yTEk2+bfx67UReva9QxoEIlHaMW
 FzBnXFlFQE7bkVvSU7aY6TkrE4EuZR6Q2fx/y+wy6RvzB4pD4cpteUiw8
 fhjE9m9xy6fxdfh9vCpjivm3tXozcsFWzSLjhrgIfv52Ee/sv4/qlfzWU
 +4r3Lk2K4zVprzxZQF1bOy6TyqybbRsbitNozytAPbI29fYf/8Nugji//
 wSG2B5U4Nn37SK1STPIWAJmK7tqfGU9ZGci9IrXPeOXHZyDY7q450a7bd
 Ds7/8YXWUtbhzMWq/aNN89oefaNvDZTltvHFlPDr2nGm9XqNSyme+uqck A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10954"; a="430948755"
X-IronPort-AV: E=Sophos;i="6.04,198,1695711600"; d="scan'208";a="430948755"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2024 23:57:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10954"; a="776947051"
X-IronPort-AV: E=Sophos;i="6.04,198,1695711600"; d="scan'208";a="776947051"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 15 Jan 2024 23:57:26 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 16 Jan 2024 09:57:25 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 14/16] drm/i915: Tweak BIOS fb reuse check
Date: Tue, 16 Jan 2024 09:56:34 +0200
Message-ID: <20240116075636.6121-15-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
References: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Currently we assume that we bind the BIOS fb exactly into the same
ggtt address where the BIOS left it. That is about to change, and
in order to keep intel_reuse_initial_plane_obj() working as intended
we need to compare the original ggtt offset (called 'base' here)
as opposed to the actual vma ggtt offset we selected. Otherwise
the first plane could change the ggtt offset, and then subsequent
planes would no longer notice that they are in fact using the same
ggtt offset that the first plane was already using. Thus the reuse
check will fail and we proceed to turn off these subsequent planes.

TODO: would probably make more sense to do the pure readout first
for all the planes, then check for fb reuse, and only then proceed
to pin the object into the final location in the ggtt...

Cc: Paz Zcharya <pazz@chromium.org>
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_plane_initial.c    | 34 +++++++++++--------
 1 file changed, 19 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
index b7e12b60d68b..82ab98985a09 100644
--- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
+++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
@@ -13,20 +13,21 @@
 #include "intel_plane_initial.h"
 
 static bool
-intel_reuse_initial_plane_obj(struct drm_i915_private *i915,
-			      const struct intel_initial_plane_config *plane_config,
+intel_reuse_initial_plane_obj(struct intel_crtc *this,
+			      const struct intel_initial_plane_config plane_configs[],
 			      struct drm_framebuffer **fb,
 			      struct i915_vma **vma)
 {
+	struct drm_i915_private *i915 = to_i915(this->base.dev);
 	struct intel_crtc *crtc;
 
 	for_each_intel_crtc(&i915->drm, crtc) {
-		struct intel_crtc_state *crtc_state =
-			to_intel_crtc_state(crtc->base.state);
-		struct intel_plane *plane =
+		const struct intel_plane *plane =
 			to_intel_plane(crtc->base.primary);
-		struct intel_plane_state *plane_state =
+		const struct intel_plane_state *plane_state =
 			to_intel_plane_state(plane->base.state);
+		const struct intel_crtc_state *crtc_state =
+			to_intel_crtc_state(crtc->base.state);
 
 		if (!crtc_state->uapi.active)
 			continue;
@@ -34,7 +35,7 @@ intel_reuse_initial_plane_obj(struct drm_i915_private *i915,
 		if (!plane_state->ggtt_vma)
 			continue;
 
-		if (intel_plane_ggtt_offset(plane_state) == plane_config->base) {
+		if (plane_configs[this->pipe].base == plane_configs[crtc->pipe].base) {
 			*fb = plane_state->hw.fb;
 			*vma = plane_state->ggtt_vma;
 			return true;
@@ -265,10 +266,11 @@ intel_alloc_initial_plane_obj(struct intel_crtc *crtc,
 
 static void
 intel_find_initial_plane_obj(struct intel_crtc *crtc,
-			     struct intel_initial_plane_config *plane_config)
+			     struct intel_initial_plane_config plane_configs[])
 {
-	struct drm_device *dev = crtc->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_initial_plane_config *plane_config =
+		&plane_configs[crtc->pipe];
 	struct intel_plane *plane =
 		to_intel_plane(crtc->base.primary);
 	struct intel_plane_state *plane_state =
@@ -294,7 +296,7 @@ intel_find_initial_plane_obj(struct intel_crtc *crtc,
 	 * Failed to alloc the obj, check to see if we should share
 	 * an fb with another CRTC instead
 	 */
-	if (intel_reuse_initial_plane_obj(dev_priv, plane_config, &fb, &vma))
+	if (intel_reuse_initial_plane_obj(crtc, plane_configs, &fb, &vma))
 		goto valid_fb;
 
 	/*
@@ -359,10 +361,12 @@ static void plane_config_fini(struct intel_initial_plane_config *plane_config)
 
 void intel_initial_plane_config(struct drm_i915_private *i915)
 {
+	struct intel_initial_plane_config plane_configs[I915_MAX_PIPES] = {};
 	struct intel_crtc *crtc;
 
 	for_each_intel_crtc(&i915->drm, crtc) {
-		struct intel_initial_plane_config plane_config = {};
+		struct intel_initial_plane_config *plane_config =
+			&plane_configs[crtc->pipe];
 
 		if (!to_intel_crtc_state(crtc->base.state)->uapi.active)
 			continue;
@@ -374,14 +378,14 @@ void intel_initial_plane_config(struct drm_i915_private *i915)
 		 * can even allow for smooth boot transitions if the BIOS
 		 * fb is large enough for the active pipe configuration.
 		 */
-		i915->display.funcs.display->get_initial_plane_config(crtc, &plane_config);
+		i915->display.funcs.display->get_initial_plane_config(crtc, plane_config);
 
 		/*
 		 * If the fb is shared between multiple heads, we'll
 		 * just get the first one.
 		 */
-		intel_find_initial_plane_obj(crtc, &plane_config);
+		intel_find_initial_plane_obj(crtc, plane_configs);
 
-		plane_config_fini(&plane_config);
+		plane_config_fini(plane_config);
 	}
 }
-- 
2.41.0

