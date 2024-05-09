Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C5F8C0AEF
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2024 07:27:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5995210E0C5;
	Thu,  9 May 2024 05:27:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ha2ISRUI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B19510E0C5;
 Thu,  9 May 2024 05:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715232419; x=1746768419;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=G/am8F1JWmlyxXWzHgntCdgpGeXleO2MUKmXkQW6buA=;
 b=Ha2ISRUIKO9ezO7zIlYkpk4BLzRRNNlwN2VfOofLXe0IllpCeQt5kqAS
 FG6Zp5Ir3cry7sAGjZa/RlsEG9IwCD1a97YQXbNYMLQqrr5MdmwYQDuKL
 wJYMxufp180gI3VNZpoOna19B11T3E5OJOp6l170bJED+MlCFVQjHnUGC
 gZNhhvqwZ4H7V0t3czqxPQK8DyGG8YuZlbDYrXUFT4vbobOhNGbmK8Apd
 lBWC7w1SgqQSIzTnk0E4h1UXZxEFK6DG1lMCM9EdTCpnF2DrT/8cEkTkd
 9A5LPumxIbygbdBX94QxqiBlpfywmjf7sfOUj5EDm8/MVKkcxxroi8l7u g==;
X-CSE-ConnectionGUID: i1Ye3YXhQGivnbPpBmLL1g==
X-CSE-MsgGUID: YLruQ16FQWmyeQyHIVJueA==
X-IronPort-AV: E=McAfee;i="6600,9927,11067"; a="10981628"
X-IronPort-AV: E=Sophos;i="6.08,146,1712646000"; d="scan'208";a="10981628"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 22:26:59 -0700
X-CSE-ConnectionGUID: mh2dz4wzSV2LwIYLfaQ6Tg==
X-CSE-MsgGUID: pB0tG9UQS5ehCs975xuetA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,146,1712646000"; d="scan'208";a="33686106"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa004.fm.intel.com with ESMTP; 08 May 2024 22:26:56 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, jani.nikula@linux.intel.com,
 matthew.d.roper@intel.com, Uma Shankar <uma.shankar@intel.com>
Subject: [v4] drm/i915: Implement Audio WA_14020863754
Date: Thu,  9 May 2024 11:05:08 +0530
Message-ID: <20240509053508.2807834-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

WA_14020863754: Corner case with Min Hblank Fix can cause
audio hang

Issue: Previously a fix was made to avoid issues with extremely
small hblanks, called the "Min Hblank Fix". However, this can
potentially cause an audio hang.

Workaround :
During "Audio Programming Sequence" Audio Enabling -
When DP mode is enabled Set mmio offset 0x65F1C bit 18 = 1b,
before step #1 "Enable audio Presence Detect"

During "Audio Programming Sequence" Audio Disabling -
When DP mode is enabled Clear mmio offset 0x65F1C bit 18 = 0b,
after step #6 "Disable Audio PD (Presence Detect)"
If not clearing PD bit, must also not clear 0x65F1C bit 18 (leave = 1b)

v2: Update the platform checks (Jani Nikula)

v3: Limited the WA to LNL and BMG, added a helper (Matt Roper)

v4: Updated the bit naming, fixed redundant if statement

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c      | 15 +++++++++++++++
 drivers/gpu/drm/i915/display/intel_audio_regs.h |  3 +++
 2 files changed, 18 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index ed81e1466c4b..adde87900557 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -183,6 +183,15 @@ static const struct hdmi_aud_ncts hdmi_aud_ncts_36bpp[] = {
 	{ 192000, TMDS_445_5M, 20480, 371250 },
 };
 
+/*
+ * WA_14020863754: Implement Audio Workaround
+ * Corner case with Min Hblank Fix can cause audio hang
+ */
+static bool needs_wa_14020863754(struct drm_i915_private *i915)
+{
+	return (DISPLAY_VER(i915) == 20 || IS_BATTLEMAGE(i915));
+}
+
 /* get AUD_CONFIG_PIXEL_CLOCK_HDMI_* value for mode */
 static u32 audio_config_hdmi_pixel_clock(const struct intel_crtc_state *crtc_state)
 {
@@ -415,6 +424,9 @@ static void hsw_audio_codec_disable(struct intel_encoder *encoder,
 	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
 		     AUDIO_OUTPUT_ENABLE(cpu_transcoder), 0);
 
+	if (needs_wa_14020863754(i915))
+		intel_de_rmw(i915, AUD_CHICKENBIT_REG3, DACBE_DISABLE_MIN_HBLANK_FIX, 0);
+
 	mutex_unlock(&i915->display.audio.mutex);
 }
 
@@ -540,6 +552,9 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP))
 		enable_audio_dsc_wa(encoder, crtc_state);
 
+	if (needs_wa_14020863754(i915))
+		intel_de_rmw(i915, AUD_CHICKENBIT_REG3, 0, DACBE_DISABLE_MIN_HBLANK_FIX);
+
 	/* Enable audio presence detect */
 	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
 		     0, AUDIO_OUTPUT_ENABLE(cpu_transcoder));
diff --git a/drivers/gpu/drm/i915/display/intel_audio_regs.h b/drivers/gpu/drm/i915/display/intel_audio_regs.h
index 88ea2740365d..4c31844d21df 100644
--- a/drivers/gpu/drm/i915/display/intel_audio_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_audio_regs.h
@@ -164,4 +164,7 @@
 							 _VLV_AUD_PORT_EN_D_DBG)
 #define VLV_AMP_MUTE		        (1 << 1)
 
+#define AUD_CHICKENBIT_REG3		_MMIO(0x65F1C)
+#define  DACBE_DISABLE_MIN_HBLANK_FIX	REG_BIT(18)
+
 #endif /* __INTEL_AUDIO_REGS_H__ */
-- 
2.42.0

