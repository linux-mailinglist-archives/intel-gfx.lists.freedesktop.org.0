Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D15ACCDA3
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Jun 2025 21:37:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC37F10E5A8;
	Tue,  3 Jun 2025 19:37:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PRHEL42z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0096A10E611;
 Tue,  3 Jun 2025 19:37:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748979430; x=1780515430;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DWqZCz3Ns83hBGRRqfH1FCuYD/OJ7+Utxf0mhxRv6vo=;
 b=PRHEL42zJkj2Gc8M4EEVizVuvtI4i7gFkmp8qv9CP7G7QuzKJM7nTiuS
 AokdaGvfr9oXgOPiFibt/vptN47mFKu2lH7q9zj9FiVZda5iO9Lvhsr2N
 u90qBd7LtCmCNGXZ7hZpiWO/vkPZbmRLv+Wgp+nYSmzRxkYe+qYhoQ7mQ
 acxVnwpOFVYmBElkHr4Of1auVeJyJjgmpjXVr/MleZarg9BYeSTN/dihl
 IZFhkaICGs93OmtbJnaiIpW5qbJEYNYwIXJSwS4OH7Lg+7OrNbYbKOzWj
 hFYj1nU5sFbViw84d4wkd8CcGlcRuvRUvvavIVsDp2dXXEXa5t43kI7p9 Q==;
X-CSE-ConnectionGUID: e8W0I0ibQzSgR2W/ci+3CA==
X-CSE-MsgGUID: p1ETZpH0T+20gMaivDj0dg==
X-IronPort-AV: E=McAfee;i="6700,10204,11453"; a="50276007"
X-IronPort-AV: E=Sophos;i="6.16,207,1744095600"; d="scan'208";a="50276007"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2025 12:37:10 -0700
X-CSE-ConnectionGUID: qQnuFtiYRk2ZO3nzYpWv4A==
X-CSE-MsgGUID: xzBht+lTRrKKxpbGSTBmkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,207,1744095600"; d="scan'208";a="144844766"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa006.jf.intel.com with ESMTP; 03 Jun 2025 12:37:08 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, ankit.k.nautiyal@intel.com,
 ville.syrjala@intel.com, jani.nikula@intel.com
Subject: [PATCH v6 06/17] drm/i915/vrr: Add DC Balance params to crtc_state
Date: Wed,  4 Jun 2025 01:05:11 +0530
Message-ID: <20250603193522.2567092-7-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250603193522.2567092-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250603193522.2567092-1-mitulkumar.ajitkumar.golani@intel.com>
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

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  7 ++++++
 .../drm/i915/display/intel_display_types.h    |  7 ++++++
 drivers/gpu/drm/i915/display/intel_vrr.c      | 22 +++++++++++++++++++
 3 files changed, 36 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 06f58c062b29..fd869b425f3a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5420,6 +5420,13 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
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
index ed4d743fc7c5..d8bc5c412c83 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1312,6 +1312,13 @@ struct intel_crtc_state {
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
index 2235b08369ad..84f1b358946c 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -10,6 +10,7 @@
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
+#include "intel_dmc_regs.h"
 #include "intel_vrr.h"
 #include "intel_vrr_regs.h"
 
@@ -699,6 +700,8 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	enum pipe pipe = crtc->pipe;
 	u32 trans_vrr_ctl, trans_vrr_vsync;
 	bool vrr_enable;
 
@@ -761,6 +764,25 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 	else
 		crtc_state->vrr.enable = vrr_enable;
 
+	if (HAS_VRR_DC_BALANCE(display)) {
+		crtc_state->vrr.dc_balance.vmin =
+			intel_de_read(display, PIPEDMC_DCB_VMIN(pipe)) ?
+			intel_de_read(display, PIPEDMC_DCB_VMIN(pipe)) + 1 : 0;
+		crtc_state->vrr.dc_balance.vmax =
+			intel_de_read(display, PIPEDMC_DCB_VMAX(pipe)) ?
+			intel_de_read(display, PIPEDMC_DCB_VMAX(pipe)) + 1 : 0;
+		crtc_state->vrr.dc_balance.guardband =
+			intel_de_read(display, PIPEDMC_DCB_GUARDBAND(pipe));
+		crtc_state->vrr.dc_balance.max_increase =
+			intel_de_read(display, PIPEDMC_DCB_MAX_INCREASE(pipe));
+		crtc_state->vrr.dc_balance.max_decrease =
+			intel_de_read(display, PIPEDMC_DCB_MAX_DECREASE(pipe));
+		crtc_state->vrr.dc_balance.slope =
+			intel_de_read(display, PIPEDMC_DCB_SLOPE(pipe));
+		crtc_state->vrr.dc_balance.vblank_target =
+			intel_de_read(display, PIPEDMC_DCB_VBLANK(pipe));
+	}
+
 	/*
 	 * #TODO: For Both VRR and CMRR the flag I915_MODE_FLAG_VRR is set for mode_flags.
 	 * Since CMRR is currently disabled, set this flag for VRR for now.
-- 
2.48.1

