Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1434220446C
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2020 01:28:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 508DE6E1C0;
	Mon, 22 Jun 2020 23:28:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C12C06E1C0
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jun 2020 23:28:27 +0000 (UTC)
IronPort-SDR: JD35+pMhh62q7VOC5NKuv9uUDNW2tZFkfyM7zs/9uHUKbw1qk7e6IYqDVQ6ZT2VgHiPg2l/0aD
 aSiHEKpzNdmg==
X-IronPort-AV: E=McAfee;i="6000,8403,9660"; a="161983752"
X-IronPort-AV: E=Sophos;i="5.75,268,1589266800"; d="scan'208";a="161983752"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 16:28:27 -0700
IronPort-SDR: L7eRgkYERdtI00bTmjhaJ0U0+l6kzKD0UDZWXR713qP00A/vRdYXQWDeGwWMrQ3zH++/IZXy6C
 59flm5FGMEVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,268,1589266800"; d="scan'208";a="422813867"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by orsmga004.jf.intel.com with ESMTP; 22 Jun 2020 16:28:26 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Jun 2020 16:28:20 -0700
Message-Id: <20200622232821.3093-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200622232821.3093-1-lucas.demarchi@intel.com>
References: <20200622232821.3093-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/display: remove alias to dig_port
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

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index ca7bb2294d2b..58c9f3d3e7ce 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3382,11 +3382,10 @@ static void intel_ddi_pre_enable_hdmi(struct intel_atomic_state *state,
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
@@ -3413,7 +3412,7 @@ static void intel_ddi_pre_enable_hdmi(struct intel_atomic_state *state,
 
 	intel_ddi_enable_pipe_clock(encoder, crtc_state);
 
-	intel_dig_port->set_infoframes(encoder,
+	dig_port->set_infoframes(encoder,
 				       crtc_state->has_infoframe,
 				       crtc_state, conn_state);
 }
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
