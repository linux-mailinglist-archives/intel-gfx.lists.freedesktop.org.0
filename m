Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F849A92761
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Apr 2025 20:24:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41DCF10E3A2;
	Thu, 17 Apr 2025 18:24:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y3UpQiim";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3471910E39A;
 Thu, 17 Apr 2025 18:24:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744914259; x=1776450259;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=L/u6wFN2vjamJCsvj+nmY0ixwmDv9I+sPHRNrbpyJ8U=;
 b=Y3UpQiim96dCd9Ne3/2nAWsEl4HD0hJAfk4//Z1UT9plvUpzYgmMmY+U
 u9HAzbYz+NTWiw30+XQ5eQ7u1fK1bBugnyVFfk8ZT5mJcEkvHhzU1kZAd
 2opW36VbvMq54ToZsmNKHU+s9beSxh1Y9YJQ65yYu0SjCSo2nZe86lXRP
 WbS8UtHOuka3t1JfwTubOf//XyIJuTcbvs0Ty6LEBrQ0PHO/6h/lVpMWb
 GcDDoNAjC+KiIfEcyaoYNdf4tvwIqs3+qitlwq1cv5ofRKi3MKfPepwpX
 +dWs+Q+qjLs1Y9IVeYqztKswkCe89WYp0mUxc0gbak9zcZhrksLPz73Wu A==;
X-CSE-ConnectionGUID: bBMIxbpcR36NkHNMBPVmdg==
X-CSE-MsgGUID: ZLUODVgGSaGdA+//UCflog==
X-IronPort-AV: E=McAfee;i="6700,10204,11406"; a="46534724"
X-IronPort-AV: E=Sophos;i="6.15,219,1739865600"; d="scan'208";a="46534724"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 11:24:18 -0700
X-CSE-ConnectionGUID: /5ajylkfTRegW1JffTGj0w==
X-CSE-MsgGUID: Ciwq706RSFyFI07/wZJJIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,219,1739865600"; d="scan'208";a="130665871"
Received: from opintica-mobl1 (HELO jhogande-mobl1..) ([10.245.244.198])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 11:24:17 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH] drm/i915/display: Ensure enough lines between delayed VBlank
 and VBlank
Date: Thu, 17 Apr 2025 21:23:56 +0300
Message-ID: <20250417182356.169593-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

To deterministically capture the transition of the state machine going from
SRDOFFACK to IDLE, the delayed V. Blank should be at least one line after
the non-delayed V. Blank.

Ensure this by following instructions from Bspec.

Bspec: 69897
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 11 ++++++++++-
 drivers/gpu/drm/i915/display/intel_vrr.c     | 18 ++++++++++++++++--
 2 files changed, 26 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index db524d01e574d..94156efa5aa93 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2747,9 +2747,18 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
 	}
 
 	if (DISPLAY_VER(display) >= 13) {
+		/*
+		 * Comment on SRD_STATUS register in Bspec:
+		 *
+		 * To deterministically capture the transition of the state
+		 * machine going from SRDOFFACK to IDLE, the delayed V. Blank
+		 * should be at least one line after the non-delayed V. Blank.
+		 *
+		 * Legacy TG: TRANS_SET_CONTEXT_LATENCY > 0
+		 */
 		intel_de_write(display,
 			       TRANS_SET_CONTEXT_LATENCY(display, cpu_transcoder),
-			       crtc_vblank_start - crtc_vdisplay);
+			       max(crtc_vblank_start - crtc_vdisplay, 1));
 
 		/*
 		 * VBLANK_START not used by hw, just clear it
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index c6565baf815a1..3a27ded45ee04 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -422,8 +422,22 @@ void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
 		return;
 
 	if (DISPLAY_VER(display) >= 13) {
-		crtc_state->vrr.guardband =
-			crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start;
+		/*
+		 * Comment on SRD_STATUS register in Bspec:
+		 *
+		 * To deterministically capture the transition of the state
+		 * machine going from SRDOFFACK to IDLE, the delayed V. Blank
+		 * should be at least one line after the non-delayed V. Blank.
+		 * This can be done by ensuring the VRR Guardband programming is
+		 * less than the non-delayed V. Blank.
+		 *
+		 * TRANS_VRR_CTL[ VRR Guardband ] < (TRANS_VRR_VMAX[ VRR Vmax ]
+		 * - TRANS_VTOTAL[ Vertical Active ])
+		 */
+		crtc_state->vrr.guardband = min(crtc_state->vrr.vmin -
+						adjusted_mode->crtc_vblank_start,
+						crtc_state->vrr.vmax -
+						adjusted_mode->crtc_vdisplay - 1);
 	} else {
 		/* hardware imposes one extra scanline somewhere */
 		crtc_state->vrr.pipeline_full =
-- 
2.43.0

