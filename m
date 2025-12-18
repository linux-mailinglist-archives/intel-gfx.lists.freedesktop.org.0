Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CD65CCDBBF
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Dec 2025 22:50:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4608D10E369;
	Thu, 18 Dec 2025 21:50:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="PI16WklO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D740B10E369;
 Thu, 18 Dec 2025 21:50:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1766094614;
 bh=21yd4s2inocFgSSFTxfC+g7F9qvDinACjGF8WYMNDds=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=PI16WklO/A49cJgs69jARKjMVjtWBLPlBiBanSCc8TPToCXYqelGuEGFKaOiwVhGj
 qs1hqIJczS82hpMEug66SBsMpuw6T4OEjVpu5fXmoK2gQng96J6+LvJUyFQ43nEACW
 kIOobkVbhYd2QahvMrE/9ULFFhnDqsuBZEP0IYM0PujLrL29wXJ8WnZFIw3FN1KjpJ
 eeWaXH9TyV1UYBfijDOlCMlA/9DvxDJaykI7tuzgoVaoYpxIcmACEcVl5bTea8feIK
 faPZB/vdg1Cz1KSrcPCyS0aXvraoliLWnbd9Pq4Na8BpVxUzy8p4Hhwfjvnhl31uCt
 f7zE88fq5rilg==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: [i915-rt v4.2] drm/i915/display: Remove uncore lock from
 vlv_atomic_update_fifo
Date: Thu, 18 Dec 2025 22:50:11 +0100
Message-ID: <20251218215011.1983656-1-dev@lankhorst.se>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251218210616.137111-1-dev@lankhorst.se>
References: <20251218210616.137111-1-dev@lankhorst.se>
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
 drivers/gpu/drm/i915/display/i9xx_wm.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 167277cd88778..78a044c98bdf9 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -1863,8 +1863,6 @@ static void vlv_atomic_update_fifo(struct intel_atomic_state *state,
 				   struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	struct intel_uncore *uncore = &dev_priv->uncore;
 	const struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	const struct vlv_fifo_state *fifo_state =
@@ -1893,7 +1891,6 @@ static void vlv_atomic_update_fifo(struct intel_atomic_state *state,
 	 * intel_pipe_update_start() has already disabled interrupts
 	 * for us, so a plain spin_lock() is sufficient here.
 	 */
-	spin_lock(&uncore->lock);
 
 	switch (crtc->pipe) {
 	case PIPE_A:
@@ -1952,8 +1949,6 @@ static void vlv_atomic_update_fifo(struct intel_atomic_state *state,
 	}
 
 	intel_de_read_fw(display, DSPARB(display));
-
-	spin_unlock(&uncore->lock);
 }
 
 #undef VLV_FIFO
-- 
2.51.0

