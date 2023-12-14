Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 974BD812F5B
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Dec 2023 12:49:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FC3E10E804;
	Thu, 14 Dec 2023 11:49:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF9A210E904
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Dec 2023 11:48:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702554538; x=1734090538;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uD8evFUE5S+0aVDEgFKnoCPAuK/N9x7c7kkIqvz2FAo=;
 b=N1bH2CEYvuy3ppCe3AdVZPZHtepiVOdzTy+DSfr51YHQzQhWLlXtUH2M
 sLlV35PNPxQ3cVgNgVBvHkEjCjqtPruIpvBhGssNYw/u+1pfTwzG5rKrJ
 rXVawVsamsrpG0yp9io52ax9E1gctagdvMPBA5ZsD3fSTQYUShS5f+aof
 0zgTM7tzA7DH7LHYu/eU4BmzBaBXSh+mx+84JJxfE0DRw88beIuUVB3eE
 jHo7v+1m1ZGSUZWxSUt5r81QfWSLYo/IWLWw1Rn1MNuQBIB72T7QDu35b
 5l2SYZv1jaDUl0kckx6avqKX7DhAc545oq1K8FvomDDZDC1ZsexgN6gG2 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="16658689"
X-IronPort-AV: E=Sophos;i="6.04,275,1695711600"; d="scan'208";a="16658689"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2023 03:48:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="844678875"
X-IronPort-AV: E=Sophos;i="6.04,275,1695711600"; d="scan'208";a="844678875"
Received: from unknown (HELO jhogande-mobl1.fi.intel.com) ([10.237.66.43])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2023 03:48:56 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 4/7] drm/i915/display: Fix vsc_sdp computation
Date: Thu, 14 Dec 2023 13:48:35 +0200
Message-Id: <20231214114838.1113648-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231214114838.1113648-1-jouni.hogander@intel.com>
References: <20231214114838.1113648-1-jouni.hogander@intel.com>
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

Currently colorimetry data is not added for psr1 or non-psr case.
Fix this by adding it as needed.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 48 ++++++++++---------------
 1 file changed, 19 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3550cebb44f2..635790ec2fb7 100644
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
+		 * [PSR2, -Colorimetry]
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

