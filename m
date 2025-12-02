Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AFD6C9A78C
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Dec 2025 08:36:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1592A10E56A;
	Tue,  2 Dec 2025 07:36:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bVlXN97h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3A7110E587;
 Tue,  2 Dec 2025 07:36:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764661016; x=1796197016;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ld4b75KAvlllIsGB8xVomZTALyvJEcXvZRV4V703+N4=;
 b=bVlXN97hcQYOAOmH0Pp3zDvzvMw1HK/hYOpRQGJgPjRe1tRY5LfPCUyg
 tss43B8c9M1ueCtRD6KoT4IbMx0O3CLsCrJ79MNbxH09KIYS5vt1r6o4l
 S2xfUZDSDtRICsdld/EBFVvWoMZ7PWAcHvvyQ7666eoQNIsRNLhX4Lzft
 9Mp4g9cEQn7kHYY+6J5eIthUrpr94L2aiLlVbcaWRHi4HT20rOl0CNiH8
 1zR1bgWssf75IT2YrG1JwrOL7qdO2fSpy8dX0jH3k/X3eahTgnkkLgM4Y
 6RnlNaCcx5xvRZm0lN+EzbY06FwDUQVNYhy28BnuY3QzKM/SZUA8/MUZ3 Q==;
X-CSE-ConnectionGUID: GfiaD/rlT0+LADDuW4tB0g==
X-CSE-MsgGUID: RPvwNwdlQsmF6amEESR+Hg==
X-IronPort-AV: E=McAfee;i="6800,10657,11630"; a="84219214"
X-IronPort-AV: E=Sophos;i="6.20,242,1758610800"; d="scan'208";a="84219214"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 23:36:55 -0800
X-CSE-ConnectionGUID: nOwWJfJ6QeSSIpV30iRc5w==
X-CSE-MsgGUID: VeWZE2zzSayNFhkxi4/BLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,242,1758610800"; d="scan'208";a="198504804"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa003.jf.intel.com with ESMTP; 01 Dec 2025 23:36:54 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com,
 uma.shankar@intel.com, jani.nikula@intel.com
Subject: [PATCH v10 07/17] drm/i915/vrr: Add compute config for DC Balance
 params
Date: Tue,  2 Dec 2025 13:06:42 +0530
Message-ID: <20251202073659.926838-8-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251202073659.926838-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251202073659.926838-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Compute DC Balance parameters and tunable params based on
experiments.

--v2:
- Document tunable params. (Ankit)

--v3:
- Add line spaces to compute config. (Ankit)
- Remove redundancy checks.

--v4:
- Separate out conpute config to separate function.
- As all the valuse are being computed in scanlines, and slope
is still in usec, convert and store it to scanlines.

--v5:
- Update and add comments for slope calculation. (Ankit)
- Update early return conditions for dc balance compute. (Ankit)

--v6:
- Early return condition simplified for dc balance compute config. (Ankit)
- Make use of pipe restrictions to this patch. (Ankit)

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 60 ++++++++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 427ef1741051..74ad661f2654 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -6,6 +6,7 @@
 
 #include <drm/drm_print.h>
 
+#include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
@@ -20,6 +21,14 @@
 #define FIXED_POINT_PRECISION		100
 #define CMRR_PRECISION_TOLERANCE	10
 
+/*
+ * Tunable parameters for DC Balance correction.
+ * These are captured based on experimentations.
+ */
+#define DCB_CORRECTION_SENSITIVITY	30
+#define DCB_CORRECTION_AGGRESSIVENESS	1000 /* ms × 100; 10 ms */
+#define DCB_BLANK_TARGET		50
+
 bool intel_vrr_is_capable(struct intel_connector *connector)
 {
 	struct intel_display *display = to_intel_display(connector);
@@ -342,6 +351,55 @@ int intel_vrr_compute_vmax(struct intel_connector *connector,
 	return vmax;
 }
 
+static bool intel_vrr_dc_balance_possible(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	enum pipe pipe = crtc->pipe;
+
+	/*
+	 * FIXME: Currently Firmware supports DC Balancing on PIPE A
+	 * and PIPE B. Account those limitation while computing DC
+	 * Balance parameters.
+	 */
+	return (HAS_VRR_DC_BALANCE(display) &&
+		((pipe == PIPE_A) || (pipe == PIPE_B)));
+}
+
+static void
+intel_vrr_dc_balance_compute_config(struct intel_crtc_state *crtc_state)
+{
+	int guardband_usec, adjustment_usec;
+	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+
+	if (!intel_vrr_dc_balance_possible(crtc_state) || !crtc_state->vrr.enable)
+		return;
+
+	crtc_state->vrr.dc_balance.vmax = crtc_state->vrr.vmax;
+	crtc_state->vrr.dc_balance.vmin = crtc_state->vrr.vmin;
+	crtc_state->vrr.dc_balance.max_increase =
+		crtc_state->vrr.vmax - crtc_state->vrr.vmin;
+	crtc_state->vrr.dc_balance.max_decrease =
+		crtc_state->vrr.vmax - crtc_state->vrr.vmin;
+	crtc_state->vrr.dc_balance.guardband =
+		DIV_ROUND_UP(crtc_state->vrr.dc_balance.vmax *
+			     DCB_CORRECTION_SENSITIVITY, 100);
+	guardband_usec =
+		intel_scanlines_to_usecs(adjusted_mode,
+					 crtc_state->vrr.dc_balance.guardband);
+	/*
+	 *  The correction_aggressiveness/100 is the number of milliseconds to
+	 *  adjust by when the balance is at twice the guardband.
+	 *  guardband_slope = correction_aggressiveness / (guardband * 100)
+	 */
+	adjustment_usec = DCB_CORRECTION_AGGRESSIVENESS * 10;
+	crtc_state->vrr.dc_balance.slope =
+		DIV_ROUND_UP(adjustment_usec, guardband_usec);
+	crtc_state->vrr.dc_balance.vblank_target =
+		DIV_ROUND_UP((crtc_state->vrr.vmax - crtc_state->vrr.vmin) *
+			     DCB_BLANK_TARGET, 100);
+}
+
 void
 intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 			 struct drm_connector_state *conn_state)
@@ -399,6 +457,8 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 			(crtc_state->hw.adjusted_mode.crtc_vtotal -
 			 crtc_state->hw.adjusted_mode.crtc_vsync_end);
 	}
+
+	intel_vrr_dc_balance_compute_config(crtc_state);
 }
 
 static int
-- 
2.48.1

