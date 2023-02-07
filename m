Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08CAA68CFA7
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 07:43:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E757310E2F6;
	Tue,  7 Feb 2023 06:43:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1953810E1D3
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Feb 2023 06:43:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675752224; x=1707288224;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=VIQVVDvY2VWxQynQRZfsMOd4h6HBw9IsSNwPqm5y9eE=;
 b=M7r/bLF8xNDJP9yiZuoj2f7hxQMUzyk+WafeHnQc+stj/uuwWg1+uk2Q
 6GETOGwoq9QNTLvDHnjYOPZRCFMTeo9gtwW+09o/XVJrjdn4O+ijIzCpZ
 YcD8yuaYz0g9/57oX6ab8g9s9kuwouTDyo8uqnoWwbJkmwGDAbRGTCNE5
 EADXU0QF24keFFYNGik+hVOAMOGhOdWsdGjkkih5FjZMxYDHmKTvSR0zU
 KA52bg+Y9e51dRW3sD//q9KstGn0hG1LsaREUBoeSmWGJouTUOEItiHAw
 T6+Pu3jXZz1dM+lT5DMCSpxbdF7WmPmpMo9NCMJj8KctXa2hP03lS98yH A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="309067903"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="309067903"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 22:43:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="660107531"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="660107531"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga007.jf.intel.com with SMTP; 06 Feb 2023 22:43:41 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 07 Feb 2023 08:43:41 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Feb 2023 08:43:35 +0200
Message-Id: <20230207064337.18697-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230207064337.18697-1-ville.syrjala@linux.intel.com>
References: <20230207064337.18697-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Fix VBT DSI DVO port handling
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Turns out modern (icl+) VBTs still declare their DSI ports
as MIPI-A and MIPI-C despite the PHYs now being A and B.
Remap appropriately to allow the panels declared as MIPI-C
to work.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8016
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 33 ++++++++++++++++-------
 1 file changed, 23 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index e6ca51232dcf..06a2d98d2277 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2467,6 +2467,22 @@ static enum port dvo_port_to_port(struct drm_i915_private *i915,
 					  dvo_port);
 }
 
+static enum port
+dsi_dvo_port_to_port(struct drm_i915_private *i915, u8 dvo_port)
+{
+	switch (dvo_port) {
+	case DVO_PORT_MIPIA:
+		return PORT_A;
+	case DVO_PORT_MIPIC:
+		if (DISPLAY_VER(i915) >= 11)
+			return PORT_B;
+		else
+			return PORT_C;
+	default:
+		return PORT_NONE;
+	}
+}
+
 static int parse_bdb_230_dp_max_link_rate(const int vbt_max_link_rate)
 {
 	switch (vbt_max_link_rate) {
@@ -3442,19 +3458,16 @@ bool intel_bios_is_dsi_present(struct drm_i915_private *i915,
 
 		dvo_port = child->dvo_port;
 
-		if (dvo_port == DVO_PORT_MIPIA ||
-		    (dvo_port == DVO_PORT_MIPIB && DISPLAY_VER(i915) >= 11) ||
-		    (dvo_port == DVO_PORT_MIPIC && DISPLAY_VER(i915) < 11)) {
-			if (port)
-				*port = dvo_port - DVO_PORT_MIPIA;
-			return true;
-		} else if (dvo_port == DVO_PORT_MIPIB ||
-			   dvo_port == DVO_PORT_MIPIC ||
-			   dvo_port == DVO_PORT_MIPID) {
+		if (dsi_dvo_port_to_port(i915, dvo_port) == PORT_NONE) {
 			drm_dbg_kms(&i915->drm,
 				    "VBT has unsupported DSI port %c\n",
 				    port_name(dvo_port - DVO_PORT_MIPIA));
+			continue;
 		}
+
+		if (port)
+			*port = dsi_dvo_port_to_port(i915, dvo_port);
+		return true;
 	}
 
 	return false;
@@ -3539,7 +3552,7 @@ bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
 		if (!(child->device_type & DEVICE_TYPE_MIPI_OUTPUT))
 			continue;
 
-		if (child->dvo_port - DVO_PORT_MIPIA == encoder->port) {
+		if (dsi_dvo_port_to_port(i915, child->dvo_port) == encoder->port) {
 			if (!devdata->dsc)
 				return false;
 
-- 
2.39.1

