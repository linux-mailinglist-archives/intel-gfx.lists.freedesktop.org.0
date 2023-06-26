Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 410ED73E589
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jun 2023 18:45:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24DAC10E089;
	Mon, 26 Jun 2023 16:44:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A06710E089
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jun 2023 16:44:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687797894; x=1719333894;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5BlALMh28A/zf4jPep7IIZs2er2ofWmZYNSDiwe6XqM=;
 b=J++cDssxJOO3mhse3Ezm81Y9ordvETf8VxCuipMK8vLxCXCQnk/pOK3L
 G5d2hu4sNBsRvpAayuG5buXARalzZG3/KiqUoBITyDb7f/Qag1LpIKxgd
 70+wil30hjobVDsCXwJuWL2ZyjYPMCirNZ+QZXydrVGJtsUIaVqTsZl43
 HzVQKLJEXUV3on8+n0tYWkoYrCVfM/pdZtJv4RZ7KD8E+98kkOmeTjGHv
 A5WMpn5c48XMT6FQADYYNr78sFzuOS7bt/lilrL+4Mb1O/9gdrzSAvte7
 0ALXOJozdsbnhRL/c9c2EeDpn5lRKElF7OxdYzxrRUM3Flm4PDmtnp0fP g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="341658774"
X-IronPort-AV: E=Sophos;i="6.01,160,1684825200"; d="scan'208";a="341658774"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 09:44:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="806129492"
X-IronPort-AV: E=Sophos;i="6.01,160,1684825200"; d="scan'208";a="806129492"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by FMSMGA003.fm.intel.com with ESMTP; 26 Jun 2023 09:44:52 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Jun 2023 22:16:03 +0530
Message-Id: <20230626164604.2759876-3-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230626164604.2759876-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20230626164604.2759876-1-mitulkumar.ajitkumar.golani@intel.com>
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

--v2:
- Use signed instead of unsigned variables.
- Avoid using magic numbers and give them proper name.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.h    |  3 ++
 .../drm/i915/display/intel_display_types.h    |  6 ++++
 drivers/gpu/drm/i915/display/intel_hdmi.c     | 34 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_hdmi.h     |  1 +
 4 files changed, 44 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.h b/drivers/gpu/drm/i915/display/intel_audio.h
index 07d034a981e9..09697c770dbf 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.h
+++ b/drivers/gpu/drm/i915/display/intel_audio.h
@@ -13,6 +13,9 @@ struct drm_i915_private;
 struct intel_crtc_state;
 struct intel_encoder;
 
+#define AUDIO_SAMPLE_CONTAINER_SIZE	32
+#define MAX_CHANNEL_COUNT		8
+
 void intel_audio_hooks_init(struct drm_i915_private *dev_priv);
 bool intel_audio_compute_config(struct intel_encoder *encoder,
 				struct intel_crtc_state *crtc_state,
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
index 32157bef2eef..6a4d477e8a15 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2277,6 +2277,39 @@ bool intel_hdmi_compute_has_hdmi_sink(struct intel_encoder *encoder,
 		!intel_hdmi_is_cloned(crtc_state);
 }
 
+static int calc_audio_bw(int channel, int frequency)
+{
+	int bandwidth = channel * frequency * AUDIO_SAMPLE_CONTAINER_SIZE;
+	return bandwidth;
+}
+
+void
+intel_hdmi_audio_compute_config(struct intel_crtc_state *pipe_config)
+{
+	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
+	int num_of_channel, aud_rates[] = {192000, 176000, 96000, 88000, 48000, 44100, 32000};
+	int audio_req_bandwidth, available_blank_bandwidth, vblank, hblank;
+
+	hblank = adjusted_mode->htotal - adjusted_mode->hdisplay;
+	vblank = adjusted_mode->vtotal - adjusted_mode->vdisplay;
+	available_blank_bandwidth = hblank * vblank *
+				    drm_mode_vrefresh(adjusted_mode) * pipe_config->pipe_bpp;
+	for (num_of_channel = MAX_CHANNEL_COUNT; num_of_channel > 0; num_of_channel--) {
+		for (int index = 0; index < ARRAY_SIZE(aud_rates); index++) {
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
@@ -2344,6 +2377,7 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
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

