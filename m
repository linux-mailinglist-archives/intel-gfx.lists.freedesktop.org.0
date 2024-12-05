Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A04B39E58CA
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2024 15:46:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0216110EEA6;
	Thu,  5 Dec 2024 14:46:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lAS62QIH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D7E710EEA6
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2024 14:46:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733409962; x=1764945962;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PBGWuH4xl5O4tGZdFcVYt0IaZhwDYWtjAeUVd4vsXsQ=;
 b=lAS62QIHCJKHWbiRYY442C1E80Xsdl2amnMb0Mk1T7nEMPzhbsIuXkiS
 H6Y/yPaLuY+Dc3i27jdb/0kmep6bxMqhTbFkntc8lq4w530aFok77wx1V
 XdgLcXD/iKcZSsxUK6W8nETa5Th+J3Vg5iupcTRhEBX85GLEp6mVjCSKg
 qUgShxA4LBU/f0l6Qpniv0kXOBTDKp8AQ/WMh5lYOPefcA0A6gBoTJnay
 YIADE1LiPtffTXOIpvUfW1xf71GAxXpCbJb6xet1+893AW6rSVSoXhVZv
 0Ezn3pFW7QsxKipSC0IlJSEVC5OgXSlIdDgG8JHcHxjdrv/qhPQlsFA1b g==;
X-CSE-ConnectionGUID: N3QyDMNHQtay0VFL4OQ0tw==
X-CSE-MsgGUID: zY0IXaL9QPmTIhTsnY5hXw==
X-IronPort-AV: E=McAfee;i="6700,10204,11277"; a="51139205"
X-IronPort-AV: E=Sophos;i="6.12,210,1728975600"; d="scan'208";a="51139205"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2024 06:46:02 -0800
X-CSE-ConnectionGUID: elWuA6PVSXWJ2I7Fl7F9Uw==
X-CSE-MsgGUID: jlgC7resRZarAJZ/HSNKmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,210,1728975600"; d="scan'208";a="117357096"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2024 06:46:01 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 5/5] drm/i915/dsi: set a few DSI_TRANS_FUNC_CONF bits
 according to VBT
Date: Thu,  5 Dec 2024 16:45:39 +0200
Message-Id: <e9f13beab2971f408be5c1df4ee0d9e234ebc76d.1733409899.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1733409899.git.jani.nikula@intel.com>
References: <cover.1733409899.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Set the relevant DSI_TRANS_FUNC_CONF bits according to VBT DSI DPHY
config.

The DSI VBT usage is a nightmare, but that's for another time.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c       | 10 ++++++++++
 drivers/gpu/drm/i915/display/intel_dsi.h     |  2 ++
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c |  2 ++
 3 files changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 74ab3d1a1622..bc94bcf5156c 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -704,6 +704,16 @@ gen11_dsi_configure_transcoder(struct intel_encoder *encoder,
 		else
 			tmp |= EOTP_DISABLED;
 
+		if (is_vid_mode(intel_dsi) && intel_dsi->blanking_packets_during_bllp)
+			tmp |= BLANKING_PACKET_ENABLE;
+		else
+			tmp &= BLANKING_PACKET_ENABLE;
+
+		if (intel_dsi->lp_clock_during_lpm)
+			tmp |= LP_CLOCK_DURING_LPM;
+		else
+			tmp &= LP_CLOCK_DURING_LPM;
+
 		/* enable link calibration if freq > 1.5Gbps */
 		if (afe_clk(encoder, pipe_config) >= 1500 * 1000) {
 			tmp &= ~LINK_CALIBRATION_MASK;
diff --git a/drivers/gpu/drm/i915/display/intel_dsi.h b/drivers/gpu/drm/i915/display/intel_dsi.h
index e8ba4ccd99d3..58fb0fe48638 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi.h
+++ b/drivers/gpu/drm/i915/display/intel_dsi.h
@@ -82,6 +82,8 @@ struct intel_dsi {
 	/* eot for MIPI_EOT_DISABLE register */
 	u8 eotp_pkt;
 	u8 clock_stop;
+	bool blanking_packets_during_bllp;
+	bool lp_clock_during_lpm;
 
 	u8 escape_clk_div;
 	u8 dual_link;
diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index b2b78f39cfd3..29de72efeed0 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -777,6 +777,8 @@ bool intel_dsi_vbt_init(struct intel_dsi *intel_dsi, u16 panel_id)
 
 	intel_dsi->eotp_pkt = mipi_config->eot_pkt_disabled ? 0 : 1;
 	intel_dsi->clock_stop = mipi_config->enable_clk_stop ? 1 : 0;
+	intel_dsi->blanking_packets_during_bllp = mipi_config->blanking_packets_during_bllp;
+	intel_dsi->lp_clock_during_lpm = mipi_config->lp_clock_during_lpm;
 	intel_dsi->lane_count = mipi_config->lane_cnt + 1;
 	intel_dsi->pixel_format =
 		vbt_to_dsi_pixel_format(mipi_config->videomode_color_format);
-- 
2.39.5

