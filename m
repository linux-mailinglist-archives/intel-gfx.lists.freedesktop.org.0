Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABFBCC1F5B6
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 10:42:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4518610E964;
	Thu, 30 Oct 2025 09:42:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W7dGf7UT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31F6F10E961;
 Thu, 30 Oct 2025 09:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761817326; x=1793353326;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HUQPBqav0K2QpGEkvupql2mSfnLZWzkNjQf6Dz4O58E=;
 b=W7dGf7UTNZoZ2sIzHJPUB1aQeiiH5O/rYgxPCg+FuqIarH78D7ZGrN+V
 MFWydpsSUZ6fzr6o5+UyDTjGrtQjVJtEs8FkmUynQuq43z76j4HhErHXb
 XMkriKWvEOhKdmqNbHiDk1N9see05qokjg8ou0Ym2oIsklm90e1dvj4BV
 I+GqrVxfR8x/guxNMGxAJ/oynlk1eVLfWMHFDoNxBOtRrzmiM3BzW4mrp
 1XXS4dKeMgESRFXqxDsxGU/ykcwBJpKc/0JExlTE1+yO55ky+Ji8oGA6A
 SgseQZ3vVszVrEvDd0kZwnZQZGx87BDBkT044XvhMWWQZjyEwsxGSM4WZ Q==;
X-CSE-ConnectionGUID: oLx0ApPUQcijq69qeMBWBg==
X-CSE-MsgGUID: CH9E1Xz8T5aZG9ADN64HeQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="63651910"
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="63651910"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 02:42:05 -0700
X-CSE-ConnectionGUID: ln9OO4M2Q4ihcjPR6DdNLw==
X-CSE-MsgGUID: WlOjNHvOREGVp7rUkSXe1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="189983097"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 02:42:04 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, ville.syrjala@linux.intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 6/6] drm/i915/alpm: Allow LOBF only if window1 > alpm
 check_entry lines
Date: Thu, 30 Oct 2025 14:58:57 +0530
Message-ID: <20251030092857.3090072-7-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251030092857.3090072-1-ankit.k.nautiyal@intel.com>
References: <20251030092857.3090072-1-ankit.k.nautiyal@intel.com>
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

