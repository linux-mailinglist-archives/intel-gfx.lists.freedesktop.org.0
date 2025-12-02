Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E230C9A786
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Dec 2025 08:36:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9631E10E0FB;
	Tue,  2 Dec 2025 07:36:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h/7bw3rA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17D2210E57A;
 Tue,  2 Dec 2025 07:36:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764661011; x=1796197011;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Y+c2R6Q+hTrJkVs8DAvz6NZ2vFYQdFtQN937Mi/velE=;
 b=h/7bw3rAVg3w1aSxdeDJhGmKPd9g3RfvlcauZDMR/wNjUPRkFemYk0hB
 DZJTbH+MMuYUuyfKGRV26CAkv1T0+fWiCkJhMgxgqhXQ4cq0yffeAD9ca
 JG1M2HjkBi65uncnPFeXFBXHZu2auni+TGBmM/3J+GN0JlVfJ5wulHxE0
 KvKg0lu6Kcnwoom3Jj0u/+sx+bxV89tiUjixQ44mYAM3t4VlDRJF1ADdX
 ZAcZyBbUG5vo6J9Iyu5gK+FEA4er82SX3jHzTKKs0JhaSiEAzlQG/0RVb
 WwHeXSkH0suRiE+yUI7XNusSMP7L0DHd6SQxSaHDtzMTCCsov4aInZcYh A==;
X-CSE-ConnectionGUID: cFazahLfQDmSigMJ4p4vuQ==
X-CSE-MsgGUID: /49OvW43RlqrGzuSo/MHiA==
X-IronPort-AV: E=McAfee;i="6800,10657,11630"; a="84219209"
X-IronPort-AV: E=Sophos;i="6.20,242,1758610800"; d="scan'208";a="84219209"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 23:36:51 -0800
X-CSE-ConnectionGUID: dpDgcnkPTdaFEbK0gYN6Hg==
X-CSE-MsgGUID: fgcKdLQWTym6Vu8mt5ogAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,242,1758610800"; d="scan'208";a="198504783"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa003.jf.intel.com with ESMTP; 01 Dec 2025 23:36:49 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com,
 uma.shankar@intel.com, jani.nikula@intel.com
Subject: [PATCH v10 05/17] drm/i915/vrr: Add DC Balance params to crtc_state
Date: Tue,  2 Dec 2025 13:06:40 +0530
Message-ID: <20251202073659.926838-6-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251202073659.926838-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251202073659.926838-1-mitulkumar.ajitkumar.golani@intel.com>
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
index 5563ff7ee10e..0a16c37b1dc6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5462,6 +5462,13 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
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
index ed0f7448e6cd..85de0e417c8e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1357,6 +1357,13 @@ struct intel_crtc_state {
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

