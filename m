Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C12519507F
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 06:25:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E9B36E369;
	Fri, 27 Mar 2020 05:25:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 895F46E369
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Mar 2020 05:25:26 +0000 (UTC)
IronPort-SDR: 0sfCXlGFC7VoRdNqFv9rwAb8KRiihWLyraCj5K1xWrxjHL/9dTRDVgN48ZqyMULrIhKniYpe2M
 +s7dZj2cYuNQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2020 22:25:26 -0700
IronPort-SDR: 3EZU4iVb03TNJYy7BHvz0iAkeXjauujfChFEwWj76FuRT7uzn1koT/+4ANWJwnO8+TXHIWT92y
 lCE/xmOESJ9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,311,1580803200"; d="scan'208";a="394268159"
Received: from vipinana-nuc7i7bnh.iind.intel.com ([10.66.179.10])
 by orsmga004.jf.intel.com with ESMTP; 26 Mar 2020 22:25:25 -0700
From: Vipin Anand <vipin.anand@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Mar 2020 10:53:56 +0530
Message-Id: <20200327052357.22269-7-vipin.anand@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200327052357.22269-1-vipin.anand@intel.com>
References: <20200327052357.22269-1-vipin.anand@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/7] drm/i915/display: Reduce blanking to
 support 4k60@10bpp for LSPCON
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

From: Uma Shankar <uma.shankar@intel.com>

Blanking needs to be reduced to incorporate DP and HDMI timing/link
bandwidth limitations for CEA modes (4k@60 at 10 bpp). DP can drive
17.28Gbs while 4k modes (VIC97 etc) at 10 bpp required 17.8 Gbps.
This will cause mode to blank out. Reduced Htotal by shortening the
back porch and front porch within permissible limits.

v2: This is marked as Not for merge and the responsibilty to program
these custom timings will be on userspace. This patch is just for
reference purposes. This is based on Ville's recommendation.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index c7424e2a04a3..3ab1fadb2ea3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -616,9 +616,11 @@ intel_dp_mode_valid(struct drm_connector *connector,
 {
 	struct intel_dp *intel_dp = intel_attached_dp(to_intel_connector(connector));
 	struct intel_connector *intel_connector = to_intel_connector(connector);
+	struct intel_encoder *intel_encoder = intel_attached_encoder(intel_connector);
 	struct drm_display_mode *fixed_mode = intel_connector->panel.fixed_mode;
 	struct drm_i915_private *dev_priv = to_i915(connector->dev);
 	int target_clock = mode->clock;
+	struct intel_lspcon *lspcon = enc_to_intel_lspcon(intel_encoder);
 	int max_rate, mode_rate, max_lanes, max_link_clock;
 	int max_dotclk;
 	u16 dsc_max_output_bpp = 0;
@@ -638,6 +640,20 @@ intel_dp_mode_valid(struct drm_connector *connector,
 
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
 
 	max_link_clock = intel_dp_max_link_rate(intel_dp);
 	max_lanes = intel_dp_max_lane_count(intel_dp);
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
