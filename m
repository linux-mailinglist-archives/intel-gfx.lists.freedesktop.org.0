Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B8BB2ECBD
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Aug 2025 06:27:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A06410E870;
	Thu, 21 Aug 2025 04:27:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fbjAzFFq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E529C10E870;
 Thu, 21 Aug 2025 04:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755750426; x=1787286426;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vtACEMxDR9bFlyzuTRXjEVkxCDYJjYBbXKUkytfoYRU=;
 b=fbjAzFFqydItWFNd3EzryGYk3qhd8pdV1HuqFrm7xa9tnxi4GE81Gyee
 JV4x83UmU/1cOkyBA93aCgsXQ69mRL5MbdKx1+sQ5EJ1ztKvP6LCTqnwJ
 bvuH4LkkqIHO8oMFT2p+GEE2ZwuPKekevihdLhr6xbTTFxAbFM57o6ZOt
 KULtSyp5HgWgBSe0PxhPsL4gVeV+ADj/T2XaIQKJqv8qgHjFU3Qm7t+Dm
 kTnPCoimfQsQlSG9/KpllSeU0ftCK4xhGqZdcOM6Qboo9DzhjRERf53qo
 bAAY78/HRjU9t2zYM5BmpMh1aMb2GeZitpgq+db/TkAyuGg1tU5sXuExh g==;
X-CSE-ConnectionGUID: 3iyeTtRJTNeBEncglkEzpw==
X-CSE-MsgGUID: Q5aJ1tK1RomhMQyuzHochw==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="57054909"
X-IronPort-AV: E=Sophos;i="6.17,306,1747724400"; d="scan'208";a="57054909"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 21:27:06 -0700
X-CSE-ConnectionGUID: slsW+O3uQLKz0YeYD0K9Rg==
X-CSE-MsgGUID: GAZ0MytJSjKErb3jWwxxBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,306,1747724400"; d="scan'208";a="168667727"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa008.fm.intel.com with ESMTP; 20 Aug 2025 21:27:00 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v6 2/3] drm/i915/bios: Add function to check if edp data
 override is needed
Date: Thu, 21 Aug 2025 09:56:52 +0530
Message-Id: <20250821042653.269227-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250821042653.269227-1-suraj.kandpal@intel.com>
References: <20250821042653.269227-1-suraj.kandpal@intel.com>
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

--v3
-Change function name to depict what the function does [Ankit]

--v4
-Lets not use hweight [Ankit]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 32 +++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_bios.h |  2 ++
 2 files changed, 34 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 8337ebe0f2c8..193c7911953e 100644
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
@@ -2499,6 +2518,19 @@ int intel_bios_dp_max_lane_count(const struct intel_bios_encoder_data *devdata)
 	return devdata->child.dp_max_lane_count + 1;
 }
 
+bool
+intel_bios_encoder_reject_edp_rate(const struct intel_bios_encoder_data *devdata,
+				   int rate)
+{
+	if (!devdata || devdata->display->vbt.version < 263)
+		return false;
+
+	if (devdata->child.edp_data_rate_override == BDB_263_VBT_EDP_RATES_MASK)
+		return false;
+
+	return devdata->child.edp_data_rate_override & edp_rate_override_mask(rate);
+}
+
 static void sanitize_device_type(struct intel_bios_encoder_data *devdata,
 				 enum port port)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index 6cd7a011b8c4..781e08f7eeb2 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -259,6 +259,8 @@ bool intel_bios_encoder_is_lspcon(const struct intel_bios_encoder_data *devdata)
 bool intel_bios_encoder_lane_reversal(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_hpd_invert(const struct intel_bios_encoder_data *devdata);
 enum port intel_bios_encoder_port(const struct intel_bios_encoder_data *devdata);
+bool intel_bios_encoder_reject_edp_rate(const struct intel_bios_encoder_data *devdata,
+					int rate);
 enum aux_ch intel_bios_dp_aux_ch(const struct intel_bios_encoder_data *devdata);
 int intel_bios_dp_boost_level(const struct intel_bios_encoder_data *devdata);
 int intel_bios_dp_max_lane_count(const struct intel_bios_encoder_data *devdata);
-- 
2.34.1

