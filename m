Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 750A1901BD6
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2024 09:22:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3484010E31A;
	Mon, 10 Jun 2024 07:22:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H4CFPWcN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 478A210E313
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2024 07:22:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718004124; x=1749540124;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2cTSg6B0cpWrW4+uh14hh2Vghb7er2xSSVMFR3EhS2k=;
 b=H4CFPWcNJgY/jYz6H76ZyupxIxDKwj2r2vOKuiP9lFnv7pXEWUbl4wSz
 lFmz1v53yb8ukNjrpQutChgRCX5+50G2eJmLcZOAx3v4cUV6FnQ4/zIHl
 fRcuVx/Zkq5YYSNCfjubptfbXHziZQ4MMTD9qiIPtFyIgjEq4cJx264va
 x8KNH2xYH4tpCrYqIbUBYY0o/cpui0oLoGLEz9qdstAdDwuSpxkQlp/ui
 EkEiqrSjQvS3ZUFI0RCkGdO/N1o0CRB3OW0XqNzCWx1KYuJzOPjk7CQ/+
 AAHnRtBbmHcEu7omeF8NxflOCr0lWefEETgtBV7UF1jyh18lsp+5TV7zA w==;
X-CSE-ConnectionGUID: WTqM/wVBTeucqWp6hpeHeg==
X-CSE-MsgGUID: 8eKv9GJBTXmCByb5x6H+4A==
X-IronPort-AV: E=McAfee;i="6600,9927,11098"; a="14526408"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="14526408"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 00:22:04 -0700
X-CSE-ConnectionGUID: 9+CkCndrTKWqW42l9FVQVw==
X-CSE-MsgGUID: Oui+z/xGQS2IyMxt03RLpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="43407644"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa003.fm.intel.com with ESMTP; 10 Jun 2024 00:22:03 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com
Subject: [PATCH v16 7/9] drm/i915/display: Compute Adaptive sync SDP params
Date: Mon, 10 Jun 2024 12:52:00 +0530
Message-ID: <20240610072203.24956-8-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240610072203.24956-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20240610072203.24956-1-mitulkumar.ajitkumar.golani@intel.com>
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

Compute params for Adaptive Sync SDP when Fixed Average Vtotal
mode is enabled.

--v2:
Since vrr.enable is set in case of cmrr also, handle accordingly(Ankit).

--v3:
- Since vrr.enable is set in case of cmrr also, handle
accordingly(Ankit).
- check cmrr.enable when CMRR flags are set during intel_dp_compute_as_sdp.

--v4:
- Use drm_mode_vrefresh instead of manual calculation (Ankit).

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index ac81b172b1ec..b5915c23302f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2637,11 +2637,19 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
 	/* Currently only DP_AS_SDP_AVT_FIXED_VTOTAL mode supported */
 	as_sdp->sdp_type = DP_SDP_ADAPTIVE_SYNC;
 	as_sdp->length = 0x9;
-	as_sdp->mode = DP_AS_SDP_AVT_FIXED_VTOTAL;
-	as_sdp->vtotal = adjusted_mode->vtotal;
-	as_sdp->target_rr = 0;
 	as_sdp->duration_incr_ms = 0;
 	as_sdp->duration_incr_ms = 0;
+
+	if (crtc_state->cmrr.enable) {
+		as_sdp->mode = DP_AS_SDP_FAVT_TRR_REACHED;
+		as_sdp->vtotal = adjusted_mode->vtotal;
+		as_sdp->target_rr = drm_mode_vrefresh(adjusted_mode);
+		as_sdp->target_rr_divider = true;
+	} else {
+		as_sdp->mode = DP_AS_SDP_AVT_FIXED_VTOTAL;
+		as_sdp->vtotal = adjusted_mode->vtotal;
+		as_sdp->target_rr = 0;
+	}
 }
 
 static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
-- 
2.45.2

