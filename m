Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47F84BDC50F
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 05:18:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B08CA10E71C;
	Wed, 15 Oct 2025 03:18:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l16Y1kLO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F84910E71C;
 Wed, 15 Oct 2025 03:18:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760498318; x=1792034318;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=Z28OEEOvGy+3Artxr33WShcR4GJKie7fYJ1YdNz/6jc=;
 b=l16Y1kLOQPaHgTrv3hoeqRX9qLsmPaacPbMPE/jF7sS1qiaZVt1BpzEz
 MZatxaM37WjbAomuwRPSNe7K0u2sNGjry/VHCHpoPvpYKT8kqBc36mSIY
 zz+Q5Od6jUEWe0kCjL5JZY9OT8gXAWwY5UeSGjK3LmXiQzkCgxig34XZZ
 CFPzXP8Zqf9jcTk06jX5jkrYwZOMLXi/qSXMMObHlzlfD1oixBXCnGVMv
 h3z23K2NTbwlp+/EOZAVNTuKPrlYMIYjcV0lmXj3z3yggVikMlqUifOe1
 qoz+xrj4rWASx1DtMaYojiEE2hrst2sj2aXlhatLRvs+RDjmDOq0VN5g9 Q==;
X-CSE-ConnectionGUID: iPS3ypMbQ9y19e4P6K9N+Q==
X-CSE-MsgGUID: LQkTuWcGRLyVRedSH691Hg==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="62702602"
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="62702602"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:18:38 -0700
X-CSE-ConnectionGUID: jGx4cAVwRx2ew3EuB/ICWg==
X-CSE-MsgGUID: c0fQGhJcQn6OR2Di4Hw0dQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="186303190"
Received: from smoehrl-linux.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.222.185])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:18:34 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Wed, 15 Oct 2025 00:15:29 -0300
Subject: [PATCH 29/32] drm/i915/display: Handle dedicated external ports in
 intel_encoder_is_tc()
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251015-xe3p_lpd-basic-enabling-v1-29-d2d1e26520aa@intel.com>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
In-Reply-To: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
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
 Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>, 
 Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>
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

Cc: Shekhar Chauhan <shekhar.chauhan@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c           |  7 +++++++
 drivers/gpu/drm/i915/display/intel_display.c       | 19 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
 3 files changed, 26 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index c09aa759f4d4..6fcbebb81263 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -5343,6 +5343,13 @@ void intel_ddi_init(struct intel_display *display,
 			goto err;
 	}
 
+	if (intel_bios_encoder_is_dedicated_external(devdata)) {
+		dig_port->dedicated_external = true;
+		drm_dbg_kms(display->drm,
+			    "Port %c is dedicated external\n",
+			    port_name(port));
+	}
+
 	if (intel_encoder_is_tc(encoder)) {
 		bool is_legacy =
 			!intel_bios_encoder_supports_typec_usb(devdata) &&
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 6ac718192e1c..46474199d1ab 100644
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
index 13652e2996a4..b5b9351501b1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1909,6 +1909,7 @@ struct intel_digital_port {
 	bool lane_reversal;
 	bool ddi_a_4_lanes;
 	bool release_cl2_override;
+	bool dedicated_external;
 	u8 max_lanes;
 	/* Used for DP and ICL+ TypeC/DP and TypeC/HDMI ports. */
 	enum aux_ch aux_ch;

-- 
2.51.0

