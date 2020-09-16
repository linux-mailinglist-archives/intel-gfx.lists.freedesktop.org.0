Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD3D426BBE3
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Sep 2020 07:39:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18ED16E990;
	Wed, 16 Sep 2020 05:39:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23F956E990
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Sep 2020 05:39:52 +0000 (UTC)
IronPort-SDR: xMAq/IBnizgxn84P+6jyAnUQfyZZOhY1bEF/BmRdGFS/g0QE1sy6QckNg2V1StHConkomS14jr
 qfPysyRSgCPQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9745"; a="138905770"
X-IronPort-AV: E=Sophos;i="5.76,431,1592895600"; d="scan'208";a="138905770"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2020 22:39:52 -0700
IronPort-SDR: vBZrmOaIFvLuRyjebd/TKU71aag/VWscUxRNMz7NKD01O0MutNHnV3lgoSf0CYN5xyDsU3EN5b
 uYrOJvzFqDmQ==
X-IronPort-AV: E=Sophos;i="5.76,431,1592895600"; d="scan'208";a="287087943"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 15 Sep 2020 22:39:50 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Sep 2020 11:03:15 +0530
Message-Id: <20200916053318.14270-2-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
In-Reply-To: <20200916053318.14270-1-vandita.kulkarni@intel.com>
References: <20200916053318.14270-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [V11 1/4] drm/i915/dsi: Add details about TE in
 get_config
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

We need details about enabling TE on which port
before we enable TE through vblank enable path.
This is based on the configuration that we receive
from the VBT wrt ports, dual_link.

Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 30 +++++++++++++++-----------
 1 file changed, 18 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 520715b7d5b5..2789020e20db 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1447,6 +1447,18 @@ static bool gen11_dsi_is_periodic_cmd_mode(struct intel_dsi *intel_dsi)
 	return (val & DSI_PERIODIC_FRAME_UPDATE_ENABLE);
 }
 
+static void gen11_dsi_get_cmd_mode_config(struct intel_dsi *intel_dsi,
+					  struct intel_crtc_state *pipe_config)
+{
+	if (intel_dsi->ports == (BIT(PORT_B) | BIT(PORT_A)))
+		pipe_config->mode_flags |= I915_MODE_FLAG_DSI_USE_TE1 |
+					    I915_MODE_FLAG_DSI_USE_TE0;
+	else if (intel_dsi->ports == BIT(PORT_B))
+		pipe_config->mode_flags |= I915_MODE_FLAG_DSI_USE_TE1;
+	else
+		pipe_config->mode_flags |= I915_MODE_FLAG_DSI_USE_TE0;
+}
+
 static void gen11_dsi_get_config(struct intel_encoder *encoder,
 				 struct intel_crtc_state *pipe_config)
 {
@@ -1468,6 +1480,10 @@ static void gen11_dsi_get_config(struct intel_encoder *encoder,
 	pipe_config->output_types |= BIT(INTEL_OUTPUT_DSI);
 	pipe_config->pipe_bpp = bdw_get_pipemisc_bpp(crtc);
 
+	/* Get the details on which TE should be enabled */
+	if (is_cmd_mode(intel_dsi))
+		gen11_dsi_get_cmd_mode_config(intel_dsi, pipe_config);
+
 	if (gen11_dsi_is_periodic_cmd_mode(intel_dsi))
 		pipe_config->mode_flags |= I915_MODE_FLAG_DSI_PERIODIC_CMD_MODE;
 }
@@ -1562,18 +1578,8 @@ static int gen11_dsi_compute_config(struct intel_encoder *encoder,
 	 * receive TE from the slave if
 	 * dual link is enabled
 	 */
-	if (is_cmd_mode(intel_dsi)) {
-		if (intel_dsi->ports == (BIT(PORT_B) | BIT(PORT_A)))
-			pipe_config->mode_flags |=
-						I915_MODE_FLAG_DSI_USE_TE1 |
-						I915_MODE_FLAG_DSI_USE_TE0;
-		else if (intel_dsi->ports == BIT(PORT_B))
-			pipe_config->mode_flags |=
-						I915_MODE_FLAG_DSI_USE_TE1;
-		else
-			pipe_config->mode_flags |=
-						I915_MODE_FLAG_DSI_USE_TE0;
-	}
+	if (is_cmd_mode(intel_dsi))
+		gen11_dsi_get_cmd_mode_config(intel_dsi, pipe_config);
 
 	return 0;
 }
-- 
2.21.0.5.gaeb582a

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
