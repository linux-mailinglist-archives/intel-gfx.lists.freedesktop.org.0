Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF98B95819D
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2024 11:07:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C30FD10E2AD;
	Tue, 20 Aug 2024 09:07:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jEqKWMdN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67ECF10E2AD;
 Tue, 20 Aug 2024 09:07:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724144855; x=1755680855;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nJdGcmrn+huH4JbOMD1To6dq167uJQcffCNR05wC3bw=;
 b=jEqKWMdNsTj5xwo33umbVCplvdwyfQ3qgtIkIgCdMndwA/5APn8Qa5qk
 RLNefz/Pzt1rABSsRSGuWKQbNOQYOMRqFwr60z0E3ghw67Bsk6QBCVZ+f
 QFj39yKv0jnBxE37RFBV6J1tt8b5CK1YRezcfnyzGLP+64lA/jVte2UCK
 EI8/4KQpaCyDBUNssKFDSb0OyamvwQRECFfqWGx+jyp4j8+Su+OfpHjuk
 X82FQ3xyHegcor2UsmsvBVD07m1/lLSog1+P2wHR0Fe+rvF5YaP6CTR9/
 fU8oGeI8LsanXetV7SjRch5x0fr8WSZvsaex9S7e6iHklGKaksvAbRXU4 g==;
X-CSE-ConnectionGUID: KvUO5ZugS7K8CzVbJu+JFQ==
X-CSE-MsgGUID: sPorQb8vRsq3IUa/QwCMYg==
X-IronPort-AV: E=McAfee;i="6700,10204,11169"; a="22596284"
X-IronPort-AV: E=Sophos;i="6.10,161,1719903600"; d="scan'208";a="22596284"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 02:07:18 -0700
X-CSE-ConnectionGUID: zPF0BX8OS3C5aWSx7VA6PA==
X-CSE-MsgGUID: cLXJcvYxToW+lcko4aqhJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,161,1719903600"; d="scan'208";a="61424574"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.184])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 02:07:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: maarten.lankhorst@linux.intel.com, ville.syrjala@linux.intel.com,
 jani.nikula@intel.com
Subject: [PATCH 1/2] drm/i915: move rawclk from runtime to display runtime info
Date: Tue, 20 Aug 2024 12:07:01 +0300
Message-Id: <39330d09c48509e013f01fd0247a9b7c291173e2.1724144570.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1724144570.git.jani.nikula@intel.com>
References: <cover.1724144570.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

It's mostly about display, so move it under display. This should also
fix rawclk freq initialization in the xe driver.

v2: Change the init location

