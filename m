Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A664A1B88B
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 16:12:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3E4610E9AA;
	Fri, 24 Jan 2025 15:12:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O9L8lL6R";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66B0010E9A8;
 Fri, 24 Jan 2025 15:12:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737731527; x=1769267527;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iqgbFfJ7dck1eGGO+v8B4KVC9Y3L3bhFcw8MOWZoeoM=;
 b=O9L8lL6RzhO4vGqsYrlbkqxyczmzKEeMOHrTNpq1VoB6zlyaTbTWEIlo
 86YwMXtGBsDyD7acq0yhjcNyhI4bmX8ABekhDfgR/qHNrfwrGR6rdOzZM
 YcQfTB3duWKrIEcMQYXGrzpyXcP65VTiRfAa8Vx2bOY3SHCQrJ8T+7pVH
 6f2pFGJUOQEB+XwbXVVX6ohe6Av/R7t8/9m6mTMs6MKOT4GrSYmVClfsY
 raQhSMu526DIXS5Wslj5Z+ou1wl3Ve5Nc9AdXvosrnQM47Ssh6R8pIEB+
 Ced+D02MxaszOcRDL8tpyAtzadnLFCIDh6t79PrWmvjQQyKXuToq5IEsW A==;
X-CSE-ConnectionGUID: 1Yffc78TQRy3aFfXtC7ymg==
X-CSE-MsgGUID: I1Q8oGvDQfqF0TAzZRJlMw==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="38177405"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="38177405"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:12:07 -0800
X-CSE-ConnectionGUID: coalqGQgTguayL5ik64yyg==
X-CSE-MsgGUID: Q7I9UnvWQVChMIHY73DSjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108221275"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:12:05 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 14/35] drm/i915/vrr: Fill VRR timing generator mode for CMRR
 and VRR
Date: Fri, 24 Jan 2025 20:29:59 +0530
Message-ID: <20250124150020.2271747-15-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
References: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
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

Fill vrr.mode during compute_config and update intel_vrr_get_config() to
read vrr.mode based on CMRR and VRR enable conditions.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 1 +
 drivers/gpu/drm/i915/display/intel_vrr.c     | 5 +++++
 2 files changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 60867b5b03ec..861929aea4b9 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5803,6 +5803,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 
 	if (!fastset) {
 		PIPE_CONF_CHECK_BOOL(vrr.enable);
+		PIPE_CONF_CHECK_X(vrr.mode);
 		PIPE_CONF_CHECK_I(vrr.vmin);
 		PIPE_CONF_CHECK_I(vrr.vmax);
 		PIPE_CONF_CHECK_I(vrr.flipline);
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 48893351273c..49ff4d91af95 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -244,6 +244,7 @@ void intel_vrr_compute_cmrr_timings(struct intel_crtc_state *crtc_state)
 {
 	crtc_state->vrr.enable = true;
 	crtc_state->cmrr.enable = true;
+	crtc_state->vrr.mode = INTEL_VRRTG_MODE_CMRR;
 	/*
 	 * TODO: Compute precise target refresh rate to determine
 	 * if video_mode_required should be true. Currently set to
@@ -261,6 +262,7 @@ void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state, int vmin
 {
 	intel_vrr_prepare_vrr_timings(crtc_state, vmin, vmax);
 	crtc_state->vrr.enable = true;
+	crtc_state->vrr.mode = INTEL_VRRTG_MODE_VRR;
 	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 }
 
@@ -514,12 +516,15 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 
 	if (HAS_CMRR(display) && trans_vrr_ctl & VRR_CTL_CMRR_ENABLE) {
 		crtc_state->cmrr.enable = true;
+		crtc_state->vrr.mode = INTEL_VRRTG_MODE_CMRR;
 		crtc_state->cmrr.cmrr_n =
 			intel_de_read64_2x32(display, TRANS_CMRR_N_LO(display, cpu_transcoder),
 					     TRANS_CMRR_N_HI(display, cpu_transcoder));
 		crtc_state->cmrr.cmrr_m =
 			intel_de_read64_2x32(display, TRANS_CMRR_M_LO(display, cpu_transcoder),
 					     TRANS_CMRR_M_HI(display, cpu_transcoder));
+	} else if (trans_vrr_ctl & VRR_CTL_VRR_ENABLE) {
+		crtc_state->vrr.mode = INTEL_VRRTG_MODE_VRR;
 	}
 
 	if (DISPLAY_VER(display) >= 13)
-- 
2.45.2

