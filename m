Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E46E747D3FA
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Dec 2021 15:54:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 551B610E1A9;
	Wed, 22 Dec 2021 14:54:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0681710E1A9
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Dec 2021 14:54:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640184850; x=1671720850;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bAseApf6JW1lbHQZ+HyK2OYNwYtMAdNiHOC3b7ofL/8=;
 b=LtahGUZ4jpa02IyqXBToX+1DbJUpUvYENTDsZ2KJ+AB4GyHOEXrqrViL
 fEAVmtJgqbiZigvqMpXbN7om9y3VCOYumWMw5PvXB65nIJB80X0fO8JMo
 FaQ9s74yC5UP5ibjp42eeT8JQ4ZHpflIVke+sjGuKHpbIZYb/UhMECqvG
 8p/Z1tvJPPmy/xhZBrWY6t+6i0sDKHXypr3AsSVH3St+zgciN2z07BUny
 VPb34IPpcTH34xItpu4DuyfsALv1sv/U+PfrNELcxSKR8Uv/9vRu83KWA
 wZdrZX7w5/qleXo9kcJy9eWfUL0awmjAIbKoPKvidOLB5F5cCDRa07z2f g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10205"; a="326935796"
X-IronPort-AV: E=Sophos;i="5.88,226,1635231600"; d="scan'208";a="326935796"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2021 06:53:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,226,1635231600"; d="scan'208";a="549456049"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga001.jf.intel.com with SMTP; 22 Dec 2021 06:53:50 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 Dec 2021 16:53:50 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: alsa-devel@alsa-project.org
Date: Wed, 22 Dec 2021 16:53:50 +0200
Message-Id: <20211222145350.24342-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] ALSA: hda/hdmi: Disable silent stream on GLK
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
Cc: Harsha Priya <harshapriya.n@intel.com>, intel-gfx@lists.freedesktop.org,
 stable@vger.kernel.org, Emmanuel Jillela <emmanuel.jillela@intel.com>,
 Takashi Iwai <tiwai@suse.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The silent stream stuff recurses back into i915 audio
component .get_power() from the .pin_eld_notify() hook.
On GLK this will deadlock as i915 may already be holding
the relevant modeset locks during .pin_eld_notify() and
the GLK audio vs. CDCLK workaround will try to grab the
same locks from .get_power().

Until someone comes up with a better fix just disable the
silent stream support on GLK.

Cc: stable@vger.kernel.org
Cc: Harsha Priya <harshapriya.n@intel.com>
Cc: Emmanuel Jillela <emmanuel.jillela@intel.com>
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2623
Fixes: 951894cf30f4 ("ALSA: hda/hdmi: Add Intel silent stream support")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 sound/pci/hda/patch_hdmi.c | 21 +++++++++++++++------
 1 file changed, 15 insertions(+), 6 deletions(-)

diff --git a/sound/pci/hda/patch_hdmi.c b/sound/pci/hda/patch_hdmi.c
index 415701bd10ac..ffcde7409d2a 100644
--- a/sound/pci/hda/patch_hdmi.c
+++ b/sound/pci/hda/patch_hdmi.c
@@ -2947,7 +2947,8 @@ static int parse_intel_hdmi(struct hda_codec *codec)
 
 /* Intel Haswell and onwards; audio component with eld notifier */
 static int intel_hsw_common_init(struct hda_codec *codec, hda_nid_t vendor_nid,
-				 const int *port_map, int port_num, int dev_num)
+				 const int *port_map, int port_num, int dev_num,
+				 bool send_silent_stream)
 {
 	struct hdmi_spec *spec;
 	int err;
@@ -2980,7 +2981,7 @@ static int intel_hsw_common_init(struct hda_codec *codec, hda_nid_t vendor_nid,
 	 * Enable silent stream feature, if it is enabled via
 	 * module param or Kconfig option
 	 */
-	if (enable_silent_stream)
+	if (send_silent_stream)
 		spec->send_silent_stream = true;
 
 	return parse_intel_hdmi(codec);
@@ -2988,12 +2989,18 @@ static int intel_hsw_common_init(struct hda_codec *codec, hda_nid_t vendor_nid,
 
 static int patch_i915_hsw_hdmi(struct hda_codec *codec)
 {
-	return intel_hsw_common_init(codec, 0x08, NULL, 0, 3);
+	return intel_hsw_common_init(codec, 0x08, NULL, 0, 3,
+				     enable_silent_stream);
 }
 
 static int patch_i915_glk_hdmi(struct hda_codec *codec)
 {
-	return intel_hsw_common_init(codec, 0x0b, NULL, 0, 3);
+	/*
+	 * Silent stream calls audio component .get_power() from
+	 * .pin_eld_notify(). On GLK this will deadlock in i915 due
+	 * to the audio vs. CDCLK workaround.
+	 */
+	return intel_hsw_common_init(codec, 0x0b, NULL, 0, 3, false);
 }
 
 static int patch_i915_icl_hdmi(struct hda_codec *codec)
@@ -3004,7 +3011,8 @@ static int patch_i915_icl_hdmi(struct hda_codec *codec)
 	 */
 	static const int map[] = {0x0, 0x4, 0x6, 0x8, 0xa, 0xb};
 
-	return intel_hsw_common_init(codec, 0x02, map, ARRAY_SIZE(map), 3);
+	return intel_hsw_common_init(codec, 0x02, map, ARRAY_SIZE(map), 3,
+				     enable_silent_stream);
 }
 
 static int patch_i915_tgl_hdmi(struct hda_codec *codec)
@@ -3016,7 +3024,8 @@ static int patch_i915_tgl_hdmi(struct hda_codec *codec)
 	static const int map[] = {0x4, 0x6, 0x8, 0xa, 0xb, 0xc, 0xd, 0xe, 0xf};
 	int ret;
 
-	ret = intel_hsw_common_init(codec, 0x02, map, ARRAY_SIZE(map), 4);
+	ret = intel_hsw_common_init(codec, 0x02, map, ARRAY_SIZE(map), 4,
+				    enable_silent_stream);
 	if (!ret) {
 		struct hdmi_spec *spec = codec->spec;
 
-- 
2.32.0

