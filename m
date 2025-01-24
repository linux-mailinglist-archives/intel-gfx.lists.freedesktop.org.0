Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73F3AA1B88E
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 16:12:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E01810E9AB;
	Fri, 24 Jan 2025 15:12:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Bd/bOXm3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95DA510E9B7;
 Fri, 24 Jan 2025 15:12:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737731540; x=1769267540;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=y+ffyE97ni/oAi3Q/HVtosAmqe27OLQWUXMVp04VvR8=;
 b=Bd/bOXm3RXFK16XuZ4C/MzRBdxbHL73LcLqF/aazJAJu90Z+vITXRGS6
 w3Qtndlms+VWbn1ExAO1aVB/1jaZ2NdfCUb75C30PEnssfMEmWvqUmYid
 sKGxd6H4T1LqMhL7C2E/fju2STolBLmgKMfvygm1wtrxXrFRBVbUmCYgB
 4DyLsIuQYyg45dRy0k7GTeWL5peairu+A+a0ptppZ6J2UzHYKcNZ6Tu3p
 2GOOHWtZLHkA73+zHSQdFeH+BCsKWN78k3aDpW5AFxVFrDo3+LbhNwpVW
 sG6aY1fAlmTJ5Hjk+tPGm9EOR5/FvDbdEd7ASo/WUrJmNmbp/7Q/IThN5 w==;
X-CSE-ConnectionGUID: DPbfJdSPQqiyVa+1DFtTSA==
X-CSE-MsgGUID: JacFScCjQUaixfmPKVdYCw==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="38177423"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="38177423"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:12:19 -0800
X-CSE-ConnectionGUID: 2PVUAFrzSW2rMBgjJP8x9A==
X-CSE-MsgGUID: OpzGC5rpRqKLQGCRQ0Jcpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108221366"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:12:17 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 19/35] drm/i915/vrr: Introduce VRR mode Fixed RR
Date: Fri, 24 Jan 2025 20:30:04 +0530
Message-ID: <20250124150020.2271747-20-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
References: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
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

VRR timing generator can be used even with fixed refresh rate.
With this the legacy timing generator can be phased out and VRR timing
generator can be used for all cases, whether panels support VRR or not.

Add an enum value to represent the VRR timing generator in
fixed refresh rate mode and update the helper vrrtg_mode_str
for printing it.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 .../gpu/drm/i915/display/intel_crtc_state_dump.c    |  1 +
 drivers/gpu/drm/i915/display/intel_display_types.h  |  1 +
 drivers/gpu/drm/i915/display/intel_vrr.c            | 13 ++++++++++---
 3 files changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 7b8247af4897..8bbca81d478c 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -176,6 +176,7 @@ static const char * const vrrtg_mode_str[] = {
 	[INTEL_VRRTG_MODE_NONE] = "none",
 	[INTEL_VRRTG_MODE_VRR] = "vrr",
 	[INTEL_VRRTG_MODE_CMRR] = "cmrr",
+	[INTEL_VRRTG_MODE_FIXED_RR] = "fixed_rr",
 };
 
 static const char *intel_vrrtg_mode_name(enum intel_vrrtg_mode mode)
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 338cfd99e5d3..edf021db0d31 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -939,6 +939,7 @@ enum intel_vrrtg_mode {
 	INTEL_VRRTG_MODE_NONE,
 	INTEL_VRRTG_MODE_VRR,
 	INTEL_VRRTG_MODE_CMRR,
+	INTEL_VRRTG_MODE_FIXED_RR,
 };
 
 struct intel_crtc_state {
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index a29ca9d64e4a..65bbe40881d6 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -515,15 +515,12 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 				      TRANS_VRR_CTL(display, cpu_transcoder));
 
 	if (HAS_CMRR(display) && trans_vrr_ctl & VRR_CTL_CMRR_ENABLE) {
-		crtc_state->vrr.mode = INTEL_VRRTG_MODE_CMRR;
 		crtc_state->vrr.cmrr_n =
 			intel_de_read64_2x32(display, TRANS_CMRR_N_LO(display, cpu_transcoder),
 					     TRANS_CMRR_N_HI(display, cpu_transcoder));
 		crtc_state->vrr.cmrr_m =
 			intel_de_read64_2x32(display, TRANS_CMRR_M_LO(display, cpu_transcoder),
 					     TRANS_CMRR_M_HI(display, cpu_transcoder));
-	} else if (trans_vrr_ctl & VRR_CTL_VRR_ENABLE) {
-		crtc_state->vrr.mode = INTEL_VRRTG_MODE_VRR;
 	}
 
 	if (DISPLAY_VER(display) >= 13)
@@ -553,6 +550,16 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 		}
 	}
 
+	if (trans_vrr_ctl & VRR_CTL_VRR_ENABLE) {
+		if (trans_vrr_ctl & VRR_CTL_CMRR_ENABLE)
+			crtc_state->vrr.mode = INTEL_VRRTG_MODE_CMRR;
+		else if (crtc_state->vrr.vmax == crtc_state->vrr.flipline &&
+			 crtc_state->vrr.vmin == crtc_state->vrr.flipline)
+			crtc_state->vrr.mode = INTEL_VRRTG_MODE_FIXED_RR;
+		else
+			crtc_state->vrr.mode = INTEL_VRRTG_MODE_VRR;
+	}
+
 	if (intel_vrrtg_is_enabled(crtc_state))
 		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 }
-- 
2.45.2

