Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F9EB1184E
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Jul 2025 08:16:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFCF710E448;
	Fri, 25 Jul 2025 06:15:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CvYC3TX6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D42910E078;
 Fri, 25 Jul 2025 06:15:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753424157; x=1784960157;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FrWKzcNpeli5+dUbd67ZSLxIaZ2AaZ0Ru2xukfDpvJM=;
 b=CvYC3TX677/jSS5nEcGs2Gnji7GYlBsY1FHM7BpShoOy1eEgxH791aBA
 /rj+gXdwK18iOXOMJPbO/42TBf+gk0yMp2rC4t9qd9LIYB7r1qffMwyZ/
 s2iu4FWTDzxxBmkWZrUipTN2snHiAygq85G4T37n61bxmtTiWLRRUUIj+
 2fpUVv/Hd4GkJoEOx5uI+ldZLhDEwiJ1kbg6UzWn2J8ge3/OwdtCf7GKb
 g1YVJ2e7wxXh1Wiwdbuv3djx03vJU7OU7tMDzTYYC/uZwnYTS0txEnS09
 edDBt6FvpLAitRTDORPPhtE7o8alO3n1STduE9dXMI8gRPLkE0WHbfgZi w==;
X-CSE-ConnectionGUID: UoO34kXrQPyhKKGzDsWBgw==
X-CSE-MsgGUID: 36P4+f+FSr66ywdQSrP1Vg==
X-IronPort-AV: E=McAfee;i="6800,10657,11501"; a="55609357"
X-IronPort-AV: E=Sophos;i="6.16,338,1744095600"; d="scan'208";a="55609357"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2025 23:15:56 -0700
X-CSE-ConnectionGUID: Sar0amvQQ0WGFjO+3JA+hQ==
X-CSE-MsgGUID: bSHGotyPRGStUXqmGurdcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,338,1744095600"; d="scan'208";a="164973759"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa005.fm.intel.com with ESMTP; 24 Jul 2025 23:15:54 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 2/3] drm/i915/bios: Add function to check if edp data override
 is needed
Date: Fri, 25 Jul 2025 11:45:47 +0530
Message-Id: <20250725061548.2704697-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250725061548.2704697-1-suraj.kandpal@intel.com>
References: <20250725061548.2704697-1-suraj.kandpal@intel.com>
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

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 58 +++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_bios.h |  2 +
 2 files changed, 60 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 8337ebe0f2c8..3eac804b2449 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2480,6 +2480,54 @@ static int parse_bdb_216_dp_max_link_rate(const int vbt_max_link_rate)
 	}
 }
 
+static bool parse_bdb_263_edp_data_override(const u32 edp_data_override_mask, int rate)
+{
+	u32 val;
+
+	switch (rate) {
+	case 2000000:
+		val = BDB_263_VBT_EDP_LINK_RATE_20;
+		break;
+	case 1350000:
+		val = BDB_263_VBT_EDP_LINK_RATE_13_5;
+		break;
+	case 1000000:
+		val = BDB_263_VBT_EDP_LINK_RATE_10;
+		break;
+	case 810000:
+		val = BDB_263_VBT_EDP_LINK_RATE_8_1;
+		break;
+	case 675000:
+		val = BDB_263_VBT_EDP_LINK_RATE_6_75;
+		break;
+	case 540000:
+		val = BDB_263_VBT_EDP_LINK_RATE_5_4;
+		break;
+	case 432000:
+		val = BDB_263_VBT_EDP_LINK_RATE_4_32;
+		break;
+	case 324000:
+		val = BDB_263_VBT_EDP_LINK_RATE_3_24;
+		break;
+	case 270000:
+		val = BDB_263_VBT_EDP_LINK_RATE_2_7;
+		break;
+	case 243000:
+		val = BDB_263_VBT_EDP_LINK_RATE_2_43;
+		break;
+	case 216000:
+		val = BDB_263_VBT_EDP_LINK_RATE_2_16;
+		break;
+	case 162000:
+		val = BDB_263_VBT_EDP_LINK_RATE_1_62;
+		break;
+	default:
+		break;
+	}
+
+	return edp_data_override_mask & val;
+}
+
 int intel_bios_dp_max_link_rate(const struct intel_bios_encoder_data *devdata)
 {
 	if (!devdata || devdata->display->vbt.version < 216)
@@ -2499,6 +2547,16 @@ int intel_bios_dp_max_lane_count(const struct intel_bios_encoder_data *devdata)
 	return devdata->child.dp_max_lane_count + 1;
 }
 
+bool
+intel_bios_need_edp_data_override(const struct intel_bios_encoder_data *devdata,
+				  int rate)
+{
+	if (!devdata || devdata->display->vbt.version < 263)
+		return false;
+
+	return parse_bdb_263_edp_data_override(devdata->child.edp_data_override, rate);
+}
+
 static void sanitize_device_type(struct intel_bios_encoder_data *devdata,
 				 enum port port)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index 6cd7a011b8c4..aeba0e9b5228 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -274,5 +274,7 @@ void intel_bios_for_each_encoder(struct intel_display *display,
 					      const struct intel_bios_encoder_data *devdata));
 
 void intel_bios_debugfs_register(struct intel_display *display);
+bool
+intel_bios_need_edp_data_override(const struct intel_bios_encoder_data *devdata, int rate);
 
 #endif /* _INTEL_BIOS_H_ */
-- 
2.34.1

