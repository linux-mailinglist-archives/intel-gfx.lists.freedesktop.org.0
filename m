Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B0CD8B6D0A
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 10:41:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2DE910F5EC;
	Tue, 30 Apr 2024 08:41:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Gku6Qrzp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8312E10F5EC
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2024 08:41:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714466463; x=1746002463;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Qe5O/I2YnsD3FwLuGhSVDJXsFCMIGBeBy5WJGdTPf2A=;
 b=Gku6QrzpYpAhsrncjUFBjuRPsEeXNH5cQe7S7Hgcicmu0BH5LeAk6+FY
 /NRVcDlgp66m6ljRV+f4DlYlqiODvDFjmI40dyxQ8WfzNIefGw1wRjQmK
 z0mdbuZSopJAKswa6HOWc29ZCiFk0Xd6wcb013uN220ZM6yspdqjf4ieQ
 aNThRD9njJgZLAtVaP7Kr3m4duGs6pRfusQ2SlooA1JEnxcuzayFdKfFg
 bKyNBVoWmURsJK0OcCizJ1hcqIqdhjlJ1vJ4BqI4Y4/ZxzQzH5YvkwscU
 /UjL1s9VmcHEBxY2qAWbQknbZeCDAPhHae2IA+Je7mLtNoqX0WxOpGKMQ g==;
X-CSE-ConnectionGUID: VviLWb2uQROpbFV0Bo7VMg==
X-CSE-MsgGUID: bCcHKA24ScKjjSBfQXAtFg==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="10329822"
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="10329822"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 01:40:27 -0700
X-CSE-ConnectionGUID: hdJfkd2KSwSXiCxtUrLPzw==
X-CSE-MsgGUID: bC9a9jn0TbikLZTQRYAVwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="26378586"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa007.fm.intel.com with ESMTP; 30 Apr 2024 01:40:25 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: kai.vehmanen@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com, jani.nikula@linux.intel.com,
 libin.yang@intel.com, uma.shankar@intel.com
Subject: [PATCH] drm/i915/audio: Fix audio time stamp programming for DP
Date: Tue, 30 Apr 2024 14:04:29 +0530
Message-Id: <20240430083429.729247-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
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

Intel hardware is capable of programming the Maud/Naud SDPs on its
own based on real-time clocks. While doing so, it takes care
of any deviations from the theoretical values. Programming the registers
explicitly with static values can interfere with this logic. Therefore,
let the HW decide the Maud and Naud SDPs on it's own.

Cc: stable@vger.kernel.org # v5.17
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8097
Co-developed-by: Kai Vehmanen <kai.vehmanen@intel.com>
Signed-off-by: Kai Vehmanen <kai.vehmanen@intel.com>
Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 111 ++-------------------
 1 file changed, 6 insertions(+), 105 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 07e0c73204f3..12e2ba462077 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -76,19 +76,6 @@ struct intel_audio_funcs {
 				       struct intel_crtc_state *crtc_state);
 };
 
