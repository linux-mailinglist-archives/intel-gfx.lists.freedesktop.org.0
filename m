Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E40F8B41B54
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Sep 2025 12:10:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E12C10E679;
	Wed,  3 Sep 2025 10:10:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kMjDqqr8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F66710E679;
 Wed,  3 Sep 2025 10:10:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756894257; x=1788430257;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ADUjWT3+ce1TAeEptl4O3V7Q4827dbOWgMgrOP5V9O4=;
 b=kMjDqqr87jvYtackzhd6RXcYcWY80Asgbthfr9dG+2bxWuf14eAW6E45
 Hw/PCHSg8swLIUvi6EaOm8rfv3wHKhxviyNUZs0p445T3g6zgaZARMr8r
 4v2Wxio9IhOumsx1gog42TLgS340JN+GiFol7kRCPnVSkr11opdZjH3rZ
 JTi/8feas5Zdy1qdpJg/dseMufxrcPr4AZedC56rsiA4L68Jj7398kNpT
 3x9ISn4gaXLOg3WVj2E73fWXt83QoOhp5F829/Usx4fhuM4Jzh/oUeDaZ
 pL9IgWOwxaG7gLeq9wMLcffM8klB8JwJnfriiQToxfqzXyC5kwH9v0j5Q w==;
X-CSE-ConnectionGUID: SOCLswleTvG2eajwaKiaqg==
X-CSE-MsgGUID: +UP6DyaiRp+E0r1kxdBvDg==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="70301222"
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="70301222"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 03:10:56 -0700
X-CSE-ConnectionGUID: PKQyUkxNQqyuqz/ZExyngw==
X-CSE-MsgGUID: LDbook8sSXy4HgU2zfOtwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="171695716"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.246])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 03:10:55 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH] drm/i915/ddi: abstract figuring out encoder name
Date: Wed,  3 Sep 2025 13:10:50 +0300
Message-ID: <20250903101050.3671305-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.2
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

The encoder name deduction has become a bit cumbersome within
intel_ddi_init(). Split it out to a separate function to declutter
intel_ddi_init(), even if that means having to use a temp seq buffer for
the name.

Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 69 +++++++++++++-----------
 1 file changed, 38 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 4e4ea3a0ff83..68e049ad042b 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -26,6 +26,7 @@
  */
 
 #include <linux/iopoll.h>
+#include <linux/seq_buf.h>
 #include <linux/string_helpers.h>
 
 #include <drm/display/drm_dp_helper.h>
@@ -5077,11 +5078,45 @@ static bool port_in_use(struct intel_display *display, enum port port)
 	return false;
 }
 
+static const char *intel_ddi_encoder_name(struct intel_display *display,
+					  enum port port, enum phy phy,
+					  struct seq_buf *s)
+{
+	if (DISPLAY_VER(display) >= 13 && port >= PORT_D_XELPD) {
+		seq_buf_printf(s, "DDI %c/PHY %c",
+			       port_name(port - PORT_D_XELPD + PORT_D),
+			       phy_name(phy));
+	} else if (DISPLAY_VER(display) >= 12) {
+		enum tc_port tc_port = intel_port_to_tc(display, port);
+
+		seq_buf_printf(s, "DDI %s%c/PHY %s%c",
+			       port >= PORT_TC1 ? "TC" : "",
+			       port >= PORT_TC1 ? port_tc_name(port) : port_name(port),
+			       tc_port != TC_PORT_NONE ? "TC" : "",
+			       tc_port != TC_PORT_NONE ? tc_port_name(tc_port) : phy_name(phy));
+	} else if (DISPLAY_VER(display) >= 11) {
+		enum tc_port tc_port = intel_port_to_tc(display, port);
+
+		seq_buf_printf(s, "DDI %c%s/PHY %s%c",
+			       port_name(port),
+			       port >= PORT_C ? " (TC)" : "",
+			       tc_port != TC_PORT_NONE ? "TC" : "",
+			       tc_port != TC_PORT_NONE ? tc_port_name(tc_port) : phy_name(phy));
+	} else {
+		seq_buf_printf(s, "DDI %c/PHY %c", port_name(port),  phy_name(phy));
+	}
+
+	drm_WARN_ON(display->drm, seq_buf_has_overflowed(s));
+
+	return seq_buf_str(s);
+}
+
 void intel_ddi_init(struct intel_display *display,
 		    const struct intel_bios_encoder_data *devdata)
 {
 	struct intel_digital_port *dig_port;
 	struct intel_encoder *encoder;
+	DECLARE_SEQ_BUF(encoder_name, 20);
 	bool init_hdmi, init_dp;
 	enum port port;
 	enum phy phy;
@@ -5166,37 +5201,9 @@ void intel_ddi_init(struct intel_display *display,
 	encoder = &dig_port->base;
 	encoder->devdata = devdata;
 
-	if (DISPLAY_VER(display) >= 13 && port >= PORT_D_XELPD) {
-		drm_encoder_init(display->drm, &encoder->base, &intel_ddi_funcs,
-				 DRM_MODE_ENCODER_TMDS,
-				 "DDI %c/PHY %c",
-				 port_name(port - PORT_D_XELPD + PORT_D),
-				 phy_name(phy));
-	} else if (DISPLAY_VER(display) >= 12) {
-		enum tc_port tc_port = intel_port_to_tc(display, port);
-
-		drm_encoder_init(display->drm, &encoder->base, &intel_ddi_funcs,
-				 DRM_MODE_ENCODER_TMDS,
-				 "DDI %s%c/PHY %s%c",
-				 port >= PORT_TC1 ? "TC" : "",
-				 port >= PORT_TC1 ? port_tc_name(port) : port_name(port),
-				 tc_port != TC_PORT_NONE ? "TC" : "",
-				 tc_port != TC_PORT_NONE ? tc_port_name(tc_port) : phy_name(phy));
-	} else if (DISPLAY_VER(display) >= 11) {
-		enum tc_port tc_port = intel_port_to_tc(display, port);
-
-		drm_encoder_init(display->drm, &encoder->base, &intel_ddi_funcs,
-				 DRM_MODE_ENCODER_TMDS,
-				 "DDI %c%s/PHY %s%c",
-				 port_name(port),
-				 port >= PORT_C ? " (TC)" : "",
-				 tc_port != TC_PORT_NONE ? "TC" : "",
-				 tc_port != TC_PORT_NONE ? tc_port_name(tc_port) : phy_name(phy));
-	} else {
-		drm_encoder_init(display->drm, &encoder->base, &intel_ddi_funcs,
-				 DRM_MODE_ENCODER_TMDS,
-				 "DDI %c/PHY %c", port_name(port), phy_name(phy));
-	}
+	drm_encoder_init(display->drm, &encoder->base, &intel_ddi_funcs,
+			 DRM_MODE_ENCODER_TMDS, "%s",
+			 intel_ddi_encoder_name(display, port, phy, &encoder_name));
 
 	intel_encoder_link_check_init(encoder, intel_ddi_link_check);
 
-- 
2.47.2

