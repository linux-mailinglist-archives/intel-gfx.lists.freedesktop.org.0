Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1B52204070
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2020 21:30:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3F746E8CA;
	Mon, 22 Jun 2020 19:30:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 841766E8C8
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jun 2020 19:30:34 +0000 (UTC)
IronPort-SDR: Q5af7oMl6j4O05iPImSTi92wsD1dOlw0pCKICuRv1ez/Le3Nm891+m0khKsTcfDZZvPzJJW2+h
 ugxbjyZUA/Cw==
X-IronPort-AV: E=McAfee;i="6000,8403,9660"; a="132287985"
X-IronPort-AV: E=Sophos;i="5.75,268,1589266800"; d="scan'208";a="132287985"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 12:30:34 -0700
IronPort-SDR: +/IDl/Vudd+FbQnOZHuKIi3vZtmLobIr4enXdibCWd/QVClJMT8xTAciHtvFx9YXCxenbo/TKm
 pKvw9JIz59rg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,268,1589266800"; d="scan'208";a="292949047"
Received: from unknown (HELO linuxpresi1-desktop.iind.intel.com)
 ([10.223.74.152])
 by orsmga002.jf.intel.com with ESMTP; 22 Jun 2020 12:30:32 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Jun 2020 01:30:37 +0530
Message-Id: <20200622200038.14034-11-uma.shankar@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200622200038.14034-1-uma.shankar@intel.com>
References: <20200622200038.14034-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v5 10/11] drm/i915/lspcon: Do not send DRM infoframes
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
index d5b14d3d5aee..027b3b96e4f8 100644
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
