Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13298938B2F
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2024 10:26:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFFD210E410;
	Mon, 22 Jul 2024 08:26:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LS60c2v4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEDFC10E40F
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jul 2024 08:26:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721636770; x=1753172770;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wz1Suvt6U5UlydbtyzxfM1hUp2uSzXgSBvucOp3qjBw=;
 b=LS60c2v4UCL197dYTx6TQT25OSUSv1FNA4NOlOsBjSwL+rk8QnTU2RJQ
 iqklscahX6YG41hnhk9P8CCQFIsoDQu3f9HpuoXZ0xU5qR9iKSbkemPti
 Qv4k1ajhns30fWz0PuiyFr6rC1ZH52hsdPTHKDDc3YW1/TYtfaj6kDCz7
 YmIDdvBDTxGaCBhv4rkw8NQa8Y0vsYIUOYL7KQBFkRPEMRAnvhAfC1KAO
 CTJGWWDSc82J4kFp2TaeBj/BGmfvazOqND04kKtzqckTR5YTZ0VllEjh6
 pXPCCzkvgyVjBGWvZWPRPiCxJCrA44ekf73G40AEGVVmmN4CueQqWIdRQ Q==;
X-CSE-ConnectionGUID: 1GhjjBHQTTS8b0aCwKPsfA==
X-CSE-MsgGUID: oK/obCrCTISfehNU/SH1rQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11140"; a="29806936"
X-IronPort-AV: E=Sophos;i="6.09,227,1716274800"; d="scan'208";a="29806936"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 01:26:10 -0700
X-CSE-ConnectionGUID: tSkv3DvmRAGtDl1MB68XGg==
X-CSE-MsgGUID: dYXnOmwvT7+XIRBuu3t5Pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,227,1716274800"; d="scan'208";a="51752897"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 01:26:07 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 04/10] drm/i915/vrr: Compute vrr vsync if platforms support it
Date: Mon, 22 Jul 2024 13:56:59 +0530
Message-ID: <20240722082705.3635041-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240722082705.3635041-1-ankit.k.nautiyal@intel.com>
References: <20240722082705.3635041-1-ankit.k.nautiyal@intel.com>
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

Previously, TRANS_VRR_VSYNC was exclusively used for panels with
adaptive-sync SDP support in VRR scenarios. However, to drive fixed refresh
rates using the VRR Timing generator, we now need to program
TRANS_VRR_VSYNC regardless of adaptive sync SDP support. Therefore, let's
remove the adaptive sync SDP check and program TRANS_VRR_VSYNC for
platforms where VRR timing generator is used.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 7e1d9c718214..5a80a8eae087 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -233,7 +233,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 	}
 
-	if (intel_dp->as_sdp_supported && crtc_state->vrr.enable) {
+	if (HAS_AS_SDP(i915) && crtc_state->vrr.enable) {
 		crtc_state->vrr.vsync_start =
 			(crtc_state->hw.adjusted_mode.crtc_vtotal -
 			 crtc_state->hw.adjusted_mode.vsync_start);
-- 
2.45.2

