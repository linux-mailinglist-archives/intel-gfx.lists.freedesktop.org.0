Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 565DD741614
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jun 2023 18:12:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20D7010E377;
	Wed, 28 Jun 2023 16:12:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A2C410E37B
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Jun 2023 16:12:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687968739; x=1719504739;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1A2crzv2k7sgwUUwcvxG0gvxXrbkgozNtpXPG/udIbU=;
 b=eSZ7dD+56EBsavNKiOOhYwc/Hxg1luhh/q7VrPibzQfO3rn8x0PRuTGR
 UUMyrmzu6GrzV7xfbap9TdmSpZ1VOC0t2CAhxOS9xClokw5qdz66rRrXc
 obZTS+U7hWLqTwjN/75a/6kzkpbkK7zq/QpE5AaFhG42+FGOug9f2A1Kc
 wPVw3lkQPBBqJPb20JUJVvvrhY3Ha+fxGID5OYQfVbU0MMFxgRuuHlbzw
 20e9AStLK0hFzmbSD1sgXLZLpmtxLVKlpvjJglHhBhHMQ0UzLBNI1Wrt1
 Yxy2voQo4uoOOsd+fh0wcVgdOpAJc4eAmVzPz1rI+eYcDYKga0iOWte3g w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10755"; a="392613391"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="392613391"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2023 09:09:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10755"; a="830180704"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="830180704"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmsmga002.fm.intel.com with ESMTP; 28 Jun 2023 09:09:52 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Jun 2023 21:41:03 +0530
Message-Id: <20230628161103.2877959-4-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230628161103.2877959-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20230628161103.2877959-1-mitulkumar.ajitkumar.golani@intel.com>
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

--v4:
- remove inline from eld_to_sad.
- declare index outside of for loop with int type.
- Correct mask value calculation.
- remove drm_err, instead just return if eld parsing failed.
- remove unncessary typecast
- reduce indentation while parsing sad
- use intel_audio_compute_eld as static and call bandwidth calculation just before that.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 73 +++++++++++++++++++++-
 1 file changed, 72 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 79377e33a59b..eca9452849ff 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -806,6 +806,77 @@ static void calc_audio_config_params(struct intel_crtc_state *pipe_config)
 	pipe_config->audio.max_channel_count = 0;
 }
 
+static int sad_to_channels(const u8 *sad)
+{
+        return 1 + (sad[0] & 0x7);
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
+        int rate[] = {32000, 44100, 48000, 88000, 96000, 176000, 192000};
+        int mask = 0, index;
+
+        for (index = 0; index < ARRAY_SIZE(rate); index++) {
+                if (rate[index] > crtc_state->audio.max_rate)
+                        break;
+
+                mask |= 1 << index;
+
+                if (crtc_state->audio.max_rate != rate[index])
+                        continue;
+        }
+
+        return mask;
+}
+
+static void intel_audio_compute_eld(struct intel_crtc_state *crtc_state)
+{
+        struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+        u8 *eld, *sad;
+        int index, mask = 0;
+
+        eld = crtc_state->eld;
+        if (!eld)
+                return;
+
+        sad = eld_to_sad(eld);
+        if (!sad)
+                return;
+
+	calc_audio_config_params(crtc_state);
+
+        mask = get_supported_freq_mask(crtc_state);
+        for (index = 0; index < drm_eld_sad_count(eld); index++, sad += 3) {
+                /*
+                 * Respect source restricitions. Limit capabilities to a subset that is
+                 * supported both by the source and the sink.
+                 */
+                if (sad_to_channels(sad) >= crtc_state->audio.max_channel_count) {
+                        sad[0] &= ~0x7;
+                        sad[0] |= crtc_state->audio.max_channel_count - 1;
+                        drm_dbg_kms(&i915->drm, "Channel count is limited to %d\n",
+                                    crtc_state->audio.max_channel_count - 1);
+                }
+
+                sad[1] &= mask;
+        }
+}
+
 bool intel_audio_compute_config(struct intel_encoder *encoder,
 				struct intel_crtc_state *crtc_state,
 				struct drm_connector_state *conn_state)
@@ -827,7 +898,7 @@ bool intel_audio_compute_config(struct intel_encoder *encoder,
 
 	crtc_state->eld[6] = drm_av_sync_delay(connector, adjusted_mode) / 2;
 
-	calc_audio_config_params(crtc_state);
+	intel_audio_compute_eld(crtc_state);
 
 	return true;
 }
-- 
2.25.1

