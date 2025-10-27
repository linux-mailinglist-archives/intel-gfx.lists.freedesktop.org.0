Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D3B9C0F497
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Oct 2025 17:29:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A15310E4FE;
	Mon, 27 Oct 2025 16:29:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XTeQcJ4H";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0840310E4FE;
 Mon, 27 Oct 2025 16:29:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761582581; x=1793118581;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NOd3kK5SkhOXR48BRJSLuu0J9Mzdsst5KIO6yCywNns=;
 b=XTeQcJ4HgX6B3B7M9O1lhA8/ft8XKJsG7ySx9OlLnOInRPtqkgALI2Eb
 pJdAcNhpugkeUjz7oYrlgHJqD60O0uC0ig5zk8Ex0L6qMeWBeiIvT+Z9E
 nG9hw0EfzFncMGbC/i5q+IMdb5jXf1DNCBHpo/5u+1DPaakZtPhVpkBkM
 o10hdHzjNVRGCv5d5BiM2lYkZZCNY5Yt9HVWHveKSRDPF3HoP5Wzdq7++
 RwsDpCCwMcYltu7CTftv6ugBvhJLSBKmcqsOh3+1zOfcz2akReKXE5xb2
 pWeVevcXI7CPkI09a+XWcLqm0otGBtNxu0rYj3s4p8JiBmbK7sm3XOt0+ A==;
X-CSE-ConnectionGUID: 8RHhWf3dRxqvSMKcBsY3iw==
X-CSE-MsgGUID: OIR4vFnIS/2LbziPXRfCCg==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="81299330"
X-IronPort-AV: E=Sophos;i="6.19,259,1754982000"; d="scan'208";a="81299330"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 09:29:40 -0700
X-CSE-ConnectionGUID: Stpz2/jbSz2339Be8Txaqg==
X-CSE-MsgGUID: 4nhYwBJiRkGUaQ2t3cVWTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,259,1754982000"; d="scan'208";a="184785569"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa007.fm.intel.com with ESMTP; 27 Oct 2025 09:29:39 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v8 05/22] drm/i915/vrr: Add DC Balance params to crtc_state
Date: Mon, 27 Oct 2025 21:59:10 +0530
Message-ID: <20251027162927.2655581-6-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251027162927.2655581-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251027162927.2655581-1-mitulkumar.ajitkumar.golani@intel.com>
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

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  7 ++++++
 .../drm/i915/display/intel_display_types.h    |  7 ++++++
 drivers/gpu/drm/i915/display/intel_vrr.c      | 22 +++++++++++++++++++
 3 files changed, 36 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 2744f83bda2e..1790371e4a3b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5409,6 +5409,13 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
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
index 5ae66b7444b6..710f9f925073 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1343,6 +1343,13 @@ struct intel_crtc_state {
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
index 68dde96583c0..3c30c8d3e206 100644
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
@@ -789,6 +790,8 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	enum pipe pipe = crtc->pipe;
 	u32 trans_vrr_ctl, trans_vrr_vsync;
 	bool vrr_enable;
 
@@ -866,6 +869,25 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
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

