Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33C3577F6E1
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Aug 2023 14:54:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D555E10E478;
	Thu, 17 Aug 2023 12:54:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2F7910E470
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Aug 2023 12:54:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692276870; x=1723812870;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4aubtgAwyp1BGH2c8+6MSgzzKUChaUefviqDUM8+yXo=;
 b=H1uqs14XOT7K55R+opOSN5OTmuJnQqvd6gz8/Bn38uowod/bU0ND/y28
 ij59vkzlFXdZOC2e8Ro8BeXVrYd3IKpn+0KKaXkp0UJgAzqf/vNChEQnO
 Cl+7rGODwor6ar9/72fe+Jz5VylVG9C+XoZoTfYpsklv2sh7XFc+7NrT8
 snfs1kxM/fQFMRUygpYwa7OAzUPerWT0Ea6XzrXkZ16kY4+p2AY23iS1Y
 Qkwqtmgri+ef+gpFNYvSFCzd5S9m3HdiYfDda3fx8C2ubzY+rQfHkEls/
 LCTUr6uRmaQSJ2be5JOxnRZ3wo4jVL+nNZnPqcXhCAsDSRnhY8If8MuwQ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="357762362"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="357762362"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 05:54:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="769632054"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="769632054"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orsmga001.jf.intel.com with ESMTP; 17 Aug 2023 05:54:28 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Aug 2023 18:20:06 +0530
Message-Id: <20230817125007.2681331-3-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230817125007.2681331-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20230817125007.2681331-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/display: Configure and initialize
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
Cc: jyri.sarha@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Initialize the source audio capabilities in crtc_state
property by setting them to their maximum supported values,
including max_channel and max_frequency. This allows for the
calculation of audio source capabilities with respect to
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

--v3:
- Move defines to intel_audio.c.
- use consistent naming convention for rate and channel.
- declare num_of_channel and aud_rate separately.
- Declare index value outside of for loop.
- Move Bandwidth calculation to intel_Audio.c as it is common for both
DP and HDMI. Also use static.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c    | 38 +++++++++++++++++++
 .../drm/i915/display/intel_display_types.h    |  6 +++
 2 files changed, 44 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index e20ffc8e9654..79377e33a59b 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -64,6 +64,9 @@
  * struct &i915_audio_component_audio_ops @audio_ops is called from i915 driver.
  */
 
+#define AUDIO_SAMPLE_CONTAINER_SIZE	32
+#define MAX_CHANNEL_COUNT		8
+
 struct intel_audio_funcs {
 	void (*audio_codec_enable)(struct intel_encoder *encoder,
 				   const struct intel_crtc_state *crtc_state,
@@ -770,6 +773,39 @@ void intel_audio_sdp_split_update(struct intel_encoder *encoder,
 			     crtc_state->sdp_split_enable ? AUD_ENABLE_SDP_SPLIT : 0);
 }
 
+static int calc_audio_bw(int channel_count, int rate)
+{
+	int bandwidth = channel_count * rate * AUDIO_SAMPLE_CONTAINER_SIZE;
+	return bandwidth;
+}
+
+static void calc_audio_config_params(struct intel_crtc_state *pipe_config)
+{
+	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
+	int channel_count;
+	int index, rate[] = { 192000, 176000, 96000, 88000, 48000, 44100, 32000 };
+	int audio_req_bandwidth, available_blank_bandwidth, vblank, hblank;
+
+	hblank = adjusted_mode->htotal - adjusted_mode->hdisplay;
+	vblank = adjusted_mode->vtotal - adjusted_mode->vdisplay;
+	available_blank_bandwidth = hblank * vblank *
+				    drm_mode_vrefresh(adjusted_mode) * pipe_config->pipe_bpp;
+	for (channel_count = MAX_CHANNEL_COUNT; channel_count > 0; channel_count--) {
+		for (index = 0; index < ARRAY_SIZE(rate); index++) {
+			audio_req_bandwidth = calc_audio_bw(channel_count,
+							    rate[index]);
+			if (audio_req_bandwidth < available_blank_bandwidth) {
+				pipe_config->audio.max_rate = rate[index];
+				pipe_config->audio.max_channel_count = channel_count;
+				return;
+			}
+		}
+	}
+
+	pipe_config->audio.max_rate = 0;
+	pipe_config->audio.max_channel_count = 0;
+}
+
 bool intel_audio_compute_config(struct intel_encoder *encoder,
 				struct intel_crtc_state *crtc_state,
 				struct drm_connector_state *conn_state)
@@ -791,6 +827,8 @@ bool intel_audio_compute_config(struct intel_encoder *encoder,
 
 	crtc_state->eld[6] = drm_av_sync_delay(connector, adjusted_mode) / 2;
 
+	calc_audio_config_params(crtc_state);
+
 	return true;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index ebd147180a6e..8815837a95a6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1131,6 +1131,12 @@ struct intel_crtc_state {
 
 	struct {
 		bool has_audio;
+
+		/* Audio rate in Hz */
+		int max_rate;
+
+		/* Number of audio channels */
+		int max_channel_count;
 	} audio;
 
 	/*
-- 
2.25.1

