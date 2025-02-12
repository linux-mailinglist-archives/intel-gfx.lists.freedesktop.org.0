Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23683A32BD8
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 17:37:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF25810E905;
	Wed, 12 Feb 2025 16:37:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rat6J17O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3049B10E905;
 Wed, 12 Feb 2025 16:37:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739378235; x=1770914235;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7HPvE4XYuWvNgeXq0imDOxly1HVppI9I/xRQhtCR+EA=;
 b=Rat6J17OFDqQjxrxNXwGgwdkpx8nP9OpWxpwgufEzI+VquWzzG7HuRzK
 184Bz+NwMbSC5i/Bwn7tekrQvJaKoqBcIpDkmPZnwSfC+Km/N/uXICVNn
 96tlF+J5jYwOpEdAbqFGEidlbkIA9fnDU09wLtSIOow8LvYEDb9ajNzky
 971BlnntQq1ybZf3vJGSTl2m8NTDB32qFsTMjSOY6u/7RV7wNal3NOufm
 WAq32PZNYQIqI8CccEkToOrm3eMaLBGBwLXidcAk7vUyOYoFlVzWDXclK
 HOwUxp/ls2IlJ9uTGXdE06qIyNHI+D0vXrlDvtjtUx0haaZoQwyr5e56j w==;
X-CSE-ConnectionGUID: nN7zWe4SQs+fHEetp9P2ow==
X-CSE-MsgGUID: pynG2YZYSwaL1vRO8susGw==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="50693505"
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="50693505"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 08:37:15 -0800
X-CSE-ConnectionGUID: mD6JSj3DTiOOPWteTJA/QA==
X-CSE-MsgGUID: dKM7FGaTRoKx8v69wYakQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="143713511"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.167])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 08:37:13 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 05/14] drm/i915/display: convert assert_port_valid() to struct
 intel_display
Date: Wed, 12 Feb 2025 18:36:34 +0200
Message-Id: <e06ef0e2cc34d42918f3208362587a17ea34e28f.1739378095.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1739378095.git.jani.nikula@intel.com>
References: <cover.1739378095.git.jani.nikula@intel.com>
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

Going forward, struct intel_display is the main display device data
pointer. Convert the assert_port_valid() helper to struct intel_display,
allowing further conversions elsewhere.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c        | 2 +-
 drivers/gpu/drm/i915/display/g4x_hdmi.c      | 2 +-
 drivers/gpu/drm/i915/display/intel_crt.c     | 2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c     | 2 +-
 drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_display.h | 2 +-
 drivers/gpu/drm/i915/display/intel_dvo.c     | 2 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c    | 3 ++-
 8 files changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index f50ab9a3f3e9..b6cb5c74a32e 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -1286,7 +1286,7 @@ bool g4x_dp_init(struct intel_display *display,
 	struct drm_encoder *encoder;
 	struct intel_connector *intel_connector;
 
-	if (!assert_port_valid(dev_priv, port))
+	if (!assert_port_valid(display, port))
 		return false;
 
 	devdata = intel_bios_encoder_data_lookup(display, port);
diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index 6670cf101b9a..5b2df1014c10 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -691,7 +691,7 @@ bool g4x_hdmi_init(struct intel_display *display,
 	struct intel_encoder *intel_encoder;
 	struct intel_connector *intel_connector;
 
-	if (!assert_port_valid(dev_priv, port))
+	if (!assert_port_valid(display, port))
 		return false;
 
 	if (!assert_hdmi_port_valid(display, port))
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index aa46c14ce225..396846025922 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -1099,7 +1099,7 @@ void intel_crt_init(struct intel_display *display)
 	connector->base.polled = connector->polled;
 
 	if (HAS_DDI(display)) {
-		assert_port_valid(dev_priv, PORT_E);
+		assert_port_valid(display, PORT_E);
 
 		crt->base.port = PORT_E;
 		crt->base.get_config = hsw_crt_get_config;
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 2c05742d8fd1..ab382adaba56 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -5132,7 +5132,7 @@ void intel_ddi_init(struct intel_display *display,
 		return;
 	}
 
-	if (!assert_port_valid(dev_priv, port))
+	if (!assert_port_valid(display, port))
 		return;
 
 	if (port_in_use(dev_priv, port)) {
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a95564b499ea..2a8f53f06463 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8188,9 +8188,9 @@ static bool intel_ddi_crt_present(struct drm_i915_private *dev_priv)
 	return true;
 }
 
-bool assert_port_valid(struct drm_i915_private *i915, enum port port)
+bool assert_port_valid(struct intel_display *display, enum port port)
 {
-	return !drm_WARN(&i915->drm, !(DISPLAY_RUNTIME_INFO(i915)->port_mask & BIT(port)),
+	return !drm_WARN(display->drm, !(DISPLAY_RUNTIME_INFO(display)->port_mask & BIT(port)),
 			 "Platform does not support port %c\n", port_name(port));
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 503e2ea1d029..9439da737f5b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -579,7 +579,7 @@ void assert_transcoder(struct intel_display *display,
 #define assert_transcoder_enabled(d, t) assert_transcoder(d, t, true)
 #define assert_transcoder_disabled(d, t) assert_transcoder(d, t, false)
 
-bool assert_port_valid(struct drm_i915_private *i915, enum port port);
+bool assert_port_valid(struct intel_display *display, enum port port);
 
 /*
  * Use INTEL_DISPLAY_STATE_WARN(x) (rather than WARN() and WARN_ON()) for hw
diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index c310698a1a86..29f8788fb26a 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -524,7 +524,7 @@ void intel_dvo_init(struct drm_i915_private *i915)
 		return;
 	}
 
-	assert_port_valid(i915, intel_dvo->dev.port);
+	assert_port_valid(display, intel_dvo->dev.port);
 
 	encoder->type = INTEL_OUTPUT_DVO;
 	encoder->power_domain = POWER_DOMAIN_PORT_OTHER;
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 6ebd099d8861..0c3aa2e7b78b 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -3386,11 +3386,12 @@ static bool assert_sdvo_port_valid(struct drm_i915_private *dev_priv,
 bool intel_sdvo_init(struct drm_i915_private *dev_priv,
 		     i915_reg_t sdvo_reg, enum port port)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct intel_encoder *intel_encoder;
 	struct intel_sdvo *intel_sdvo;
 	int i;
 
-	if (!assert_port_valid(dev_priv, port))
+	if (!assert_port_valid(display, port))
 		return false;
 
 	if (!assert_sdvo_port_valid(dev_priv, port))
-- 
2.39.5

