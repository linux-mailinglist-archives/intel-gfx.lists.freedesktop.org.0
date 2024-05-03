Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9D6A8BAC76
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 14:26:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51ABF1128E3;
	Fri,  3 May 2024 12:26:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IKXi/XYG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4FBC1128E3
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2024 12:26:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714739172; x=1746275172;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=wbvVsrHRy5KVT8/41GHjnS7Jtkni0H7YiaKyfbM4Ns8=;
 b=IKXi/XYGw/qWQVYjLSRZLpCYbiZPQRgt79J7EBZ8ElE2a2uxo93iaRrN
 q7/zBPOIu73D1iEqCjxWDmTRs7C/9CI6bBsEarLuZXv0sGE/9OdN0IpHH
 kW7hywmPA4jY450FtOSllO6+2DR2HUeFH1MHUFgW1Y6prdtIhB9u+ItS5
 1hPuIAYsIUgEG+uAESon/awd2F9SK6O85Jeq/0nJArm4oY8iVpUZU2hZ/
 1bgUMF1THD5Z13cIVAhjuvj2RCNTiYKNN3u5eYlMl9aKD+chg04TV+Xgc
 7FMM00l8YRkjYqonuVJRilzKWYsfZwZLgMYGgSXQEj5gS41pwDr37tce2 w==;
X-CSE-ConnectionGUID: pGIrWIYGRaC1fdvtuPedzA==
X-CSE-MsgGUID: P8F94DalSt6qu4v5rX5X0Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="10372788"
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="10372788"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2024 05:26:11 -0700
X-CSE-ConnectionGUID: wRW7W2W1S+ikLJsm7byhHg==
X-CSE-MsgGUID: Qz/8aDnITrOZtyA7ohN6tA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="27463877"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 03 May 2024 05:26:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 May 2024 15:26:08 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 28/35] drm/i915/bios: Define VBT block 46 (Chromaticity For
 Narrow Gamut Panel) contents
Date: Fri,  3 May 2024 15:24:42 +0300
Message-ID: <20240503122449.27266-29-ville.syrjala@linux.intel.com>
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

Define the contents of VBT block 46 (Chromaticity For Narrow Gamut
Panel). One entry per panel.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 26 +++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index 87d073154d49..5f1f485f8bf7 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -178,6 +178,7 @@ enum bdb_block_id {
 	BDB_LFP_BACKLIGHT		= 43,
 	BDB_LFP_POWER			= 44,
 	BDB_EDP_BFI			= 45, /* 160+ */
+	BDB_CHROMATICITY		= 46, /* 169+ */
 	BDB_MIPI_CONFIG			= 52, /* 175+ */
 	BDB_MIPI_SEQUENCE		= 53, /* 177+ */
 	BDB_COMPRESSION_PARAMETERS	= 56, /* 213+ */
@@ -1364,6 +1365,31 @@ struct bdb_edp_bfi {
 	struct edp_bfi bfi[16];
 } __packed;
 
+/*
+ * Block 46 - Chromaticity For Narrow Gamut Panel Configuration Block
+ */
+
+struct chromaticity {
+	u8 chromaticity_enable:1;
+	u8 chromaticity_from_edid_base_block:1;
+	u8 rsvd:6;
+
+	u8 red_green;
+	u8 blue_white;
+	u8 red_x;
+	u8 red_y;
+	u8 green_x;
+	u8 green_y;
+	u8 blue_x;
+	u8 blue_y;
+	u8 white_x;
+	u8 white_y;
+} __packed;
+
+struct bdb_chromaticity {
+	struct chromaticity chromaticity[16];
+} __packed;
+
 /*
  * Block 52 - MIPI Configuration Block
  */
-- 
2.43.2

