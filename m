Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1786F31DC30
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Feb 2021 16:32:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6972789C56;
	Wed, 17 Feb 2021 15:32:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8090489C56
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Feb 2021 15:32:54 +0000 (UTC)
IronPort-SDR: Q3YsNJzNakMrH/2HujSy8AebCLweoFwZIzg/LRmb9fCUm2gV9qWaaQXyiYWa7OtArLsfwme5Ht
 laYrSR+kHDeg==
X-IronPort-AV: E=McAfee;i="6000,8403,9897"; a="180662508"
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="180662508"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2021 07:32:53 -0800
IronPort-SDR: GKR2wD9QGFuTsK8LE30JNJuAl4g33k6H2cji0pWkPQQYhAhMztgPgdL7WQZDnlmxfVyAGk9nwj
 moXaaKX0Br1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="439401793"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.22])
 by orsmga001.jf.intel.com with ESMTP; 17 Feb 2021 07:32:52 -0800
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Feb 2021 23:39:35 +0800
Message-Id: <20210217153935.8528-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210201150228.10001-1-shawn.c.lee@intel.com>
References: <20210201150228.10001-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] [PATCH v3] drm/i915/vbt: update DP max link rate table
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

Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Cooper Chiou <cooper.chiou@intel.com>
Cc: William Tseng <william.tseng@intel.com>
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 78 +++++++++++++++----
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 23 ++++--
 2 files changed, 80 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 7902d4c2673e..d8305c351b77 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1759,6 +1759,64 @@ static enum port dvo_port_to_port(struct drm_i915_private *dev_priv,
 					  dvo_port);
 }
 
+static int parse_bdb_230_dp_max_link_rate(const int vbt_max_link_rate)
+{
+	int link_rate;
+
+	switch (vbt_max_link_rate) {
+	case BDB_230_VBT_DP_MAX_LINK_RATE_UHBR20:
+		link_rate = 2000000;
+		break;
+	case BDB_230_VBT_DP_MAX_LINK_RATE_UHBR13P5:
+		link_rate = 1350000;
+		break;
+	case BDB_230_VBT_DP_MAX_LINK_RATE_UHBR10:
+		link_rate = 1000000;
+		break;
+	case BDB_230_VBT_DP_MAX_LINK_RATE_HBR3:
+		link_rate = 810000;
+		break;
+	case BDB_230_VBT_DP_MAX_LINK_RATE_HBR2:
+		link_rate = 540000;
+		break;
+	case BDB_230_VBT_DP_MAX_LINK_RATE_HBR:
+		link_rate = 270000;
+		break;
+	case BDB_230_VBT_DP_MAX_LINK_RATE_LBR:
+		link_rate = 162000;
+		break;
+	case BDB_230_VBT_DP_MAX_LINK_RATE_DEF:
+	default:
+		link_rate = 0;
+		break;
+	}
+
+	return link_rate;
+}
+
+static int parse_bdb_216_dp_max_link_rate(const int vbt_max_link_rate)
+{
+	int link_rate;
+
+	switch (vbt_max_link_rate) {
+	default:
+	case BDB_216_VBT_DP_MAX_LINK_RATE_HBR3:
+		link_rate = 810000;
+		break;
+	case BDB_216_VBT_DP_MAX_LINK_RATE_HBR2:
+		link_rate = 540000;
+		break;
+	case BDB_216_VBT_DP_MAX_LINK_RATE_HBR:
+		link_rate = 270000;
+		break;
+	case BDB_216_VBT_DP_MAX_LINK_RATE_LBR:
+		link_rate = 162000;
+		break;
+	}
+
+	return link_rate;
+}
+
 static void parse_ddi_port(struct drm_i915_private *dev_priv,
 			   struct display_device_data *devdata,
 			   u8 bdb_version)
@@ -1884,21 +1942,11 @@ static void parse_ddi_port(struct drm_i915_private *dev_priv,
 
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
