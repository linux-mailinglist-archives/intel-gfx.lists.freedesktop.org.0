Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D5CB3BC3D
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Aug 2025 15:17:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D88D10E0C9;
	Fri, 29 Aug 2025 13:17:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEB5510E0C9;
 Fri, 29 Aug 2025 13:17:07 +0000 (UTC)
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH] drm/i915/display: Make intel_crtc_get_vblank_counter safe on
 PREEMPT_RT
Date: Fri, 29 Aug 2025 15:17:02 +0200
Message-ID: <20250829131701.15607-2-dev@lankhorst.se>
X-Mailer: git-send-email 2.50.0
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

drm_crtc_accurate_vblank_count takes a spinlock, which we should avoid
in tracepoints and debug functions.

This also prevents taking the spinlock 2x during the critical
section of pipe updates for DSI updates.

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/i915/display/intel_crtc.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index a187db6df2d36..cee00aa2c79de 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -84,8 +84,12 @@ u32 intel_crtc_get_vblank_counter(struct intel_crtc *crtc)
 	if (!crtc->active)
 		return 0;
 
-	if (!vblank->max_vblank_count)
-		return (u32)drm_crtc_accurate_vblank_count(&crtc->base);
+	if (!vblank->max_vblank_count) {
+		if (!IS_ENABLED(CONFIG_PREEMPT_RT))
+			return (u32)drm_crtc_accurate_vblank_count(&crtc->base);
+		else
+			return (u32)drm_crtc_vblank_count(&crtc->base);
+	}
 
 	return crtc->base.funcs->get_vblank_counter(&crtc->base);
 }
-- 
2.50.0

