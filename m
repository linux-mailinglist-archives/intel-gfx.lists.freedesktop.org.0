Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AFF69DF904
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2024 03:43:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7E5510E2F1;
	Mon,  2 Dec 2024 02:43:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Yz3qKrqR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92B6510E2EC;
 Mon,  2 Dec 2024 02:43:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733107413; x=1764643413;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VV18nvtvzXBI17R9QlIohSW3MpkqzW7lEain8+HFV88=;
 b=Yz3qKrqRig9MQpXWVK/zT6vIATnYSNuNiYJJ7o7+qRbbKyo0vmMT9V8q
 kK+YSPOKcWUJ5goxuqM4WZY2UGqKbloaF9bNCQef+zCoiTkRRXd6O21my
 VgTPh/phVZYMHvBT4vNFZZvzy24PjsPyLnUjkwLSRQKLcrYmAI2IuzsT7
 +MJ2w27BUdLjPudnLwk08VetJ/dE/jmxsftnggcrl65BLKmtt4cVejvqx
 OCE+hZR5pjzQ1b0Z7tO4cUYGJ4WH70ZKi6iMzHulflFqi2k0mmR2oHaQL
 YtGhendr6oMkQqQnr9hvyhuthovf1YdZ2uxpqCi2Y8g/Jq8A3VnZwb2aV g==;
X-CSE-ConnectionGUID: UdrMo1sOSoqCQGOA43Q7ZQ==
X-CSE-MsgGUID: 4dY3/4RFQ6CeCcuOB9HYVQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11273"; a="44634848"
X-IronPort-AV: E=Sophos;i="6.12,201,1728975600"; d="scan'208";a="44634848"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2024 18:43:33 -0800
X-CSE-ConnectionGUID: Ls6uGFdnQPultQHOtOGOXQ==
X-CSE-MsgGUID: tTkT2EnbRYaQrKUPA6kW8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,201,1728975600"; d="scan'208";a="92878188"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa010.jf.intel.com with ESMTP; 01 Dec 2024 18:43:31 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, ville.syrjala@linux.intel.com,
 jani.nikula@intel.com, ankit.k.nautiyal@intel.com
Subject: [PATCH v5 2/6] drm/i915/vrr: Compute vrr.vsync_{start,
 end} during full modeset
Date: Mon,  2 Dec 2024 08:15:36 +0530
Message-ID: <20241202024540.2578856-3-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20241202024540.2578856-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20241202024540.2578856-1-mitulkumar.ajitkumar.golani@intel.com>
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

vrr.vsync_{start,end} computation should not depend on
crtc_state->vrr.enable.

--v1:
 - Explain commit message more clearly [Jani]
 - Instead of tweaking to fastset use vrr.flipline while computing AS_SDP.
--v2:
 - Correct computation of vrr.vsync_start/end should not depend on
   vrr.enable.[ville]
 - vrr enable disable requirement should not obstruct by SDP enable
   disable requirements. [Ville]
--v3:
 - Create separate patch for crtc_state_dump [Ankit].

--v4:
 - Update commit message and header [Ankit].

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 25 ++++++++++--------------
 1 file changed, 10 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index b386e62d1664..c395af419ce3 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -236,7 +236,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 	}
 
-	if (intel_dp->as_sdp_supported && crtc_state->vrr.enable) {
+	if (HAS_AS_SDP(display)) {
 		crtc_state->vrr.vsync_start =
 			(crtc_state->hw.adjusted_mode.crtc_vtotal -
 			 crtc_state->hw.adjusted_mode.vsync_start);
@@ -316,6 +316,12 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 		       trans_vrr_ctl(crtc_state));
 	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
 		       crtc_state->vrr.flipline - 1);
+
+	if (HAS_AS_SDP(display))
+		intel_de_write(display,
+			       TRANS_VRR_VSYNC(display, cpu_transcoder),
+			       VRR_VSYNC_END(crtc_state->vrr.vsync_end) |
+			       VRR_VSYNC_START(crtc_state->vrr.vsync_start));
 }
 
 void intel_vrr_send_push(const struct intel_crtc_state *crtc_state)
@@ -352,12 +358,6 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
 		       TRANS_PUSH_EN);
 
-	if (HAS_AS_SDP(display))
-		intel_de_write(display,
-			       TRANS_VRR_VSYNC(display, cpu_transcoder),
-			       VRR_VSYNC_END(crtc_state->vrr.vsync_end) |
-			       VRR_VSYNC_START(crtc_state->vrr.vsync_start));
-
 	if (crtc_state->cmrr.enable) {
 		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
 			       VRR_CTL_VRR_ENABLE | VRR_CTL_CMRR_ENABLE |
@@ -382,10 +382,6 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 				TRANS_VRR_STATUS(display, cpu_transcoder),
 				VRR_STATUS_VRR_EN_LIVE, 1000);
 	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
-
-	if (HAS_AS_SDP(display))
-		intel_de_write(display,
-			       TRANS_VRR_VSYNC(display, cpu_transcoder), 0);
 }
 
 void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
@@ -425,10 +421,6 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 						     TRANS_VRR_VMAX(display, cpu_transcoder)) + 1;
 		crtc_state->vrr.vmin = intel_de_read(display,
 						     TRANS_VRR_VMIN(display, cpu_transcoder)) + 1;
-	}
-
-	if (crtc_state->vrr.enable) {
-		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 
 		if (HAS_AS_SDP(display)) {
 			trans_vrr_vsync =
@@ -440,4 +432,7 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 				REG_FIELD_GET(VRR_VSYNC_END_MASK, trans_vrr_vsync);
 		}
 	}
+
+	if (crtc_state->vrr.enable)
+		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 }
-- 
2.46.0

