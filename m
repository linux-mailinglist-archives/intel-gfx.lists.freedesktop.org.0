Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE077C99BA0
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Dec 2025 02:23:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C673810E503;
	Tue,  2 Dec 2025 01:23:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iV2mPHCX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8782310E4FA;
 Tue,  2 Dec 2025 01:23:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764638595; x=1796174595;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pouYN7a1/qgWA76Vfsd4k9wLrpPdG0s0tv/iIcs48Lw=;
 b=iV2mPHCX6Og/ZpXsP7tnBGmUqWvMpBCvlEsSVnVblcuvmGEqBxLRADK2
 51iJqH19FAW+mOPzAz9XGoxP1e+79rzn+YgaiTsXFq95DmSwQrE98mTmt
 ZPEAf+g8n1VkNDPW8GKSMgr3Kp2vevx+buzRnGGXjMSrgV7WQph6hM8Tl
 LnnIsANLf0PsU5hSr+OcamRnSzXt6xm/lzS3KgDNYHMimolFXsgSnDq68
 2L+Hm8Ul3WP82H0BqeoEfYm4FAa91vYBjrF3LhG756Rs7xRaf56AoCxQu
 sI8YG9A0AjYB3Nit5a6aU13lOYb9QyqciEA5RMML9SsOZiF5ygHj0p7QC w==;
X-CSE-ConnectionGUID: WBdcOEowQiaMSYggWjtZEQ==
X-CSE-MsgGUID: AIsQXBlbTuiMZOkyDnXzIA==
X-IronPort-AV: E=McAfee;i="6800,10657,11630"; a="69186547"
X-IronPort-AV: E=Sophos;i="6.20,241,1758610800"; d="scan'208";a="69186547"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 17:23:15 -0800
X-CSE-ConnectionGUID: lpE839tvQKyi3ByRFjlKmg==
X-CSE-MsgGUID: E+/R564WRJKmZyl2W+xYZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,241,1758610800"; d="scan'208";a="224927908"
Received: from msatwood-mobl.amr.corp.intel.com (HELO
 msatwood-mobl.hsd1.or.comcast.net) ([10.125.111.179])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 17:23:15 -0800
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@Intel.com, dnyaneshware.bhdane@intel.com,
 gustavo.sousa@intel.com, jouni.hogander@intel.com,
 juha-peka.heikkila@intel.com, luciano.coelho@intel.com,
 matthew.d.roper@intel.com, ravi.kumar.vodapalli@intel.com,
 shekhar.chauhan@intel.com, vinod.govindapillai@intel.com,
 imre.deak@intel.com, jani.nikula@linux.intel.com, suraj.kandapal@intel.com,
 jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 sai.teja.pottumuttu@Intel.com
Subject: [PATCH v6 3/8] drm/i915/display: Handle dedicated external ports in
 intel_encoder_is_tc()
Date: Mon,  1 Dec 2025 17:23:01 -0800
Message-ID: <20251202012306.9315-4-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251202012306.9315-1-matthew.s.atwood@intel.com>
References: <20251202012306.9315-1-matthew.s.atwood@intel.com>
MIME-Version: 1.0
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

From: Gustavo Sousa <gustavo.sousa@intel.com>

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
v3:
  - Simplify the code by using NULL check for dig_port to avoid using
    intel_encoder_is_dig_port(). (Imre)

Cc: Imre Deak <imre.deak@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Shekhar Chauhan <shekhar.chauhan@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
Reviewed-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c         | 11 +++++++++++
 drivers/gpu/drm/i915/display/intel_display.c     | 16 +++++++++++++++-
 .../gpu/drm/i915/display/intel_display_types.h   |  1 +
 3 files changed, 27 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index a83a4200e631..cb91d07cdaa6 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -5423,6 +5423,17 @@ void intel_ddi_init(struct intel_display *display,
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
index 5563ff7ee10e..de8ae14e06cd 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1810,7 +1810,17 @@ bool intel_phy_is_combo(struct intel_display *display, enum phy phy)
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
@@ -1909,6 +1919,10 @@ bool intel_encoder_is_snps(struct intel_encoder *encoder)
 bool intel_encoder_is_tc(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+
+	if (dig_port && dig_port->dedicated_external)
+		return false;
 
 	return intel_phy_is_tc(display, intel_encoder_to_phy(encoder));
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index ed0f7448e6cd..f8f7bc956214 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1936,6 +1936,7 @@ struct intel_digital_port {
 	bool lane_reversal;
 	bool ddi_a_4_lanes;
 	bool release_cl2_override;
+	bool dedicated_external;
 	u8 max_lanes;
 	/* Used for DP and ICL+ TypeC/DP and TypeC/HDMI ports. */
 	enum aux_ch aux_ch;
-- 
2.51.0

