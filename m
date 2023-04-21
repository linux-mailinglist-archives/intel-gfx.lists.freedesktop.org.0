Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5220A6EA9A0
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 13:48:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0BB510E213;
	Fri, 21 Apr 2023 11:48:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F31F10E213
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Apr 2023 11:48:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682077709; x=1713613709;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5EBZ9ffZICHIocRhPJ672i16PCzr4xWxos75fauEmj4=;
 b=fLbeHlMIKr2Pvr38M21ZU2YsQJ1B0EXb5vdmKlav7Y1k2qOWOmPcJ61q
 fDDyfWn62yL8qdLLdFekvr6GsVOXnS1GiJP0RFvdSBhpulGJFJR49f8e2
 dV+5ozCTkBrzRyQmSv505kXQ9pTODH+KrzoWtKRyMY7FpY30deQRNlet4
 Uz7sSHQ+97iuDioe2MN9cwRu/39ecaw3q66jiJGeLzw0JQ37LtkdHc6Xi
 SrYv5imRMMRiL0BVzHFuDA6HG1irH16+Nscr8NFq8gWa31W6uxUj2PLck
 8elRAPzn9HmSaES9u7+KFr5qtZ0RVHFK5M79tCKIwojEZ5dcFVPf9Hokg Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="344730295"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="344730295"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 04:48:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="685709500"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="685709500"
Received: from hseyranx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.32.135])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 04:48:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Apr 2023 14:47:46 +0300
Message-Id: <1d57cb2b4a8c2ff3c4cd06388e0a5ecbdf379601.1682077472.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1682077472.git.jani.nikula@intel.com>
References: <cover.1682077472.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/13] drm/i915/sdvo: stop caching
 has_hdmi_audio in struct intel_sdvo
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
 drivers/gpu/drm/i915/display/intel_sdvo.c | 20 +++++++-------------
 1 file changed, 7 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 0bbfab95ca37..0f0c1733cd0d 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -117,8 +117,6 @@ struct intel_sdvo {
 
 	enum port port;
 
-	bool has_hdmi_audio;
-
 	/* DDC bus used by this SDVO encoder */
 	u8 ddc_bus;
 
@@ -1328,7 +1326,9 @@ static bool intel_sdvo_has_audio(struct intel_encoder *encoder,
 				 const struct intel_crtc_state *crtc_state,
 				 const struct drm_connector_state *conn_state)
 {
-	struct intel_sdvo *intel_sdvo = to_sdvo(encoder);
+	struct drm_connector *connector = conn_state->connector;
+	struct intel_sdvo_connector *intel_sdvo_connector =
+		to_intel_sdvo_connector(connector);
 	const struct intel_digital_connector_state *intel_conn_state =
 		to_intel_digital_connector_state(conn_state);
 
@@ -1336,7 +1336,8 @@ static bool intel_sdvo_has_audio(struct intel_encoder *encoder,
 		return false;
 
 	if (intel_conn_state->force_audio == HDMI_AUDIO_AUTO)
-		return intel_sdvo->has_hdmi_audio;
+		return intel_sdvo_connector->is_hdmi &&
+			connector->display_info.has_audio;
 	else
 		return intel_conn_state->force_audio == HDMI_AUDIO_ON;
 }
@@ -2056,8 +2057,6 @@ static enum drm_connector_status
 intel_sdvo_tmds_sink_detect(struct drm_connector *connector)
 {
 	struct intel_sdvo *intel_sdvo = intel_attached_sdvo(to_intel_connector(connector));
-	struct intel_sdvo_connector *intel_sdvo_connector =
-		to_intel_sdvo_connector(connector);
 	enum drm_connector_status status;
 	struct edid *edid;
 
@@ -2094,12 +2093,9 @@ intel_sdvo_tmds_sink_detect(struct drm_connector *connector)
 	status = connector_status_unknown;
 	if (edid != NULL) {
 		/* DDC bus is shared, match EDID to connector type */
-		if (edid->input & DRM_EDID_INPUT_DIGITAL) {
+		if (edid->input & DRM_EDID_INPUT_DIGITAL)
 			status = connector_status_connected;
-			if (intel_sdvo_connector->is_hdmi) {
-				intel_sdvo->has_hdmi_audio = drm_detect_monitor_audio(edid);
-			}
-		} else
+		else
 			status = connector_status_disconnected;
 		kfree(edid);
 	}
@@ -2148,8 +2144,6 @@ intel_sdvo_detect(struct drm_connector *connector, bool force)
 
 	intel_sdvo->attached_output = response;
 
-	intel_sdvo->has_hdmi_audio = false;
-
 	if ((intel_sdvo_connector->output_flag & response) == 0)
 		ret = connector_status_disconnected;
 	else if (IS_TMDS(intel_sdvo_connector))
-- 
2.39.2

