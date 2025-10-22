Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CFFDBF979F
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 02:32:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8375F10E6A3;
	Wed, 22 Oct 2025 00:32:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FIvvQQPw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3685610E6A4;
 Wed, 22 Oct 2025 00:32:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761093164; x=1792629164;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=fPjgeb/0xXArloKV8nF+suz/TSWcNw7BxEs/4BPtdj8=;
 b=FIvvQQPwp0sqrogGOJarTydFiJT21ufvSqAkU19G8dThiZxsmnZ/uE6X
 p/0f2KnBHBn4VBlDzhrwE8i+ZpKKjxBV6g+vXtD9qyycpFLTdeM5XnMAD
 cn5fIcnh7AzxqWcOCsfzYQp2MryVuwssKiRc7zPIvwnyUBzOf8BX7SuKp
 ShT603s13Vurel0j9G5gjgMalczpVTZzL1i5sdGP0tayVJt/J9VTfi6zY
 arMBAkYtW6Irmh4MIaau7a6+FoMEs8tlMbO268c2gKrv7JbNf/iiS6RJz
 t4oMBjaiYoIO1aTq7jWUicaFHIno3/kqjjjoNH339tyapFZI+yFMJsYtI g==;
X-CSE-ConnectionGUID: 942IuMM9T++EFklEguFS8g==
X-CSE-MsgGUID: uggeBp59QEyB5k3JiKLXYQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="67095544"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="67095544"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 17:32:44 -0700
X-CSE-ConnectionGUID: +sK2jK7oTrm0BoP8A3ehjQ==
X-CSE-MsgGUID: QQs27W2ETzKDYHPtgcLMow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="188132619"
Received: from gpacheco-mobl.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.221.26])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 17:32:40 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Tue, 21 Oct 2025 21:28:54 -0300
Subject: [PATCH v2 29/32] drm/i915/display: Handle dedicated external ports
 in intel_encoder_is_tc()
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251021-xe3p_lpd-basic-enabling-v2-29-10eae6d655b8@intel.com>
References: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
In-Reply-To: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
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
index 870140340342..a3dc384cfd71 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -5350,6 +5350,17 @@ void intel_ddi_init(struct intel_display *display,
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
index 5ae02bfc2148..20885b81917f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1778,7 +1778,17 @@ bool intel_phy_is_combo(struct intel_display *display, enum phy phy)
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
@@ -1863,6 +1873,13 @@ bool intel_encoder_is_tc(struct intel_encoder *encoder)
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
index bba03791f0ea..4738439ee03d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1925,6 +1925,7 @@ struct intel_digital_port {
 	bool lane_reversal;
 	bool ddi_a_4_lanes;
 	bool release_cl2_override;
+	bool dedicated_external;
 	u8 max_lanes;
 	/* Used for DP and ICL+ TypeC/DP and TypeC/HDMI ports. */
 	enum aux_ch aux_ch;

-- 
2.51.0

