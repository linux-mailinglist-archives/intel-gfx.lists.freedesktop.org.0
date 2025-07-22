Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C4A3B0D188
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jul 2025 07:56:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3352410E5EE;
	Tue, 22 Jul 2025 05:56:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lBhcEMVT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5D9610E5EC;
 Tue, 22 Jul 2025 05:56:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753163793; x=1784699793;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Egci5GIq2/Aoe4/hXo6zxHaymnQszD/3U/zc4YS/eUU=;
 b=lBhcEMVTXO99TiwA0J2eESDGDhb4DEaEctM1chOaq8dMg5dYFHArNt7f
 vgZh5S7MvosfI0pJj1vVAXa2t4Gnkytuti7VzIOFVgJdmaK36OVmZhRY4
 fc6oE18llm6VpWfYJb8KIr1FxQTrWXxGBrq+lOLiSRXoOS+on0RPhCV5b
 kvEU+N9l14HedzoG+LJD8bHQ+7U5J8CmGs36XUgcr3Uq7NDVrmGgvj7IZ
 lnZUjl/HRsedfYCQVkxU115MwDWaBpnOfZnYPVT5vwwoMexDtg1HtQ4RE
 tyY5HvQbwRK/SkOxaMZ2bO42pkMcOFfHoWMIHlaCsK8MNBugjiOJsj4fY A==;
X-CSE-ConnectionGUID: F77FyLUASnegvyxY5FbADw==
X-CSE-MsgGUID: 4ISUwovDTZuZkNVpwvt3GA==
X-IronPort-AV: E=McAfee;i="6800,10657,11499"; a="66468571"
X-IronPort-AV: E=Sophos;i="6.16,330,1744095600"; d="scan'208";a="66468571"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 22:56:33 -0700
X-CSE-ConnectionGUID: Myr2VBo5SQW/ay+p9Pzigg==
X-CSE-MsgGUID: BAUCHDnKRJ2obfXNfdNjyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,330,1744095600"; d="scan'208";a="196116080"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa001.jf.intel.com with ESMTP; 21 Jul 2025 22:56:31 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 1/2] drm/i915/vbt: Add eDP Data Overrride field in VBT
Date: Tue, 22 Jul 2025 11:26:23 +0530
Message-Id: <20250722055624.2251656-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250722055624.2251656-1-suraj.kandpal@intel.com>
References: <20250722055624.2251656-1-suraj.kandpal@intel.com>
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

Add a field which add the edp_data_override field VBT which gives us a
mask of rates which need to be skipped in favour of subsequent
higher rate.

Bspec: 20124
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     |  4 +++-
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 16 ++++++++++++++++
 2 files changed, 19 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 9c268bed091d..8337ebe0f2c8 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2747,8 +2747,10 @@ static int child_device_expected_size(u16 version)
 {
 	BUILD_BUG_ON(sizeof(struct child_device_config) < 40);
 
-	if (version > 256)
+	if (version > 263)
 		return -ENOENT;
+	else if (version >= 263)
+		return 44;
 	else if (version >= 256)
 		return 40;
 	else if (version >= 216)
diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index 92c04811aa28..8e29eeb01105 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -437,6 +437,20 @@ enum vbt_gmbus_ddi {
 #define BDB_230_VBT_DP_MAX_LINK_RATE_UHBR13P5	6
 #define BDB_230_VBT_DP_MAX_LINK_RATE_UHBR20	7
 
+/* EDP link rate 262+ */
+#define BDB_263_VBT_EDP_LINK_RATE_1_62		BIT(0)
+#define BDB_263_VBT_EDP_LINK_RATE_2_16		BIT(1)
+#define BDB_263_VBT_EDP_LINK_RATE_2_43		BIT(2)
+#define BDB_263_VBT_EDP_LINK_RATE_2_7		BIT(3)
+#define BDB_263_VBT_EDP_LINK_RATE_3_24		BIT(4)
+#define BDB_263_VBT_EDP_LINK_RATE_4_32		BIT(5)
+#define BDB_263_VBT_EDP_LINK_RATE_5_4		BIT(6)
+#define BDB_263_VBT_EDP_LINK_RATE_6_75		BIT(7)
+#define BDB_263_VBT_EDP_LINK_RATE_8_1		BIT(8)
+#define BDB_263_VBT_EDP_LINK_RATE_10		BIT(9)
+#define BDB_263_VBT_EDP_LINK_RATE_13_5		BIT(10)
+#define BDB_263_VBT_EDP_LINK_RATE_20		BIT(11)
+
 /*
  * The child device config, aka the display device data structure, provides a
  * description of a port and its configuration on the platform.
@@ -547,6 +561,8 @@ struct child_device_config {
 	u8 dp_max_link_rate:3;					/* 216+ */
 	u8 dp_max_link_rate_reserved:5;				/* 216+ */
 	u8 efp_index;						/* 256+ */
+	u32 edp_data_override:5;				/* 263+ */
+	u32 edp_data_override_reserved:17;			/* 263+ */
 } __packed;
 
 struct bdb_general_definitions {
-- 
2.34.1