-/* DP N/M table */
-#define LC_810M	810000
-#define LC_540M	540000
-#define LC_270M	270000
-#define LC_162M	162000
-
-struct dp_aud_n_m {
-	int sample_rate;
-	int clock;
-	u16 m;
-	u16 n;
-};
-
 struct hdmi_aud_ncts {
 	int sample_rate;
 	int clock;
@@ -96,60 +83,6 @@ struct hdmi_aud_ncts {
 	int cts;
 };
 
-/* Values according to DP 1.4 Table 2-104 */
-static const struct dp_aud_n_m dp_aud_n_m[] = {
-	{ 32000, LC_162M, 1024, 10125 },
-	{ 44100, LC_162M, 784, 5625 },
-	{ 48000, LC_162M, 512, 3375 },
-	{ 64000, LC_162M, 2048, 10125 },
-	{ 88200, LC_162M, 1568, 5625 },
-	{ 96000, LC_162M, 1024, 3375 },
-	{ 128000, LC_162M, 4096, 10125 },
-	{ 176400, LC_162M, 3136, 5625 },
-	{ 192000, LC_162M, 2048, 3375 },
-	{ 32000, LC_270M, 1024, 16875 },
-	{ 44100, LC_270M, 784, 9375 },
-	{ 48000, LC_270M, 512, 5625 },
-	{ 64000, LC_270M, 2048, 16875 },
-	{ 88200, LC_270M, 1568, 9375 },
-	{ 96000, LC_270M, 1024, 5625 },
-	{ 128000, LC_270M, 4096, 16875 },
-	{ 176400, LC_270M, 3136, 9375 },
-	{ 192000, LC_270M, 2048, 5625 },
-	{ 32000, LC_540M, 1024, 33750 },
-	{ 44100, LC_540M, 784, 18750 },
-	{ 48000, LC_540M, 512, 11250 },
-	{ 64000, LC_540M, 2048, 33750 },
-	{ 88200, LC_540M, 1568, 18750 },
-	{ 96000, LC_540M, 1024, 11250 },
-	{ 128000, LC_540M, 4096, 33750 },
-	{ 176400, LC_540M, 3136, 18750 },
-	{ 192000, LC_540M, 2048, 11250 },
-	{ 32000, LC_810M, 1024, 50625 },
-	{ 44100, LC_810M, 784, 28125 },
-	{ 48000, LC_810M, 512, 16875 },
-	{ 64000, LC_810M, 2048, 50625 },
-	{ 88200, LC_810M, 1568, 28125 },
-	{ 96000, LC_810M, 1024, 16875 },
-	{ 128000, LC_810M, 4096, 50625 },
-	{ 176400, LC_810M, 3136, 28125 },
-	{ 192000, LC_810M, 2048, 16875 },
-};
-
-static const struct dp_aud_n_m *
-audio_config_dp_get_n_m(const struct intel_crtc_state *crtc_state, int rate)
-{
-	int i;
-
-	for (i = 0; i < ARRAY_SIZE(dp_aud_n_m); i++) {
-		if (rate == dp_aud_n_m[i].sample_rate &&
-		    crtc_state->port_clock == dp_aud_n_m[i].clock)
-			return &dp_aud_n_m[i];
-	}
-
-	return NULL;
-}
-
 static const struct {
 	int clock;
 	u32 config;
@@ -387,47 +320,15 @@ hsw_dp_audio_config_update(struct intel_encoder *encoder,
 			   const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	struct i915_audio_component *acomp = i915->display.audio.component;
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
-	enum port port = encoder->port;
-	const struct dp_aud_n_m *nm;
-	int rate;
-	u32 tmp;
 
-	rate = acomp ? acomp->aud_sample_rate[port] : 0;
-	nm = audio_config_dp_get_n_m(crtc_state, rate);
-	if (nm)
-		drm_dbg_kms(&i915->drm, "using Maud %u, Naud %u\n", nm->m,
-			    nm->n);
-	else
-		drm_dbg_kms(&i915->drm, "using automatic Maud, Naud\n");
-
-	tmp = intel_de_read(i915, HSW_AUD_CFG(cpu_transcoder));
-	tmp &= ~AUD_CONFIG_N_VALUE_INDEX;
-	tmp &= ~AUD_CONFIG_PIXEL_CLOCK_HDMI_MASK;
-	tmp &= ~AUD_CONFIG_N_PROG_ENABLE;
-	tmp |= AUD_CONFIG_N_VALUE_INDEX;
-
-	if (nm) {
-		tmp &= ~AUD_CONFIG_N_MASK;
-		tmp |= AUD_CONFIG_N(nm->n);
-		tmp |= AUD_CONFIG_N_PROG_ENABLE;
-	}
-
-	intel_de_write(i915, HSW_AUD_CFG(cpu_transcoder), tmp);
-
-	tmp = intel_de_read(i915, HSW_AUD_M_CTS_ENABLE(cpu_transcoder));
-	tmp &= ~AUD_CONFIG_M_MASK;
-	tmp &= ~AUD_M_CTS_M_VALUE_INDEX;
-	tmp &= ~AUD_M_CTS_M_PROG_ENABLE;
-
-	if (nm) {
-		tmp |= nm->m;
-		tmp |= AUD_M_CTS_M_VALUE_INDEX;
-		tmp |= AUD_M_CTS_M_PROG_ENABLE;
-	}
+	/* Enable time stamps. Let HW calculate Maud/Naud values */
+	intel_de_rmw(i915, HSW_AUD_CFG(cpu_transcoder),
+		     AUD_CONFIG_N_VALUE_INDEX |
+		     AUD_CONFIG_PIXEL_CLOCK_HDMI_MASK |
+		     AUD_CONFIG_N_PROG_ENABLE,
+		     AUD_CONFIG_N_VALUE_INDEX);
 
-	intel_de_write(i915, HSW_AUD_M_CTS_ENABLE(cpu_transcoder), tmp);
 }
 
 static void
-- 
2.25.1

