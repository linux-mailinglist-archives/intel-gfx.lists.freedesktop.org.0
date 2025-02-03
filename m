Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEF87A259D7
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 13:50:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A42910E4B6;
	Mon,  3 Feb 2025 12:50:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NJJk2pz/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4199710E4B4;
 Mon,  3 Feb 2025 12:50:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738587000; x=1770123000;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Umy/dFuVZKc34y+ss/fc20XGP2Oh0w3vf2mdWqjsVGk=;
 b=NJJk2pz/oYlIquARpEpDZru65DU0yXSudiT7oGbq2Fr5xEjO+2u1+dGl
 FTVwxbUb9yAcgaETPjgmT3R4McB5lAJbn7IzfDxUAhS7fNaErmpqXmiyg
 Rd4qZxa5phYa/vb6kPlIriW69vIHRl//aXWaSzZMQH4UpYPkbzYXGHUlk
 x6CGV0P9wCgoO1cAhpc00dO/+eJOyhYCq20HENlHvGALduKU+Aj/FUOzK
 0RXH69oLx2JDJu7NxQ5mqo0V02Lq/P2y531ieOcJEGqejcUBlst+HOvj9
 6j1gOh7HVPwIe4q8siPmHp3wulgK55+vsAwVcCimMt5ipFH6Gb1bQ+wQd w==;
X-CSE-ConnectionGUID: 7ZsL1rKtR4+NjLZ3fZc5ow==
X-CSE-MsgGUID: Ml7jx33STuedjCy+hX9aVA==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="61548031"
X-IronPort-AV: E=Sophos;i="6.13,255,1732608000"; d="scan'208";a="61548031"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:50:00 -0800
X-CSE-ConnectionGUID: qpmBZOnoRxabp81Iqz+hIQ==
X-CSE-MsgGUID: zPwRsrpeSxW6rih+grJkQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="133528866"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:49:58 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 06/28] drm/i915/vrr: Fill VRR timing generator mode for CMRR
 and VRR
Date: Mon,  3 Feb 2025 18:08:18 +0530
Message-ID: <20250203123840.3855874-7-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250203123840.3855874-1-ankit.k.nautiyal@intel.com>
References: <20250203123840.3855874-1-ankit.k.nautiyal@intel.com>
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
index a6383ddde871..9cff080d4ff9 100644
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
index 6f314e209e96..ded5466c5214 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -227,6 +227,7 @@ void intel_vrr_compute_cmrr_timings(struct intel_crtc_state *crtc_state)
 {
 	crtc_state->vrr.enable = true;
 	crtc_state->cmrr.enable = true;
+	crtc_state->vrr.mode = INTEL_VRRTG_MODE_CMRR;
 	/*
 	 * TODO: Compute precise target refresh rate to determine
 	 * if video_mode_required should be true. Currently set to
@@ -243,6 +244,7 @@ static
 void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state)
 {
 	crtc_state->vrr.enable = true;
+	crtc_state->vrr.mode = INTEL_VRRTG_MODE_VRR;
 	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 }
 
@@ -506,12 +508,15 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 
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

