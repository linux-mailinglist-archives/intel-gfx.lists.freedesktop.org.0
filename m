Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E95E274386
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Sep 2020 15:52:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D3D36E882;
	Tue, 22 Sep 2020 13:51:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69E606E881
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Sep 2020 13:51:37 +0000 (UTC)
IronPort-SDR: WIEmjHfl6SnQHYYagButXy1o9Ds/MfbStgcYB9P0NHMUUyhZsLFkRgtxzDhoov+zyHHLtkWFyG
 4kORLf2sX7xg==
X-IronPort-AV: E=McAfee;i="6000,8403,9751"; a="148267804"
X-IronPort-AV: E=Sophos;i="5.77,290,1596524400"; d="scan'208";a="148267804"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2020 06:51:32 -0700
IronPort-SDR: EM6di0FLyWfy28rN33yDfCvAjBGdT8NNGqjBcBnKm+5ui0RpjUxVgus6olN0d8WjpKOD1FuQtC
 LO0tPjrN1KYA==
X-IronPort-AV: E=Sophos;i="5.77,290,1596524400"; d="scan'208";a="485966921"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 22 Sep 2020 06:51:30 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Sep 2020 19:14:26 +0530
Message-Id: <20200922134426.9840-6-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
In-Reply-To: <20200922134426.9840-1-vandita.kulkarni@intel.com>
References: <20200922134426.9840-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [V13 5/5] drm/i915/dsi: Enable software vblank counter
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In case of DSI cmd mode, we get hw vblank counter
updated after the TE comes in, if we try to read
the hw vblank counter in te handler we wouldnt have
the udpated vblank counter yet.
This will lead to a state where we would send the
vblank event to the user space in the next te,
though the frame update would have completed in
the first TE duration itself.
Hence switch to using software timestamp based
vblank counter.

Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 11 +++++++++++
 drivers/gpu/drm/i915/i915_irq.c              |  4 ++++
 2 files changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c4f331f2af45..8b9e59e52708 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1808,6 +1808,17 @@ enum pipe intel_crtc_pch_transcoder(struct intel_crtc *crtc)
 static u32 intel_crtc_max_vblank_count(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	u32 flags = crtc->mode_flags;
+
+	/*
+	 * From Gen 11, In case of dsi cmd mode, frame counter wouldnt
+	 * have updated at the beginning of TE, if we want to use
+	 * the hw counter, then we would find it updated in only
+	 * the next TE, hence switching to sw counter.
+	 */
+	if (flags & (I915_MODE_FLAG_DSI_USE_TE0 | I915_MODE_FLAG_DSI_USE_TE1))
+		return 0;
 
 	/*
 	 * On i965gm the hardware frame counter reads
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index c2e4b227bdf3..634c60befe7e 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -682,8 +682,12 @@ u32 i915_get_vblank_counter(struct drm_crtc *crtc)
 u32 g4x_get_vblank_counter(struct drm_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
+	struct drm_vblank_crtc *vblank = &dev_priv->drm.vblank[drm_crtc_index(crtc)];
 	enum pipe pipe = to_intel_crtc(crtc)->pipe;
 
+	if (!vblank->max_vblank_count)
+		return 0;
+
 	return I915_READ(PIPE_FRMCOUNT_G4X(pipe));
 }
 
-- 
2.21.0.5.gaeb582a

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
