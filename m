Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1087F8C0C40
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2024 10:04:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DA6610E498;
	Thu,  9 May 2024 08:04:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E7JGn77E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4946610E463
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 May 2024 08:04:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715241874; x=1746777874;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iqZ4PqHtMEFb6OJlglC1mEAkcOq/cPt7kp6YOcnPUy8=;
 b=E7JGn77EW3L5YkurZNDetsRUcEz2vDmJsTphc9vqEmdgKCi8WtKyDdxn
 puWbz+nYREj9Zqs/hN3SY2VbuDWCV+iHlA0eP8XdXkCsXf+6nccziNlCE
 gwvifwfn/xEu/xM03IiuSzoHVVYTw6WubLbVZctFOSmdlrQKL2wpR0wjG
 OUmTqeOgR02ljFb/FYPRlmAMGEknrmb++XUXcpN4xSoL5gmURIeNd5/Fb
 nVllj1fGoMFeJ0rd34zCPba/H49TOBYC/ILlJ6csdQdvl98fuT5jUUoff
 eryHLj2r5d82wgIWlbMchpx4r1R4ce4Oi2tlA44OcJ2Z25Bx28txigTeI Q==;
X-CSE-ConnectionGUID: o/FkR6y1S2KaL8jNemEAMg==
X-CSE-MsgGUID: JBZT8yP9Teedy+XL7DoGGg==
X-IronPort-AV: E=McAfee;i="6600,9927,11067"; a="33656124"
X-IronPort-AV: E=Sophos;i="6.08,147,1712646000"; d="scan'208";a="33656124"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2024 01:04:34 -0700
X-CSE-ConnectionGUID: wFiro3bXQGW7q0bPCdUEzw==
X-CSE-MsgGUID: VzR/VYoGSUCr4zzV9PEXSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,147,1712646000"; d="scan'208";a="29043556"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa010.jf.intel.com with ESMTP; 09 May 2024 01:04:34 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com,
	jani.nikula@intel.com
Subject: [PATCH v8 6/7] drm/i915/display: Compute Adaptive sync SDP params
Date: Thu,  9 May 2024 13:28:32 +0530
Message-Id: <20240509075833.1858363-7-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240509075833.1858363-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20240509075833.1858363-1-mitulkumar.ajitkumar.golani@intel.com>
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

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 523956193fbf..380659f95b30 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2627,7 +2627,7 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 
-	if (!crtc_state->vrr.enable ||
+	if (!(crtc_state->vrr.enable || crtc_state->cmrr.enable) ||
 	    !intel_dp_as_sdp_supported(intel_dp))
 		return;
 
@@ -2636,11 +2636,20 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
 	/* Currently only DP_AS_SDP_AVT_FIXED_VTOTAL mode supported */
 	as_sdp->sdp_type = DP_SDP_ADAPTIVE_SYNC;
 	as_sdp->length = 0x9;
-	as_sdp->mode = DP_AS_SDP_AVT_FIXED_VTOTAL;
-	as_sdp->vtotal = adjusted_mode->vtotal;
-	as_sdp->target_rr = 0;
 	as_sdp->duration_incr_ms = 0;
 	as_sdp->duration_incr_ms = 0;
+
+	if (crtc_state->vrr.enable) {
+		as_sdp->mode = DP_AS_SDP_AVT_FIXED_VTOTAL;
+		as_sdp->vtotal = adjusted_mode->vtotal;
+		as_sdp->target_rr = 0;
+	} else {
+		as_sdp->mode = DP_AS_SDP_FAVT_TRR_REACHED;
+		as_sdp->vtotal = adjusted_mode->vtotal;
+		as_sdp->target_rr = DIV_ROUND_UP(adjusted_mode->clock * 1000,
+						 adjusted_mode->htotal * adjusted_mode->vtotal);
+		as_sdp->target_rr_divider = true;
+	}
 }
 
 static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
-- 
2.25.1

