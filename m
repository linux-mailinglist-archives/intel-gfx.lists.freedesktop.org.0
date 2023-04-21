Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8E1E6EA99D
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 13:48:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2254E10E03E;
	Fri, 21 Apr 2023 11:48:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 396FE10EE0C
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Apr 2023 11:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682077696; x=1713613696;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jRWJTUh57hsQkbok86KDZE7EtW6byQqW0HoOKeLY/00=;
 b=bm6xNnrtWk/3xs9Z71NHHL3o9oD7SZweHKtCJX2KekJKELoxSifcWRyk
 BfpaLuLxu0upfXHHXD7w84tNSrcSPFshnaBDMysxZmHYFjjbOkgDeAo/G
 wZMDgqYzEj/C0vZdEbROj/3kpCEtO2tDgE8SHg5vJPy+iKt0fcFsqgfrx
 HASAoMaZNgx6yHPc1Mq+IOwXQ+/7SkMQpguiywRPQrfP5y2jnOTRS/rmX
 FxUxC0lGkDMQ67YilYpWl53vCIsC/1yChC37w9FdCWErzHfIrlz+prKzw
 U255Dtx0KuyAnTcvbSBdPRoUhDxj39sUKgOaOXGijjk/OR+iSNIxYgbUs Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="326304824"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="326304824"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 04:48:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="694942681"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="694942681"
Received: from hseyranx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.32.135])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 04:48:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Apr 2023 14:47:43 +0300
Message-Id: <d40726d2b4dcff2f91de840d464acda3d1b0365a.1682077472.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1682077472.git.jani.nikula@intel.com>
References: <cover.1682077472.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/13] drm/i915/hdmi: stop caching has_audio in
 struct intel_hdmi
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
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 8 +++-----
 drivers/gpu/drm/i915/display/intel_display_types.h   | 1 -
 drivers/gpu/drm/i915/display/intel_hdmi.c            | 6 ++----
 3 files changed, 5 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 1416b82fc8a3..2a4df62692a6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -252,13 +252,11 @@ static void intel_dp_mst_info(struct seq_file *m,
 }
 
 static void intel_hdmi_info(struct seq_file *m,
-			    struct intel_connector *intel_connector)
+			    struct intel_connector *connector)
 {
-	struct intel_encoder *intel_encoder = intel_attached_encoder(intel_connector);
-	struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(intel_encoder);
+	bool has_audio = connector->base.display_info.has_audio;
 
-	seq_printf(m, "\taudio support: %s\n",
-		   str_yes_no(intel_hdmi->has_audio));
+	seq_printf(m, "\taudio support: %s\n", str_yes_no(has_audio));
 }
 
 static void intel_connector_info(struct seq_file *m,
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 17681a8e745c..d7ff75167f1f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1549,7 +1549,6 @@ struct intel_hdmi {
 		int max_tmds_clock;
 	} dp_dual_mode;
 	bool has_hdmi_sink;
-	bool has_audio;
 	struct intel_connector *attached_connector;
 	struct cec_notifier *cec_notifier;
 };
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 8141d5184856..3045bf21ba8f 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2158,7 +2158,7 @@ static bool intel_hdmi_has_audio(struct intel_encoder *encoder,
 				 const struct intel_crtc_state *crtc_state,
 				 const struct drm_connector_state *conn_state)
 {
-	struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(encoder);
+	struct drm_connector *connector = conn_state->connector;
 	const struct intel_digital_connector_state *intel_conn_state =
 		to_intel_digital_connector_state(conn_state);
 
@@ -2166,7 +2166,7 @@ static bool intel_hdmi_has_audio(struct intel_encoder *encoder,
 		return false;
 
 	if (intel_conn_state->force_audio == HDMI_AUDIO_AUTO)
-		return intel_hdmi->has_audio;
+		return connector->display_info.has_audio;
 	else
 		return intel_conn_state->force_audio == HDMI_AUDIO_ON;
 }
@@ -2360,7 +2360,6 @@ intel_hdmi_unset_edid(struct drm_connector *connector)
 	struct intel_hdmi *intel_hdmi = intel_attached_hdmi(to_intel_connector(connector));
 
 	intel_hdmi->has_hdmi_sink = false;
-	intel_hdmi->has_audio = false;
 
 	intel_hdmi->dp_dual_mode.type = DRM_DP_DUAL_MODE_NONE;
 	intel_hdmi->dp_dual_mode.max_tmds_clock = 0;
@@ -2453,7 +2452,6 @@ intel_hdmi_set_edid(struct drm_connector *connector)
 	/* FIXME: Get rid of drm_edid_raw() */
 	edid = drm_edid_raw(drm_edid);
 	if (edid && edid->input & DRM_EDID_INPUT_DIGITAL) {
-		intel_hdmi->has_audio = drm_detect_monitor_audio(edid);
 		intel_hdmi->has_hdmi_sink = drm_detect_hdmi_monitor(edid);
 
 		intel_hdmi_dp_dual_mode_detect(connector);
-- 
2.39.2

