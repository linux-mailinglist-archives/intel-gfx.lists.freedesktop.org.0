Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43A0C118596
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 11:52:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6A136E8B2;
	Tue, 10 Dec 2019 10:52:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2B656E8B2
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 10:52:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 02:52:32 -0800
X-IronPort-AV: E=Sophos;i="5.69,299,1571727600"; d="scan'208";a="414401043"
Received: from rmoran-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.35.46])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 02:52:30 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Dec 2019 12:50:59 +0200
Message-Id: <c2481aaf67ea396aa4698cd2d8e23d19ec4f4ecf.1575974743.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1575974743.git.jani.nikula@intel.com>
References: <cover.1575974743.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [v4.1 15/16] drm/i915/dsi: Fix state mismatch warns for
 horizontal timings with DSC
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

From: Vandita Kulkarni <vandita.kulkarni@intel.com>

When DSC is enabled consider the compression ratio that was used during
horizontal timing calculations.

This may still lead to warns due to rounding errors in the round-trip.

v2 by Jani:
- rebase on top of the more generic dsc state readout

Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index caa477c4b1af..b1d775d834d4 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1255,6 +1255,18 @@ static void gen11_dsi_get_timings(struct intel_encoder *encoder,
 	struct drm_display_mode *adjusted_mode =
 					&pipe_config->hw.adjusted_mode;
 
+	if (pipe_config->dsc.compressed_bpp) {
+		int div = pipe_config->dsc.compressed_bpp;
+		int mul = mipi_dsi_pixel_format_to_bpp(intel_dsi->pixel_format);
+
+		adjusted_mode->crtc_htotal =
+			DIV_ROUND_UP(adjusted_mode->crtc_htotal * mul, div);
+		adjusted_mode->crtc_hsync_start =
+			DIV_ROUND_UP(adjusted_mode->crtc_hsync_start * mul, div);
+		adjusted_mode->crtc_hsync_end =
+			DIV_ROUND_UP(adjusted_mode->crtc_hsync_end * mul, div);
+	}
+
 	if (intel_dsi->dual_link) {
 		adjusted_mode->crtc_hdisplay *= 2;
 		if (intel_dsi->dual_link == DSI_DUAL_LINK_FRONT_BACK)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
