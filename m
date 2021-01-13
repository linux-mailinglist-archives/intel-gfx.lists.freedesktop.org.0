Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C1402F54C3
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jan 2021 23:05:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58F626EC77;
	Wed, 13 Jan 2021 22:05:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 151B36EC6F
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jan 2021 22:05:34 +0000 (UTC)
IronPort-SDR: /r0WBRaAL2xrievbiu/dDCsa2oaCp7D7AfThx/J24cP+1mGBVLbmAzqBkWp+O6U4fAz0yAFEM8
 91jos/gPcWvQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9863"; a="165950109"
X-IronPort-AV: E=Sophos;i="5.79,345,1602572400"; d="scan'208";a="165950109"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2021 14:05:33 -0800
IronPort-SDR: qExKJ0ruqZy9PgScZYvwB9Sd/44B9ANUYo0NMEUYGSXz3/XlmrCIiOo5rwibdNHtoBIOmrZNm8
 F/HvllDeNs0Q==
X-IronPort-AV: E=Sophos;i="5.79,345,1602572400"; d="scan'208";a="400696581"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 13 Jan 2021 14:05:32 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Jan 2021 14:09:31 -0800
Message-Id: <20210113220935.4151-15-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20210113220935.4151-1-manasi.d.navare@intel.com>
References: <20210113220935.4151-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 14/18] drm/i915/display: Add HW state readout
 for VRR
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

This functions gets the VRR config from the VRR registers
to match the crtc state variables for VRR.

v2:
* Rebase (Manasi)
* Use HAS_VRR (Jani N)

v3:
* Get pipeline_full, flipline (Ville)

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  3 +++
 drivers/gpu/drm/i915/display/intel_vrr.c     | 20 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vrr.h     |  3 +++
 3 files changed, 26 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 22bda7a55cc0..a1c011033803 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -10987,6 +10987,9 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 		intel_get_transcoder_timings(crtc, pipe_config);
 	}
 
+	if (HAS_VRR(dev_priv))
+		intel_vrr_get_config(crtc, pipe_config);
+
 	intel_get_pipe_src_size(crtc, pipe_config);
 
 	if (IS_HASWELL(dev_priv)) {
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 501c8d9142da..5dc6d578760a 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -147,3 +147,23 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 	intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder), 0);
 	intel_de_write(dev_priv, TRANS_PUSH(cpu_transcoder), 0);
 }
+
+void intel_vrr_get_config(struct intel_crtc *crtc,
+			  struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	u32 trans_vrr_ctl;
+
+	trans_vrr_ctl = intel_de_read(dev_priv, TRANS_VRR_CTL(cpu_transcoder));
+	crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
+	if (!crtc_state->vrr.enable)
+		return;
+
+	if (trans_vrr_ctl & VRR_CTL_PIPELINE_FULL_OVERRIDE)
+		crtc_state->vrr.pipeline_full = REG_FIELD_GET(VRR_CTL_PIPELINE_FULL_MASK, trans_vrr_ctl);
+	if (trans_vrr_ctl & VRR_CTL_FLIP_LINE_EN)
+		crtc_state->vrr.flipline = intel_de_read(dev_priv, TRANS_VRR_FLIPLINE(cpu_transcoder)) + 1;
+	crtc_state->vrr.vmax = intel_de_read(dev_priv, TRANS_VRR_VMAX(cpu_transcoder)) + 1;
+	crtc_state->vrr.vmin = intel_de_read(dev_priv, TRANS_VRR_VMIN(cpu_transcoder)) + 1;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 43379c2bd4d9..7610051edad2 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -15,6 +15,7 @@ struct intel_crtc;
 struct intel_crtc_state;
 struct intel_dp;
 struct intel_encoder;
+struct intel_crtc;
 
 bool intel_vrr_is_capable(struct drm_connector *connector);
 void intel_vrr_check_modeset(struct intel_atomic_state *state);
@@ -24,5 +25,7 @@ void intel_vrr_enable(struct intel_encoder *encoder,
 		      const struct intel_crtc_state *crtc_state);
 void intel_vrr_send_push(const struct intel_crtc_state *crtc_state);
 void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state);
+void intel_vrr_get_config(struct intel_crtc *crtc,
+			  struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_VRR_H__ */
-- 
2.19.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
