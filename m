Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B739DA2D1
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 08:09:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDE7A10E9F5;
	Wed, 27 Nov 2024 07:09:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Iy7nenvE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60EC710E9F5;
 Wed, 27 Nov 2024 07:09:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732691342; x=1764227342;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JVLnCVPR2bYIrb8LZpAEWSk7/Kwar0OUhWbfFP2Avkk=;
 b=Iy7nenvEwc3+DODVHDWyirZ0jFkKEa4MW8PFzzkI8b0oNekuVcDPEUzh
 A/k3FtPY1NM8WAHFWpARzhQAM51Btqh5WBTWkNEjde7ZkzONy+5UDrlEN
 U0JkCTAoFZ9uObYFjoT6KvWYqtwo5ua1EfUUHNWLyd+dEtBeNXBkUXDIQ
 Fil9nvepQvVml01T6LV2Ped9E+94eedTFlGgbVSZyItyqQxxpo4xbRDf6
 VUor00sc2r+w8OKieQpEQHH+CU5QXa9zFbBUFvSGMkvNwBvVGI5SwKKJh
 3UIaoA+bazz3e7fZiE4NPVXCflX+QFoONFu0FkcUod9pykJlinqWNciax Q==;
X-CSE-ConnectionGUID: BbyTJbvjT/KWjWVUTtddsg==
X-CSE-MsgGUID: vU0jq5j9SwSXJ+WuKnMkuQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11268"; a="36667885"
X-IronPort-AV: E=Sophos;i="6.12,188,1728975600"; d="scan'208";a="36667885"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2024 23:09:02 -0800
X-CSE-ConnectionGUID: bI3r14bfSI2N7AeOZN8l1g==
X-CSE-MsgGUID: rMtj2bnqRuSb4HT+UakbYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,188,1728975600"; d="scan'208";a="96270381"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2024 23:09:00 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 4/7] drm/i915/vrr: Fill VRR timing generator mode for CMRR and
 VRR
Date: Wed, 27 Nov 2024 12:41:33 +0530
Message-ID: <20241127071136.1017190-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241127071136.1017190-1-ankit.k.nautiyal@intel.com>
References: <20241127071136.1017190-1-ankit.k.nautiyal@intel.com>
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

Fill vrr.mode during compute_config and update intel_vrr_get_config() to
read vrr.mode based on CMRR and VRR enable conditions.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 1 +
 drivers/gpu/drm/i915/display/intel_vrr.c     | 5 +++++
 2 files changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 9db255bb1230..aae29eab07d1 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5761,6 +5761,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 
 	if (!fastset) {
 		PIPE_CONF_CHECK_BOOL(vrr.enable);
+		PIPE_CONF_CHECK_X(vrr.mode);
 		PIPE_CONF_CHECK_I(vrr.vmin);
 		PIPE_CONF_CHECK_I(vrr.vmax);
 		PIPE_CONF_CHECK_I(vrr.flipline);
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 7f5c2054ab69..f1723ad8fd23 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -166,6 +166,7 @@ void intel_vrr_compute_cmrr_timings(struct intel_crtc_state *crtc_state)
 {
 	crtc_state->vrr.enable = true;
 	crtc_state->cmrr.enable = true;
+	crtc_state->vrr.mode = INTEL_VRRTG_MODE_CMRR;
 	/*
 	 * TODO: Compute precise target refresh rate to determine
 	 * if video_mode_required should be true. Currently set to
@@ -225,6 +226,7 @@ void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state, int vmin
 {
 	intel_vrr_prepare_vrr_timings(crtc_state, vmin, vmax);
 	crtc_state->vrr.enable = true;
+	crtc_state->vrr.mode = INTEL_VRRTG_MODE_VRR;
 	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 }
 
@@ -436,12 +438,15 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 
 	if (HAS_CMRR(display) && trans_vrr_ctl & VRR_CTL_CMRR_ENABLE) {
 		crtc_state->cmrr.enable = true;
+		crtc_state->vrr.mode = INTEL_VRRTG_MODE_CMRR;
 		crtc_state->cmrr.cmrr_n =
 			intel_de_read64_2x32(display, TRANS_CMRR_N_LO(display, cpu_transcoder),
 					     TRANS_CMRR_N_HI(display, cpu_transcoder));
 		crtc_state->cmrr.cmrr_m =
 			intel_de_read64_2x32(display, TRANS_CMRR_M_LO(display, cpu_transcoder),
 					     TRANS_CMRR_M_HI(display, cpu_transcoder));
+	} else if (trans_vrr_ctl & VRR_CTL_VRR_ENABLE) {
+		crtc_state->vrr.mode = INTEL_VRRTG_MODE_VRR;
 	}
 
 	if (DISPLAY_VER(display) >= 13)
-- 
2.45.2

