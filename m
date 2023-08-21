Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 285AE782DBE
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Aug 2023 18:04:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6941810E287;
	Mon, 21 Aug 2023 16:04:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BC4A10E281
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Aug 2023 16:04:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692633865; x=1724169865;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IP4a5cQGBfZlkz4H7xVF/9oDT0HBLjyWF9fJ49hnhDQ=;
 b=N/0erUL9Nbhd7wAarFUZ3Qyhc+QP0HgHai354lRAByfKUYH7ZbhS8K37
 G7jR62HVkcAsbzUUSOB3KWReS1J/0TaxvrwVD6nNJ1DY7O1gY+xPLpHts
 gPkHfFTIzkto5m+tIm6rsk9kay3C8i5hZqDw/30MOJEE+PUIT6CWHvH9M
 MfmfxaCtkb7JJaeij9yhxZzRzac5FUu0UngFWnq3fun6T2mt+SOYWaPFt
 c+CfksZE2uFRpeH+yVeqoJGGD15n+XCY+T0zbIUAtdoNNbaDmaMQGf5Zc
 Ry85fjzZLvtqkDR+sw0Bkr1PjZYs/cW5X1Bgqb8RqUox2+jLJDsGYDBZB g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="363799484"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="363799484"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 09:04:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="771012447"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="771012447"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orsmga001.jf.intel.com with ESMTP; 21 Aug 2023 09:04:23 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Aug 2023 21:30:04 +0530
Message-Id: <20230821160004.2821445-4-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230821160004.2821445-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20230821160004.2821445-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/display: Configure and initialize
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Initialize the source audio capabilities in the crtc_state property,
setting them to their maximum supported values for max_channel and
max_rate. This initialization enables the calculation of audio source
capabilities concerning the available mode bandwidth. These
capabilities encompass parameters such as supported rate and
channel configurations.

Additionally, introduces a wrapper function for computing
Short Audio Descriptors (SADs). The wrapper function incorporates
logic for determining supported rates and channels according to the
capabilities of the audio source. It returns a set of SADs that are
compatible with the audio source's capabilities.

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

--v10:
- Merged patch 2 and 3 to deduplicate function calls.
- Instead using Calibrate and calculated functions separately,
removed code duplication and merged functions.[Nikula, Jani]
- Remove magic value for SAD Channel mask. [Nikula, Jani]
- Corrected rate values based on HDMI Spec [Nikula, Jani]
- Update drm function to extract SAD from ELD [Nikula, Jani]

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c    | 127 ++++++++++++++++++
 .../drm/i915/display/intel_display_types.h    |   6 +
 2 files changed, 133 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index e20ffc8e9654..2584096d80a4 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -64,6 +64,10 @@
  * struct &i915_audio_component_audio_ops @audio_ops is called from i915 driver.
  */
 
