Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BE51305609
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 09:45:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C67A96E5B6;
	Wed, 27 Jan 2021 08:45:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0C9E6E5B6
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 08:45:41 +0000 (UTC)
IronPort-SDR: RcczvPQf7zmb0Yx26T13PnT9bmFt1BA/WbFEr7QOAadiFkRJ5W19tiKKsPCfPE/e1IhhQCZ1tU
 XUx1NAwI70oQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="241566762"
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="241566762"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 00:45:40 -0800
IronPort-SDR: 6ql8u/lcCVHZrz5jCKaOiTlwlCkTbTgujxP4gzLTVg09JXMJQ/a/9hDf9yMiyLUgjc6xe8Mxe4
 6CXKCBgZr7sg==
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="388231411"
Received: from aalbersk-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.47.47])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 00:45:39 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jan 2021 10:45:34 +0200
Message-Id: <20210127084534.24406-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/bios: tidy up child device debug
 logging
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Make the child device details easier to read by turning this:

[drm:parse_ddi_port [i915]] Port B VBT info: CRT:0 DVI:1 HDMI:1 DP:0 eDP:0 LSPCON:0 USB-Type-C:0 TBT:0 DSC:0
[drm:parse_ddi_port [i915]] VBT HDMI level shift for port B: 8
[drm:parse_ddi_port [i915]] VBT DP max link rate for port B: 810000
[drm:parse_ddi_port [i915]] Port C VBT info: CRT:0 DVI:1 HDMI:1 DP:1 eDP:0 LSPCON:0 USB-Type-C:0 TBT:0 DSC:0
[drm:parse_ddi_port [i915]] VBT HDMI level shift for port C: 8
[drm:parse_ddi_port [i915]] VBT (e)DP boost level for port C: 3
[drm:parse_ddi_port [i915]] VBT HDMI boost level for port C: 1
[drm:parse_ddi_port [i915]] VBT DP max link rate for port C: 810000

into this:

[drm:parse_ddi_port [i915]] Port B VBT info: CRT:0 DVI:1 HDMI:1 DP:0 eDP:0 LSPCON:0 USB-Type-C:0 TBT:0 DSC:0
[drm:parse_ddi_port [i915]] Port B VBT HDMI level shift: 8
[drm:parse_ddi_port [i915]] Port B VBT DP max link rate: 810000
[drm:parse_ddi_port [i915]] Port C VBT info: CRT:0 DVI:1 HDMI:1 DP:1 eDP:0 LSPCON:0 USB-Type-C:0 TBT:0 DSC:0
[drm:parse_ddi_port [i915]] Port C VBT HDMI level shift: 8
[drm:parse_ddi_port [i915]] Port C VBT (e)DP boost level: 3
[drm:parse_ddi_port [i915]] Port C VBT HDMI boost level: 1
[drm:parse_ddi_port [i915]] Port C VBT DP max link rate: 810000

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 04337ac6f8c4..796d6be0ba5d 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1829,7 +1829,7 @@ static void parse_ddi_port(struct drm_i915_private *dev_priv,
 		/* The VBT HDMI level shift values match the table we have. */
 		u8 hdmi_level_shift = child->hdmi_level_shifter_value;
 		drm_dbg_kms(&dev_priv->drm,
-			    "VBT HDMI level shift for port %c: %d\n",
+			    "Port %c VBT HDMI level shift: %d\n",
 			    port_name(port),
 			    hdmi_level_shift);
 		info->hdmi_level_shift = hdmi_level_shift;
@@ -1856,7 +1856,7 @@ static void parse_ddi_port(struct drm_i915_private *dev_priv,
 
 		if (max_tmds_clock)
 			drm_dbg_kms(&dev_priv->drm,
-				    "VBT HDMI max TMDS clock for port %c: %d kHz\n",
+				    "Port %c VBT HDMI max TMDS clock: %d kHz\n",
 				    port_name(port), max_tmds_clock);
 		info->max_tmds_clock = max_tmds_clock;
 	}
@@ -1865,11 +1865,11 @@ static void parse_ddi_port(struct drm_i915_private *dev_priv,
 	if (bdb_version >= 196 && child->iboost) {
 		info->dp_boost_level = translate_iboost(child->dp_iboost_level);
 		drm_dbg_kms(&dev_priv->drm,
-			    "VBT (e)DP boost level for port %c: %d\n",
+			    "Port %c VBT (e)DP boost level: %d\n",
 			    port_name(port), info->dp_boost_level);
 		info->hdmi_boost_level = translate_iboost(child->hdmi_iboost_level);
 		drm_dbg_kms(&dev_priv->drm,
-			    "VBT HDMI boost level for port %c: %d\n",
+			    "Port %c VBT HDMI boost level: %d\n",
 			    port_name(port), info->hdmi_boost_level);
 	}
 
@@ -1891,7 +1891,7 @@ static void parse_ddi_port(struct drm_i915_private *dev_priv,
 			break;
 		}
 		drm_dbg_kms(&dev_priv->drm,
-			    "VBT DP max link rate for port %c: %d\n",
+			    "Port %c VBT DP max link rate: %d\n",
 			    port_name(port), info->dp_max_link_rate);
 	}
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
