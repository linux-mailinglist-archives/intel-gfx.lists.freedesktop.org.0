Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2793927717A
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Sep 2020 14:49:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8FB76EAF0;
	Thu, 24 Sep 2020 12:49:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C1FB6E408
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Sep 2020 12:49:11 +0000 (UTC)
IronPort-SDR: oL/S+tE4d4mb3US+BBzcL3VfZ4gNB2d3chbRTIqpTfY1Q1X/dL+tjvgD2bWboX3F75nyacfJLF
 jNwhupTKj6LQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9753"; a="160480088"
X-IronPort-AV: E=Sophos;i="5.77,297,1596524400"; d="scan'208";a="160480088"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2020 05:49:11 -0700
IronPort-SDR: Qbw0IfXXOAz4B+n7RFieEC1NRFT+jIuv4oJ8fiE2kocoE5rYU6tNgEL7EpfBMDHyfhsidL/Duh
 crlSReRxmByA==
X-IronPort-AV: E=Sophos;i="5.77,297,1596524400"; d="scan'208";a="486889794"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 24 Sep 2020 05:49:09 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Sep 2020 18:12:08 +0530
Message-Id: <20200924124209.17916-5-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
In-Reply-To: <20200924124209.17916-1-vandita.kulkarni@intel.com>
References: <20200924124209.17916-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [V14 4/5] drm/i915/dsi: Initiate frame request in cmd
 mode
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

In TE Gate mode or TE NO_GATE mode on every flip
we need to set the frame update request bit.
After this  bit is set transcoder hardware will
automatically send the frame data to the panel
in case of TE NO_GATE mode, where it sends after
it receives the TE event in case of TE_GATE mode.
Once the frame data is sent to the panel, we see
the frame counter updating.

v2: Use intel_de_read/write

v3: remove the usage of private_flags

v4: Use icl_dsi in func names if non static,
    fix code formatting issues. (Jani)

v5: Send frame update request at the beginning of
    pipe_update_end, use crtc_state mode_flags (Ville)

Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c      | 26 +++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dsi.h    |  1 +
 drivers/gpu/drm/i915/display/intel_sprite.c |  7 ++++++
 3 files changed, 34 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 2789020e20db..fe946a2e2082 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -205,6 +205,32 @@ static int dsi_send_pkt_payld(struct intel_dsi_host *host,
 	return 0;
 }
 
+void icl_dsi_frame_update(struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	u32 tmp, mode_flags;
+	enum port port;
+
+	mode_flags = crtc_state->mode_flags;
+
+	/*
+	 * case 1 also covers dual link
+	 * In case of dual link, frame update should be set on
+	 * DSI_0
+	 */
+	if (mode_flags & I915_MODE_FLAG_DSI_USE_TE0)
+		port = PORT_A;
+	else if (mode_flags & I915_MODE_FLAG_DSI_USE_TE1)
+		port = PORT_B;
+	else
+		return;
+
+	tmp = intel_de_read(dev_priv, DSI_CMD_FRMCTL(port));
+	tmp |= DSI_FRAME_UPDATE_REQUEST;
+	intel_de_write(dev_priv, DSI_CMD_FRMCTL(port), tmp);
+}
+
 static void dsi_program_swing_and_deemphasis(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
diff --git a/drivers/gpu/drm/i915/display/intel_dsi.h b/drivers/gpu/drm/i915/display/intel_dsi.h
index 19f78a4022d3..625f2f1ae061 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi.h
+++ b/drivers/gpu/drm/i915/display/intel_dsi.h
@@ -167,6 +167,7 @@ static inline u16 intel_dsi_encoder_ports(struct intel_encoder *encoder)
 
 /* icl_dsi.c */
 void icl_dsi_init(struct drm_i915_private *dev_priv);
+void icl_dsi_frame_update(struct intel_crtc_state *crtc_state);
 
 /* intel_dsi.c */
 int intel_dsi_bitrate(const struct intel_dsi *intel_dsi);
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index 63040cb0d4e1..eaee29e0f535 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -47,6 +47,7 @@
 #include "intel_frontbuffer.h"
 #include "intel_pm.h"
 #include "intel_psr.h"
+#include "intel_dsi.h"
 #include "intel_sprite.h"
 
 int intel_usecs_to_scanlines(const struct drm_display_mode *adjusted_mode,
@@ -202,6 +203,12 @@ void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state)
 
 	trace_intel_pipe_update_end(crtc, end_vbl_count, scanline_end);
 
+	/*
+	 * Incase of mipi dsi command mode, we need to set frame update
+	 * request for every commit.
+	 */
+	icl_dsi_frame_update(new_crtc_state);
+
 	/* We're still in the vblank-evade critical section, this can't race.
 	 * Would be slightly nice to just grab the vblank count and arm the
 	 * event outside of the critical section - the spinlock might spin for a
-- 
2.21.0.5.gaeb582a

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
