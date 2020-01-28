Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C03114BDB6
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 17:29:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 968856EEAB;
	Tue, 28 Jan 2020 16:29:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D66A6EEB1
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 16:29:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jan 2020 08:29:01 -0800
X-IronPort-AV: E=Sophos;i="5.70,374,1574150400"; d="scan'208";a="217657335"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jan 2020 08:28:59 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Jan 2020 18:28:49 +0200
Message-Id: <20200128162850.8660-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200128162850.8660-1-jani.nikula@intel.com>
References: <20200128162850.8660-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/dsi: Enable dsi transcoder as part
 of encoder->enable
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Vandita Kulkarni <vandita.kulkarni@intel.com>

Enable the dsi transcoder, panel and backlight as part of
encoder->enable and not encoder->pre_enable. We need to have pipe src
size, among other things, set before enabling the transcoder, to avoid
FIFO underruns and possibly other issues.

v2 by Jani:
- Rebase on the crtc enable sequence update

Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 006a29115b02..3138fe90c492 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1086,8 +1086,6 @@ static void gen11_dsi_pre_enable(struct intel_encoder *encoder,
 				 const struct intel_crtc_state *pipe_config,
 				 const struct drm_connector_state *conn_state)
 {
-	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
-
 	/* step3b */
 	gen11_dsi_map_pll(encoder, pipe_config);
 
@@ -1101,21 +1099,23 @@ static void gen11_dsi_pre_enable(struct intel_encoder *encoder,
 
 	/* step6c: configure transcoder timings */
 	gen11_dsi_set_transcoder_timings(encoder, pipe_config);
-
-	/* step6d: enable dsi transcoder */
-	gen11_dsi_enable_transcoder(encoder);
-
-	/* step7: enable backlight */
-	intel_panel_enable_backlight(pipe_config, conn_state);
-	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_BACKLIGHT_ON);
 }
 
 static void gen11_dsi_enable(struct intel_encoder *encoder,
 			     const struct intel_crtc_state *crtc_state,
 			     const struct drm_connector_state *conn_state)
 {
+	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
+
 	WARN_ON(crtc_state->has_pch_encoder);
 
+	/* step6d: enable dsi transcoder */
+	gen11_dsi_enable_transcoder(encoder);
+
+	/* step7: enable backlight */
+	intel_panel_enable_backlight(crtc_state, conn_state);
+	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_BACKLIGHT_ON);
+
 	intel_crtc_vblank_on(crtc_state);
 }
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
