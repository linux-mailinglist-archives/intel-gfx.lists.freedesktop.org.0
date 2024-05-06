Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE6C98BCBAF
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 12:10:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25DB010EF3A;
	Mon,  6 May 2024 10:10:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TLvh6DHs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43F8910EF0A;
 Mon,  6 May 2024 10:10:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714990210; x=1746526210;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uurv42DQvE0bDmBo9g4/e2TwBQoXxrS7DK/Q/7vzPYw=;
 b=TLvh6DHsf3W1UrRknGZBI6gZgD3TwlnN6uAsY6jgayKT5QBsZ2dMaKN7
 fq3bUvjgcFU//Ynjyt4rfF31BqBqZOjDu18I02rH+a3Y3LSPvEhY8oUpf
 f5lDTXWpR0oZRQikxXQcwW4g2JG0UTheq2UwFhdxKABLRD6UXd1cDq8Dz
 Hw04Wez0Dq9p1v5ITrviCXk1rXUd6twEFW/2B89KYamg8iLLlYn47I5oh
 qTA0NXG92b0YT2qyvE6C8B0V2rwYJCBHjAT8CiJM6lKQ2CY+GrgozrV2T
 2jZsEMGFcQp9/2FXgBOrywxumvHgDtPHN9WurdrSLnFj2+yo090RlGS15 Q==;
X-CSE-ConnectionGUID: WTx+vlZ9QVGnySL3/Z8ksA==
X-CSE-MsgGUID: ZLrnT99rSPWoBehbCUsMLQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11064"; a="14534143"
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="14534143"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 03:10:09 -0700
X-CSE-ConnectionGUID: iy8TwkwnStWbsuopJVWfBw==
X-CSE-MsgGUID: RKXDccZmSUGUtghEZzruuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="32926593"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by orviesa005.jf.intel.com with ESMTP; 06 May 2024 03:10:06 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, jani.nikula@linux.intel.com,
 matthew.d.roper@intel.com, Uma Shankar <uma.shankar@intel.com>
Subject: [v3] drm/i915: Implement Audio WA_14020863754
Date: Mon,  6 May 2024 15:48:17 +0530
Message-ID: <20240506101817.2590328-1-uma.shankar@intel.com>
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

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c     | 18 ++++++++++++++++++
 .../gpu/drm/i915/display/intel_audio_regs.h    |  3 +++
 2 files changed, 21 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index ed81e1466c4b..cb055c16dd98 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -183,6 +183,18 @@ static const struct hdmi_aud_ncts hdmi_aud_ncts_36bpp[] = {
 	{ 192000, TMDS_445_5M, 20480, 371250 },
 };
 
+/*
+ * WA_14020863754: Implement Audio Workaround
+ * Corner case with Min Hblank Fix can cause audio hang
+ */
+static bool needs_wa_14020863754(struct drm_i915_private *i915)
+{
+	if (DISPLAY_VER(i915) == 20 || IS_BATTLEMAGE(i915))
+		return true;
+
+	return false;
+}
+
 /* get AUD_CONFIG_PIXEL_CLOCK_HDMI_* value for mode */
 static u32 audio_config_hdmi_pixel_clock(const struct intel_crtc_state *crtc_state)
 {
@@ -415,6 +427,9 @@ static void hsw_audio_codec_disable(struct intel_encoder *encoder,
 	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
 		     AUDIO_OUTPUT_ENABLE(cpu_transcoder), 0);
 
+	if (needs_wa_14020863754(i915))
+		intel_de_rmw(i915, AUD_CHICKENBIT_REG3, CHICKEN3_SPARE18, 0);
+
 	mutex_unlock(&i915->display.audio.mutex);
 }
 
@@ -540,6 +555,9 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP))
 		enable_audio_dsc_wa(encoder, crtc_state);
 
+	if (needs_wa_14020863754(i915))
+		intel_de_rmw(i915, AUD_CHICKENBIT_REG3, 0, CHICKEN3_SPARE18);
+
 	/* Enable audio presence detect */
 	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
 		     0, AUDIO_OUTPUT_ENABLE(cpu_transcoder));
diff --git a/drivers/gpu/drm/i915/display/intel_audio_regs.h b/drivers/gpu/drm/i915/display/intel_audio_regs.h
index 88ea2740365d..7de82cd3380e 100644
--- a/drivers/gpu/drm/i915/display/intel_audio_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_audio_regs.h
@@ -164,4 +164,7 @@
 							 _VLV_AUD_PORT_EN_D_DBG)
 #define VLV_AMP_MUTE		        (1 << 1)
 
+#define AUD_CHICKENBIT_REG3		_MMIO(0x65F1C)
+#define  CHICKEN3_SPARE18		REG_BIT(18)
+
 #endif /* __INTEL_AUDIO_REGS_H__ */
-- 
2.42.0

