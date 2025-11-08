Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03D7EC42183
	for <lists+intel-gfx@lfdr.de>; Sat, 08 Nov 2025 01:06:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9568E10EBB3;
	Sat,  8 Nov 2025 00:06:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FouaUghV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D61F810EBB8;
 Sat,  8 Nov 2025 00:06:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762560407; x=1794096407;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=FE1mrWq9OuVp2Ac3cmT9bULjSw7ewcSLTFcRw8rzZuY=;
 b=FouaUghVZ4bQ9bx8HnbX0UOpW09Ipf8kJqou443nwmI/1xGZS+4CJaSt
 0ZNsSUzg17X9W1RyD5jwl77l9k4wIWFrx5IQHv2/2Lpq6hHk1QYMtzqmT
 AhVBFY1vPB5dcN3TmJSCGLFBVL0SCyN0lwX3SjtBNGvxQ4vW8JW6PF8Oz
 DYU7KAY84FOCCKYSg9NrKEXWNtz1m6zHYk2d0+Dn/hcReXD6A9cPsl7oD
 152z1MWP57sDx4tgeq9uK4nQW4NG1rcKDTGWZUyezXtpYtl9NycPB/BBx
 lWRnQ9fvGOiymBVSKg0flM4jaMNX65Bv4VHIzg1AdXC6L5sxtZFnIUnb5 w==;
X-CSE-ConnectionGUID: GioxpYahSZC9xhHAydGaFQ==
X-CSE-MsgGUID: 4fLEbJUyRl2/zEsz9FhxFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64621264"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64621264"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 16:06:46 -0800
X-CSE-ConnectionGUID: 4PBBtLdwTlaoTdebx2Anag==
X-CSE-MsgGUID: +C+qor8oRD6EMzbXzyhv4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,288,1754982000"; d="scan'208";a="218822607"
Received: from mgerlach-mobl1.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.222.137])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 16:06:43 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Fri, 07 Nov 2025 21:05:37 -0300
Subject: [PATCH v4 04/11] drm/i915/display: Handle dedicated external ports
 in intel_encoder_is_tc()
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251107-xe3p_lpd-basic-enabling-v4-4-ab3367f65f15@intel.com>
References: <20251107-xe3p_lpd-basic-enabling-v4-0-ab3367f65f15@intel.com>
In-Reply-To: <20251107-xe3p_lpd-basic-enabling-v4-0-ab3367f65f15@intel.com>
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

