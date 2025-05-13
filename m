Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C38F7AB4AD7
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 07:19:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F3F810E519;
	Tue, 13 May 2025 05:19:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SQSBSKCQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66A4E10E519;
 Tue, 13 May 2025 05:19:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747113541; x=1778649541;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wbZNZRGO0q0vuPkGtqTx79iUggzQWrnUakOazbZ4CPM=;
 b=SQSBSKCQc1FKQzWOfFIZloj3HGVBOuw+M+0/h7HNqaCZHPiEs/k9FzRr
 6SLdtieN14WvBfTeQKF07ly2WiO4cpoVwgO7YqQ589V2yLcKgpiYun8bY
 2tbgn01sFZVGpVnMZwg3GeGPjXJtKGRwI21c6q9x/ZUVyGbmevZBaCyMk
 KypBRuKnPTcY8qOciEU3MveiHuGTl7XmZgHXQDuTXPLryFLlab44DfD6Q
 nKQ3tJ2vjbL2bycutVOhitNe4iOH9iLkSKVfk8SA6VLwvYZNutvBNo22e
 RSo6qwpaXVdIR6NsOAoz9inQXG6JPYw0TczvfZAqRzzmX7ezWq/IiEHdB Q==;
X-CSE-ConnectionGUID: 6XJLzNtwR0yZNGsXty+8Hg==
X-CSE-MsgGUID: j6pvYWFtQIu3q9G1CZaTAA==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="51597796"
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="51597796"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 22:19:01 -0700
X-CSE-ConnectionGUID: SaYEqkZwS4aYsvi3F34nWA==
X-CSE-MsgGUID: CHAud0J6QzWMG2lCYpJIWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="137506138"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa006.jf.intel.com with ESMTP; 12 May 2025 22:18:59 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	ville.syrjala@intel.com
Subject: [PATCH v5 06/17] drm/i915/vrr: Add DC Balance params to crtc_state
Date: Tue, 13 May 2025 10:46:49 +0530
Message-ID: <20250513051700.507389-7-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250513051700.507389-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250513051700.507389-1-mitulkumar.ajitkumar.golani@intel.com>
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
 drivers/gpu/drm/i915/display/intel_display.c  |  8 +++++++
 .../drm/i915/display/intel_display_types.h    |  7 ++++++
 drivers/gpu/drm/i915/display/intel_vrr.c      | 24 +++++++++++++++++++
 3 files changed, 39 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index abf1db22fafe..c06047a8bf1b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5420,6 +5420,14 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 		PIPE_CONF_CHECK_LLI(cmrr.cmrr_m);
 		PIPE_CONF_CHECK_LLI(cmrr.cmrr_n);
 		PIPE_CONF_CHECK_BOOL(cmrr.enable);
+		PIPE_CONF_CHECK_BOOL(vrr.dc_balance.enable);
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
index 056219272c36..a41be29f1953 100644
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
index ab4f8def821c..726fa49558d1 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -10,6 +10,7 @@
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
+#include "intel_dmc_regs.h"
 #include "intel_vrr.h"
 #include "intel_vrr_regs.h"
 
@@ -676,6 +677,8 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	enum pipe pipe = crtc->pipe;
 	u32 trans_vrr_ctl, trans_vrr_vsync;
 	bool vrr_enable;
 
@@ -738,6 +741,27 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 	else
 		crtc_state->vrr.enable = vrr_enable;
 
+	if (HAS_VRR_DC_BALANCE(display)) {
+		crtc_state->vrr.dc_balance.enable =
+			intel_de_read(display, PIPEDMC_DCB_CTL(pipe)) & PIPEDMC_ADAPTIVE_DCB_ENABLE;
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

