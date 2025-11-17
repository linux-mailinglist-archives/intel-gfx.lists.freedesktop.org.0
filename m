Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F09B7C626E9
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 06:44:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C9E510E2C6;
	Mon, 17 Nov 2025 05:44:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Op5MXdbu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8219310E2C5;
 Mon, 17 Nov 2025 05:44:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763358280; x=1794894280;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TdvhjIadUcXiiL60/tK0YnXwH503O2N5i4UNl8KMHXI=;
 b=Op5MXdbuhI0ZaRAPVb1ieyEgznU+5FnrOm1MzS1wX5F8AK5JmWouOmlp
 I6qXQY8WyP7F5yShk95VpAs3uZxdBnvIhn/1sIAue0+zaMWP/TvuNAcU9
 GaynoM5ECG7IZ2gyp8+BwIlntEADamzms3NHpleS88I0cnAwgAOZOXLg7
 A3IwbJHtJBHmjrXd0MgeGklWtLBticttBqZfI80ddXM7QYfXFMcOIO/+i
 a3BUFgHoOw4gGmTM2POf9VjJtY1oe5zkcTkchHOyes/zmDzbv0Fsg2xwN
 C9P+Z3PdVoz/6yqRXcid6By2An1KVbwq+DagdZ/HeLCI/01xezYxq8X4r Q==;
X-CSE-ConnectionGUID: PvleaSaUSOSo8TwfjwQCBw==
X-CSE-MsgGUID: xzlj+7SlSeKthS6hmQFdkQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="65446018"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="65446018"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2025 21:44:40 -0800
X-CSE-ConnectionGUID: HGniPKxmS6Ok5UX4YWAR1Q==
X-CSE-MsgGUID: AwhRiHiuT6SpRHnn6ARWrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="190016314"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa007.fm.intel.com with ESMTP; 16 Nov 2025 21:44:38 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com
Subject: [PATCH v8 05/18] drm/i915/vrr: Add DC Balance params to crtc_state
Date: Mon, 17 Nov 2025 11:14:29 +0530
Message-ID: <20251117054442.4047665-6-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251117054442.4047665-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251117054442.4047665-1-mitulkumar.ajitkumar.golani@intel.com>
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
index 069967114bd9..22565351b2ba 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5482,6 +5482,13 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
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
index 38702a9e0f50..8eb0ace7d918 100644
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
index 7f0ead192777..650077eb280f 100644
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

