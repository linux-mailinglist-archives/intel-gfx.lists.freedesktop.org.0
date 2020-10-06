Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0399284BB4
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Oct 2020 14:33:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8A706E49B;
	Tue,  6 Oct 2020 12:33:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FEC76E497
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Oct 2020 12:33:27 +0000 (UTC)
IronPort-SDR: Uj5wK08GEfj5gDwKMZNYTHPL0Yah646lw/ckoYbwCYJCDFmVHiM+dnhtC9xI3wEil3mrcV+Tkc
 2IPSDJoNkK0g==
X-IronPort-AV: E=McAfee;i="6000,8403,9765"; a="161851747"
X-IronPort-AV: E=Sophos;i="5.77,343,1596524400"; d="scan'208";a="161851747"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 05:33:27 -0700
IronPort-SDR: III/EyFWRubcRyxHdQr6dsnQbiAf2snlgVEva8FiW/QOsglATzMA4dGe4wtOr1HWclDwXmW8Do
 0NVcUpijuQCA==
X-IronPort-AV: E=Sophos;i="5.77,343,1596524400"; d="scan'208";a="527333715"
Received: from unknown (HELO linux-desktop.iind.intel.com) ([10.223.34.173])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 05:33:25 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Oct 2020 18:36:54 +0530
Message-Id: <20201006130654.331-11-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201006130654.331-1-uma.shankar@intel.com>
References: <20201006130654.331-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v7 10/10] drm/i915/display: [NOT FOR MERGE] Reduce
 blanking to support 4k60@10bpp for LSPCON
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

Blanking needs to be reduced to incorporate DP and HDMI timing/link
bandwidth limitations for CEA modes (4k@60 at 10 bpp). DP can drive
17.28Gbs while 4k modes (VIC97 etc) at 10 bpp required 17.8 Gbps.
This will cause mode to blank out. Reduced Htotal by shortening the
back porch and front porch within permissible limits.

Note: This is for reference for userspace, not to be merged in kernel.

v2: This is marked as Not for merge and the responsibilty to program
these custom timings will be on userspace. This patch is just for
reference purposes. This is based on Ville's recommendation.

v3: updated commit message.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7429597b57be..4a18fc4f79cc 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -692,8 +692,10 @@ intel_dp_mode_valid(struct drm_connector *connector,
 {
 	struct intel_dp *intel_dp = intel_attached_dp(to_intel_connector(connector));
 	struct intel_connector *intel_connector = to_intel_connector(connector);
+	struct intel_encoder *intel_encoder = intel_attached_encoder(intel_connector);
 	struct drm_display_mode *fixed_mode = intel_connector->panel.fixed_mode;
 	struct drm_i915_private *dev_priv = to_i915(connector->dev);
+	struct intel_lspcon *lspcon = enc_to_intel_lspcon(intel_encoder);
 	int target_clock = mode->clock;
 	int max_rate, mode_rate, max_lanes, max_link_clock;
 	int max_dotclk = dev_priv->max_dotclk_freq;
@@ -714,6 +716,21 @@ intel_dp_mode_valid(struct drm_connector *connector,
 		target_clock = fixed_mode->clock;
 	}
 
+	/*
+	 * Reducing Blanking to incorporate DP and HDMI timing/link bandwidth
+	 * limitations for CEA modes (4k@60 at 10 bpp). DP can drive 17.28Gbs
+	 * while 4k modes (VIC97 etc) at 10 bpp required 17.8 Gbps. This will
+	 * cause mode to blank out. Reduced Htotal by shortening the back porch
+	 * and front porch within permissible limits.
+	 */
+	if (lspcon->active && lspcon->hdr_supported &&
+	    mode->clock > 570000) {
+		mode->clock = 570000;
+		mode->htotal -= 180;
+		mode->hsync_start -= 72;
+		mode->hsync_end -= 72;
+	}
+
 	max_link_clock = intel_dp_max_link_rate(intel_dp);
 	max_lanes = intel_dp_max_lane_count(intel_dp);
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
