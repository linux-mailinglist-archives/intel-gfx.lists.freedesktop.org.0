Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE1206EE0AD
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Apr 2023 12:55:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65E3F10E70A;
	Tue, 25 Apr 2023 10:55:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CBDF10E70A
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Apr 2023 10:55:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682420117; x=1713956117;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=QE8abgOhUGrOTgKZiKxcjlMpiHZuA5OSqa7saulovE8=;
 b=IjdksHBDgwQjmTBwvOV8ZmjZ6UasaXliJH1vM0QM5zdRn93adRz1FD2D
 sAN5TsM6A52hgGj1dCaDNsIKBZde9/3oZXGILDzhABuehLaTOdrHFSedA
 kIhK+fU/rU73NwCkaevjWivYgF7d5xJr9uZktwQcgIjBpPu9mC3DgWXSD
 kZ40YddzoN+7GA4Vrz7rR6+quBPGZdOldHr0eq3qOrPndItGYZGgUCJiE
 9PB6YIx5nvDB9r96YYYPvexp88LkLzcFujQtKwHk9ItXFfCe1WB4M/zPr
 Uw2x52Ssoxe/sqJVq+oUlql91r8wHCGOW1XQh543DJgRC0bkqBHVHTkZd g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="412019637"
X-IronPort-AV: E=Sophos;i="5.99,225,1677571200"; d="scan'208";a="412019637"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 03:55:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="687367445"
X-IronPort-AV: E=Sophos;i="5.99,225,1677571200"; d="scan'208";a="687367445"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 25 Apr 2023 03:55:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 25 Apr 2023 13:55:14 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Apr 2023 13:54:44 +0300
Message-Id: <20230425105450.18441-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230425105450.18441-1-ville.syrjala@linux.intel.com>
References: <20230425105450.18441-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/14] drm/i915/dsi: Implement
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Plug in the encoder->shutdown() hook for icl+ DSI so that
we are guaranteed to respect the power cycle delay during
reboots and whatnot.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c   | 1 +
 drivers/gpu/drm/i915/display/intel_dsi.c | 7 +++++++
 drivers/gpu/drm/i915/display/intel_dsi.h | 1 +
 drivers/gpu/drm/i915/display/vlv_dsi.c   | 7 -------
 4 files changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 88130cd19d3f..600199d51d69 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1978,6 +1978,7 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
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
index e7993480199e..6ddf4d9c5e00 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -941,13 +941,6 @@ static void intel_dsi_post_disable(struct intel_atomic_state *state,
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
2.39.2

