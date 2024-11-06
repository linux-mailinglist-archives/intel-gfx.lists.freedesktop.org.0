Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CEE59BF086
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 15:38:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B5AF10E6FB;
	Wed,  6 Nov 2024 14:38:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98A8310E706;
 Wed,  6 Nov 2024 14:38:31 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
	Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH 10/10] fixup! drm/xe/display: Add
 intel_plane_initial_vblank_wait
Date: Wed,  6 Nov 2024 15:38:37 +0100
Message-ID: <20241106143837.195642-10-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241106143837.195642-1-maarten.lankhorst@linux.intel.com>
References: <20241106143837.195642-1-maarten.lankhorst@linux.intel.com>
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

From: Maarten Lankhorst <dev@lankhorst.se>

---
 drivers/gpu/drm/i915/display/intel_plane_initial.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
index f0f4ec2b6cc98..77eb2b763be5e 100644
--- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
+++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
@@ -14,9 +14,9 @@
 #include "intel_frontbuffer.h"
 #include "intel_plane_initial.h"
 
-void intel_plane_initial_vblank_wait(plane);(struct intel_plane *plane)
+void intel_plane_initial_vblank_wait(struct intel_plane *plane)
 {
-	struct intel_crtc *crtc = intel_crtc_for_pipe(to_intel_display(plane), plane->pipe);
+	struct intel_crtc *crtc = intel_crtc_for_pipe(to_intel_display(plane->base.dev), plane->pipe);
 
 	intel_crtc_wait_for_next_vblank(crtc);
 }
@@ -445,7 +445,7 @@ void intel_initial_plane_config(struct drm_i915_private *i915)
 		intel_find_initial_plane_obj(crtc, plane_configs);
 
 		if (i915->display.funcs.display->fixup_initial_plane_config(crtc, plane_config))
-			intel_initial_vblank_wait(crtc);
+			intel_plane_initial_vblank_wait(to_intel_plane(crtc->base.primary));
 
 		plane_config_fini(plane_config);
 	}
-- 
2.45.2

