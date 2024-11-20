Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B06619D35CA
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 09:47:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BEC710E6D2;
	Wed, 20 Nov 2024 08:47:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dMwA4obB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7260610E6CF
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2024 08:47:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732092468; x=1763628468;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VAyjLwI+VJ5z3oCPFmMZjYXM3mxcDRu6aR5TOac3EvU=;
 b=dMwA4obB4jzlVZ5VDMuJI1rdpPQfznBoOlxs3UHXEZRUhPZts8Do97g5
 N9NjN8rCBvbcHRsPvcTT1GIdpAHFJ2AspRY3gLA6i6bjzz9rLbV22XuEX
 vxMlxA4lH5fypJ3jD8c7vwHmTUsqWXu0HXHweqX6RJH7i6QAmiBUTw8vA
 ttY3KyaKMN78jpn9qLogaZpHQoRROArQBSJqbOEES+/0NSk5oVgkFQaPS
 SlJMZQEGGSp/Dce2AuDctFVnzjEX8yLsvDERXs5S8KMZbwsU4wQ6Ndk/M
 N6EX0sYDdb3Be4f+zXbQ0RQdEYArRRo44qWCDdJft62PjnZrMLZT1DaXZ Q==;
X-CSE-ConnectionGUID: 3jANOlNLRgCQJoQPdDxfOg==
X-CSE-MsgGUID: OgSD+/9UQZyuUVWsxdFuIQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="31887142"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="31887142"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 00:47:48 -0800
X-CSE-ConnectionGUID: kut39CP3SAm4IA7Nhi3dMQ==
X-CSE-MsgGUID: QjXAV0LrS2ev40rLNOyyag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="89956748"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa006.jf.intel.com with ESMTP; 20 Nov 2024 00:47:47 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com,
 jani.nikula@intel.com
Subject: [PATCH v4 2/5] drm/i915/vrr: Update vrr.vsync_{start, end} computation
Date: Wed, 20 Nov 2024 14:19:45 +0530
Message-ID: <20241120084948.1834306-3-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20241120084948.1834306-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20241120084948.1834306-1-mitulkumar.ajitkumar.golani@intel.com>
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
crtc_state->vrr.enable. Also add them to state dump.

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

