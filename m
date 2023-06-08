Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C785E72897D
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 22:31:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B765710E61B;
	Thu,  8 Jun 2023 20:31:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3515210E61A
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 20:31:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686256298; x=1717792298;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wENkvjGjwXntcGRcAOeOL2o+cuXMTBfHTmb9fZJDWZw=;
 b=JRYluHVcpQNjKJL7sX4Ky0dRoxrTLQNNcAGw/lDNdtHvUoLO7aQR4LOU
 0PRQ1OxI8OYfKEuzu4sZx754R7ANIp0pRSdybA748ABRNeN2UwDS6boIC
 Qmoq+RWxllN4vWLlUP+QOQxxd2bdwui1AW1Sp4QLqcXTSZoIWEck/NHTT
 N7J7ghB23V8UcMvKZ7Ax0qaKfG3jcxq5In86Z76besKoE9Ma/MZYE0IBS
 xNf92dpcjNZMxc2F1SAQyIcFfkXGoGBYppOfS8GwQMAraIpMXRSq4Disb
 v22LycrpJN7goLAQsVp6NlZLYFP0THTb0q82MJvPRwO/rY5cYSaNLaUem Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="421012700"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="421012700"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 13:31:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="710100781"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="710100781"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 08 Jun 2023 13:31:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 08 Jun 2023 23:31:19 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Jun 2023 23:30:51 +0300
Message-Id: <20230608203057.23759-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230608203057.23759-1-ville.syrjala@linux.intel.com>
References: <20230608203057.23759-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 07/13] drm/i915/dsi: Implement
 encoder->shutdown() for icl+
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Plug in the encoder->shutdown() hook for icl+ DSI so that
we are guaranteed to respect the power cycle delay during
reboots and whatnot.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c   | 1 +
 drivers/gpu/drm/i915/display/intel_dsi.c | 7 +++++++
 drivers/gpu/drm/i915/display/intel_dsi.h | 1 +
 drivers/gpu/drm/i915/display/vlv_dsi.c   | 7 -------
 4 files changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index a89a45fc0468..780a004fe700 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1979,6 +1979,7 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
 	encoder->get_power_domains = gen11_dsi_get_power_domains;
 	encoder->disable_clock = gen11_dsi_gate_clocks;
 	encoder->is_clock_enabled = gen11_dsi_is_clock_enabled;
+	encoder->shutdown = intel_dsi_shutdown;
 
 	/* register DSI connector with DRM subsystem */
 	drm_connector_init(&dev_priv->drm, connector, &gen11_dsi_connector_funcs,
diff --git a/drivers/gpu/drm/i915/display/intel_dsi.c b/drivers/gpu/drm/i915/display/intel_dsi.c
index e8a596a7c28a..d3cf6a652221 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi.c
@@ -22,6 +22,13 @@ void intel_dsi_wait_panel_power_cycle(struct intel_dsi *intel_dsi)
 		msleep(intel_dsi->panel_pwr_cycle_delay - panel_power_off_duration);
 }
 
+void intel_dsi_shutdown(struct intel_encoder *encoder)
+{
+	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
+
+	intel_dsi_wait_panel_power_cycle(intel_dsi);
+}
+
 int intel_dsi_bitrate(const struct intel_dsi *intel_dsi)
 {
 	int bpp = mipi_dsi_pixel_format_to_bpp(intel_dsi->pixel_format);
diff --git a/drivers/gpu/drm/i915/display/intel_dsi.h b/drivers/gpu/drm/i915/display/intel_dsi.h
index b690e0fcd906..083390e5e442 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi.h
+++ b/drivers/gpu/drm/i915/display/intel_dsi.h
@@ -174,5 +174,6 @@ struct intel_dsi_host *intel_dsi_host_init(struct intel_dsi *intel_dsi,
 					   const struct mipi_dsi_host_ops *funcs,
 					   enum port port);
 void intel_dsi_wait_panel_power_cycle(struct intel_dsi *intel_dsi);
+void intel_dsi_shutdown(struct intel_encoder *encoder);
 
 #endif /* _INTEL_DSI_H */
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 1e6f438a43d8..33ada1a736d8 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -929,13 +929,6 @@ static void intel_dsi_post_disable(struct intel_atomic_state *state,
 	intel_dsi->panel_power_off_time = ktime_get_boottime();
 }
 
-static void intel_dsi_shutdown(struct intel_encoder *encoder)
-{
-	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
-
-	intel_dsi_wait_panel_power_cycle(intel_dsi);
-}
-
 static bool intel_dsi_get_hw_state(struct intel_encoder *encoder,
 				   enum pipe *pipe)
 {
-- 
2.39.3

