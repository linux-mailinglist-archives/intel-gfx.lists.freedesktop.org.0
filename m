Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1929B16B7A
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Jul 2025 07:16:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DD9210E6FE;
	Thu, 31 Jul 2025 05:16:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c+nmxud9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17BDC10E6FE;
 Thu, 31 Jul 2025 05:16:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753939017; x=1785475017;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4eefo9YFMBZGpMqzL2nIyri0qahF4fEl9iaB9VqIszM=;
 b=c+nmxud9/SiEI/usyMZJ0kPwIXS0ToO8/XxpPgDnNePXRCfTCHaU7dqe
 dKS/9CAonJfANtR1QH8cEq+8MxbamWukuWB2FtqUDXGv/iNUKQX6PGM3r
 ZyM/MarrfKQ8a7Bq10izoo1pjWoXrNdvuT+mW6vrPzwXsaxziSGxIwXV7
 OU0rPfChbgxFE78jcoA8z7/jZ5UZ8C/O7OZmwSK9rlo7LM72jCRDrmupI
 Q+Yx+FM2WhQgYEE9zgoDdwoVwqRmCOg0JyKqZL6n9Wa2FUs1546BBWK5A
 k/whFax4WabX6Tsf/OWmMr3jeFRIsbWMvaXBAy/o6+19sM23kPKsNHvU4 g==;
X-CSE-ConnectionGUID: 5AgslrdTSUu4xulEAeuO8Q==
X-CSE-MsgGUID: 3bAnoLTnS/+X4jGA2QHwHA==
X-IronPort-AV: E=McAfee;i="6800,10657,11507"; a="67332426"
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="67332426"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2025 22:16:57 -0700
X-CSE-ConnectionGUID: vzczFvxsRtOZjxNlEouLIw==
X-CSE-MsgGUID: Jdtopjj2SRenZW+f8oPsxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="194154191"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa002.jf.intel.com with ESMTP; 30 Jul 2025 22:16:55 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v3 2/3] drm/i915/bios: Add function to check if edp data
 override is needed
Date: Thu, 31 Jul 2025 10:46:45 +0530
Message-Id: <20250731051646.3009255-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250731051646.3009255-1-suraj.kandpal@intel.com>
References: <20250731051646.3009255-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
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

Add a function that helps identify if the rate provided needs to
be overridden. For this we need a function that compares the rate
provided and bitmask of rates provided in VBT.

--v2
-Rename functions [Jani]
-Return the mask instead of parsing it in function [Jani]
-Move the declaration in header [Jani]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 29 +++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_bios.h |  2 ++
 2 files changed, 31 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 8337ebe0f2c8..7adb7c4b0432 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2480,6 +2480,25 @@ static int parse_bdb_216_dp_max_link_rate(const int vbt_max_link_rate)
 	}
 }
 
+static u32 edp_rate_override_mask(int rate)
+{
+	switch (rate) {
+	case 2000000: return BDB_263_VBT_EDP_LINK_RATE_20;
+	case 1350000: return BDB_263_VBT_EDP_LINK_RATE_13_5;
+	case 1000000: return BDB_263_VBT_EDP_LINK_RATE_10;
+	case 810000: return BDB_263_VBT_EDP_LINK_RATE_8_1;
+	case 675000: return BDB_263_VBT_EDP_LINK_RATE_6_75;
+	case 540000: return BDB_263_VBT_EDP_LINK_RATE_5_4;
+	case 432000: return BDB_263_VBT_EDP_LINK_RATE_4_32;
+	case 324000: return BDB_263_VBT_EDP_LINK_RATE_3_24;
+	case 270000: return BDB_263_VBT_EDP_LINK_RATE_2_7;
+	case 243000: return BDB_263_VBT_EDP_LINK_RATE_2_43;
+	case 216000: return BDB_263_VBT_EDP_LINK_RATE_2_16;
+	case 162000: return BDB_263_VBT_EDP_LINK_RATE_1_62;
+	default: return 0;
+	}
+}
+
 int intel_bios_dp_max_link_rate(const struct intel_bios_encoder_data *devdata)
 {
 	if (!devdata || devdata->display->vbt.version < 216)
@@ -2499,6 +2518,16 @@ int intel_bios_dp_max_lane_count(const struct intel_bios_encoder_data *devdata)
 	return devdata->child.dp_max_lane_count + 1;
 }
 
+bool
+intel_bios_encoder_supports_edp_rate(const struct intel_bios_encoder_data *devdata,
+				     int rate)
+{
+	if (!devdata || devdata->display->vbt.version < 263)
+		return false;
+
+	return devdata->child.edp_data_rate_override & edp_rate_override_mask(rate);
+}
+
 static void sanitize_device_type(struct intel_bios_encoder_data *devdata,
 				 enum port port)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index 6cd7a011b8c4..a4abaa89a682 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -251,6 +251,8 @@ bool intel_bios_encoder_supports_dvi(const struct intel_bios_encoder_data *devda
 bool intel_bios_encoder_supports_hdmi(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_supports_dp(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_supports_edp(const struct intel_bios_encoder_data *devdata);
+bool intel_bios_encoder_supports_edp_rate(const struct intel_bios_encoder_data *devdata,
+					  int rate);
 bool intel_bios_encoder_supports_typec_usb(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_supports_dsi(const struct intel_bios_encoder_data *devdata);
-- 
2.34.1

