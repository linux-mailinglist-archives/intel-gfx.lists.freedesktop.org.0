Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F1A58FE50F
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 13:16:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D1E010E8FC;
	Thu,  6 Jun 2024 11:16:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="blFA0A20";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4306110E902
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 11:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717672612; x=1749208612;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=E5I+FOtudeaaiSO7cnfUic53T69jRXtB3htKG4ISPJc=;
 b=blFA0A206gNteQWomgZi5wzJQuhgkc5hvwaOJp6fkSi3MDf4WqyUB37f
 OA798Ut8PHDVFT2c7rzjZCLZu/R7sfmFCHfpuaR7Bo44qeeiX58xH8CHs
 OnQbG/hlQv67AY62V+h9mDbxd9tZZ6wLqWqHgwfZk9+Yd7ihWr1cZo4wQ
 g7zdqpq64tc0+sby0cHBbpH+XAnOSyj8ZJAR0E4nUJh32ynkSv+vTZx9Y
 0w2w6oj20/4XQHXfuctcgjMR4wNnQcy26wkSbU/AGfKE9khsVOXNpbQda
 CX8Csgnnn94gftr/OUfhkZ+c1lRjqZERAXitWHbP+c466FDf0+JAa7JWN Q==;
X-CSE-ConnectionGUID: wHkaiHj9TKC0e0avaXkMXw==
X-CSE-MsgGUID: AQIlURN+TfWvnJEBQZotJQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11094"; a="14137177"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14137177"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 04:16:51 -0700
X-CSE-ConnectionGUID: FqqISYH+TqChIFRI1GLBgQ==
X-CSE-MsgGUID: rfoK+2u8SkCczkAAPn7+SA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38020196"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 04:16:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 12/14] drm/i915: move rawclk from runtime to display
 runtime info
Date: Thu,  6 Jun 2024 14:16:04 +0300
Message-Id: <af1178f199f548eaed714b80c51c1141a8e527fa.1717672515.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717672515.git.jani.nikula@intel.com>
References: <cover.1717672515.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

It's mostly about display, so move it under display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_backlight.c         | 10 +++++-----
 drivers/gpu/drm/i915/display/intel_cdclk.c             |  2 +-
 drivers/gpu/drm/i915/display/intel_display_device.c    |  2 ++
 drivers/gpu/drm/i915/display/intel_display_device.h    |  2 ++
 .../gpu/drm/i915/display/intel_display_power_well.c    |  4 ++--
 drivers/gpu/drm/i915/display/intel_dp_aux.c            |  4 ++--
 drivers/gpu/drm/i915/display/intel_pps.c               |  2 +-
 drivers/gpu/drm/i915/intel_device_info.c               |  1 -
 drivers/gpu/drm/i915/intel_device_info.h               |  2 --
 9 files changed, 15 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index 071668bfe5d1..66ee925287c2 100644
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
 
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index cfb7d4e2f05e..17d04353b2b0 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3585,7 +3585,7 @@ static void intel_rawclk_init(struct drm_i915_private *dev_priv)
 	else if (DISPLAY_VER(dev_priv) >= 3)
 		freq = i9xx_hrawclk(dev_priv);
 
-	RUNTIME_INFO(dev_priv)->rawclk_freq = freq;
+	DISPLAY_RUNTIME_INFO(dev_priv)->rawclk_freq = freq;
 	drm_dbg_kms(&dev_priv->drm, "rawclk rate: %d kHz\n", freq);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index b35422da7f6c..f10996b0b41d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1511,6 +1511,8 @@ void intel_display_device_info_print(const struct intel_display_device_info *inf
 	drm_printf(p, "has_hdcp: %s\n", str_yes_no(runtime->has_hdcp));
 	drm_printf(p, "has_dmc: %s\n", str_yes_no(runtime->has_dmc));
 	drm_printf(p, "has_dsc: %s\n", str_yes_no(runtime->has_dsc));
+
+	drm_printf(p, "rawclk rate: %u kHz\n", runtime->rawclk_freq);
 }
 
 /*
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index e1d9947394dc..2dcfdcdf69bd 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -201,6 +201,8 @@ struct intel_display_runtime_info {
 		u16 step;
 	} ip;
 
+	u32 rawclk_freq;
+
 	u8 pipe_mask;
 	u8 cpu_transcoder_mask;
 	u16 port_mask;
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 83f616097a29..a6b156c4388e 100644
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
index 73046ef58d8e..8ca2800f614c 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -1468,7 +1468,7 @@ static void pps_init_registers(struct intel_dp *intel_dp, bool force_disable_vdd
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	u32 pp_on, pp_off, port_sel = 0;
-	int div = RUNTIME_INFO(dev_priv)->rawclk_freq / 1000;
+	int div = DISPLAY_RUNTIME_INFO(dev_priv)->rawclk_freq / 1000;
 	struct pps_registers regs;
 	enum port port = dp_to_dig_port(intel_dp)->base.port;
 	const struct edp_power_seq *seq = &intel_dp->pps.pps_delays;
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 365bb7a10030..91acbf99574c 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -124,7 +124,6 @@ void intel_device_info_print(const struct intel_device_info *info,
 #undef PRINT_FLAG
 
 	drm_printf(p, "has_pooled_eu: %s\n", str_yes_no(runtime->has_pooled_eu));
-	drm_printf(p, "rawclk rate: %u kHz\n", runtime->rawclk_freq);
 }
 
 #define ID(id) (id)
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

