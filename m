Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C0E31129AA7
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2019 20:59:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76E506E2EF;
	Mon, 23 Dec 2019 19:59:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CEE06E0D9
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Dec 2019 19:59:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Dec 2019 11:59:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,348,1571727600"; d="scan'208";a="219598190"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by orsmga003.jf.intel.com with ESMTP; 23 Dec 2019 11:59:08 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Dec 2019 11:58:43 -0800
Message-Id: <20191223195850.25997-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191223195850.25997-1-lucas.demarchi@intel.com>
References: <20191223195850.25997-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/9] drm/i915/display: remove alias to dig_port
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We don't need intel_dig_port and dig_port to refer to the same thing.
Prefer the latter.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index c9ba7d7f3787..f054c82214c0 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3674,12 +3674,11 @@ static void intel_ddi_pre_enable_hdmi(struct intel_encoder *encoder,
 				      const struct intel_crtc_state *crtc_state,
 				      const struct drm_connector_state *conn_state)
 {
-	struct intel_digital_port *intel_dig_port = enc_to_dig_port(&encoder->base);
-	struct intel_hdmi *intel_hdmi = &intel_dig_port->hdmi;
+	struct intel_digital_port *dig_port = enc_to_dig_port(&encoder->base);
+	struct intel_hdmi *intel_hdmi = &dig_port->hdmi;
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum port port = encoder->port;
 	int level = intel_ddi_hdmi_level(dev_priv, port);
-	struct intel_digital_port *dig_port = enc_to_dig_port(&encoder->base);
 
 	intel_dp_dual_mode_set_tmds_output(intel_hdmi, true);
 	intel_ddi_clk_select(encoder, crtc_state);
@@ -3709,9 +3708,8 @@ static void intel_ddi_pre_enable_hdmi(struct intel_encoder *encoder,
 
 	intel_ddi_enable_pipe_clock(crtc_state);
 
-	intel_dig_port->set_infoframes(encoder,
-				       crtc_state->has_infoframe,
-				       crtc_state, conn_state);
+	dig_port->set_infoframes(encoder, crtc_state->has_infoframe,
+				 crtc_state, conn_state);
 }
 
 static void intel_ddi_pre_enable(struct intel_encoder *encoder,
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
