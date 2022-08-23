Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED0B559F30B
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 07:23:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16ADF1122F9;
	Wed, 24 Aug 2022 05:23:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6B3F1122F9
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Aug 2022 05:22:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661318571; x=1692854571;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kQsWAXMUWTVrwI2dn2XPke7P1QYYvt2o1Un33QL9XXY=;
 b=Vk5wfebUpwT6KHnBkgpfv/zPUME+ulhKRhPc4bfpKsXKHIRE24uayW22
 QmRi30EPmkuHnxfhQKKgZ2lHNhAosI2m/OPMaTxsZycJev/xsS9BEccCv
 kAM50jMEfXDlb6BIJpbNwIc/2lp07b8SAJIve+9G5kzDxRx3wZzuiluh0
 4mpqzad8GZBsMHS1zlqtVNUR8ChXEQ+1cMa2N8PhjjUCjain83MUWumu2
 VkU1QWR3BqbM/WUqoZfx5HSRQZqo3gYteXzhc6dMa+kr9eWjIvwAnix3k
 l6qwX4P2yAZe86LLn1UNUq2ISRpTXHzPJGt0oFa+39mdenRqwc7/ZQfzT w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="293870925"
X-IronPort-AV: E=Sophos;i="5.93,259,1654585200"; d="scan'208";a="293870925"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 22:22:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,259,1654585200"; d="scan'208";a="609620403"
Received: from chaitanya.iind.intel.com ([10.190.239.113])
 by orsmga002.jf.intel.com with ESMTP; 23 Aug 2022 22:22:48 -0700
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Aug 2022 03:51:16 +0530
Message-Id: <20220823222116.3696068-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: compute config for audio
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
Cc: kai.vehmanen@intel.com, Borah@freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In certain scenarios, we might have to filter out some audio
configuration depending on HW limitation. For example, in
GLK DP port more than 2 channels are not supported for audio.
A monitor provides information of it's supported audio configurations
through SAD (Short Audio Descriptors) which are part of the ELD/EDID.
In this patch we add a bit mask to indicate which SADs are supported.
The bit mask is updated in the function intel_eld_compute_config().
Based on this bit mask, we prune SADs which are not supported in
the function i915_audio_component_get_eld() before sending out the
data to the audio driver.

We use a bit mask instead of operating on the eld data directly as
eld data can get updated after intel_eld_compute_config() and before
i915_audio_component_get_eld() is called

fixes: https://gitlab.freedesktop.org/drm/intel/-/issues/5368

Signed-off-by: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/drm_edid.c                    | 36 ++++++++++
 drivers/gpu/drm/i915/display/intel_audio.c    | 65 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_audio.h    |  3 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +
 .../drm/i915/display/intel_display_types.h    |  9 +++
 include/drm/drm_edid.h                        |  9 +++
 6 files changed, 123 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 90a5e26eafa8..3495af8d8596 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -6988,3 +6988,39 @@ static void _drm_update_tile_info(struct drm_connector *connector,
 		connector->tile_group = NULL;
 	}
 }
+
+/*
+ * drm_sad_to_format - extract format of an SAD
+ * @sad: pointer to an sad
+ *
+ * extract the format of an SAD from byte 0
+ */
+int drm_sad_to_format(const u8 *sad)
+{
+	return (sad[0] & DRM_ELD_SAD_FORMAT_MASK) >> DRM_ELD_SAD_FORMAT_SHIFT;
+}
+EXPORT_SYMBOL(drm_sad_to_format);
+
+/*
+ * drm_sad_to_format - extract channels of an SAD
+ * @sad: pointer to an sad
+ *
+ * extract number of supported channels from byte 0 of SAD
+ */
+int drm_sad_to_channels(const u8 *sad)
+{
+	return (sad[0] & DRM_ELD_SAD_CHANNELS_MASK) + 1;
+}
+EXPORT_SYMBOL(drm_sad_to_channels);
+
+/*
+ * drm_sad_to_format - extract supported rates of an SAD
+ * @sad: pointer to an sad
+ *
+ * extract supported rates from byte 1 of SAD
+ */
+int drm_sad_to_rates(const u8 *sad)
+{
+	return sad[1] & DRM_ELD_SAD_RATES_MASK;
+}
+EXPORT_SYMBOL(drm_sad_to_rates);
diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 6c9ee905f132..ac425b652331 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -1235,7 +1235,33 @@ static int i915_audio_component_get_eld(struct device *kdev, int port,
 	if (*enabled) {
 		eld = intel_encoder->audio_connector->eld;
 		ret = drm_eld_size(eld);
-		memcpy(buf, eld, min(max_bytes, ret));
+
+		if (intel_encoder->sad_mask_valid) {
+			int i;
+			u8 *temp_buf;
+			u8 *sad;
+
+			temp_buf = kzalloc(ret, GFP_KERNEL);
+
+			if (!temp_buf) {
+				mutex_unlock(&dev_priv->audio.mutex);
+				return -ENOMEM;
+			}
+
+			memcpy(temp_buf, eld, ret);
+
+			sad = (u8 *)drm_eld_sad(temp_buf);
+
+			for (i = 0; i < drm_eld_sad_count(temp_buf); i++, sad += 3) {
+				if (!(intel_encoder->supported_sads & (1 << i)))
+					memset(&sad[0], 0, 3);
+			}
+
+			memcpy(buf, temp_buf, min(max_bytes, ret));
+			kfree(temp_buf);
+		} else {
+			memcpy(buf, eld, min(max_bytes, ret));
+		}
 	}
 
 	mutex_unlock(&dev_priv->audio.mutex);
@@ -1408,3 +1434,40 @@ void intel_audio_deinit(struct drm_i915_private *dev_priv)
 	else
 		i915_audio_component_cleanup(dev_priv);
 }
