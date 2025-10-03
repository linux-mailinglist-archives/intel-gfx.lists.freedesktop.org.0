Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5149CBB7368
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Oct 2025 16:41:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 960E610E125;
	Fri,  3 Oct 2025 14:41:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF0D210E125;
 Fri,  3 Oct 2025 14:40:59 +0000 (UTC)
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, Maarten Lankhorst <dev@lankhorst.se>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [CI 2/2] drm/i915/display: Make intel_crtc_get_vblank_counter safe on
 PREEMPT_RT
Date: Fri,  3 Oct 2025 16:40:56 +0200
Message-ID: <20251003144054.112239-4-dev@lankhorst.se>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251003144054.112239-3-dev@lankhorst.se>
References: <20251003144054.112239-3-dev@lankhorst.se>
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

drm_crtc_accurate_vblank_count takes a spinlock, which we should avoid
in tracepoints and debug functions.

This also prevents taking the spinlock 2x during the critical
section of pipe updates for DSI updates.

Acked-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Link: https://lore.kernel.org/r/20250829131701.15607-2-dev@lankhorst.se
Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/i915/display/intel_crtc.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index a187db6df2d36..c0329e1324626 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -84,8 +84,13 @@ u32 intel_crtc_get_vblank_counter(struct intel_crtc *crtc)
 	if (!crtc->active)
 		return 0;
 
-	if (!vblank->max_vblank_count)
-		return (u32)drm_crtc_accurate_vblank_count(&crtc->base);
+	if (!vblank->max_vblank_count) {
+		/* On preempt-rt we cannot take the vblank spinlock since this function is called from tracepoints */
+		if (IS_ENABLED(CONFIG_PREEMPT_RT))
+			return (u32)drm_crtc_vblank_count(&crtc->base);
+		else
+			return (u32)drm_crtc_accurate_vblank_count(&crtc->base);
+	}
 
 	return crtc->base.funcs->get_vblank_counter(&crtc->base);
 }
-- 
2.51.0

