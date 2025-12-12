Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69E1CCB8D90
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 14:02:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 034F110E790;
	Fri, 12 Dec 2025 13:02:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="TqN6ry3/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9710D10E359;
 Fri, 12 Dec 2025 13:02:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1765544540;
 bh=Mi72tZLkVY+OWZNlHhJHSloPqeEUuXErW5xRvyEChLQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=TqN6ry3/Y2JRLoEKW/8oOguLETwOA3Q4K2h+pJFVH0jq2yN9jLqc+dQGmpu8FQHcZ
 9FGLaS8qx2ZwzcOPLb+Znr9FIVf4jsTGjksNZS6cgPSuYmxtzKEaKcgvm/EgOq+NQ3
 kRSoeKufh+buBjy1D8J+cDlcWNKLpsz+bc1OY/2JTnc+gOeFPFZefZ83T3zZPcmcgw
 8rvsvbqwcR+QwevpY8XniwLQGiE9xkiUtrKpL3L1cEfqa3dOLzFMt77XXvz2QInc5Y
 y5Wpl5b25OqMXiXVgHtlUaRrnZtQB95komcsm28IV9+Y1X/mXom1KsXAsyFtpBeocf
 K5OKO2r8nWgiQ==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Maarten Lankhorst <dev@lankhorst.se>, Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH 05/11] drm/i915/display: Move vblank put until after critical
 section
Date: Fri, 12 Dec 2025 14:02:11 +0100
Message-ID: <20251212130205.963029-18-dev@lankhorst.se>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251212130205.963029-13-dev@lankhorst.se>
References: <20251212130205.963029-13-dev@lankhorst.se>
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

drm_crtc_vblank_put may take some locks, this should probably
not be the first thing we do after entering the time sensitive
part.

A better place is after programming is completed. Add a flag
to put the vblank after completion.

In the case of drm_vblank_work_schedule, we may not even need
to disable the vblank interrupt any more if it takes its own
reference.

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 2c5d917fbd7e9..3e84a2078a0a7 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -816,6 +816,7 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 		to_intel_crtc_state(crtc->base.state);
 	struct intel_crtc_state *new_crtc_state;
 	struct intel_vblank_evade_ctx evade;
+	bool has_vblank = false;
 	int ret;
 
 	/*
@@ -913,6 +914,8 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 	intel_psr_lock(crtc_state);
 
 	if (!drm_WARN_ON(display->drm, drm_crtc_vblank_get(&crtc->base))) {
+		has_vblank = true;
+
 		/*
 		 * TODO: maybe check if we're still in PSR
 		 * and skip the vblank evasion entirely?
@@ -922,8 +925,6 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 		local_irq_disable();
 
 		intel_vblank_evade(&evade);
-
-		drm_crtc_vblank_put(&crtc->base);
 	} else {
 		local_irq_disable();
 	}
@@ -939,6 +940,9 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 
 	intel_psr_unlock(crtc_state);
 
+	if (has_vblank)
+		drm_crtc_vblank_put(&crtc->base);
+
 	if (old_plane_state->ggtt_vma != new_plane_state->ggtt_vma) {
 		drm_vblank_work_init(&old_plane_state->unpin_work, &crtc->base,
 				     intel_cursor_unpin_work);
-- 
2.51.0