+
+void intel_eld_compute_config(struct intel_encoder *encoder,
+			      const struct intel_crtc_state *pipe_config,
+			      const struct drm_connector_state *conn_state)
+{
+		struct drm_connector *connector = conn_state->connector;
+		u8 *eld = connector->eld;
+		const u8 *sad = drm_eld_sad(eld);
+		struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+		u32 *supported_sads = &encoder->supported_sads;
+		int i, channels;
+
+		mutex_lock(&dev_priv->audio.mutex);
+
+		/* reset information about supported sads to default */
+		*supported_sads = 0;
+		encoder->sad_mask_valid = false;
+
+		/* Currently filtering SADs is necessary only for GLK due to it's
+		 * hardware limitations. However, this function can be scaled
+		 * to any scenario where display driver has to filter out certain
+		 * SADs before exposing them to the audio driver.
+		 */
+		if (IS_GEMINILAKE(dev_priv) &&
+		    intel_crtc_has_type(pipe_config, INTEL_OUTPUT_DP)) {
+			encoder->sad_mask_valid = true;
+
+			for (i = 0; i < drm_eld_sad_count(eld); i++, sad += 3) {
+				channels = drm_sad_to_channels(sad);
+
+				if (channels <= 2)
+					(*supported_sads) |= 1 << i;
+			}
+		}
+		drm_dbg_kms(&dev_priv->drm, "supported_sads 0x%x\n", *supported_sads);
+		mutex_unlock(&dev_priv->audio.mutex);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_audio.h b/drivers/gpu/drm/i915/display/intel_audio.h
index 63b22131dc45..17c468a9e07e 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.h
+++ b/drivers/gpu/drm/i915/display/intel_audio.h
@@ -22,5 +22,8 @@ void intel_audio_cdclk_change_pre(struct drm_i915_private *dev_priv);
 void intel_audio_cdclk_change_post(struct drm_i915_private *dev_priv);
 void intel_audio_init(struct drm_i915_private *dev_priv);
 void intel_audio_deinit(struct drm_i915_private *dev_priv);
+void intel_eld_compute_config(struct intel_encoder *encoder,
+			      const struct intel_crtc_state *pipe_config,
+			      const struct drm_connector_state *conn_state);
 
 #endif /* __INTEL_AUDIO_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 6c43a5124cb8..e7807500c88d 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3678,6 +3678,8 @@ static int intel_ddi_compute_config(struct intel_encoder *encoder,
 
 	intel_ddi_compute_min_voltage_level(dev_priv, pipe_config);
 
+	intel_eld_compute_config(encoder, pipe_config, conn_state);
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 0da9b208d56e..5b6a694ff0cc 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -265,6 +265,15 @@ struct intel_encoder {
 	/* for communication with audio component; protected by av_mutex */
 	const struct drm_connector *audio_connector;
 
+	/* bitmask to track supported SADs for current audio connector.
+	 * According to HDA spec Rev 1.0a, ELD SAD limit is 15. Using
+	 * a 32 bit mask for future proofing; protected by av_mutex
+	 */
+	u32 supported_sads;
+
+	/* indicates if the supported_sads is a valid bitmask; protected by av_mutex */
+	bool sad_mask_valid;
+
 	/* VBT information for this encoder (may be NULL for older platforms) */
 	const struct intel_bios_encoder_data *devdata;
 };
diff --git a/include/drm/drm_edid.h b/include/drm/drm_edid.h
index 2181977ae683..363f4487cdd6 100644
--- a/include/drm/drm_edid.h
+++ b/include/drm/drm_edid.h
@@ -318,6 +318,11 @@ struct detailed_timing {
 
 #define DRM_ELD_CEA_SAD(mnl, sad)	(20 + (mnl) + 3 * (sad))
 
+#define DRM_ELD_SAD_FORMAT_MASK 0x78
+#define DRM_ELD_SAD_FORMAT_SHIFT 3
+#define DRM_ELD_SAD_CHANNELS_MASK 0x7
+#define DRM_ELD_SAD_RATES_MASK 0x7f
+
 struct edid {
 	u8 header[8];
 	/* Vendor & product info */
@@ -378,6 +383,10 @@ int drm_edid_to_speaker_allocation(const struct edid *edid, u8 **sadb);
 int drm_av_sync_delay(struct drm_connector *connector,
 		      const struct drm_display_mode *mode);
 
+int drm_sad_to_format(const u8 *sad);
+int drm_sad_to_channels(const u8 *sad);
+int drm_sad_to_rates(const u8 *sad);
+
 #ifdef CONFIG_DRM_LOAD_EDID_FIRMWARE
 struct edid *drm_load_edid_firmware(struct drm_connector *connector);
 int __drm_set_edid_firmware_path(const char *path);
-- 
2.25.1

