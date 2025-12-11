Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB4ECB6753
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Dec 2025 17:28:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9D9210E851;
	Thu, 11 Dec 2025 16:28:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="HU8ggYvs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 411AC10E851;
 Thu, 11 Dec 2025 16:28:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1765470532;
 bh=ljdH+hDI0eSDgcq0NlQSCPKmrCPd8ts57wYujzpvmhw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=HU8ggYvsL8DUN+g+zrfPJgcv2TtGSioqWB9LW7jOJLFZxXPHEKah1mkxOb+Wg7hJV
 +/1TcnoPEOJ5p4mBaszCfgLe0ohvnOYvlUETdUGSJo4vx/vLq1KIMsds9E517WdAlI
 SiU9Fx49Ag7cWel3JkGKIJCRQ1V/MjWe/Jd05EU3CEfkAWSAX6yZGfil6LpF9pRu29
 RevaGZQVo00tVIwKuFHKkLc2dOlMD2QW2bnRV0gdwUoF7lP1llnf7KV+NwRHr34DEW
 e6C/ymGTVcDBqs11E9M0U8uIRxOXvN7fVzQkl4Puc3+ZpGln8i90pJfmSU8ebzWhoH
 D98B4PKvIETvg==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH 7/9] drm/i915/display: Handle vlv dsi workaround in
 scanline_in_safe_range too
Date: Thu, 11 Dec 2025 17:19:30 +0100
Message-ID: <20251211161923.843758-18-dev@lankhorst.se>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251211161923.843758-11-dev@lankhorst.se>
References: <20251211161923.843758-11-dev@lankhorst.se>
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

Now that we have a macro, might as well handle the VLV dsi workaround
too.

This makes the vblank evasion code slightly more deterministic, by not
looping with interrupts disabled.

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/i915/display/intel_vblank.c | 36 ++++++++++-----------
 1 file changed, 18 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index f72da4099119c..0261baed14615 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -712,6 +712,24 @@ static bool scanline_in_safe_range(struct intel_vblank_evade_ctx *evade, int *sc
 {
 	*scanline = intel_get_crtc_scanline(evade->crtc);
 
+	/*
+	 * On VLV/CHV DSI the scanline counter would appear to
+	 * increment approx. 1/3 of a scanline before start of vblank.
+	 * The registers still get latched at start of vblank however.
+	 * This means we must not write any registers on the first
+	 * line of vblank (since not the whole line is actually in
+	 * vblank). And unfortunately we can't use the interrupt to
+	 * wait here since it will fire too soon. We could use the
+	 * frame start interrupt instead since it will fire after the
+	 * critical scanline, but that would require more changes
+	 * in the interrupt code. So for now we'll just do the nasty
+	 * thing and poll for the bad scanline to pass us by.
+	 *
+	 * FIXME figure out if BXT+ DSI suffers from this as well
+	 */
+	if (evade->need_vlv_dsi_wa && *scanline == evade->vblank_start)
+		return false;
+
 	return *scanline < evade->min || *scanline > evade->max;
 }
 
@@ -742,24 +760,6 @@ int intel_vblank_evade(struct intel_vblank_evade_ctx *evade)
 		local_irq_disable();
 	}
 
-	/*
-	 * On VLV/CHV DSI the scanline counter would appear to
-	 * increment approx. 1/3 of a scanline before start of vblank.
-	 * The registers still get latched at start of vblank however.
-	 * This means we must not write any registers on the first
-	 * line of vblank (since not the whole line is actually in
-	 * vblank). And unfortunately we can't use the interrupt to
-	 * wait here since it will fire too soon. We could use the
-	 * frame start interrupt instead since it will fire after the
-	 * critical scanline, but that would require more changes
-	 * in the interrupt code. So for now we'll just do the nasty
-	 * thing and poll for the bad scanline to pass us by.
-	 *
-	 * FIXME figure out if BXT+ DSI suffers from this as well
-	 */
-	while (evade->need_vlv_dsi_wa && scanline == evade->vblank_start)
-		scanline = intel_get_crtc_scanline(crtc);
-
 	return scanline;
 }
 
-- 
2.51.0

