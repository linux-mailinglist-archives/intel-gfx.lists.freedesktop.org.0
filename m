Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB88E9C01C0
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 11:02:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8C8410E7E1;
	Thu,  7 Nov 2024 10:01:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AD0B10E7E0;
 Thu,  7 Nov 2024 10:01:55 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Vinod Govindapillai <vinod.govindapillai@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Maarten@mblankhorst.nl,
 Lankhorst@mblankhorst.nl, dev@lankhorst.se
Subject: [PATCH 1/9] drm/xe: Remove double pageflip
Date: Thu,  7 Nov 2024 11:01:32 +0100
Message-ID: <20241107100140.292928-1-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.45.2
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is already handled below by fixup_initial_plane_config.

Fixes: a8153627520a ("drm/i915: Try to relocate the BIOS fb to the start of ggtt")
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20241105121857.17389-1-maarten.lankhorst@linux.intel.com
Signed-off-by: Maarten Lankhorst,,, <dev@lankhorst.se>
---
 drivers/gpu/drm/xe/display/xe_plane_initial.c | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
index 8c113463a3d55..668f544a7ac80 100644
--- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
+++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
@@ -194,8 +194,6 @@ intel_find_initial_plane_obj(struct intel_crtc *crtc,
 		to_intel_plane(crtc->base.primary);
 	struct intel_plane_state *plane_state =
 		to_intel_plane_state(plane->base.state);
-	struct intel_crtc_state *crtc_state =
-		to_intel_crtc_state(crtc->base.state);
 	struct drm_framebuffer *fb;
 	struct i915_vma *vma;
 
@@ -241,14 +239,6 @@ intel_find_initial_plane_obj(struct intel_crtc *crtc,
 	atomic_or(plane->frontbuffer_bit, &to_intel_frontbuffer(fb)->bits);
 
 	plane_config->vma = vma;
-
-	/*
-	 * Flip to the newly created mapping ASAP, so we can re-use the
-	 * first part of GGTT for WOPCM, prevent flickering, and prevent
-	 * the lookup of sysmem scratch pages.
-	 */
-	plane->check_plane(crtc_state, plane_state);
-	plane->async_flip(NULL, plane, crtc_state, plane_state, true);
 	return;
 
 nofb:
-- 
2.45.2

