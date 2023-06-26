Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBA7173E58A
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jun 2023 18:45:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F51810E117;
	Mon, 26 Jun 2023 16:45:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8098910E117
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jun 2023 16:44:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687797895; x=1719333895;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=My7D9XxEiJuP+SGy5NnY+SmkUor7w0Pfd/2/ULpmoF8=;
 b=LWXQvrvSgF93P4SHx6C2oPtC2iDZz+Js2+UQAx92qGL5xOzTK22D37xC
 TCuOUTXJRJ1MysX4mmiHdQuhU2BOARMpdCCXqN6WM7ZOj2ALdpqAn+jOr
 yteLL0JGziqys0mZcraqYXcmyHz7c+bpJ9b82DinJRs3yla12pC0skxDZ
 2Uw5y1gsd8DaN8u1dKylsDEzjgtjqleiyuJt/eahRS4OZ/ghjmX+AlRsz
 DYd7v+F1NxSwlK5JRvg+NdPKTPaJVUt5NIY2AJQB9nlup8oJ8L5YAq9M3
 dV9qXdBXZHkniOy43kXQeRyZ1e+cJ0dyHDc43lLlNu9diBnb93JNZV2iU Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="341658779"
X-IronPort-AV: E=Sophos;i="6.01,160,1684825200"; d="scan'208";a="341658779"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 09:44:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="806129501"
X-IronPort-AV: E=Sophos;i="6.01,160,1684825200"; d="scan'208";a="806129501"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by FMSMGA003.fm.intel.com with ESMTP; 26 Jun 2023 09:44:54 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Jun 2023 22:16:04 +0530
Message-Id: <20230626164604.2759876-4-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230626164604.2759876-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20230626164604.2759876-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 3/3] drm/i915/display: Add wrapper to Compute SAD
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

Compute SADs that takes into account the supported rate and channel
based on the capabilities of the audio source. This wrapper function
should encapsulate the logic for determining the supported rate and
channel and should return a set of SADs that are compatible with the
source.

--v1:
- call intel_audio_compute_eld in this commit as it is defined here

--v2:
- Handle case when max frequency is less than 32k.
- remove drm prefix.
- name change for parse_sad to eld_to_sad.

--v3:
- Use signed int wherever required.
- add debug trace when channel is limited.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 69 ++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_audio.h |  1 +
 drivers/gpu/drm/i915/display/intel_hdmi.c  |  2 +
 3 files changed, 72 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index e20ffc8e9654..1a1c773c1d41 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -794,6 +794,75 @@ bool intel_audio_compute_config(struct intel_encoder *encoder,
 	return true;
 }
 
+static int sad_to_channels(const u8 *sad)
+{
+	return 1 + (sad[0] & 0x7);
+}
+
+static inline u8 *eld_to_sad(u8 *eld)
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
+	int audio_freq_hz[] = {32000, 44100, 48000, 88000, 96000, 176000, 192000, 0};
+	int mask = 0;
+
+	for (u8 index = 0; index < ARRAY_SIZE(audio_freq_hz); index++) {
+		mask |= 1 << index;
+		if (crtc_state->audio.max_frequency != audio_freq_hz[index])
+			continue;
+		else
+			break;
+	}
+
+	return mask;
+}
+
+void intel_audio_compute_eld(struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	u8 *eld, *sad;
+	int index, mask = 0;
+
+	eld = crtc_state->eld;
+	if (!eld) {
+		drm_err(&i915->drm, "failed to locate eld\n");
+		return;
+	}
+
+	sad = (u8 *)eld_to_sad(eld);
+	if (sad) {
+		mask = get_supported_freq_mask(crtc_state);
+
+		for (index = 0; index < drm_eld_sad_count(eld); index++, sad += 3) {
+			/*
+			 * Respect source restricitions. Limit capabilities to a subset that is
+			 * supported both by the source and the sink.
+			 */
+			if (sad_to_channels(sad) >= crtc_state->audio.max_channel) {
+				sad[0] &= ~0x7;
+				sad[0] |= crtc_state->audio.max_channel - 1;
+				drm_dbg_kms(&i915->drm, "Channel count is limited to %d\n",
+					    crtc_state->audio.max_channel - 1);
+			}
+
+			sad[1] &= mask;
+		}
+	}
+}
+
 /**
  * intel_audio_codec_enable - Enable the audio codec for HD audio
  * @encoder: encoder on which to enable audio
diff --git a/drivers/gpu/drm/i915/display/intel_audio.h b/drivers/gpu/drm/i915/display/intel_audio.h
index 09697c770dbf..4979156f8156 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.h
+++ b/drivers/gpu/drm/i915/display/intel_audio.h
@@ -17,6 +17,7 @@ struct intel_encoder;
 #define MAX_CHANNEL_COUNT		8
 
 void intel_audio_hooks_init(struct drm_i915_private *dev_priv);
+void intel_audio_compute_eld(struct intel_crtc_state *crtc_state);
 bool intel_audio_compute_config(struct intel_encoder *encoder,
 				struct intel_crtc_state *crtc_state,
 				struct drm_connector_state *conn_state);
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 6a4d477e8a15..daaa08c0ee47 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2402,6 +2402,8 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
 		return -EINVAL;
 	}
 
+	intel_audio_compute_eld(pipe_config);
+
 	return 0;
 }
 
-- 
2.25.1