+#define AUDIO_SAMPLE_CONTAINER_SIZE	32
+#define MAX_CHANNEL_COUNT		8
+#define ELD_SAD_CHANNELS_MASK		0x7
+
 struct intel_audio_funcs {
 	void (*audio_codec_enable)(struct intel_encoder *encoder,
 				   const struct intel_crtc_state *crtc_state,
@@ -770,6 +774,127 @@ void intel_audio_sdp_split_update(struct intel_encoder *encoder,
 			     crtc_state->sdp_split_enable ? AUD_ENABLE_SDP_SPLIT : 0);
 }
 
+static int sad_to_channels(const u8 *sad)
+{
+	return 1 + (sad[0] & 0x7);
+}
+
+static int calc_audio_bw(int channel_count, int rate)
+{
+	int bandwidth = channel_count * rate * AUDIO_SAMPLE_CONTAINER_SIZE;
+	return bandwidth;
+}
+
+static void calc_and_calibrate_audio_config_params(struct intel_crtc_state *pipe_config,
+						   int channel, bool calibration_required)
+{
+	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
+	int channel_count;
+	int index, rate[] = { 192000, 176400, 96000, 88200, 48000, 44100, 32000 };
+	int audio_req_bandwidth, available_blank_bandwidth, vblank, hblank;
+
+	hblank = adjusted_mode->htotal - adjusted_mode->hdisplay;
+	vblank = adjusted_mode->vtotal - adjusted_mode->vdisplay;
+	available_blank_bandwidth = hblank * vblank *
+		drm_mode_vrefresh(adjusted_mode) * pipe_config->pipe_bpp;
+
+	/*
+	 * Expected calibration of channels and respective rates,
+	 * based on MAX_CHANNEL_COUNT. First calculate channel and
+	 * rate based on Maximum that source can compute, letter
+	 * with respect to sink's maximum channel capacity, calibrate
+	 * supportive rates.
+	 */
+	if (calibration_required) {
+		channel_count = channel;
+		for (index = 0; index < ARRAY_SIZE(rate); index++) {
+			audio_req_bandwidth = calc_audio_bw(channel_count,
+							    rate[index]);
+			if (audio_req_bandwidth < available_blank_bandwidth) {
+				pipe_config->audio.max_rate = rate[index];
+				pipe_config->audio.max_channel_count = channel_count;
+				return;
+			}
+		}
+	} else {
+		for (channel_count = channel; channel_count > 0; channel_count--) {
+			for (index = 0; index < ARRAY_SIZE(rate); index++) {
+				audio_req_bandwidth = calc_audio_bw(channel_count, rate[index]);
+				if (audio_req_bandwidth < available_blank_bandwidth) {
+					pipe_config->audio.max_rate = rate[index];
+					pipe_config->audio.max_channel_count = channel_count;
+					return;
+				}
+			}
+		}
+	}
+
+	pipe_config->audio.max_rate = 0;
+	pipe_config->audio.max_channel_count = 0;
+}
+
+static int get_supported_freq_mask(struct intel_crtc_state *crtc_state)
+{
+	int rate[] = { 32000, 44100, 48000, 88200, 96000, 176400, 192000 };
+	int mask = 0, index;
+
+	for (index = 0; index < ARRAY_SIZE(rate); index++) {
+		if (rate[index] > crtc_state->audio.max_rate)
+			break;
+
+		mask |= 1 << index;
+
+		if (crtc_state->audio.max_rate != rate[index])
+			continue;
+	}
+
+	return mask;
+}
+
+static void intel_audio_compute_eld(struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	u8 *eld, *sad;
+	int index, mask = 0;
+
+	eld = crtc_state->eld;
+	if (!eld)
+		return;
+
+	sad = drm_extract_sad_from_eld(eld);
+	if (!sad)
+		return;
+
+	calc_and_calibrate_audio_config_params(crtc_state, MAX_CHANNEL_COUNT,
+					       false);
+
+	mask = get_supported_freq_mask(crtc_state);
+	for (index = 0; index < drm_eld_sad_count(eld); index++, sad += 3) {
+		/*
+		 * Respect source restricitions. Limit capabilities to a subset that is
+		 * supported both by the source and the sink.
+		 */
+		if (sad_to_channels(sad) >= crtc_state->audio.max_channel_count) {
+			sad[0] &= ~ELD_SAD_CHANNELS_MASK;
+			sad[0] |= crtc_state->audio.max_channel_count - 1;
+			drm_dbg_kms(&i915->drm, "Channel count is limited to %d\n",
+				    crtc_state->audio.max_channel_count - 1);
+		} else {
+			/*
+			 * calibrate rate when, sink supported channel
+			 * count is slight less than max supported
+			 * channel count.
+			 */
+			calc_and_calibrate_audio_config_params(crtc_state,
+							       sad_to_channels(sad),
+							       true);
+			mask = get_supported_freq_mask(crtc_state);
+		}
+
+		sad[1] &= mask;
+	}
+}
+
 bool intel_audio_compute_config(struct intel_encoder *encoder,
 				struct intel_crtc_state *crtc_state,
 				struct drm_connector_state *conn_state)
@@ -791,6 +916,8 @@ bool intel_audio_compute_config(struct intel_encoder *encoder,
 
 	crtc_state->eld[6] = drm_av_sync_delay(connector, adjusted_mode) / 2;
 
+	intel_audio_compute_eld(crtc_state);
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

