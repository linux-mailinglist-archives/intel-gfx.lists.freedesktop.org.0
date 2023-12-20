Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D6352819CE4
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Dec 2023 11:36:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D573110E54E;
	Wed, 20 Dec 2023 10:36:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8139C10E354
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Dec 2023 10:36:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703068597; x=1734604597;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AUSoD1Kz6KsxopwgxPEG5qXL+c/MVGmRTSAyD5kgAcU=;
 b=Nf5VbjqEbT87GJhw+AjUjCICDIzKUkJDerzCC8dS2uJdrpfjnW5cUZM8
 dzS/QKlHky9zIhUbgL4qhSIVhNS5ZZUPlhgGdiy0EQQH77j1a+iO7rJhT
 DpU4sGJWoDx33gSegMaGFVqnMc6g5GCq/21Ctz2XSvLB/ANO6BHk2ti1U
 rRsgKq39U1MuX1YSc1JFUvo5wdBlCKB9Nt1MqLSVv5OjrCQuAFtlHUqCL
 xYxfr2Q1RlIYh0I6mBUSCOsCjW8wVTcIIcxYXeRtTi8o41sbb2SMMX+j0
 ym4AOFWNUfhoIhnyK6cr4mM+XJdOKGVNojSVby9C1V4k1gR3AuVMXVxa2 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="2631989"
X-IronPort-AV: E=Sophos;i="6.04,291,1695711600"; 
   d="scan'208";a="2631989"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2023 02:36:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="1107686292"
X-IronPort-AV: E=Sophos;i="6.04,291,1695711600"; d="scan'208";a="1107686292"
Received: from sparrish-mobl1.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.34.221])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2023 02:36:36 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 4/7] drm/i915/display: Fix vsc_sdp computation
Date: Wed, 20 Dec 2023 12:36:06 +0200
Message-Id: <20231220103609.1384523-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231220103609.1384523-1-jouni.hogander@intel.com>
References: <20231220103609.1384523-1-jouni.hogander@intel.com>
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Currently colorimetry data is not added for psr1 or non-psr case.
Fix this by adding it as needed.

Reported-by: Shawn Lee <shawn.c.lee@intel.com>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Tested-by: Shawn Lee <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 48 ++++++++++---------------
 1 file changed, 19 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 38165ef97ee1..7fea61e410f2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2628,36 +2628,26 @@ static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
 	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_VSC);
 	vsc->sdp_type = DP_SDP_VSC;
 
-	if (crtc_state->has_psr2) {
-		if (intel_dp->colorimetry_support &&
-		    intel_dp_needs_vsc_sdp(crtc_state, conn_state)) {
-			/* [PSR2, +Colorimetry] */
-			intel_dp_compute_vsc_colorimetry(crtc_state, conn_state,
-							 vsc);
-		} else {
-			/*
-			 * [PSR2, -Colorimetry]
-			 * Prepare VSC Header for SU as per eDP 1.4 spec, Table 6-11
-			 * 3D stereo + PSR/PSR2 + Y-coordinate.
-			 */
-			vsc->revision = 0x4;
-			vsc->length = 0xe;
-		}
+	/* Needs colorimetry */
+	if (intel_dp_needs_vsc_sdp(crtc_state, conn_state)) {
+		intel_dp_compute_vsc_colorimetry(crtc_state, conn_state,
+						 vsc);
+	} else if (crtc_state->has_psr2) {
+		/*
+		 * [PSR2 without colorimetry]
+		 * Prepare VSC Header for SU as per eDP 1.4 spec, Table 6-11
+		 * 3D stereo + PSR/PSR2 + Y-coordinate.
+		 */
+		vsc->revision = 0x4;
+		vsc->length = 0xe;
 	} else if (crtc_state->has_panel_replay) {
-		if (intel_dp->colorimetry_support &&
-		    intel_dp_needs_vsc_sdp(crtc_state, conn_state)) {
-			/* [Panel Replay with colorimetry info] */
-			intel_dp_compute_vsc_colorimetry(crtc_state, conn_state,
-							 vsc);
-		} else {
-			/*
-			 * [Panel Replay without colorimetry info]
-			 * Prepare VSC Header for SU as per DP 2.0 spec, Table 2-223
-			 * VSC SDP supporting 3D stereo + Panel Replay.
-			 */
-			vsc->revision = 0x6;
-			vsc->length = 0x10;
-		}
+		/*
+		 * [Panel Replay without colorimetry info]
+		 * Prepare VSC Header for SU as per DP 2.0 spec, Table 2-223
+		 * VSC SDP supporting 3D stereo + Panel Replay.
+		 */
+		vsc->revision = 0x6;
+		vsc->length = 0x10;
 	} else {
 		/*
 		 * [PSR1]
-- 
2.34.1

