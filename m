Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB30B1184D
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Jul 2025 08:15:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADFDF10E438;
	Fri, 25 Jul 2025 06:15:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FANK5FJm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD72610E078;
 Fri, 25 Jul 2025 06:15:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753424155; x=1784960155;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Egci5GIq2/Aoe4/hXo6zxHaymnQszD/3U/zc4YS/eUU=;
 b=FANK5FJmS8rPTeCYPvhiPVKRfmMi130qgs1pvh+9jG58Hma2Ox370atg
 kVFA8N4qOgTEmG9JQxsVDpoJVgWqiV2lefKqGAexOrt34uyV/ngpzRKSE
 2tEczgxsKe9IreE8C+jdNF51xW4klzXUMGSBQHzL8/hxVt0bP53eXxx9Y
 lW08+uo9FMYnU17qWdtNBiG6xxzPtVlE9Dg7cKTmctd6tgQ5t635Humqt
 t15AJlz0UPpJQQurLShoB7+ofBzUSvERPv6GbGeidZqk20adkZO0dXwkO
 8Lmlz4VcJXb2MRcegJdaUyMRKjD0jI0wQ19oHofZuofrJQlhe+jSVMbqq Q==;
X-CSE-ConnectionGUID: 0r03LC/nTr+H7Id0Sfpg3A==
X-CSE-MsgGUID: NKfwc4skSaWb9PuAXJHpfw==
X-IronPort-AV: E=McAfee;i="6800,10657,11501"; a="55609341"
X-IronPort-AV: E=Sophos;i="6.16,338,1744095600"; d="scan'208";a="55609341"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2025 23:15:54 -0700
X-CSE-ConnectionGUID: JYzNPd7qTZK8hdn5pcwymA==
X-CSE-MsgGUID: PRB+Xo7tShaA4U4OmwBjjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,338,1744095600"; d="scan'208";a="164973712"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa005.fm.intel.com with ESMTP; 24 Jul 2025 23:15:53 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 1/3] drm/i915/vbt: Add eDP Data Overrride field in VBT
Date: Fri, 25 Jul 2025 11:45:46 +0530
Message-Id: <20250725061548.2704697-2-suraj.kandpal@intel.com>
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

