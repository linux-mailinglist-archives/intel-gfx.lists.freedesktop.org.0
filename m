Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9893B2036CA
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2020 14:30:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F11026E523;
	Mon, 22 Jun 2020 12:30:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AECB96E523
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jun 2020 12:30:34 +0000 (UTC)
IronPort-SDR: YyzmZtuMpLTfnG+g4vFAukBhA60uWJd3HHq8lcjAhah7i4so0jpa7yiyCFXEnU492/3d0Uvy53
 sliJrUXA1QSw==
X-IronPort-AV: E=McAfee;i="6000,8403,9659"; a="228402434"
X-IronPort-AV: E=Sophos;i="5.75,266,1589266800"; d="scan'208";a="228402434"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 05:30:34 -0700
IronPort-SDR: hFiZEis/rmy+n9p+HNg+b4Zi159ke5vQAXuXdCRbaYoTG0JAcURZl8QHuBR8CFvzvAGXcMwj6G
 09XsYg8bpkbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,266,1589266800"; d="scan'208";a="292832647"
Received: from unknown (HELO linuxpresi1-desktop.iind.intel.com)
 ([10.223.74.152])
 by orsmga002.jf.intel.com with ESMTP; 22 Jun 2020 05:30:32 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Jun 2020 18:30:29 +0530
Message-Id: <20200622130029.28667-11-uma.shankar@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200622130029.28667-1-uma.shankar@intel.com>
References: <20200622130029.28667-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v4 10/10] drm/i915/display: [NOT FOR MERGE] Reduce
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
Cc: jani.nikula@intel.com
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
index c6b2b307cf4e..0db8a7d65c35 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -632,8 +632,10 @@ intel_dp_mode_valid(struct drm_connector *connector,
 {
 	struct intel_dp *intel_dp = intel_attached_dp(to_intel_connector(connector));
 	struct intel_connector *intel_connector = to_intel_connector(connector);
+	struct intel_encoder *intel_encoder = intel_attached_encoder(intel_connector);
 	struct drm_display_mode *fixed_mode = intel_connector->panel.fixed_mode;
 	struct drm_i915_private *dev_priv = to_i915(connector->dev);
+	struct intel_lspcon *lspcon = enc_to_intel_lspcon(intel_encoder);
 	int target_clock = mode->clock;
 	int max_rate, mode_rate, max_lanes, max_link_clock;
 	int max_dotclk;
@@ -655,6 +657,21 @@ intel_dp_mode_valid(struct drm_connector *connector,
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
2.22.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
