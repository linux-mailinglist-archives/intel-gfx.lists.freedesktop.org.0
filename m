Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8348F89D45A
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Apr 2024 10:31:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9200112BA0;
	Tue,  9 Apr 2024 08:31:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B5FE112BA7;
 Tue,  9 Apr 2024 08:31:31 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [CI-only 4/4] drm/i915: Hack to check use-after-free aggressively,
 and undo purpose of patches
Date: Tue,  9 Apr 2024 10:31:40 +0200
Message-ID: <20240409083140.27711-4-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240409083140.27711-1-maarten.lankhorst@linux.intel.com>
References: <20240409083140.27711-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
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

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c   | 2 +-
 drivers/gpu/drm/i915/display/intel_cursor.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 558e9b7404b5..0ec6c3a79ec1 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -640,7 +640,7 @@ void intel_pipe_update_end(struct intel_atomic_state *state,
 			if (old_plane_state->uapi.crtc == &crtc->base &&
 			    old_plane_state->unpin_work.vblank) {
 				drm_vblank_work_schedule(&old_plane_state->unpin_work,
-							 drm_crtc_accurate_vblank_count(&crtc->base) + 1,
+							 drm_crtc_accurate_vblank_count(&crtc->base),
 							 false);
 
 				/* Remove plane from atomic state, cleanup/free is done from vblank worker. */
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index e999ee8e9d94..f052c25b0675 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -833,7 +833,7 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 				     intel_cursor_unpin_work);
 
 		drm_vblank_work_schedule(&old_plane_state->unpin_work,
-					 drm_crtc_accurate_vblank_count(&crtc->base) + 1,
+					 drm_crtc_accurate_vblank_count(&crtc->base),
 					 false);
 
 		old_plane_state = NULL;
-- 
2.43.0

