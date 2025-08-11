Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D29D4B20EAF
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Aug 2025 17:26:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E8E810E501;
	Mon, 11 Aug 2025 15:26:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dAUhgQod";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C90410E508;
 Mon, 11 Aug 2025 15:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754925966; x=1786461966;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=R3a2qaDXqzIvmNZ4MaEqc1LaqupJauYWyofung9gEz0=;
 b=dAUhgQodOaUhCzQcJf2TM37SmZsnz98Dl45jXTTv163GHPNn/xLVV7aI
 sd75wqhu40pDEXkZmX17Qcr8Nj7jL1zrQdY1K62MCRuqXTHBTQMnM/Trn
 SiPoNlm8D4oX4bmEbMllMYMS0YN1k3VL7P2Fzp3Ref9jnrnMhSKJ9JjQE
 6HYo9a5BMT4wjES7XX7LHZZhAWG96UTj5aB59dNY0/gbRsMQoSrXIM1r9
 OMGYUOxLQlIIA/jTny5+HKzmlL7/5+cth9e3P6qUGqc55P9LhMbVQ5M0y
 6Y1NeOy2iLCmVmpEL8WIiIEC7KJTtCDm6ZoyfeqFXqY0UT5qcqYZfdRPQ A==;
X-CSE-ConnectionGUID: BX0sf7fzRBurR85vaQLwyw==
X-CSE-MsgGUID: 8crilR1nT7WBWGJrZKZTIw==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="57086307"
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="57086307"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 08:26:06 -0700
X-CSE-ConnectionGUID: 88LmY1EVQBioQADS95TDdg==
X-CSE-MsgGUID: sIqVtqJKREaoBn3fW3zWzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="171294167"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.226])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 08:26:04 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/4] drm/i915/vbt: add anonymous structs to group DSI VBT defs
Date: Mon, 11 Aug 2025 18:25:48 +0300
Message-ID: <f57ca596aefa3ef0b4ce1f36452410cf745acddd.1754925923.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <cover.1754925923.git.jani.nikula@intel.com>
References: <cover.1754925923.git.jani.nikula@intel.com>
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

The grouping of DSI VBT definitions is hard to follow and match against
the spec. Use anonymous structs and add comments with the spec
description.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_dsi_vbt_defs.h | 87 ++++++++++---------
 1 file changed, 47 insertions(+), 40 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_dsi_vbt_defs.h
index f83d42ed0c5a..7ac872dbba8d 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt_defs.h
@@ -47,53 +47,55 @@ struct mipi_config {
 	u16 panel_id;
 
 	/* General Params */
-	u32 enable_dithering:1;
-	u32 rsvd1:1;
-	u32 is_bridge:1;
+	struct {
+		u32 enable_dithering:1;
+		u32 rsvd1:1;
+		u32 is_bridge:1;
 
-	u32 panel_arch_type:2;
-	u32 is_cmd_mode:1;
+		u32 panel_arch_type:2;
+		u32 is_cmd_mode:1;
 
 #define NON_BURST_SYNC_PULSE	0x1
 #define NON_BURST_SYNC_EVENTS	0x2
 #define BURST_MODE		0x3
-	u32 video_transfer_mode:2;
+		u32 video_transfer_mode:2;
 
-	u32 cabc_supported:1;
+		u32 cabc_supported:1;
 #define PPS_BLC_PMIC   0
 #define PPS_BLC_SOC    1
-	u32 pwm_blc:1;
+		u32 pwm_blc:1;
 
-	/* Bit 13:10 */
 #define PIXEL_FORMAT_RGB565			0x1
 #define PIXEL_FORMAT_RGB666			0x2
 #define PIXEL_FORMAT_RGB666_LOOSELY_PACKED	0x3
 #define PIXEL_FORMAT_RGB888			0x4
-	u32 videomode_color_format:4;
+		u32 videomode_color_format:4;
 
-	/* Bit 15:14 */
 #define ENABLE_ROTATION_0	0x0
 #define ENABLE_ROTATION_90	0x1
 #define ENABLE_ROTATION_180	0x2
 #define ENABLE_ROTATION_270	0x3
-	u32 rotation:2;
-	u32 bta_enabled:1;
-	u32 rsvd2:15;
+		u32 rotation:2;
+		u32 bta_enabled:1;
+		u32 rsvd2:15;
+	} __packed;
 
-	/* 2 byte Port Description */
+	/* Port Desc */
+	struct {
 #define DUAL_LINK_NOT_SUPPORTED	0
 #define DUAL_LINK_FRONT_BACK	1
 #define DUAL_LINK_PIXEL_ALT	2
-	u16 dual_link:2;
-	u16 lane_cnt:2;
-	u16 pixel_overlap:3;
-	u16 rgb_flip:1;
+		u16 dual_link:2;
+		u16 lane_cnt:2;
+		u16 pixel_overlap:3;
+		u16 rgb_flip:1;
 #define DL_DCS_PORT_A			0x00
 #define DL_DCS_PORT_C			0x01
 #define DL_DCS_PORT_A_AND_C		0x02
-	u16 dl_dcs_cabc_ports:2;
-	u16 dl_dcs_backlight_ports:2;
-	u16 rsvd3:4;
+		u16 dl_dcs_cabc_ports:2;
+		u16 dl_dcs_backlight_ports:2;
+		u16 rsvd3:4;
+	} __packed;
 
 	u16 rsvd4;
 
@@ -102,18 +104,22 @@ struct mipi_config {
 	u32 dsi_ddr_clk;
 	u32 bridge_ref_clk;
 
+	/* LP Byte Clock */
+	struct {
 #define  BYTE_CLK_SEL_20MHZ		0
 #define  BYTE_CLK_SEL_10MHZ		1
 #define  BYTE_CLK_SEL_5MHZ		2
-	u8 byte_clk_sel:2;
-
-	u8 rsvd6:6;
-
-	/* DPHY Flags */
-	u16 dphy_param_valid:1;
-	u16 eot_pkt_disabled:1;
-	u16 enable_clk_stop:1;
-	u16 rsvd7:13;
+		u8 byte_clk_sel:2;
+		u8 rsvd6:6;
+	} __packed;
+
+	/* DPhy Flags */
+	struct {
+		u16 dphy_param_valid:1;
+		u16 eot_pkt_disabled:1;
+		u16 enable_clk_stop:1;
+		u16 rsvd7:13;
+	} __packed;
 
 	u32 hs_tx_timeout;
 	u32 lp_rx_timeout;
@@ -123,14 +129,16 @@ struct mipi_config {
 	u32 dbi_bw_timer;
 	u32 lp_byte_clk_val;
 
-	/*  4 byte Dphy Params */
-	u32 prepare_cnt:6;
-	u32 rsvd8:2;
-	u32 clk_zero_cnt:8;
-	u32 trail_cnt:5;
-	u32 rsvd9:3;
-	u32 exit_zero_cnt:6;
-	u32 rsvd10:2;
+	/*  DPhy Params */
+	struct {
+		u32 prepare_cnt:6;
+		u32 rsvd8:2;
+		u32 clk_zero_cnt:8;
+		u32 trail_cnt:5;
+		u32 rsvd9:3;
+		u32 exit_zero_cnt:6;
+		u32 rsvd10:2;
+	} __packed;
 
 	u32 clk_lane_switch_cnt;
 	u32 hl_switch_cnt;
@@ -168,7 +176,6 @@ struct mipi_config {
 	u8 reset_r_n;
 	u8 pwr_down_r;
 	u8 stdby_r_n;
-
 } __packed;
 
 /* all delays have a unit of 100us */
-- 
2.47.2

