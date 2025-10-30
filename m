Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 370CBC1E6BA
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 06:31:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BACB110E8A3;
	Thu, 30 Oct 2025 05:31:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ha9qBwCa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08F7010E8A2;
 Thu, 30 Oct 2025 05:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761802260; x=1793338260;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HUQPBqav0K2QpGEkvupql2mSfnLZWzkNjQf6Dz4O58E=;
 b=ha9qBwCaL1ZJ+5GCSHHdNR7Raf69PJ+7DFLMHu0FsUP8lxpyrl9k65dF
 mZ0/BAxt6pthgUZjxolKi0e9bKOAtqktTD9fSO1sYubWygxuKCipWNNT1
 Qq22Bcbi1dk57uQViE7gOFIBnfyPnUVZs+mpK9duiP2H94DPRReo+Cez+
 lTXaSf6JsvocukelIMuKlXNFmde8xwRdpYg1zPwnsxGFPDVYRIQQ+Yn0f
 RBGD0LKQaWJ+DjjamtQbHPmvACInasIgAeHirUvjyhHOAjuaunKWEjez6
 5kFw3g4dp+88Ms0uDrI6s9E3zcr+hVDxxFLYw91gkeLofW0oOKuIW2so0 w==;
X-CSE-ConnectionGUID: 7dUPLBDnQ5qhzlXqCn6jjQ==
X-CSE-MsgGUID: gQfvkScoQQSiUgonZGrwHw==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="63845071"
X-IronPort-AV: E=Sophos;i="6.19,265,1754982000"; d="scan'208";a="63845071"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 22:31:00 -0700
X-CSE-ConnectionGUID: NYqG+MlDQxC42dE0PSCALA==
X-CSE-MsgGUID: WhNCOfuFS/6Z1b4HSpDtfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,265,1754982000"; d="scan'208";a="186206874"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 22:30:58 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, ville.syrjala@linux.intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 5/5] drm/i915/alpm: Allow LOBF only if window1 > alpm
 check_entry lines
Date: Thu, 30 Oct 2025 10:47:55 +0530
Message-ID: <20251030051755.3071648-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251030051755.3071648-1-ankit.k.nautiyal@intel.com>
References: <20251030051755.3071648-1-ankit.k.nautiyal@intel.com>
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

LOBF must be disabled if the number of lines within Window 1 is not greater
than ALPM_CTL[ALPM Entry Check]

Bspec:71041
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 1c240dd8d668..58cd0d2a4395 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -255,6 +255,7 @@ void intel_alpm_lobf_compute_config_late(struct intel_dp *intel_dp,
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	int waketime_in_lines, first_sdp_position;
+	int window1;
 
 	if (intel_dp->alpm.lobf_disable_debug) {
 		drm_dbg_kms(display->drm, "LOBF is disabled by debug flag\n");
@@ -287,6 +288,18 @@ void intel_alpm_lobf_compute_config_late(struct intel_dp *intel_dp,
 	if (!intel_alpm_compute_params(intel_dp, crtc_state))
 		return;
 
+	/*
+	 * LOBF must be disabled if the number of lines within Window 1 is not
+	 * greater than ALPM_CTL[ALPM Entry Check]
+	 */
+	window1 = adjusted_mode->crtc_vtotal -
+		  (adjusted_mode->crtc_vdisplay +
+		   crtc_state->vrr.guardband +
+		   crtc_state->set_context_latency);
+
+	if (window1 <= crtc_state->alpm_state.check_entry_lines)
+		return;
+
 	/*
 	 * LOBF can only be enabled if the time from the start of the SCL+Guardband
 	 * window to the position of the first SDP is greater than the time it takes
-- 
2.45.2

