Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F8392B8E61
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Nov 2020 10:07:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7124B6E50D;
	Thu, 19 Nov 2020 09:07:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6C286E50D
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Nov 2020 09:07:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23038343-1500050 
 for multiple; Thu, 19 Nov 2020 09:07:19 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Nov 2020 09:07:17 +0000
Message-Id: <20201119090717.30687-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display: Whitespace cleanups
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

drivers/gpu/drm/i915/display/intel_display.c:3634 intel_find_initial_plane_obj() warn: inconsistent indenting
drivers/gpu/drm/i915/display/intel_display.c:15367 kill_bigjoiner_slave() warn: inconsistent indenting

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/display/intel_display.c | 23 ++++++++++----------
 1 file changed, 11 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 5c07c74d4397..1a0f00f37ca9 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3631,8 +3631,8 @@ intel_find_initial_plane_obj(struct intel_crtc *intel_crtc,
 	struct intel_plane *intel_plane = to_intel_plane(primary);
 	struct intel_plane_state *intel_state =
 		to_intel_plane_state(plane_state);
-	 struct intel_crtc_state *crtc_state =
-		 to_intel_crtc_state(intel_crtc->base.state);
+	struct intel_crtc_state *crtc_state =
+		to_intel_crtc_state(intel_crtc->base.state);
 	struct drm_framebuffer *fb;
 	struct i915_vma *vma;
 
@@ -15361,17 +15361,17 @@ static int kill_bigjoiner_slave(struct intel_atomic_state *state,
 				struct intel_crtc_state *master_crtc_state)
 {
 	struct intel_crtc_state *slave_crtc_state =
-			intel_atomic_get_crtc_state(&state->base,
-						    master_crtc_state->bigjoiner_linked_crtc);
+		intel_atomic_get_crtc_state(&state->base,
+					    master_crtc_state->bigjoiner_linked_crtc);
 
-		if (IS_ERR(slave_crtc_state))
-			return PTR_ERR(slave_crtc_state);
+	if (IS_ERR(slave_crtc_state))
+		return PTR_ERR(slave_crtc_state);
 
-		slave_crtc_state->bigjoiner = master_crtc_state->bigjoiner = false;
-		slave_crtc_state->bigjoiner_slave = master_crtc_state->bigjoiner_slave = false;
-		slave_crtc_state->bigjoiner_linked_crtc = master_crtc_state->bigjoiner_linked_crtc = NULL;
-		intel_crtc_copy_uapi_to_hw_state(state, slave_crtc_state);
-		return 0;
+	slave_crtc_state->bigjoiner = master_crtc_state->bigjoiner = false;
+	slave_crtc_state->bigjoiner_slave = master_crtc_state->bigjoiner_slave = false;
+	slave_crtc_state->bigjoiner_linked_crtc = master_crtc_state->bigjoiner_linked_crtc = NULL;
+	intel_crtc_copy_uapi_to_hw_state(state, slave_crtc_state);
+	return 0;
 }
 
 /**
@@ -15949,7 +15949,6 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 		intel_crtc_arm_fifo_underrun(crtc, new_crtc_state);
 }
 
-
 static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
 					  struct intel_crtc_state *old_crtc_state,
 					  struct intel_crtc_state *new_crtc_state,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
