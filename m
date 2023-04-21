Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF8F36EA99F
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 13:48:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B2FE10E080;
	Fri, 21 Apr 2023 11:48:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2B6410E0B0
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Apr 2023 11:48:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682077704; x=1713613704;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ef/IJBhJmnaik+ujAH+5+70Z2aJBkoiTlGAdnO+pE/o=;
 b=Xoebhf5Jg+zPC5azpr9G+zrZX5G2BIqIxQSjPpmx1O9nQIvYFoJQuIFv
 IOFXTp5X7FsOntK+cQImgWc7dZZKyXlyODooq6Ve3rVY1uWR6F3iQjuTP
 3bDYLJGvaMHRj20iSoe/cElH0w5K8dnWmJNxR33fbt4wolTWtlLj88tGq
 3Ryd/uYGqMaGTlqrui78crtxFc8k3Vznx6pwe6/WxerFTpY98vKpAtIoK
 LTgxgpuiCizC0kXWIHdRSe5LzYGKZI1hfa9EU/SaLFZgpqzkDU9RV2Diy
 A1h7uRsDcaMeY/XVC/+mp9d+moBEyeoO1gNvOsuA60KUP2lM9uFaeEwS1 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="344730286"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="344730286"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 04:48:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="685709482"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="685709482"
Received: from hseyranx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.32.135])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 04:48:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Apr 2023 14:47:45 +0300
Message-Id: <e3ae4d0b7472eb71b4be2e4017a48d3a7880cd2e.1682077472.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1682077472.git.jani.nikula@intel.com>
References: <cover.1682077472.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/13] drm/i915/sdvo: stop caching
 has_hdmi_monitor in struct intel_sdvo
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use the information stored in display info.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index e12ba458636c..0bbfab95ca37 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -117,7 +117,6 @@ struct intel_sdvo {
 
 	enum port port;
 
-	bool has_hdmi_monitor;
 	bool has_hdmi_audio;
 
 	/* DDC bus used by this SDVO encoder */
@@ -1303,10 +1302,13 @@ static void i9xx_adjust_sdvo_tv_clock(struct intel_crtc_state *pipe_config)
 	pipe_config->clock_set = true;
 }
 
-static bool intel_has_hdmi_sink(struct intel_sdvo *sdvo,
+static bool intel_has_hdmi_sink(struct intel_sdvo_connector *intel_sdvo_connector,
 				const struct drm_connector_state *conn_state)
 {
-	return sdvo->has_hdmi_monitor &&
+	struct drm_connector *connector = conn_state->connector;
+
+	return intel_sdvo_connector->is_hdmi &&
+		connector->display_info.is_hdmi &&
 		READ_ONCE(to_intel_digital_connector_state(conn_state)->force_audio) != HDMI_AUDIO_OFF_DVI;
 }
 
@@ -1400,7 +1402,7 @@ static int intel_sdvo_compute_config(struct intel_encoder *encoder,
 	pipe_config->pixel_multiplier =
 		intel_sdvo_get_pixel_multiplier(adjusted_mode);
 
-	pipe_config->has_hdmi_sink = intel_has_hdmi_sink(intel_sdvo, conn_state);
+	pipe_config->has_hdmi_sink = intel_has_hdmi_sink(intel_sdvo_connector, conn_state);
 
 	pipe_config->has_audio =
 		intel_sdvo_has_audio(encoder, pipe_config, conn_state) &&
@@ -1906,7 +1908,7 @@ intel_sdvo_mode_valid(struct drm_connector *connector,
 	struct intel_sdvo_connector *intel_sdvo_connector =
 		to_intel_sdvo_connector(connector);
 	int max_dotclk = to_i915(connector->dev)->max_dotclk_freq;
-	bool has_hdmi_sink = intel_has_hdmi_sink(intel_sdvo, connector->state);
+	bool has_hdmi_sink = intel_has_hdmi_sink(intel_sdvo_connector, connector->state);
 	int clock = mode->clock;
 
 	if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
@@ -2095,7 +2097,6 @@ intel_sdvo_tmds_sink_detect(struct drm_connector *connector)
 		if (edid->input & DRM_EDID_INPUT_DIGITAL) {
 			status = connector_status_connected;
 			if (intel_sdvo_connector->is_hdmi) {
-				intel_sdvo->has_hdmi_monitor = drm_detect_hdmi_monitor(edid);
 				intel_sdvo->has_hdmi_audio = drm_detect_monitor_audio(edid);
 			}
 		} else
@@ -2147,7 +2148,6 @@ intel_sdvo_detect(struct drm_connector *connector, bool force)
 
 	intel_sdvo->attached_output = response;
 
-	intel_sdvo->has_hdmi_monitor = false;
 	intel_sdvo->has_hdmi_audio = false;
 
 	if ((intel_sdvo_connector->output_flag & response) == 0)
-- 
2.39.2

