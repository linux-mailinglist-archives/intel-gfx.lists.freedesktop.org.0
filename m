Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDBF7730F53
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jun 2023 08:30:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFE3510E483;
	Thu, 15 Jun 2023 06:30:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C4E710E482
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jun 2023 06:30:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686810636; x=1718346636;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oetKf0+C/GFZAIGI2SBXBUg8+zAsUZ43QcNx7I+vTYI=;
 b=mIJ1aSTR5bzxx+8WDFoK8rSSEQcR/LCUx5RAzfA1LVU2+1PGn/qaIZv/
 k0BBH5D1rkvOoprNB58TF9aH1MnDkT82tB8y4eogksqTHEgncTUjLpxHK
 gtzy17ftpoldSE9DUQHVGxPfU/oy/cO8DxpHIkzm7RjbOcEqLk1gCMHpQ
 nw3Dou6C8B7Wwx1eQjFRyTKWJSIIzy3A9tXk7RdtnOH00dKzHlbN0Ls0y
 J0/DCyYeDXe63XPFT8Tl59SBKBUKuhNzIFUOgSe8+u/N5whSDZHwt/z4Q
 y8pRgnVvjIWNK0VGvXU/Ue5q1aVoVW4Dvr/5f6fiUzzVv2xmqxKyG2roc g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="348493405"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="348493405"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2023 23:30:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="1042514885"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="1042514885"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmsmga005.fm.intel.com with ESMTP; 14 Jun 2023 23:30:34 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Jun 2023 12:01:36 +0530
Message-Id: <20230615063137.2219870-3-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230615063137.2219870-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20230615063137.2219870-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 2/3] drm/i915/display: Configure and initialize
 HDMI audio capabilities
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

Initialize the source audio capabilities for HDMI in crtc_state
property by setting them to their maximum supported values,
including max_channel and max_frequency. This allows for the
calculation of HDMI audio source capabilities with respect to
the available mode bandwidth. These capabilities encompass
parameters such as supported frequency and channel configurations.

--v1:
- Refactor max_channel and max_rate to this commit as it is being
initialised here
- Remove call for intel_audio_compute_eld to avoid any regression while
merge. instead call it in different commit when it is defined.
- Use int instead of unsigned int for max_channel and max_frequecy
- Update commit message and header

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  6 ++++
 drivers/gpu/drm/i915/display/intel_hdmi.c     | 35 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_hdmi.h     |  1 +
 3 files changed, 42 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index ebd147180a6e..74eee87d2df1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1131,6 +1131,12 @@ struct intel_crtc_state {
 
 	struct {
 		bool has_audio;
+
+		/* Audio rate in Hz */
+		int max_frequency;
+
+		/* Number of audio channels */
+		int max_channel;
 	} audio;
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 32157bef2eef..0188a600f9f5 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2277,6 +2277,40 @@ bool intel_hdmi_compute_has_hdmi_sink(struct intel_encoder *encoder,
 		!intel_hdmi_is_cloned(crtc_state);
 }
 
+static unsigned int calc_audio_bw(int channel, int frequency)
+{
+	int bits_per_sample = 32;
+	unsigned int bandwidth = channel * frequency * bits_per_sample;
+	return bandwidth;
+}
+
+void
+intel_hdmi_audio_compute_config(struct intel_crtc_state *pipe_config)
+{
+	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
+	int num_of_channel, aud_rates[7] = {192000, 176000, 96000, 88000, 48000, 44100, 32000};
+	unsigned int audio_req_bandwidth, available_blank_bandwidth, vblank, hblank;
+
+	hblank = adjusted_mode->htotal - adjusted_mode->hdisplay;
+	vblank = adjusted_mode->vtotal - adjusted_mode->vdisplay;
+	available_blank_bandwidth = hblank * vblank *
+				    drm_mode_vrefresh(adjusted_mode) * pipe_config->pipe_bpp;
+	for (num_of_channel = 8; num_of_channel > 0; num_of_channel--) {
+		for (int index = 0; index < 7; index++) {
+			audio_req_bandwidth = calc_audio_bw(num_of_channel,
+							    aud_rates[index]);
+			if (audio_req_bandwidth < available_blank_bandwidth) {
+				pipe_config->audio.max_frequency = aud_rates[index];
+				pipe_config->audio.max_channel = num_of_channel;
+				return;
+			}
+		}
+	}
+
+	pipe_config->audio.max_frequency = 0;
+	pipe_config->audio.max_channel = 0;
+}
+
 int intel_hdmi_compute_config(struct intel_encoder *encoder,
 			      struct intel_crtc_state *pipe_config,
 			      struct drm_connector_state *conn_state)
@@ -2344,6 +2378,7 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
 			pipe_config->hdmi_high_tmds_clock_ratio = true;
 		}
 	}
+	intel_hdmi_audio_compute_config(pipe_config);
 
 	intel_hdmi_compute_gcp_infoframe(encoder, pipe_config,
 					 conn_state);
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h b/drivers/gpu/drm/i915/display/intel_hdmi.h
index 6b39df38d57a..6df303daf348 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.h
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
@@ -27,6 +27,7 @@ void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
 bool intel_hdmi_compute_has_hdmi_sink(struct intel_encoder *encoder,
 				      const struct intel_crtc_state *crtc_state,
 				      const struct drm_connector_state *conn_state);
+void intel_hdmi_audio_compute_config(struct intel_crtc_state *pipe_config);
 int intel_hdmi_compute_config(struct intel_encoder *encoder,
 			      struct intel_crtc_state *pipe_config,
 			      struct drm_connector_state *conn_state);
-- 
2.25.1

