Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA25F31E54E
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Feb 2021 06:16:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E53CE6E18E;
	Thu, 18 Feb 2021 05:16:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29AD96E18E
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Feb 2021 05:16:50 +0000 (UTC)
IronPort-SDR: JitceYhdbCusB7BKVLrqR4JG2VHznAuWI1aRvDRKjzbUYryqFoil7q0T1OPFg1lSa/nyuxeTan
 F3glP1q2gSIA==
X-IronPort-AV: E=McAfee;i="6000,8403,9898"; a="183526806"
X-IronPort-AV: E=Sophos;i="5.81,186,1610438400"; d="scan'208";a="183526806"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2021 21:16:48 -0800
IronPort-SDR: 8OwCgECISo38jMVtUlCxADR3fBNJ5FMJ9Dqqd/9yRnwlXoElhTtwgqAO7DL11mlgSS9zkyGkc0
 1SunZ4EWWgvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,186,1610438400"; d="scan'208";a="593513946"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.22])
 by fmsmga005.fm.intel.com with ESMTP; 17 Feb 2021 21:16:47 -0800
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 18 Feb 2021 13:23:33 +0800
Message-Id: <20210218052333.16109-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210201150228.10001-1-shawn.c.lee@intel.com>
References: <20210201150228.10001-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] [PATCH v4] drm/i915/vbt: update DP max link rate table
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

v2: split the mapping table to two for old and new BDB definition.
v3: return link rate instead of assigning it.
v4: remove the useless variable.

Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Cooper Chiou <cooper.chiou@intel.com>
Cc: William Tseng <william.tseng@intel.com>
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 58 ++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 23 ++++++--
 2 files changed, 60 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 7902d4c2673e..f3fa1441ce16 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1759,6 +1759,44 @@ static enum port dvo_port_to_port(struct drm_i915_private *dev_priv,
 					  dvo_port);
 }
 
+static int parse_bdb_230_dp_max_link_rate(const int vbt_max_link_rate)
+{
+	switch (vbt_max_link_rate) {
+	default:
+	case BDB_230_VBT_DP_MAX_LINK_RATE_DEF:
+		return 0;
+	case BDB_230_VBT_DP_MAX_LINK_RATE_UHBR20:
+		return 2000000;
+	case BDB_230_VBT_DP_MAX_LINK_RATE_UHBR13P5:
+		return 1350000;
+	case BDB_230_VBT_DP_MAX_LINK_RATE_UHBR10:
+		return 1000000;
+	case BDB_230_VBT_DP_MAX_LINK_RATE_HBR3:
+		return 810000;
+	case BDB_230_VBT_DP_MAX_LINK_RATE_HBR2:
+		return 540000;
+	case BDB_230_VBT_DP_MAX_LINK_RATE_HBR:
+		return 270000;
+	case BDB_230_VBT_DP_MAX_LINK_RATE_LBR:
+		return 162000;
+	}
+}
+
+static int parse_bdb_216_dp_max_link_rate(const int vbt_max_link_rate)
+{
+	switch (vbt_max_link_rate) {
+	default:
+	case BDB_216_VBT_DP_MAX_LINK_RATE_HBR3:
+		return 810000;
+	case BDB_216_VBT_DP_MAX_LINK_RATE_HBR2:
+		return 540000;
+	case BDB_216_VBT_DP_MAX_LINK_RATE_HBR:
+		return 270000;
+	case BDB_216_VBT_DP_MAX_LINK_RATE_LBR:
+		return 162000;
+	}
+}
+
 static void parse_ddi_port(struct drm_i915_private *dev_priv,
 			   struct display_device_data *devdata,
 			   u8 bdb_version)
@@ -1884,21 +1922,11 @@ static void parse_ddi_port(struct drm_i915_private *dev_priv,
 
 	/* DP max link rate for CNL+ */
 	if (bdb_version >= 216) {
-		switch (child->dp_max_link_rate) {
-		default:
-		case VBT_DP_MAX_LINK_RATE_HBR3:
-			info->dp_max_link_rate = 810000;
-			break;
-		case VBT_DP_MAX_LINK_RATE_HBR2:
-			info->dp_max_link_rate = 540000;
-			break;
-		case VBT_DP_MAX_LINK_RATE_HBR:
-			info->dp_max_link_rate = 270000;
-			break;
-		case VBT_DP_MAX_LINK_RATE_LBR:
-			info->dp_max_link_rate = 162000;
-			break;
-		}
+		if (bdb_version >= 230)
+			info->dp_max_link_rate = parse_bdb_230_dp_max_link_rate(child->dp_max_link_rate);
+		else
+			info->dp_max_link_rate = parse_bdb_216_dp_max_link_rate(child->dp_max_link_rate);
+
 		drm_dbg_kms(&dev_priv->drm,
 			    "Port %c VBT DP max link rate: %d\n",
 			    port_name(port), info->dp_max_link_rate);
diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index 6d10fa037751..0d80b04b34be 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -343,10 +343,21 @@ enum vbt_gmbus_ddi {
 #define DP_AUX_H 0x80
 #define DP_AUX_I 0x90
 
-#define VBT_DP_MAX_LINK_RATE_HBR3	0
-#define VBT_DP_MAX_LINK_RATE_HBR2	1
-#define VBT_DP_MAX_LINK_RATE_HBR	2
-#define VBT_DP_MAX_LINK_RATE_LBR	3
+/* DP max link rate 216+ */
+#define BDB_216_VBT_DP_MAX_LINK_RATE_HBR3	0
+#define BDB_216_VBT_DP_MAX_LINK_RATE_HBR2	1
+#define BDB_216_VBT_DP_MAX_LINK_RATE_HBR	2
+#define BDB_216_VBT_DP_MAX_LINK_RATE_LBR	3
+
+/* DP max link rate 230+ */
+#define BDB_230_VBT_DP_MAX_LINK_RATE_DEF	0
+#define BDB_230_VBT_DP_MAX_LINK_RATE_LBR	1
+#define BDB_230_VBT_DP_MAX_LINK_RATE_HBR	2
+#define BDB_230_VBT_DP_MAX_LINK_RATE_HBR2	3
+#define BDB_230_VBT_DP_MAX_LINK_RATE_HBR3	4
+#define BDB_230_VBT_DP_MAX_LINK_RATE_UHBR10	5
+#define BDB_230_VBT_DP_MAX_LINK_RATE_UHBR13P5	6
+#define BDB_230_VBT_DP_MAX_LINK_RATE_UHBR20	7
 
 /*
  * The child device config, aka the display device data structure, provides a
@@ -445,8 +456,8 @@ struct child_device_config {
 	u16 dp_gpio_pin_num;					/* 195 */
 	u8 dp_iboost_level:4;					/* 196 */
 	u8 hdmi_iboost_level:4;					/* 196 */
-	u8 dp_max_link_rate:2;					/* 216 CNL+ */
-	u8 dp_max_link_rate_reserved:6;				/* 216 */
+	u8 dp_max_link_rate:3;					/* 230 CNL+ */
+	u8 dp_max_link_rate_reserved:5;				/* 230 */
 } __packed;
 
 struct bdb_general_definitions {
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
