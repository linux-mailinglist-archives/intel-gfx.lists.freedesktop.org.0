Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B31F60E615
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 19:03:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E7B510E60A;
	Wed, 26 Oct 2022 17:02:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1D1910E60A
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 17:02:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666803772; x=1698339772;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TWgs12pnRZueCN/2+ol6TsVxEtTvHrmzp7+TQurKciY=;
 b=ZBN803yyGAauPPkue3FKEwlOdY8L51rM0v4FxZfrYUzn2V5G9oBNOgvE
 sOgx/z92nBUZvxF7uLLJVFoFMl2RouqAGbsMoAPsyKTLGTVFAG6EBBCB+
 KZrIh8/aUUr3yD6BZHVl/gF6zXPv7liWH+sLXFQko/61gwlFEm6COabVv
 B4TWIVuAeJ9+i4lPYnx4lfLCPkSN66SLerB4fSSqyMK/qNiwZEnc8ygh2
 4pViGGQ8XeiQFc5vCpvm0XMJaZbG9a1jkKkrhpRcRbjtt7FdkyCywQK8y
 nP8klWXACOiUb1SZDh6tRInSJaUAHkzWQWY37S6KfqHPAJS6XU5hADrLc w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="334625205"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="334625205"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 10:02:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="632091033"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="632091033"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 26 Oct 2022 10:02:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Oct 2022 20:02:48 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Oct 2022 20:01:50 +0300
Message-Id: <20221026170150.2654-16-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221026170150.2654-1-ville.syrjala@linux.intel.com>
References: <20221026170150.2654-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 15/15] drm/i915/sdvo: Extract
 intel_sdvo_has_audio()
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
Cc: Takashi Iwai <tiwai@suse.de>, Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Pull the SDVO audio state computation into a helper.

This is almost identical to intel_hdmi_has_audio(),
except the sink capabilities are stored under intel_sdvo
rather than intel_hdmi. Might be nice to get rid of
this duplication eventually...

Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 27 +++++++++++++++--------
 1 file changed, 18 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index cf8e80936d8e..8852564b5fbf 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -1297,13 +1297,28 @@ static bool intel_sdvo_limited_color_range(struct intel_encoder *encoder,
 	return intel_hdmi_limited_color_range(crtc_state, conn_state);
 }
 
+static bool intel_sdvo_has_audio(struct intel_encoder *encoder,
+				 const struct intel_crtc_state *crtc_state,
+				 const struct drm_connector_state *conn_state)
+{
+	struct intel_sdvo *intel_sdvo = to_sdvo(encoder);
+	const struct intel_digital_connector_state *intel_conn_state =
+		to_intel_digital_connector_state(conn_state);
+
+	if (!crtc_state->has_hdmi_sink)
+		return false;
+
+	if (intel_conn_state->force_audio == HDMI_AUDIO_AUTO)
+		return intel_sdvo->has_hdmi_audio;
+	else
+		return intel_conn_state->force_audio == HDMI_AUDIO_ON;
+}
+
 static int intel_sdvo_compute_config(struct intel_encoder *encoder,
 				     struct intel_crtc_state *pipe_config,
 				     struct drm_connector_state *conn_state)
 {
 	struct intel_sdvo *intel_sdvo = to_sdvo(encoder);
-	struct intel_sdvo_connector_state *intel_sdvo_state =
-		to_intel_sdvo_connector_state(conn_state);
 	struct intel_sdvo_connector *intel_sdvo_connector =
 		to_intel_sdvo_connector(conn_state->connector);
 	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
@@ -1362,13 +1377,7 @@ static int intel_sdvo_compute_config(struct intel_encoder *encoder,
 
 	pipe_config->has_hdmi_sink = intel_has_hdmi_sink(intel_sdvo, conn_state);
 
-	if (pipe_config->has_hdmi_sink) {
-		if (intel_sdvo_state->base.force_audio == HDMI_AUDIO_AUTO)
-			pipe_config->has_audio = intel_sdvo->has_hdmi_audio;
-		else
-			pipe_config->has_audio =
-				intel_sdvo_state->base.force_audio == HDMI_AUDIO_ON;
-	}
+	pipe_config->has_audio = intel_sdvo_has_audio(encoder, pipe_config, conn_state);
 
 	pipe_config->limited_color_range =
 		intel_sdvo_limited_color_range(encoder, pipe_config,
-- 
2.37.4

