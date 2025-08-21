Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BF52B2ECBC
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Aug 2025 06:27:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3612F10E2CA;
	Thu, 21 Aug 2025 04:27:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kUF8BDmO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F4AC10E2CA;
 Thu, 21 Aug 2025 04:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755750419; x=1787286419;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qe/X4U/FESnezUOGXpRfKa1rrNu1pY/roseB9S6EYQ8=;
 b=kUF8BDmONlnMpkvMNzng1umlrmmJDrLQMgtz5l8rSvTCh4FBmu2CS+aD
 RC5EfzSsng+TVCkXZcuPKriKacBgRnDypyvcueqnQJzDLywVy56j+v5Lf
 ciAw0MdcDCrqnIlWtGd+LDNDgHtY/Lm2aCGQvpg4kL9Imk4IDIzea4b7M
 r1TlKiFhaEcwrbF9y08ti1ADbp7MR3zDX1Sp3zOFZQLr+OUN1QlC6qdIR
 xcY3tOmFUHvJFD8rDzEaScv+2PZUIrOwdfuNciiqifeS0vr12k5ANmqtJ
 PnSBe1aUOU1x6z4WUjD7TZZAnVrIbiqBgU8OOppr0SUqGliKID0HF1Vm0 A==;
X-CSE-ConnectionGUID: 4fhtWfNlQQ6dOEv3+FKTEw==
X-CSE-MsgGUID: J9qQO9W6RyWJ3T/dFsc4uw==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="57054904"
X-IronPort-AV: E=Sophos;i="6.17,306,1747724400"; d="scan'208";a="57054904"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 21:26:59 -0700
X-CSE-ConnectionGUID: 3INEZiUbSMm++YG2NpGCEQ==
X-CSE-MsgGUID: ZAV8RHZPR+mPRnhk2jedMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,306,1747724400"; d="scan'208";a="168667692"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa008.fm.intel.com with ESMTP; 20 Aug 2025 21:26:58 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v6 1/3] drm/i915/vbt: Add eDP Data rate overrride field in VBT
Date: Thu, 21 Aug 2025 09:56:51 +0530
Message-Id: <20250821042653.269227-2-suraj.kandpal@intel.com>
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

Add edp_data_rate_override field VBT which gives us a mask
of rates which needs to be skipped in favour of
subsequent higher rate.

--v2
-Rename vbt field [Jani]
-Fix comment to 263+ [Jani]
-Use BIT_U32 [Jani]
-Fix the bits assignment in vbt [Jani]

--v3
-Add a mask which represents all link rates [Ankit]

Bspec: 20124
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     |  4 +++-
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 18 ++++++++++++++++++
 2 files changed, 21 insertions(+), 1 deletion(-)

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
index 92c04811aa28..32161848a5c1 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -437,6 +437,22 @@ enum vbt_gmbus_ddi {
 #define BDB_230_VBT_DP_MAX_LINK_RATE_UHBR13P5	6
 #define BDB_230_VBT_DP_MAX_LINK_RATE_UHBR20	7
 
+/* EDP link rate 263+ */
+#define BDB_263_VBT_EDP_LINK_RATE_1_62		BIT_U32(0)
+#define BDB_263_VBT_EDP_LINK_RATE_2_16		BIT_U32(1)
+#define BDB_263_VBT_EDP_LINK_RATE_2_43		BIT_U32(2)
+#define BDB_263_VBT_EDP_LINK_RATE_2_7		BIT_U32(3)
+#define BDB_263_VBT_EDP_LINK_RATE_3_24		BIT_U32(4)
+#define BDB_263_VBT_EDP_LINK_RATE_4_32		BIT_U32(5)
+#define BDB_263_VBT_EDP_LINK_RATE_5_4		BIT_U32(6)
+#define BDB_263_VBT_EDP_LINK_RATE_6_75		BIT_U32(7)
+#define BDB_263_VBT_EDP_LINK_RATE_8_1		BIT_U32(8)
+#define BDB_263_VBT_EDP_LINK_RATE_10		BIT_U32(9)
+#define BDB_263_VBT_EDP_LINK_RATE_13_5		BIT_U32(10)
+#define BDB_263_VBT_EDP_LINK_RATE_20		BIT_U32(11)
+#define BDB_263_VBT_EDP_NUM_RATES		12
+#define BDB_263_VBT_EDP_RATES_MASK		GENMASK(BDB_263_VBT_EDP_NUM_RATES - 1, 0)
+
 /*
  * The child device config, aka the display device data structure, provides a
  * description of a port and its configuration on the platform.
@@ -547,6 +563,8 @@ struct child_device_config {
 	u8 dp_max_link_rate:3;					/* 216+ */
 	u8 dp_max_link_rate_reserved:5;				/* 216+ */
 	u8 efp_index;						/* 256+ */
+	u32 edp_data_rate_override:12;				/* 263+ */
+	u32 edp_data_rate_override_reserved:20;			/* 263+ */
 } __packed;
 
 struct bdb_general_definitions {
-- 
2.34.1

