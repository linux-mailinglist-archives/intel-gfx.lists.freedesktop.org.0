Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C265A26BBB4
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Sep 2020 07:03:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 432EF6E98C;
	Wed, 16 Sep 2020 05:03:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B625A6E984
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Sep 2020 05:03:28 +0000 (UTC)
IronPort-SDR: MH84CGuNhllTgA/KrNWBxfBlgmHsRNgcgyqniKWbCAFKK61dQPoimEQTqk8iMRWXGQOt1Y4oWx
 0PtJg+Ope9xw==
X-IronPort-AV: E=McAfee;i="6000,8403,9745"; a="160333259"
X-IronPort-AV: E=Sophos;i="5.76,431,1592895600"; d="scan'208";a="160333259"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2020 22:03:27 -0700
IronPort-SDR: MBiSkzYU3usH3xWgkgXBcgc7IXQOICSYiVN0x4aQWe5mP/VjcB1I6eJJHiL4X7Qg5MMC4eC6Wn
 cXBsoqoLpXvA==
X-IronPort-AV: E=Sophos;i="5.76,431,1592895600"; d="scan'208";a="306911850"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 15 Sep 2020 22:03:23 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Sep 2020 10:26:48 +0530
Message-Id: <20200916045648.21837-5-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
In-Reply-To: <20200916045648.21837-1-vandita.kulkarni@intel.com>
References: <20200916045648.21837-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [V10 4/4] drm/i915/dsi: Initiate fame request in cmd
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

Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c       | 26 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_display.c | 10 ++++++++
 drivers/gpu/drm/i915/display/intel_dsi.h     |  1 +
 3 files changed, 37 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 2789020e20db..8c8b5a195b75 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -205,6 +205,32 @@ static int dsi_send_pkt_payld(struct intel_dsi_host *host,
 	return 0;
 }
 
+void gen11_dsi_frame_update(struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	u32 tmp, flags;
+	enum port port;
+
+	flags = crtc->mode_flags;
+
+	/*
+	 * case 1 also covers dual link
+	 * In case of dual link, frame update should be set on
+	 * DSI_0
+	 */
+	if (flags & I915_MODE_FLAG_DSI_USE_TE0)
+		port = PORT_A;
+	else if (flags & I915_MODE_FLAG_DSI_USE_TE1)
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
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f862403388f6..11a20bf2255f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -15621,6 +15621,16 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 		intel_set_cdclk_post_plane_update(state);
 	}
 
+	/*
+	 * Incase of mipi dsi command mode, we need to set frame update
+	 * for every commit
+	 */
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
+		if (INTEL_GEN(dev_priv) >= 11 &&
+		    intel_crtc_has_type(new_crtc_state, INTEL_OUTPUT_DSI))
+			if (new_crtc_state->hw.active)
+				icl_dsi_frame_update(new_crtc_state);
+
 	/* FIXME: We should call drm_atomic_helper_commit_hw_done() here
 	 * already, but still need the state for the delayed optimization. To
 	 * fix this:
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
-- 
2.21.0.5.gaeb582a

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
