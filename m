Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7465073101D
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jun 2023 09:06:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFC7D10E48B;
	Thu, 15 Jun 2023 07:06:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F17E110E48B
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jun 2023 07:06:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686812784; x=1718348784;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tIBfBDM7E7AgUAJ5Y7vI45F+al9LRvRnGbv16J8GIW0=;
 b=I5m5hYRBt1fDujAzK6gN9P8ns2kWywqJPoaCWBqFQT3P+jHrlvOWaklb
 UPs7DWWYSeeJLRyb/OB9BHmzGRtWObPMa16CUbRVbyQL87AiJzDP6juLH
 aQoJUzidQPxsfjahxNaQwbaUw7w/58/IXFIyhyY5jAmJTsLj4xdNJY3FY
 qfdT4/4qnHyAl+qsDjRBdv0fG2SgmWeMbMDdCS8kQeWSDSqqFixxc4C9f
 I8d/7Dh8lE6wdbF60LVJrlHZ8PaYdV0WbG56smERV1EfsJ81Y1h+bJ3uy
 nvVKq/LJnJfklV6rqfhvs/rZG1hUDFVuZ/bNt1c2xP9r2HwOpEgIPX0Ch w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="387264302"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="387264302"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 00:06:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="777550193"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="777550193"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmsmga008.fm.intel.com with ESMTP; 15 Jun 2023 00:06:23 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Jun 2023 12:37:23 +0530
Message-Id: <20230615070723.2220271-4-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230615070723.2220271-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20230615070723.2220271-1-mitulkumar.ajitkumar.golani@intel.com>
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

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 66 ++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_audio.h |  1 +
 drivers/gpu/drm/i915/display/intel_hdmi.c  |  2 +
 3 files changed, 69 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index e20ffc8e9654..a6a58b0f0717 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -794,6 +794,72 @@ bool intel_audio_compute_config(struct intel_encoder *encoder,
 	return true;
 }
 
+static unsigned int drm_sad_to_channels(const u8 *sad)
+{
+	return 1 + (sad[0] & 0x7);
+}
+
+static inline u8 *parse_sad(u8 *eld)
+{
+	unsigned int ver, mnl;
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
+static u8 get_supported_freq_mask(struct intel_crtc_state *crtc_state)
+{
+	int audio_freq_hz[] = {32000, 44100, 48000, 88000, 96000, 176000, 192000, 0};
+	u8 mask = 0;
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
+	u8 *eld, *sad, index, mask = 0;
+
+	eld = crtc_state->eld;
+	if (!eld) {
+		drm_err(&i915->drm, "failed to locate eld\n");
+		return;
+	}
+
+	sad = (u8 *)parse_sad(eld);
+	if (sad) {
+		mask = get_supported_freq_mask(crtc_state);
+
+		for (index = 0; index < drm_eld_sad_count(eld); index++, sad += 3) {
+			/*
+			 *  Respect to source restrictions. If source limit is greater than sink
+			 *  capabilities then follow to sink's highest supported rate.
+			 */
+			if (drm_sad_to_channels(sad) >= crtc_state->audio.max_channel) {
+				sad[0] &= ~0x7;
+				sad[0] |= crtc_state->audio.max_channel - 1;
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
index 07d034a981e9..2ec7fafd9711 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.h
+++ b/drivers/gpu/drm/i915/display/intel_audio.h
@@ -14,6 +14,7 @@ struct intel_crtc_state;
 struct intel_encoder;
 
 void intel_audio_hooks_init(struct drm_i915_private *dev_priv);
+void intel_audio_compute_eld(struct intel_crtc_state *crtc_state);
 bool intel_audio_compute_config(struct intel_encoder *encoder,
 				struct intel_crtc_state *crtc_state,
 				struct drm_connector_state *conn_state);
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 0188a600f9f5..beafeff494f8 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2403,6 +2403,8 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
 		return -EINVAL;
 	}
 
+	intel_audio_compute_eld(pipe_config);
+
 	return 0;
 }
 
-- 
2.25.1

