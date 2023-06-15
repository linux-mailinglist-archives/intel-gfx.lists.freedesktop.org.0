Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3680B730F54
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jun 2023 08:30:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6938A10E488;
	Thu, 15 Jun 2023 06:30:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D56D10E483
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jun 2023 06:30:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686810638; x=1718346638;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bXxOzOk+mvCNNNhURTD+ptqe4yolQKMeJHVePrtrKvE=;
 b=nOdWIBsJweMneCOiv5EZHrhvghi1kUPmdkDUBXwtdMdnOwXoGCHR4+rP
 6NZK0ifa3kdqw7Zzkq50jZJu77ZvOhLb0YmcoCUJW1AvKIdME++69A+J0
 OBVdyn/GReklEWG1pusNDEIAHCGVE6KRQm2y0kg5nIz27holjVASJz1RA
 B/WW4QUPqYeplopkilUFj+/AGwTUuUF2iI48w90Vu1fRtYTjCLVfJuZos
 jWvWUfVPE7XnIjBGe5NVpknKZtSPDmuN3ORvcnE9jQub7hq+7riy9JF7F
 nwldEx+GOq3oMI2wT3zBu8CbJUIORzMF+krFW3ca+toddEVjXscfBT/VL A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="348493416"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="348493416"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2023 23:30:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="1042514913"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="1042514913"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmsmga005.fm.intel.com with ESMTP; 14 Jun 2023 23:30:36 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Jun 2023 12:01:37 +0530
Message-Id: <20230615063137.2219870-4-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230615063137.2219870-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20230615063137.2219870-1-mitulkumar.ajitkumar.golani@intel.com>
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

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 69 ++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_audio.h |  1 +
 drivers/gpu/drm/i915/display/intel_hdmi.c  |  2 +
 3 files changed, 72 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index e20ffc8e9654..335bfce18994 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -794,6 +794,75 @@ bool intel_audio_compute_config(struct intel_encoder *encoder,
 	return true;
 }
 
+static unsigned int sad_to_channels(const u8 *sad)
+{
+	return 1 + (sad[0] & 0x7);
+}
+
+static inline u8 *eld_to_sad(u8 *eld)
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
+	int audio_freq_hz[] = {32000, 44100, 48000, 88000, 96000, 176000, 192000};
+	u8 mask = 0;
+
+	if(crtc_state->audio.max_frequency < 32000)
+		return mask;
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
+	sad = (u8 *)eld_to_sad(eld);
+	if (sad) {
+		mask = get_supported_freq_mask(crtc_state);
+
+		for (index = 0; index < drm_eld_sad_count(eld); index++, sad += 3) {
+			/*
+			 *  Respect to source restrictions. If source limit is greater than sink
+			 *  capabilities then follow to sink's highest supported rate.
+			 */
+			if (sad_to_channels(sad) >= crtc_state->audio.max_channel) {
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

