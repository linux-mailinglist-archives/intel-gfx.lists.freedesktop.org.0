Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0295D9F0D09
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 14:10:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7ECF510E1A0;
	Fri, 13 Dec 2024 13:10:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lf9sHfmD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 431F410E012
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2024 13:10:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734095452; x=1765631452;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=AWBJzGZoVxxW1keAJPOcAA8IPHHfenxCUaOI7uD19Eg=;
 b=lf9sHfmDRNYXMuCEJfl6we676c4+q5kbAfMRsH99DD1HRfWJL0mJffNH
 2ajigeL8I80hoEn3NnSXjcmna4WCWwtPypgBD10A0p0W8wFBtBOPKOG74
 LdYzBOtYb4913RcCu3LvwRGjMZ197YTfuhpprphJzB1pcbX1SnDob42M0
 yYoK6b3XySTuO5DS/Vq44LJWGJ3a0Zm4kz5k5BiUE4S0+WRkCpvBbydyb
 G9FbQAGTZRJIJHcFguskdKpfpxzJRxuKVpFBFnxABCaEdpdzSuQTmwA62
 NiJJVPRWfGrGsaUAh2hGOhsvRjUv3gw8Gl3gCM8ph2ijm8p03uCsDzLPM g==;
X-CSE-ConnectionGUID: jGB8sZ1tSuW9xPjjO0fAng==
X-CSE-MsgGUID: hPgBPpcXQjW4QSzsUrkdlw==
X-IronPort-AV: E=McAfee;i="6700,10204,11285"; a="34681876"
X-IronPort-AV: E=Sophos;i="6.12,231,1728975600"; d="scan'208";a="34681876"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 05:10:52 -0800
X-CSE-ConnectionGUID: S5Kef6i8SB60mxpIauxzbQ==
X-CSE-MsgGUID: 0MUZZx8TSzmBuVTt8NNMvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="96959957"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.159])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 05:10:50 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/i915/bios: add VBT DSI DSC debug logging
Date: Fri, 13 Dec 2024 15:10:43 +0200
Message-Id: <20241213131043.345716-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Improve the debug logging for DSC parameters for ports.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index e0e4e9b62d8d..51f9aca960f9 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2157,19 +2157,22 @@ parse_compression_parameters(struct intel_display *display)
 
 	list_for_each_entry(devdata, &display->vbt.display_devices, node) {
 		const struct child_device_config *child = &devdata->child;
+		char port_name = port_name(intel_bios_encoder_port(devdata));
 
 		if (!child->compression_enable)
 			continue;
 
 		if (!params) {
 			drm_dbg_kms(display->drm,
-				    "VBT: compression params not available\n");
+				    "Port %c VBT indicates compression but params not available\n",
+				    port_name);
 			continue;
 		}
 
 		if (child->compression_method_cps) {
 			drm_dbg_kms(display->drm,
-				    "VBT: CPS compression not supported\n");
+				    "Port %c VBT indicates unsupported CPS compression\n",
+				    port_name);
 			continue;
 		}
 
@@ -2177,6 +2180,9 @@ parse_compression_parameters(struct intel_display *display)
 
 		devdata->dsc = kmemdup(&params->data[index],
 				       sizeof(*devdata->dsc), GFP_KERNEL);
+
+		drm_dbg_kms(display->drm, "Port %c VBT DSC index %d\n",
+			    port_name, index);
 	}
 }
 
@@ -3543,6 +3549,11 @@ bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
 			if (!devdata->dsc)
 				return false;
 
+			drm_dbg_kms(display->drm,
+				    "[ENCODER:%d:%s] Found port %c VBT DSC parameters\n",
+				    encoder->base.base.id, encoder->base.name,
+				    port_name(encoder->port));
+
 			fill_dsc(crtc_state, devdata->dsc, dsc_max_bpc);
 
 			return true;
-- 
2.39.5

