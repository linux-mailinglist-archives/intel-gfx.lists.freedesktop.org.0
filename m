Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07098CCDA25
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Dec 2025 22:05:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B31E710E070;
	Thu, 18 Dec 2025 21:05:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="XE+KQ0PF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CD2C10E070;
 Thu, 18 Dec 2025 21:05:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1766091939;
 bh=DZryGXjXwS3AHxNeB187wfpsa29r6K52d+/viJiYjWQ=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=XE+KQ0PFmWlhsTeFL+ZzNm//B69TaPo09REE07C+vPYi4Fau/IRo1L90+OJawyrd1
 AdPGaQKOdTVNf9J5/021Zhl8b8tmRXrPyLE1xm3F6l/M8+A6D8vN+i1Oqp3oTOIXzO
 GQQCLNgUMjdH2KPbMTyptPtz3BA060PCIb39HrhD6qXXNav5bQPUTy+KUeR2ltWwiW
 OqQbrr1VX6BOjtJa2tw1Y/VIK7voemwIHBedFxMAeu5lOVhsy32Rahh+Xl1Xb4B0+s
 C1A7pICNZ/UAZB6a/x4rFeCCgXBFb7dZYZYzMDeSLvEv0OYSbJ/xNRrp4e15AX4mUB
 UsfAnXMxlHrYQ==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Subject: [i915-rt v4.1] drm/i915/display: Remove uncore lock from
 vlv_atomic_update_fifo
Date: Thu, 18 Dec 2025 22:06:16 +0100
Message-ID: <20251218210616.137111-1-dev@lankhorst.se>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251218163408.97508-21-dev@lankhorst.se>
References: <20251218163408.97508-21-dev@lankhorst.se>
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

TODO: Grab uncore lock during entire vblank evasion before disabling
interrupts, and check what breaks?

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 167277cd88778..59c18b69ccfa8 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -1864,7 +1864,6 @@ static void vlv_atomic_update_fifo(struct intel_atomic_state *state,
 {
 	struct intel_display *display = to_intel_display(crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	struct intel_uncore *uncore = &dev_priv->uncore;
 	const struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	const struct vlv_fifo_state *fifo_state =
@@ -1893,7 +1892,6 @@ static void vlv_atomic_update_fifo(struct intel_atomic_state *state,
 	 * intel_pipe_update_start() has already disabled interrupts
 	 * for us, so a plain spin_lock() is sufficient here.
 	 */
-	spin_lock(&uncore->lock);
 
 	switch (crtc->pipe) {
 	case PIPE_A:
@@ -1952,8 +1950,6 @@ static void vlv_atomic_update_fifo(struct intel_atomic_state *state,
 	}
 
 	intel_de_read_fw(display, DSPARB(display));
-
-	spin_unlock(&uncore->lock);
 }
 
 #undef VLV_FIFO
-- 
2.51.0

