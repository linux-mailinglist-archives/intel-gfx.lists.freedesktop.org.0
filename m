Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A680E77F6E2
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Aug 2023 14:54:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BB3410E47B;
	Thu, 17 Aug 2023 12:54:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31CB910E47A
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Aug 2023 12:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692276873; x=1723812873;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rw47ddlwWcMlbfn14xBwg5U2HPRW0YaQlYEH8ijFD+I=;
 b=ZKCdKXKq72lqorwLDsmgLaEFMmjUNIZdyMRy6sCjsR7lSB+Mgiixoztw
 GBiYDszR1/4q9NtZs+od5X+KTxncNh4BSIJntKIBunvgiDEIg1JhaxVCZ
 mxGVfgddpp4RblPYRwT9Me0yOHFAy7C9pQFq6BaKns2W0pzyjmA/b4a/B
 S4ZHtpBnWV2OnM4QyNb4okezjMcO2IZPSTqBaTCxtSHZf6fkpsrsK5xjV
 mU3HDzUIHZDIBM5icFzthZZ7ELQkmlTDRqNE419h/42iuGBEY8i7WprPZ
 CrKUqM9tQZab/1A+O9yAYAHzkIfaCqgTnulFZQp+5lv7XlU/LgE4tNnm4 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="357762366"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="357762366"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 05:54:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="769632057"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="769632057"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orsmga001.jf.intel.com with ESMTP; 17 Aug 2023 05:54:30 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Aug 2023 18:20:07 +0530
Message-Id: <20230817125007.2681331-4-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230817125007.2681331-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20230817125007.2681331-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/display: Add wrapper to Compute SAD
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

Compute SADs that takes into account the supported rate
and channel based on the capabilities of the audio source.
This wrapper function should encapsulate the logic for
determining the supported rate and channel and should
return a set of SADs that are compatible with the source.

--v1:
- call intel_audio_compute_eld in this commit as it is
defined here

--v2:
- Handle case when max frequency is less than 32k.
- remove drm prefix.
- name change for parse_sad to eld_to_sad.

--v3:
- Use signed int wherever required.
- add debug trace when channel is limited.

--v4:
- remove inline from eld_to_sad.
- declare index outside of for loop with int type.
- Correct mask value calculation.
- remove drm_err, instead just return if eld parsing failed.
- remove unncessary typecast
- reduce indentation while parsing sad
- use intel_audio_compute_eld as static and call bandwidth
calculation just before that.

--v9:
- Handling the case when, sink supported channel is less
than max supported. In that case, rate needs to be calibrate
in accordance with available bandwidth.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 107 ++++++++++++++++++++-
 1 file changed, 106 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 79377e33a59b..c90ac2608eef 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -806,6 +806,111 @@ static void calc_audio_config_params(struct intel_crtc_state *pipe_config)
 	pipe_config->audio.max_channel_count = 0;
 }
 
+static void calibrate_audio_config_params(struct intel_crtc_state *pipe_config, int channel)
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
+
+	for (index = 0; index < ARRAY_SIZE(rate); index++) {
+		audio_req_bandwidth = calc_audio_bw(channel_count,
+						    rate[index]);
+		if (audio_req_bandwidth < available_blank_bandwidth) {
+			pipe_config->audio.max_rate = rate[index];
+			pipe_config->audio.max_channel_count = channel_count;
+			return;
+		}
+	}
+
+	pipe_config->audio.max_rate = 0;
+	pipe_config->audio.max_channel_count = 0;
+}
+
+static int sad_to_channels(const u8 *sad)
+{
+	return 1 + (sad[0] & 0x7);
+}
+
+static u8 *eld_to_sad(u8 *eld)
+{
+	int ver, mnl;
+
+	ver = (eld[DRM_ELD_VER] & DRM_ELD_VER_MASK) >> DRM_ELD_VER_SHIFT;
+	if (ver != 2 && ver != 31)
+		return NULL;
+
+	mnl = drm_eld_mnl(eld);
+	if (mnl > 16)
+		return NULL;
+
+	return eld + DRM_ELD_CEA_SAD(mnl, 0);
+}
+
+static int get_supported_freq_mask(struct intel_crtc_state *crtc_state)
+{
+	int rate[] = { 32000, 44100, 48000, 88000, 96000, 176000, 192000 };
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
+	sad = eld_to_sad(eld);
+	if (!sad)
+		return;
+
+	calc_audio_config_params(crtc_state);
+
+	mask = get_supported_freq_mask(crtc_state);
+	for (index = 0; index < drm_eld_sad_count(eld); index++, sad += 3) {
+		/*
+		 * Respect source restricitions. Limit capabilities to a subset that is
+		 * supported both by the source and the sink.
+		 */
+		if (sad_to_channels(sad) >= crtc_state->audio.max_channel_count) {
+			sad[0] &= ~0x7;
+			sad[0] |= crtc_state->audio.max_channel_count - 1;
+			drm_dbg_kms(&i915->drm, "Channel count is limited to %d\n",
+				    crtc_state->audio.max_channel_count - 1);
+		} else {
+			/*
+			 * calibrate rate when, sink supported channel
+			 * count is slight less than max supported
+			 * channel count.
+			 */
+			calibrate_audio_config_params(crtc_state, sad_to_channels(sad));
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
@@ -827,7 +932,7 @@ bool intel_audio_compute_config(struct intel_encoder *encoder,
 
 	crtc_state->eld[6] = drm_av_sync_delay(connector, adjusted_mode) / 2;
 
-	calc_audio_config_params(crtc_state);
+	intel_audio_compute_eld(crtc_state);
 
 	return true;
 }
-- 
2.25.1

