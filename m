Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51A1FA38F29
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2025 23:37:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4ECF10E2EA;
	Mon, 17 Feb 2025 22:37:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WOyUAFSI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 431CD10E2EA;
 Mon, 17 Feb 2025 22:37:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739831850; x=1771367850;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=e3W15pdFUay2X4MUqjFbksdjtZgDa/8IFND6iZsW3n4=;
 b=WOyUAFSIIBJ0LNNwrMIqMQ6IgVzBMc6OKfWaA5Y1aZiAbgVmPQFiMe7J
 DI+opsmboqngHGLTnsHpdm9M4gMA9OB4y9H7YwAqCLMMewI/0dUn02o7o
 lIN9vt09wVUcird4CL57/McatBk8q/ydmuBdmIlJDwIUDKUi0LxrT3Gau
 o7MQs/ztecWUgbvOFqpiz2tBWRCqMOfpSqFypFM7wgzjjPNVXmBbnw+6s
 rZtwY65cKICWjRaYruWUb5Bgt1gY4/Xsa+HkhYeCyC5CLq91AbruwvDoZ
 fLyzY8yE8iDEgzt1qKBYtoagAth2sV9ii/MRdb/MXTpMA0o3aDnSV78c3 w==;
X-CSE-ConnectionGUID: x2C+CfPVR82uhTknuXZtQg==
X-CSE-MsgGUID: teuVewk6SWCZQ/jFQiGxlQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="44171140"
X-IronPort-AV: E=Sophos;i="6.13,294,1732608000"; d="scan'208";a="44171140"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2025 14:37:30 -0800
X-CSE-ConnectionGUID: fThTQHpRTZ+1kgrSflZ3CQ==
X-CSE-MsgGUID: 6YzBTyUBS4yR3NmF6zzZKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,294,1732608000"; d="scan'208";a="114872573"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2025 14:37:28 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: stable@vger.kernel.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 1/2] drm/i915/dp: Fix error handling during 128b/132b link
 training
Date: Tue, 18 Feb 2025 00:38:27 +0200
Message-ID: <20250217223828.1166093-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250217223828.1166093-1-imre.deak@intel.com>
References: <20250217223828.1166093-1-imre.deak@intel.com>
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

At the end of a 128b/132b link training sequence, the HW expects the
transcoder training pattern to be set to TPS2 and from that to normal
mode (disabling the training pattern). Transitioning from TPS1 directly
to normal mode leaves the transcoder in a stuck state, resulting in
page-flip timeouts later in the modeset sequence.

Atm, in case of a failure during link training, the transcoder may be
still set to output the TPS1 pattern. Later the transcoder is then set
from TPS1 directly to normal mode in intel_dp_stop_link_train(), leading
to modeset failures later as described above. Fix this by setting the
training patter to TPS2, if the link training failed at any point.

Cc: stable@vger.kernel.org # v5.18+
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_training.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 3cc06c916017d..11953b03bb6aa 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1563,7 +1563,7 @@ intel_dp_128b132b_link_train(struct intel_dp *intel_dp,
 
 	if (wait_for(intel_dp_128b132b_intra_hop(intel_dp, crtc_state) == 0, 500)) {
 		lt_err(intel_dp, DP_PHY_DPRX, "128b/132b intra-hop not clear\n");
-		return false;
+		goto out;
 	}
 
 	if (intel_dp_128b132b_lane_eq(intel_dp, crtc_state) &&
@@ -1575,6 +1575,19 @@ intel_dp_128b132b_link_train(struct intel_dp *intel_dp,
 	       passed ? "passed" : "failed",
 	       crtc_state->port_clock, crtc_state->lane_count);
 
+out:
+	/*
+	 * Ensure that the training pattern does get set to TPS2 even in case
+	 * of a failure, as is the case at the end of a passing link training
+	 * and what is expected by the transcoder. Leaving TPS1 set (and
+	 * disabling the link train mode in DP_TP_CTL later from TPS1 directly)
+	 * would result in a stuck transcoder HW state and flip-done timeouts
+	 * later in the modeset sequence.
+	 */
+	if (!passed)
+		intel_dp_program_link_training_pattern(intel_dp, crtc_state,
+						       DP_PHY_DPRX, DP_TRAINING_PATTERN_2);
+
 	return passed;
 }
 
-- 
2.44.2

