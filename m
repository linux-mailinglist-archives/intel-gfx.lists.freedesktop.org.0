Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9A988BAC7A
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 14:26:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A2E51128EB;
	Fri,  3 May 2024 12:26:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k4V2ehW8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15C921128E8
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2024 12:26:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714739183; x=1746275183;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=EhjkhNPOIfrOFZ8oaYh5kqcZf2whY35pKVuZt+OdzF0=;
 b=k4V2ehW8qq2syu91CVZYjaosG8cz+SooHvHIZw1HDG8QCT48etXmJH8G
 /xLV0wzIJFHHz03lNIcN3lc/vWbBqYqkxKalH+4WygeLJCxphfDroQmuh
 ynn44v85wTTYfbNIQwqYI7fJF3cwFMtHl1gwbchlkXDGr+x9MrzutDZZ0
 OpKk8VRdq2m+UGLT1NxE3pfy3Yx3NdzBXO1X0p7MiFHQ3857+8WQy8au4
 /XyO04rYGgCyJDRZlBxonWPemh6KNbn1hzigOqKnMgMSJdFonm8UcmkhD
 XjnRBYlpnIEsapq26JqUXbJ73SgS1qZjgQiJC+wFnUPYzDqkm5+CKIfSE g==;
X-CSE-ConnectionGUID: VEsx9Np2Q8qBeQ+IuQJnJw==
X-CSE-MsgGUID: Gz5ExaKYRa+PlrMNcnXfnQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="10372797"
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="10372797"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2024 05:26:23 -0700
X-CSE-ConnectionGUID: BYx5cOTLSXC8nbw9/SIWrg==
X-CSE-MsgGUID: aVWIKSrBTfeTxO4XHOTqnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="27463945"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 03 May 2024 05:26:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 May 2024 15:26:20 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 32/35] drm/i915/bios: Define VBT block 50 (MIPI) contents
Date: Fri,  3 May 2024 15:24:46 +0300
Message-ID: <20240503122449.27266-33-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240503122449.27266-1-ville.syrjala@linux.intel.com>
References: <20240503122449.27266-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Define the contents of VBT block 50 (MIPI).

This was some easly attempt at a MIPI DSI stuff. I'm not sure
this was ever actually used (I certainly don't have any VBTs
with this block), but here's some kind of definition for it
anyway.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 47 +++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index 0e5a2bf429f4..3bcb9fb5b706 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -179,6 +179,7 @@ enum bdb_block_id {
 	BDB_LFP_POWER			= 44,
 	BDB_EDP_BFI			= 45, /* 160+ */
 	BDB_CHROMATICITY		= 46, /* 169+ */
+	BDB_MIPI			= 50, /* 170-172 */
 	BDB_FIXED_SET_MODE		= 51, /* 172+ */
 	BDB_MIPI_CONFIG			= 52, /* 175+ */
 	BDB_MIPI_SEQUENCE		= 53, /* 177+ */
@@ -1393,6 +1394,52 @@ struct bdb_chromaticity {
 	struct chromaticity chromaticity[16];
 } __packed;
 
+/*
+ * Block 50 - MIPI Block
+ */
+
+struct mipi_data {
+	u16 panel_identifier;
+	u16 bridge_revision;
+
+	u32 dithering:1;
+	u32 pixel_format_18bpp:1;
+	u32 reserved1:1;
+	u32 dphy_params_valid:1;
+	u32 reserved2:28;
+
+	u16 port_info;
+
+	u16 reserved3:2;
+	u16 num_lanes:2;
+	u16 reserved4:12;
+
+	u16 virtual_channel_num:2;
+	u16 video_transfer_mode:2;
+	u16 reserved5:12;
+
+	u32 dsi_ddr_clock;
+	u32 renesas_bridge_ref_clock;
+	u16 power_conservation;
+
+	u32 prepare_count:5;
+	u32 reserved6:3;
+	u32 clk_zero_count:8;
+	u32 trail_count:5;
+	u32 reserved7:3;
+	u32 exit_zero_count:6;
+	u32 reserved8:2;
+
+	u32 high_low_switch_count;
+	u32 lp_byte_clock;
+	u32 clock_lane_switch_time_counter;
+	u32 panel_color_depth;
+} __packed;
+
+struct bdb_mipi {
+	struct mipi_data mipi[16];
+} __packed;
+
 /*
  * Block 51 - Fixed Set Mode Table
  */
-- 
2.43.2

