Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51CE8739788
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jun 2023 08:41:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5808810E4D6;
	Thu, 22 Jun 2023 06:41:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 67978 seconds by postgrey-1.36 at gabe;
 Thu, 22 Jun 2023 06:41:35 UTC
Received: from mblankhorst.nl (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDE3210E4D6
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jun 2023 06:41:35 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Jun 2023 08:41:27 +0200
Message-Id: <20230622064127.197970-1-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230621115048.174259-1-maarten.lankhorst@linux.intel.com>
References: <20230621115048.174259-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Handle legacy cursor update as normal
 update
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

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c      | 15 ++++++++++++++-
 .../gpu/drm/i915/display/intel_display_types.h    |  2 +-
 2 files changed, 15 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 43bcd3d011bf5..38c3eb8d95789 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6864,6 +6864,9 @@ static void intel_atomic_cleanup_work(struct work_struct *work)
 	struct intel_crtc *crtc;
 	int i;
 
+	if (state->cursor_update)
+		drm_atomic_helper_wait_for_flip_done(&i915->drm, &state->base);
+
 	for_each_old_intel_crtc_in_state(state, crtc, old_crtc_state, i)
 		intel_color_cleanup_commit(old_crtc_state);
 
@@ -7062,7 +7065,8 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	 * - switch over to the vblank wait helper in the core after that since
 	 *   we don't need out special handling any more.
 	 */
-	drm_atomic_helper_wait_for_flip_done(dev, &state->base);
+	if (!state->cursor_update)
+		drm_atomic_helper_wait_for_flip_done(dev, &state->base);
 
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
 		if (new_crtc_state->do_async_flip)
@@ -7247,6 +7251,15 @@ int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state *_state,
 				state->base.legacy_cursor_update = false;
 	}
 
+	if (state->base.legacy_cursor_update) {
+		/*
+		 * If this is a legacy cursor update, handle like a normal update,
+		 * but wait before calling cleanup
+		 */
+		state->base.legacy_cursor_update = false;
+		state->cursor_update = true;
+	}
+
 	ret = intel_atomic_prepare_commit(state);
 	if (ret) {
 		drm_dbg_atomic(&dev_priv->drm,
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index c85cf8adc7a69..01f7c8d24179c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -646,7 +646,7 @@ struct intel_atomic_state {
 	/* Internal commit, as opposed to userspace/client initiated one */
 	bool internal;
 
-	bool dpll_set, modeset;
+	bool dpll_set, modeset, cursor_update;
 
 	struct intel_shared_dpll_state shared_dpll[I915_NUM_PLLS];
 
-- 
2.39.2

