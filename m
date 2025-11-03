Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21DF6C2D711
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 18:21:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A876210E486;
	Mon,  3 Nov 2025 17:21:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OAvo+D0H";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6622810E47C;
 Mon,  3 Nov 2025 17:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762190465; x=1793726465;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=FE1mrWq9OuVp2Ac3cmT9bULjSw7ewcSLTFcRw8rzZuY=;
 b=OAvo+D0HWywgEN2F7VVJGDtwMy4Nce6sBOWuF0AZd1k9FqA8yqZauTwI
 4sGwCfEd2Yua8x1tcQF1bFT6Fo3dG+YPfyTfs7S1TXl5CHMPnuL8F9k0d
 bdyZ1/zrXMGcnwX3Bpwxts0wNfjW4l7A8Zr/9ver0x6QBkp0N7VPN1YLC
 WXXRYNMYYNyMHmaTgMlLUZS0A00r65fuSm699rDJ+wrKbNlaV7661N2Ee
 I+muC3BlfMhqOAXlsQCec0BjKQ7sD9gYE2f5cXTEt8WRWgPUTS1VBmtaY
 hFZ6+HgvhcFP7WdsvaIK8eNguGLDKKTxMDETh98ohq1UaB6+T7f+GipLs A==;
X-CSE-ConnectionGUID: 5Rnpefb2RWSWEqT34GDDIA==
X-CSE-MsgGUID: FoYits7oR92yX7910L6IxQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="64310160"
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="64310160"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:21:05 -0800
X-CSE-ConnectionGUID: JrVnheVhSbebD2XvggwqQw==
X-CSE-MsgGUID: HxLD4FDnTzqXxj572bPOhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="186606684"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO [192.168.1.16])
 ([10.124.220.223])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:21:01 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Mon, 03 Nov 2025 14:18:15 -0300
Subject: [PATCH v3 24/29] drm/i915/display: Handle dedicated external ports
 in intel_encoder_is_tc()
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251103-xe3p_lpd-basic-enabling-v3-24-00e87b510ae7@intel.com>
References: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
In-Reply-To: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, 
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>, 
 Gustavo Sousa <gustavo.sousa@intel.com>, 
 =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>, 
 Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>, 
 Luca Coelho <luciano.coelho@intel.com>, 
 Lucas De Marchi <lucas.demarchi@intel.com>, 
 Matt Atwood <matthew.s.atwood@intel.com>, 
 Matt Roper <matthew.d.roper@intel.com>, 
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>, 
 Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>, 
 Jani Nikula <jani.nikula@linux.intel.com>
X-Mailer: b4 0.15-dev
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

Starting with Xe3p_LPD, the VBT has a new field, called in the driver
"dedicated_external", which tells that a Type-C capable port is
physically connected to a PHY outside of the Type-C subsystem.  When
that's the case, the driver must not do the extra Type-C programming for
that port.  Update intel_encoder_is_tc() to check for that case.

While at it, add a note to intel_phy_is_tc() to remind us that it is
about whether the respective port is a Type-C capable port rather than
the PHY itself.

(Maybe it would be a nice idea to rename intel_phy_is_tc()?)

Note that this was handled with a new bool member added to struct
intel_digital_port instead of having querying the VBT directly because
VBT memory is freed (intel_bios_driver_remove) before encoder cleanup
(intel_ddi_encoder_destroy), which would cause an oops to happen when
the latter calls intel_encoder_is_tc().  This could be fixed by keeping
VBT data around longer, but that's left for a follow-up work, if deemed
necessary.

v2:
  - Drop printing info about dedicated external, now that we are doing
    it when parsing the VBT. (Jani)
  - Add a FIXME comment on the code explaining why we need to store
    dedicated_external in struct intel_digital_port. (Jani)

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Shekhar Chauhan <shekhar.chauhan@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c           | 11 +++++++++++
 drivers/gpu/drm/i915/display/intel_display.c       | 19 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
 3 files changed, 30 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 733ef4559131..d9aaeafd1570 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -5376,6 +5376,17 @@ void intel_ddi_init(struct intel_display *display,
 			goto err;
 	}
 
+	/*
+	 * FIXME: We currently need to store dedicated_external because devdata
+	 * does not live long enough for when intel_encoder_is_tc() is called on
+	 * the unbind path.  This needs to be fixed by making sure that the VBT
+	 * data is kept long enough, so that
+	 * intel_bios_encoder_is_dedicated_external() can be called directly
+	 * from intel_encoder_is_tc().
+	 */
+	if (intel_bios_encoder_is_dedicated_external(devdata))
+		dig_port->dedicated_external = true;
+
 	if (intel_encoder_is_tc(encoder)) {
 		bool is_legacy =
 			!intel_bios_encoder_supports_typec_usb(devdata) &&
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 25986bd8fbdd..431f7f030a9b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1800,7 +1800,17 @@ bool intel_phy_is_combo(struct intel_display *display, enum phy phy)
 		return false;
 }
 
-/* Prefer intel_encoder_is_tc() */
+/*
+ * This function returns true if the DDI port respective to the PHY enumeration
+ * is a Type-C capable port.
+ *
+ * Depending on the VBT, the port might be configured
+ * as a "dedicated external" port, meaning that actual physical PHY is outside
+ * of the Type-C subsystem and, as such, not really a "Type-C PHY".
+ *
+ * Prefer intel_encoder_is_tc(), especially if you really need to know if we
+ * are dealing with Type-C connections.
+ */
 bool intel_phy_is_tc(struct intel_display *display, enum phy phy)
 {
 	/*
@@ -1885,6 +1895,13 @@ bool intel_encoder_is_tc(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
 
+	if (intel_encoder_is_dig_port(encoder)) {
+		struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+
+		if (dig_port->dedicated_external)
+			return false;
+	}
+
 	return intel_phy_is_tc(display, intel_encoder_to_phy(encoder));
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 00600134bda0..8bf392bc0d5d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1937,6 +1937,7 @@ struct intel_digital_port {
 	bool lane_reversal;
 	bool ddi_a_4_lanes;
 	bool release_cl2_override;
+	bool dedicated_external;
 	u8 max_lanes;
 	/* Used for DP and ICL+ TypeC/DP and TypeC/HDMI ports. */
 	enum aux_ch aux_ch;

-- 
2.51.0