Link: https://lore.kernel.org/r/20240819133138.147511-2-maarten.lankhorst@linux.intel.com
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_backlight.c         | 10 +++++-----
 drivers/gpu/drm/i915/display/intel_display_device.c    |  5 +++++
 drivers/gpu/drm/i915/display/intel_display_device.h    |  2 ++
 .../gpu/drm/i915/display/intel_display_power_well.c    |  4 ++--
 drivers/gpu/drm/i915/display/intel_dp_aux.c            |  4 ++--
 drivers/gpu/drm/i915/display/intel_pps.c               |  2 +-
 drivers/gpu/drm/i915/intel_device_info.c               |  5 -----
 drivers/gpu/drm/i915/intel_device_info.h               |  2 --
 8 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index 18933b003cbe..9e05745d797d 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -1011,7 +1011,7 @@ static u32 cnp_hz_to_pwm(struct intel_connector *connector, u32 pwm_freq_hz)
 {
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 
-	return DIV_ROUND_CLOSEST(KHz(RUNTIME_INFO(i915)->rawclk_freq),
+	return DIV_ROUND_CLOSEST(KHz(DISPLAY_RUNTIME_INFO(i915)->rawclk_freq),
 				 pwm_freq_hz);
 }
 
@@ -1073,7 +1073,7 @@ static u32 pch_hz_to_pwm(struct intel_connector *connector, u32 pwm_freq_hz)
 {
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 
-	return DIV_ROUND_CLOSEST(KHz(RUNTIME_INFO(i915)->rawclk_freq),
+	return DIV_ROUND_CLOSEST(KHz(DISPLAY_RUNTIME_INFO(i915)->rawclk_freq),
 				 pwm_freq_hz * 128);
 }
 
@@ -1091,7 +1091,7 @@ static u32 i9xx_hz_to_pwm(struct intel_connector *connector, u32 pwm_freq_hz)
 	int clock;
 
 	if (IS_PINEVIEW(i915))
-		clock = KHz(RUNTIME_INFO(i915)->rawclk_freq);
+		clock = KHz(DISPLAY_RUNTIME_INFO(i915)->rawclk_freq);
 	else
 		clock = KHz(i915->display.cdclk.hw.cdclk);
 
@@ -1109,7 +1109,7 @@ static u32 i965_hz_to_pwm(struct intel_connector *connector, u32 pwm_freq_hz)
 	int clock;
 
 	if (IS_G4X(i915))
-		clock = KHz(RUNTIME_INFO(i915)->rawclk_freq);
+		clock = KHz(DISPLAY_RUNTIME_INFO(i915)->rawclk_freq);
 	else
 		clock = KHz(i915->display.cdclk.hw.cdclk);
 
@@ -1133,7 +1133,7 @@ static u32 vlv_hz_to_pwm(struct intel_connector *connector, u32 pwm_freq_hz)
 			clock = MHz(25);
 		mul = 16;
 	} else {
-		clock = KHz(RUNTIME_INFO(i915)->rawclk_freq);
+		clock = KHz(DISPLAY_RUNTIME_INFO(i915)->rawclk_freq);
 		mul = 128;
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index a31f89df2c0a..b28d55fa0c3a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1474,6 +1474,9 @@ static void __intel_display_device_info_runtime_init(struct drm_i915_private *i9
 		}
 	}
 
+	display_runtime->rawclk_freq = intel_read_rawclk(i915);
+	drm_dbg_kms(&i915->drm, "rawclk rate: %d kHz\n", display_runtime->rawclk_freq);
+
 	return;
 
 display_fused_off:
@@ -1516,6 +1519,8 @@ void intel_display_device_info_print(const struct intel_display_device_info *inf
 	drm_printf(p, "has_hdcp: %s\n", str_yes_no(runtime->has_hdcp));
 	drm_printf(p, "has_dmc: %s\n", str_yes_no(runtime->has_dmc));
 	drm_printf(p, "has_dsc: %s\n", str_yes_no(runtime->has_dsc));
+
+	drm_printf(p, "rawclk rate: %u kHz\n", runtime->rawclk_freq);
 }
 
 /*
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 13453ea4daea..ad60c676c84d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -204,6 +204,8 @@ struct intel_display_runtime_info {
 		u16 step;
 	} ip;
 
+	u32 rawclk_freq;
+
 	u8 pipe_mask;
 	u8 cpu_transcoder_mask;
 	u16 port_mask;
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 919f712fef13..adf5d1fbccb5 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -1176,9 +1176,9 @@ static void vlv_init_display_clock_gating(struct drm_i915_private *dev_priv)
 		       MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE);
 	intel_de_write(dev_priv, CBR1_VLV, 0);
 
-	drm_WARN_ON(&dev_priv->drm, RUNTIME_INFO(dev_priv)->rawclk_freq == 0);
+	drm_WARN_ON(&dev_priv->drm, DISPLAY_RUNTIME_INFO(dev_priv)->rawclk_freq == 0);
 	intel_de_write(dev_priv, RAWCLK_FREQ_VLV,
-		       DIV_ROUND_CLOSEST(RUNTIME_INFO(dev_priv)->rawclk_freq,
+		       DIV_ROUND_CLOSEST(DISPLAY_RUNTIME_INFO(dev_priv)->rawclk_freq,
 					 1000));
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index b8a53bb174da..cbc817bb0cc3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -83,7 +83,7 @@ static u32 g4x_get_aux_clock_divider(struct intel_dp *intel_dp, int index)
 	 * The clock divider is based off the hrawclk, and would like to run at
 	 * 2MHz.  So, take the hrawclk value and divide by 2000 and use that
 	 */
-	return DIV_ROUND_CLOSEST(RUNTIME_INFO(i915)->rawclk_freq, 2000);
+	return DIV_ROUND_CLOSEST(DISPLAY_RUNTIME_INFO(i915)->rawclk_freq, 2000);
 }
 
 static u32 ilk_get_aux_clock_divider(struct intel_dp *intel_dp, int index)
@@ -103,7 +103,7 @@ static u32 ilk_get_aux_clock_divider(struct intel_dp *intel_dp, int index)
 	if (dig_port->aux_ch == AUX_CH_A)
 		freq = i915->display.cdclk.hw.cdclk;
 	else
-		freq = RUNTIME_INFO(i915)->rawclk_freq;
+		freq = DISPLAY_RUNTIME_INFO(i915)->rawclk_freq;
 	return DIV_ROUND_CLOSEST(freq, 2000);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 0918eb218fc8..68141af4da54 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -1483,7 +1483,7 @@ static void pps_init_registers(struct intel_dp *intel_dp, bool force_disable_vdd
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	u32 pp_on, pp_off, port_sel = 0;
-	int div = RUNTIME_INFO(dev_priv)->rawclk_freq / 1000;
+	int div = DISPLAY_RUNTIME_INFO(dev_priv)->rawclk_freq / 1000;
 	struct pps_registers regs;
 	enum port port = dp_to_dig_port(intel_dp)->base.port;
 	const struct edp_power_seq *seq = &intel_dp->pps.pps_delays;
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index d26de37719a7..91acbf99574c 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -124,7 +124,6 @@ void intel_device_info_print(const struct intel_device_info *info,
 #undef PRINT_FLAG
 
 	drm_printf(p, "has_pooled_eu: %s\n", str_yes_no(runtime->has_pooled_eu));
-	drm_printf(p, "rawclk rate: %u kHz\n", runtime->rawclk_freq);
 }
 
 #define ID(id) (id)
@@ -370,10 +369,6 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 			 "Disabling ppGTT for VT-d support\n");
 		runtime->ppgtt_type = INTEL_PPGTT_NONE;
 	}
-
-	runtime->rawclk_freq = intel_read_rawclk(dev_priv);
-	drm_dbg(&dev_priv->drm, "rawclk rate: %d kHz\n", runtime->rawclk_freq);
-
 }
 
 /*
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index d1a2abc7e513..fb8a08623eb0 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -204,8 +204,6 @@ struct intel_runtime_info {
 
 	u16 device_id;
 
-	u32 rawclk_freq;
-
 	struct intel_step_info step;
 
 	unsigned int page_sizes; /* page sizes supported by the HW */
-- 
2.39.2

