Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67C6C20BD3A
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Jun 2020 01:48:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49D316E50C;
	Fri, 26 Jun 2020 23:48:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1795E6E509
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jun 2020 23:48:53 +0000 (UTC)
IronPort-SDR: 3XgXTQvw/lLA/ZS+fF80SWpWXSwUjFFkklDpLe4kld8VKL54tCeeXtF1RaGPdcCTVqD8zi2SKy
 Yxg7KZuakulA==
X-IronPort-AV: E=McAfee;i="6000,8403,9664"; a="147014065"
X-IronPort-AV: E=Sophos;i="5.75,285,1589266800"; d="scan'208";a="147014065"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2020 16:48:52 -0700
IronPort-SDR: lF2qvIgTKi9b4+FU387+2FBJlgh/kD+xVfzbhOInmKrTbh+AjY2JYxjMrSf5noG/a4nYYM3Wdm
 KuSTGzbZ5Egw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,285,1589266800"; d="scan'208";a="311536627"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by orsmga008.jf.intel.com with ESMTP; 26 Jun 2020 16:48:52 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 Jun 2020 16:48:32 -0700
Message-Id: <20200626234834.26864-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200626234834.26864-1-lucas.demarchi@intel.com>
References: <20200626234834.26864-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915/display: remove alias to
 dig_port
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We don't need intel_dig_port and dig_port to refer to the same thing.
Prefer the latter.

v2: fix coding style

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 884b507c5f55..025d4052f6f8 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3380,11 +3380,10 @@ static void intel_ddi_pre_enable_hdmi(struct intel_atomic_state *state,
 				      const struct intel_crtc_state *crtc_state,
 				      const struct drm_connector_state *conn_state)
 {
-	struct intel_digital_port *intel_dig_port = enc_to_dig_port(encoder);
-	struct intel_hdmi *intel_hdmi = &intel_dig_port->hdmi;
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+	struct intel_hdmi *intel_hdmi = &dig_port->hdmi;
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	int level = intel_ddi_hdmi_level(encoder);
-	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 
 	intel_dp_dual_mode_set_tmds_output(intel_hdmi, true);
 	intel_ddi_clk_select(encoder, crtc_state);
@@ -3411,9 +3410,9 @@ static void intel_ddi_pre_enable_hdmi(struct intel_atomic_state *state,
 
 	intel_ddi_enable_pipe_clock(encoder, crtc_state);
 
-	intel_dig_port->set_infoframes(encoder,
-				       crtc_state->has_infoframe,
-				       crtc_state, conn_state);
+	dig_port->set_infoframes(encoder,
+				 crtc_state->has_infoframe,
+				 crtc_state, conn_state);
 }
 
 static void intel_ddi_pre_enable(struct intel_atomic_state *state,
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
