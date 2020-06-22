Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 906BB2036CC
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2020 14:30:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 001E06E5AB;
	Mon, 22 Jun 2020 12:30:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0DB36E5B4
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jun 2020 12:30:32 +0000 (UTC)
IronPort-SDR: 8WHySO2METf0Q35Cx5JbieltTZI5WilrySSscEQXLziuann2ceBQSIm8oXfgO0XrafxwEvKO2P
 ZxFZIBEcnKuA==
X-IronPort-AV: E=McAfee;i="6000,8403,9659"; a="228402426"
X-IronPort-AV: E=Sophos;i="5.75,266,1589266800"; d="scan'208";a="228402426"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 05:30:32 -0700
IronPort-SDR: mE1MICJBGlcle8Ftf5d3uB/JtvfJBXg6gZ1yUIXyoPaJFkryd+dWKf2NDqsRk5H2JQ8RQtCFUN
 xGfByLfqXt6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,266,1589266800"; d="scan'208";a="292832638"
Received: from unknown (HELO linuxpresi1-desktop.iind.intel.com)
 ([10.223.74.152])
 by orsmga002.jf.intel.com with ESMTP; 22 Jun 2020 05:30:30 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Jun 2020 18:30:28 +0530
Message-Id: <20200622130029.28667-10-uma.shankar@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200622130029.28667-1-uma.shankar@intel.com>
References: <20200622130029.28667-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v4 09/10] drm/i915/lspcon: Do not send DRM infoframes
 to non-HDMI sinks
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Non-HDMI sinks shouldn't be sent Dynamic Range and Mastering infoframes.
Check for that when using LSPCON.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index ca7911a47d0a..672441cc99c3 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3714,6 +3714,7 @@ static void intel_enable_ddi_dp(struct intel_atomic_state *state,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	enum port port = encoder->port;
 
 	if (port == PORT_A && INTEL_GEN(dev_priv) < 9)
@@ -3721,7 +3722,14 @@ static void intel_enable_ddi_dp(struct intel_atomic_state *state,
 
 	intel_edp_backlight_on(crtc_state, conn_state);
 	intel_psr_enable(intel_dp, crtc_state, conn_state);
-	intel_dp_set_infoframes(encoder, true, crtc_state, conn_state);
+
+	if (dig_port->lspcon.active) {
+		if (dig_port->dp.has_hdmi_sink)
+			intel_dp_set_infoframes(encoder, true, crtc_state, conn_state);
+	} else {
+		intel_dp_set_infoframes(encoder, true, crtc_state, conn_state);
+	}
+
 	intel_edp_drrs_enable(intel_dp, crtc_state);
 
 	if (crtc_state->has_audio)
-- 
2.22.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
