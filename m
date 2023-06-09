Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F18F372938B
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jun 2023 10:44:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7611810E667;
	Fri,  9 Jun 2023 08:44:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DF0510E65A
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Jun 2023 08:44:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686300264; x=1717836264;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iqEH6KTC1mnAxkEIgrcpkCPVl2/qXmgXLvtLk8yby5M=;
 b=D1DLW5qIcJNHpdvvrKYn+EPE3P9DVuirXqyldUeVaDlDeGNk9MZzrBK7
 evJh89/BXKV+qpLJZNyTFcSbWJhiIWua5Li7xQMIyQ5LQLzs94cN5esYe
 jQsmYxlHJveLyqJf/LmeDZtICRU758q+a+3nqKDKSH2gEdrQfSaRtl4Xm
 zY7nbInr2M5eM5ZWJ+ruqCLi0lf+TJj+8FSpmkaOfWqdLOzs96Nb3Hyxs
 uu2xPXXXsr1J3bsH5BgeYc9QXLLoVHlrrGMmjQ49adWPsjrrN7jGaJ7Q5
 XWyJTPQ1SiU9WAMg4OTTs0z0U0GOAiaq7mkgiuGFV8WOujkJ1i1+0Q0Gb A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="357553443"
X-IronPort-AV: E=Sophos;i="6.00,228,1681196400"; d="scan'208";a="357553443"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 01:44:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="884501575"
X-IronPort-AV: E=Sophos;i="6.00,228,1681196400"; d="scan'208";a="884501575"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orsmga005.jf.intel.com with ESMTP; 09 Jun 2023 01:44:10 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Jun 2023 14:15:04 +0530
Message-Id: <20230609084504.1929424-5-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230609084504.1929424-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20230609084504.1929424-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 4/4] drm/i915/display: Initialize and compute HDMI
 Audio source cap
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

Initialize the audio capabilities for HDMI by setting them to their
maximum supported values and then call a function to compute these
capabilities into SADs. The audio capabilities for HDMI include
parameters such as supported frequency and channel configurations.
By computing these capabilities into SADs, we can determine which
audio formats are supported.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 37 +++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_hdmi.h |  1 +
 2 files changed, 38 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index aa822ee5fbda..c71110a1a44a 100644
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
+				pipe_config->audio_config.max_frequency = aud_rates[index];
+				pipe_config->audio_config.max_channel = num_of_channel;
+				return;
+			}
+		}
+	}
+
+	pipe_config->audio_config.max_frequency = 0;
+	pipe_config->audio_config.max_channel = 0;
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
@@ -2368,6 +2403,8 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
 		return -EINVAL;
 	}
 
+	intel_audio_compute_eld(pipe_config);
+
 	return 0;
 }
 
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

