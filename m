Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F8519C3A78
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 10:10:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B9D410E453;
	Mon, 11 Nov 2024 09:10:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K79U5aIV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A57010E451;
 Mon, 11 Nov 2024 09:10:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731316201; x=1762852201;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=63oZ4J/jo9Ykzk37qKr87HQ3As404mViTDH7GWaCIJk=;
 b=K79U5aIVMqBYByrPT8dIC3pdMEgxAyIbcM+UMYwjiDUe5bOZwm1KCJa4
 GVYRxgk2U7EsgljuqM81/AaXJBXKFUHjZa+e55OFp7bk9hQELa+wl7zSt
 9qp1IIPIN+VulglQ4sfIwmfPdECmK/hM5dfpmsfxr4npcvRXYBkUUrGLG
 m5q6duwFqTCdAseDm1OQqlDBBSynPF3gxgJk48bDziyIQuC51tzWgJD1i
 K/bDr0xcD0RIVGmpi8KbntQ0l7FJaZSrgCK5Gz8vnrCV3SyVERrQy8HVZ
 Jq+Axw9H6CxlJU52ci68G/aTbGssUl/Pa4V0QBUWvMCTfWuL/F5pzGuXW Q==;
X-CSE-ConnectionGUID: E4hmEI1xR2eYllD/DhtiYA==
X-CSE-MsgGUID: qJXv/RyXRdyVbZtz4HpQwQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11252"; a="35052316"
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="35052316"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 01:10:01 -0800
X-CSE-ConnectionGUID: UmdOcipVTqKfJ42CuMtiQw==
X-CSE-MsgGUID: GgStIJwNQBOpOZTazDeu0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="86762552"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 01:09:59 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 04/23] drm/i915/vrr: Fill VRR mode for CMRR and dynamic VRR
Date: Mon, 11 Nov 2024 14:42:02 +0530
Message-ID: <20241111091221.2992818-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241111091221.2992818-1-ankit.k.nautiyal@intel.com>
References: <20241111091221.2992818-1-ankit.k.nautiyal@intel.com>
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
index 14aa171a9eb2..1a933bdb16a2 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5752,6 +5752,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 
 	if (!fastset) {
 		PIPE_CONF_CHECK_BOOL(vrr.enable);
+		PIPE_CONF_CHECK_X(vrr.mode);
 		PIPE_CONF_CHECK_I(vrr.vmin);
 		PIPE_CONF_CHECK_I(vrr.vmax);
 		PIPE_CONF_CHECK_I(vrr.flipline);
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 72169346f6b6..02160aacd8ee 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -166,6 +166,7 @@ void intel_vrr_compute_cmrr_timings(struct intel_crtc_state *crtc_state)
 {
 	crtc_state->vrr.enable = true;
 	crtc_state->cmrr.enable = true;
+	crtc_state->vrr.mode = INTEL_VRRTG_MODE_CMRR;
 	/*
 	 * TODO: Compute precise target refresh rate to determine
 	 * if video_mode_required should be true. Currently set to
@@ -225,6 +226,7 @@ void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state, int vmin
 {
 	intel_vrr_prepare_vrr_timings(crtc_state, vmin, vmax);
 	crtc_state->vrr.enable = true;
+	crtc_state->vrr.mode = INTEL_VRRTG_MODE_VRR;
 	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 }
 
@@ -436,12 +438,15 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 
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

