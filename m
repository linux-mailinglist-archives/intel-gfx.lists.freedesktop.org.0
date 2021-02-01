Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 310E630AA50
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 15:57:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EE8E89F85;
	Mon,  1 Feb 2021 14:56:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6D2889D30
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Feb 2021 14:56:55 +0000 (UTC)
IronPort-SDR: eEaOtzpATP0/xye1y7wA6vqKnMOOvn81oXOWJUu8n+OgsU66zUldYhvlXBrOHu7aPxxEXT/FEJ
 zGmtEkPXzJpQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9882"; a="244777848"
X-IronPort-AV: E=Sophos;i="5.79,392,1602572400"; d="scan'208";a="244777848"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 06:56:55 -0800
IronPort-SDR: OeDd+58V4nV3k7qq6GqlOY4VizLwUZtQlPnL0ysWaIAzvDgQMjvxMQ7q1R4E/5d6ms3hQuqB8o
 tfPiBdLg2hRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,392,1602572400"; d="scan'208";a="506870290"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.22])
 by orsmga004.jf.intel.com with ESMTP; 01 Feb 2021 06:56:50 -0800
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Feb 2021 23:02:28 +0800
Message-Id: <20210201150228.10001-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915/vbt: update DP max link rate table
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
Cc: Cooper Chiou <cooper.chiou@intel.com>,
 William Tseng <william.tseng@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

According to Bspec #20124, max link rate table for DP was updated
at BDB version 230. Max link rate can support upto UHBR.

After migrate to BDB v230, the definition for LBR, HBR2 and HBR3
were changed. For backward compatibility. If BDB version was
from 216 to 229. Driver have to follow original rule to configure
DP max link rate value from VBT.

Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Cooper Chiou <cooper.chiou@intel.com>
Cc: William Tseng <william.tseng@intel.com>
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 24 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 14 +++++++----
 2 files changed, 32 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 04337ac6f8c4..be1f732e6550 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1876,7 +1876,15 @@ static void parse_ddi_port(struct drm_i915_private *dev_priv,
 	/* DP max link rate for CNL+ */
 	if (bdb_version >= 216) {
 		switch (child->dp_max_link_rate) {
-		default:
+		case VBT_DP_MAX_LINK_RATE_UHBR20:
+			info->dp_max_link_rate = 2000000;
+			break;
+		case VBT_DP_MAX_LINK_RATE_UHBR13P5:
+			info->dp_max_link_rate = 1350000;
+			break;
+		case VBT_DP_MAX_LINK_RATE_UHBR10:
+			info->dp_max_link_rate = 1000000;
+			break;
 		case VBT_DP_MAX_LINK_RATE_HBR3:
 			info->dp_max_link_rate = 810000;
 			break;
@@ -1889,7 +1897,21 @@ static void parse_ddi_port(struct drm_i915_private *dev_priv,
 		case VBT_DP_MAX_LINK_RATE_LBR:
 			info->dp_max_link_rate = 162000;
 			break;
+		case VBT_DP_MAX_LINK_RATE_DEFAULT:
+		default:
+			info->dp_max_link_rate = 0;
+			break;
+		}
+
+		if (bdb_version < 230) {
+			if (child->dp_max_link_rate == VBT_DP_MAX_LINK_RATE_DEFAULT)
+				info->dp_max_link_rate = 810000;
+			else if (child->dp_max_link_rate == VBT_DP_MAX_LINK_RATE_LBR)
+				info->dp_max_link_rate = 540000;
+			else if (child->dp_max_link_rate == VBT_DP_MAX_LINK_RATE_HBR2)
+				info->dp_max_link_rate = 162000;
 		}
+
 		drm_dbg_kms(&dev_priv->drm,
 			    "VBT DP max link rate for port %c: %d\n",
 			    port_name(port), info->dp_max_link_rate);
diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index 6d10fa037751..578a54b33f32 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -343,10 +343,14 @@ enum vbt_gmbus_ddi {
 #define DP_AUX_H 0x80
 #define DP_AUX_I 0x90
 
-#define VBT_DP_MAX_LINK_RATE_HBR3	0
-#define VBT_DP_MAX_LINK_RATE_HBR2	1
+#define VBT_DP_MAX_LINK_RATE_DEFAULT	0
+#define VBT_DP_MAX_LINK_RATE_LBR	1
 #define VBT_DP_MAX_LINK_RATE_HBR	2
-#define VBT_DP_MAX_LINK_RATE_LBR	3
+#define VBT_DP_MAX_LINK_RATE_HBR2	3
+#define VBT_DP_MAX_LINK_RATE_HBR3	4
+#define VBT_DP_MAX_LINK_RATE_UHBR10	5
+#define VBT_DP_MAX_LINK_RATE_UHBR13P5	6
+#define VBT_DP_MAX_LINK_RATE_UHBR20	7
 
 /*
  * The child device config, aka the display device data structure, provides a
@@ -445,8 +449,8 @@ struct child_device_config {
 	u16 dp_gpio_pin_num;					/* 195 */
 	u8 dp_iboost_level:4;					/* 196 */
 	u8 hdmi_iboost_level:4;					/* 196 */
-	u8 dp_max_link_rate:2;					/* 216 CNL+ */
-	u8 dp_max_link_rate_reserved:6;				/* 216 */
+	u8 dp_max_link_rate:3;					/* 230 */
+	u8 dp_max_link_rate_reserved:5;				/* 230 */
 } __packed;
 
 struct bdb_general_definitions {
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
