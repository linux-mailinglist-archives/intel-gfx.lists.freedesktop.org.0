Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA8DEB06FF1
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jul 2025 10:10:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69A8810E6FF;
	Wed, 16 Jul 2025 08:10:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mpiAArui";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D2D210E6F0;
 Wed, 16 Jul 2025 08:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752653400; x=1784189400;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mh4aTDMWUDqruAMdK2BKV3A5S0M5DW2F0gK1KWpdjkg=;
 b=mpiAAruiMsqiIsESs+0Mh86sarNj5y6WiZ7OQjo2Gr8l4X4uNCb+od3A
 d02vwVLYoJRWYl16DfGfbDeuNozEIqsJI1iiwiquKu4He2Kloz3er0rpx
 MI3bCUkqVsb7/PtOg2BBbUTrWSLhXbUYOVDshaNhJyBI3eegSDwHSJCfS
 lDc45iPfCWqmXoTc7+A6sVlQPRhhxCxyh0GdAAQAUYqeQVrFH6wDz6imy
 PKZIksGCKdoHOOaTGt4QkZhPQ4cdqIMp9IHigYuu4nHakTkAmoWjBUxkU
 7ru+70HrvNgThOXkj6zmU3S1OfXWfEN5FtFzJl7VxR/PWCk1EChZz20XH g==;
X-CSE-ConnectionGUID: W0D2E599Sw2FjkvDXMI+cA==
X-CSE-MsgGUID: ii68pC9IQceoV9HKM10PBQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="66245054"
X-IronPort-AV: E=Sophos;i="6.16,315,1744095600"; d="scan'208";a="66245054"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 01:09:59 -0700
X-CSE-ConnectionGUID: FXrbRUlITYaE1YlT0KXu2Q==
X-CSE-MsgGUID: 9kX6IvDZT9OySRf13Wy2+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,315,1744095600"; d="scan'208";a="161759316"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa003.jf.intel.com with ESMTP; 16 Jul 2025 01:09:58 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 1/2] drm/i915/vbt: Add eDP Data Overrride field in VBT
Date: Wed, 16 Jul 2025 13:39:18 +0530
Message-Id: <20250716080919.2127676-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250716080919.2127676-1-suraj.kandpal@intel.com>
References: <20250716080919.2127676-1-suraj.kandpal@intel.com>
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
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

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

