Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E38185FB8CB
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 19:01:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B817A10E981;
	Tue, 11 Oct 2022 17:01:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE82B10E97A
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 17:01:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665507689; x=1697043689;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tYcm6ZrV/cQR0O0EUZVRIMrq4kwTaGjMDE6do/v1xzE=;
 b=bT2kjCWoijguvGvjbkzd9y55uFGGEmnLNQjZ7p2gfTy8yi7aU1mWbOJ4
 yVC+gP7f0N2QfG7wlF/WhBcZiRdVQmWn2CWG3oreQzvpUtVRyCMF/ttiX
 CKcIy0jwUSd9W45wvJcz2vipxVjwP+rsUQ13VW4orHe+jsJISGSWbKJJZ
 XV7vDG0LESBUmbMjHUKleyRR/p5LoZeGwObrDViTjVv0GMVcReWlNFLmz
 iVlxYLBBV8c1y1uylPFf+HrmyQS2QDm1dVldaWuzQYtx6O/vh7e/chzhg
 r9dgh3YBXi4tLY5e8Ac1OQmQOKNVO/1xxpCRmIP44u8gaGfietk0AwmqW A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="302178201"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="302178201"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 10:01:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="628771806"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="628771806"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga007.fm.intel.com with SMTP; 11 Oct 2022 10:01:18 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Oct 2022 20:01:17 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Oct 2022 20:00:06 +0300
Message-Id: <20221011170011.17198-18-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
References: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 17/22] drm/i915/sdvo: Extract
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
Cc: Takashi Iwai <tiwai@suse.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Pull the SDVO audio state computaiton into a helper.

This is almost identical to intel_hdmi_has_audio(),
except the sink capabilities are stored under intel_sdvo
rather than intel_hdmi. Might be nice to get rid of
this duplication eventually...

Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
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
2.35.1

