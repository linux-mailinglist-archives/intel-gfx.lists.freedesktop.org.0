Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A28FF89F875
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Apr 2024 15:42:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFDD011339D;
	Wed, 10 Apr 2024 13:42:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CT/bFDL4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5462E11339C;
 Wed, 10 Apr 2024 13:42:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712756556; x=1744292556;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gH0GuvGVQOjhuCkkgcoOftgvutpMIRRSsEt0TTYlyYk=;
 b=CT/bFDL44xGG75lMiBYoPlv0BzPGSydZ9dfQji3v1LoqTWV5oYJSoeeN
 eJ8yFQ4De9WRzl94QiWSMBP09w0dPB/44eQLO1sHnx39lscGLYkNfqyC7
 bvVmOQISjd+oPuerracltLoEgRM2A+W0qAYqv3b33zXcqHbOa/mspL/3A
 3XOFkvqmyt05x6pj7/dKFNeSaF4ZanOdOLsswz4/E+Bbf1YSsA731SCFP
 JNV54iXP5pkIZGQq2Mi/JYE+LIjhnFwaLKQpKHmNmsuxvJapx0ZIO1oHQ
 ttmVuRYUjyVSlbt3O3T53LiE6d8lPyOuaSjQG+DAqCPqQY4eug4NgZ+7x g==;
X-CSE-ConnectionGUID: jMxJ9r9bRbGoE7RlguF/VA==
X-CSE-MsgGUID: 3zDMIGTgTbaeYGUuqsK7qQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="8223623"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; 
   d="scan'208";a="8223623"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 06:42:36 -0700
X-CSE-ConnectionGUID: P67SOv9fT5ml32bpXRNOwA==
X-CSE-MsgGUID: Gj2A8qG0QaWY0Y3kR2Y2SQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="20450256"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by orviesa010.jf.intel.com with ESMTP; 10 Apr 2024 06:42:34 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, jani.nikula@linux.intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [v2] drm/i915: Implement Audio WA_14020863754
Date: Wed, 10 Apr 2024 19:20:46 +0530
Message-ID: <20240410135046.933254-1-uma.shankar@intel.com>
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

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c      | 14 ++++++++++++++
 drivers/gpu/drm/i915/display/intel_audio_regs.h |  3 +++
 2 files changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 07e0c73204f3..61df5115c970 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -512,6 +512,13 @@ static void hsw_audio_codec_disable(struct intel_encoder *encoder,
 	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
 		     AUDIO_OUTPUT_ENABLE(cpu_transcoder), 0);
 
+	/*
+	 * WA_14020863754: Implement Audio Workaround
+	 * Corner case with Min Hblank Fix can cause audio hang
+	 */
+	if (DISPLAY_VER(i915) >= 20)
+		intel_de_rmw(i915, AUD_CHICKENBIT_REG3, CHICKEN3_SPARE18, 0);
+
 	mutex_unlock(&i915->display.audio.mutex);
 }
 
@@ -637,6 +644,13 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP))
 		enable_audio_dsc_wa(encoder, crtc_state);
 
+	/*
+	 * WA_14020863754: Implement Audio Workaround
+	 * Corner case with Min Hblank Fix can cause audio hang
+	 */
+	if (DISPLAY_VER(i915) >= 20)
+		intel_de_rmw(i915, AUD_CHICKENBIT_REG3, 0, CHICKEN3_SPARE18);
+
 	/* Enable audio presence detect */
 	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
 		     0, AUDIO_OUTPUT_ENABLE(cpu_transcoder));
diff --git a/drivers/gpu/drm/i915/display/intel_audio_regs.h b/drivers/gpu/drm/i915/display/intel_audio_regs.h
index 616e7b1275c4..6f8d33299ecd 100644
--- a/drivers/gpu/drm/i915/display/intel_audio_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_audio_regs.h
@@ -148,4 +148,7 @@
 #define HBLANK_START_COUNT_96	4
 #define HBLANK_START_COUNT_128	5
 
+#define AUD_CHICKENBIT_REG3		_MMIO(0x65F1C)
+#define  CHICKEN3_SPARE18		REG_BIT(18)
+
 #endif /* __INTEL_AUDIO_REGS_H__ */
-- 
2.42.0

