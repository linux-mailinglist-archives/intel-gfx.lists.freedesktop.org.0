Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC131741687
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jun 2023 18:33:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E0BE10E371;
	Wed, 28 Jun 2023 16:33:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF07610E37F
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Jun 2023 16:33:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687969987; x=1719505987;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4aubtgAwyp1BGH2c8+6MSgzzKUChaUefviqDUM8+yXo=;
 b=J99+CYB+Qgq0qChOKQq2WNhunbIgHsCcSi0MY+sWsHs70eVr6OA6oxzR
 XHK4iD62UB71DE9LoE1lZhxL/TF3iJ4+3Cduo7EexOQKPJjVKa1bl98vb
 CvwXxSj5/jogmi5wx8/hRhrh1uydVbgh6lI4C10HAkGrr7DyBBe/hZa6B
 z00j+ERnk0c5y/wRBAGq09YPZF7nNcsgS/4/m0snvh9k6wxCebIdzDxFb
 eQwwMJZQwny3MR3c2El11O68YSeOji556NiyG1yS6e7ETMdyuqFdXG7GZ
 CZGNr+bttgKlK05FTegCMM1/gxDH7v9FgDgOY2XUhhg9izMHfGk2la+b+ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10755"; a="346661876"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="346661876"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2023 09:32:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10755"; a="1047482268"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="1047482268"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmsmga005.fm.intel.com with ESMTP; 28 Jun 2023 09:32:46 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Jun 2023 22:03:58 +0530
Message-Id: <20230628163359.2879668-3-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230628163359.2879668-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20230628163359.2879668-1-mitulkumar.ajitkumar.golani@intel.com>
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

