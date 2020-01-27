Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5A3414A349
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 12:50:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46A066EB20;
	Mon, 27 Jan 2020 11:50:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 236CA6EB20
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 11:50:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 03:49:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,369,1574150400"; d="scan'208";a="428957973"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by fmsmga006.fm.intel.com with ESMTP; 27 Jan 2020 03:49:56 -0800
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Jan 2020 16:46:08 +0530
Message-Id: <20200127111608.7246-1-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/dsi: Enable dsi as part of
 encoder->enable
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

Enable the dsi transcoder, panel and backlight as part
of encoder->enable and not encoder->pre_enable.

Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 1186a5df057e..d40ee5951168 100644
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
 
@@ -1101,6 +1099,13 @@ static void gen11_dsi_pre_enable(struct intel_encoder *encoder,
 
 	/* step6c: configure transcoder timings */
 	gen11_dsi_set_transcoder_timings(encoder, pipe_config);
+}
+
+static void gen11_dsi_enable(struct intel_encoder *encoder,
+				 const struct intel_crtc_state *pipe_config,
+				 const struct drm_connector_state *conn_state)
+{
+	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 
 	/* step6d: enable dsi transcoder */
 	gen11_dsi_enable_transcoder(encoder);
@@ -1727,6 +1732,7 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
 
 	encoder->pre_pll_enable = gen11_dsi_pre_pll_enable;
 	encoder->pre_enable = gen11_dsi_pre_enable;
+	encoder->enable = gen11_dsi_enable;
 	encoder->disable = gen11_dsi_disable;
 	encoder->post_disable = gen11_dsi_post_disable;
 	encoder->port = port;
-- 
2.21.0.5.gaeb582a

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
