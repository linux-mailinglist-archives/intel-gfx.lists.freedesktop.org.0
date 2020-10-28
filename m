Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EABA529D30C
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Oct 2020 22:40:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 003A26E5C3;
	Wed, 28 Oct 2020 21:40:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E89AF6E5C1
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Oct 2020 21:40:44 +0000 (UTC)
IronPort-SDR: u+QSOemrxN9a63k6rdRlR4vun3QH4yZhVpZaSrax1EBtyQHPnlBptY+2KqaJWDvmVNhBsEpdnl
 nqU9n0c5yliw==
X-IronPort-AV: E=McAfee;i="6000,8403,9788"; a="156115069"
X-IronPort-AV: E=Sophos;i="5.77,428,1596524400"; d="scan'208";a="156115069"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2020 14:40:43 -0700
IronPort-SDR: MR+PvyzUaoq87m59JFDkexvhgRkbkhW/wsp5x0SapfdQltWlh8hsUaTehA5EVmjguIyPSPYSeQ
 s9fHNCjfNFdg==
X-IronPort-AV: E=Sophos;i="5.77,428,1596524400"; d="scan'208";a="351171540"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 28 Oct 2020 14:40:42 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Oct 2020 14:42:29 -0700
Message-Id: <20201028214232.5631-3-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20201028214232.5631-1-manasi.d.navare@intel.com>
References: <20201028214232.5631-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 3/6] drm/i915: Add pipe_mode readout in
 verify_crtc_state
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This adds new pipe_mode readout in verify_crtc_state()
Here it is just adjusted_mode without bigjoiner.
Bigjoiner pipe_mode readout will be added later.

While at it, create a separate intel_encoder_get_config()
function that calls encoder->get_config hook.
This is needed so that later we can add beigjoienr related
readout here.

Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 756683b2a5be..50522c8a6ff0 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8220,6 +8220,16 @@ static u32 ilk_pipe_pixel_rate(const struct intel_crtc_state *crtc_state)
 		       pfit_w * pfit_h);
 }
 
+static void intel_encoder_get_config(struct intel_encoder *encoder,
+				     struct intel_crtc_state *crtc_state)
+{
+	struct drm_display_mode *pipe_mode = &crtc_state->hw.pipe_mode;
+
+	encoder->get_config(encoder, crtc_state);
+
+	*pipe_mode = crtc_state->hw.adjusted_mode;
+}
+
 static void intel_crtc_compute_pixel_rate(struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
@@ -12473,7 +12483,7 @@ intel_encoder_current_mode(struct intel_encoder *encoder)
 		return NULL;
 	}
 
-	encoder->get_config(encoder, crtc_state);
+	intel_encoder_get_config(encoder, crtc_state);
 
 	intel_mode_from_pipe_config(mode, crtc_state);
 
@@ -14522,7 +14532,7 @@ verify_crtc_state(struct intel_crtc *crtc,
 				pipe_name(pipe));
 
 		if (active)
-			encoder->get_config(encoder, pipe_config);
+			intel_encoder_get_config(encoder, pipe_config);
 	}
 
 	intel_crtc_compute_pixel_rate(pipe_config);
@@ -18837,7 +18847,7 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
 			crtc_state = to_intel_crtc_state(crtc->base.state);
 
 			encoder->base.crtc = &crtc->base;
-			encoder->get_config(encoder, crtc_state);
+			intel_encoder_get_config(encoder, crtc_state);
 			if (encoder->sync_state)
 				encoder->sync_state(encoder, crtc_state);
 		} else {
-- 
2.19.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
