Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBD1CCD8E79
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Dec 2025 11:45:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FE0110E143;
	Tue, 23 Dec 2025 10:45:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D5A6CZIl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63FD410E204;
 Tue, 23 Dec 2025 10:45:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766486721; x=1798022721;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=t/v2FvMoUoX73yBIShXkLpj/j28x/FC5R++uh9vEAVA=;
 b=D5A6CZIl1JBreEaF6ubOpBU1opLNvjcsrRMtokgH99HvjRXK79l5/oEg
 EWk+LcSM2+joWANMszEM6iwWoa6L9dPCJ81jL5hNKlfISgUmiqhgmZFZD
 1zmgFeGqrP2CdfbmqX0XWPPz/Jl6nIDi8jUesVtVaL/phEXkh7FHrmnWT
 Ga8ADBcV2aizCoSEdCyy3iEqjkhP3h119PMN1mrlWusR5/WgMQGiBWaYU
 BCe4AN5GpBjrCoJ0r8RkwyLyA/X5beCkunQ2XeP5Kq6b/shBBJe7y2bcX
 CCqUfIm1AmWsBCPsVsfFKxl+ELPAWr4K95hIBRFiLtiAqRrShMdGlN9Dm g==;
X-CSE-ConnectionGUID: 5rBsLhE0QYqyopjyOp4uwA==
X-CSE-MsgGUID: RakAsZBMQ8O7n2zetGTHsA==
X-IronPort-AV: E=McAfee;i="6800,10657,11650"; a="68089982"
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="68089982"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 02:45:20 -0800
X-CSE-ConnectionGUID: E4qeHfP6QOym3w9xh8KlYA==
X-CSE-MsgGUID: sYxm8qWSSvmWirhs7lOKYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="199734506"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa007.jf.intel.com with ESMTP; 23 Dec 2025 02:45:16 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com,
 uma.shankar@intel.com, jani.nikula@intel.com
Subject: [PATCH v11 05/18] drm/i915/vrr: Add DC Balance params to crtc_state
Date: Tue, 23 Dec 2025 16:15:27 +0530
Message-ID: <20251223104542.2688548-6-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251223104542.2688548-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251223104542.2688548-1-mitulkumar.ajitkumar.golani@intel.com>
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

Add DC Balance params to crtc_state, also add state checker
params for related properties.

--v3:
- Seggregate crtc_state params with this patch. (Ankit)

--v4:
- Update commit message and header. (Ankit)
- Add +1 to VMIN and VMAX only when it is non-zero. (Ankit)

--v5:
- Add headers in sorted order. (Jani Nikula)

--v6:
- Add a separate function to get and check dc_balance params.
- Avoid repeatative use of MMIO read. (Ankit)

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  7 ++++
 .../drm/i915/display/intel_display_types.h    |  7 ++++
 drivers/gpu/drm/i915/display/intel_vrr.c      | 32 +++++++++++++++++++
 3 files changed, 46 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d5947cc9b94c..ecea404fbf91 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5476,6 +5476,13 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 		PIPE_CONF_CHECK_LLI(cmrr.cmrr_m);
 		PIPE_CONF_CHECK_LLI(cmrr.cmrr_n);
 		PIPE_CONF_CHECK_BOOL(cmrr.enable);
+		PIPE_CONF_CHECK_I(vrr.dc_balance.vmin);
+		PIPE_CONF_CHECK_I(vrr.dc_balance.vmax);
+		PIPE_CONF_CHECK_I(vrr.dc_balance.guardband);
+		PIPE_CONF_CHECK_I(vrr.dc_balance.slope);
+		PIPE_CONF_CHECK_I(vrr.dc_balance.max_increase);
+		PIPE_CONF_CHECK_I(vrr.dc_balance.max_decrease);
+		PIPE_CONF_CHECK_I(vrr.dc_balance.vblank_target);
 	}
 
 	if (!fastset || intel_vrr_always_use_vrr_tg(display)) {
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 6ff53cd58052..75acfe043997 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1384,6 +1384,13 @@ struct intel_crtc_state {
 		u8 pipeline_full;
 		u16 flipline, vmin, vmax, guardband;
 		u32 vsync_end, vsync_start;
+		struct {
+			bool enable;
+			u16 vmin, vmax;
+			u16 guardband, slope;
+			u16 max_increase, max_decrease;
+			u16 vblank_target;
+		} dc_balance;
 	} vrr;
 
 	/* Content Match Refresh Rate state */
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 31f3a7b6e00d..427ef1741051 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -9,6 +9,7 @@
 #include "intel_de.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
+#include "intel_dmc_regs.h"
 #include "intel_dp.h"
 #include "intel_psr.h"
 #include "intel_vrr.h"
@@ -785,6 +786,35 @@ bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state)
 	       crtc_state->vrr.flipline == crtc_state->vrr.vmin;
 }
 
+static
+void intel_vrr_get_dc_balance_config(struct intel_crtc_state *crtc_state)
+{
+	u32 reg_val;
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	enum pipe pipe = crtc->pipe;
+
+	if (!HAS_VRR_DC_BALANCE(display))
+		return;
+
+	reg_val = intel_de_read(display, PIPEDMC_DCB_VMIN(pipe));
+	crtc_state->vrr.dc_balance.vmin = reg_val ? reg_val + 1 : 0;
+
+	reg_val = intel_de_read(display, PIPEDMC_DCB_VMAX(pipe));
+	crtc_state->vrr.dc_balance.vmax = reg_val ? reg_val + 1 : 0;
+
+	crtc_state->vrr.dc_balance.guardband =
+		intel_de_read(display, PIPEDMC_DCB_GUARDBAND(pipe));
+	crtc_state->vrr.dc_balance.max_increase =
+		intel_de_read(display, PIPEDMC_DCB_MAX_INCREASE(pipe));
+	crtc_state->vrr.dc_balance.max_decrease =
+		intel_de_read(display, PIPEDMC_DCB_MAX_DECREASE(pipe));
+	crtc_state->vrr.dc_balance.slope =
+		intel_de_read(display, PIPEDMC_DCB_SLOPE(pipe));
+	crtc_state->vrr.dc_balance.vblank_target =
+		intel_de_read(display, PIPEDMC_DCB_VBLANK(pipe));
+}
+
 void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
@@ -866,6 +896,8 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 	else
 		crtc_state->vrr.enable = vrr_enable;
 
+	intel_vrr_get_dc_balance_config(crtc_state);
+
 	/*
 	 * #TODO: For Both VRR and CMRR the flag I915_MODE_FLAG_VRR is set for mode_flags.
 	 * Since CMRR is currently disabled, set this flag for VRR for now.
-- 
2.48.1

