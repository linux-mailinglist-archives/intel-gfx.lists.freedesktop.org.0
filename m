Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84BD991EE20
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2024 07:07:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D176210E10A;
	Tue,  2 Jul 2024 05:07:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e9vlao3V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48E1E10E165
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jul 2024 05:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719896854; x=1751432854;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pV8cpEBMh/34JALyf3nj5z4heXOIYPxAZbygVGwXS7Y=;
 b=e9vlao3V+N9cBMuaL55s5IG3vQKB3GRXjt0qpJr6ONeHNFeUW+n5/6di
 22Cd9EfzKoVZwC7S9IAb8qnYdd2uYKdcbMD6FvF4JMYZrEKvjRWMspxdF
 YJQM3HADSjMbtUm8OrF4hlVwj4cFc7fv7Wrfw01/3Tc7TBzUt3Egh5wj4
 ft/aDy5vciws6W3NYbBT8C7MP/9i+u62UYOoxgYWAdagkqg/2KXaAHZtj
 eXS8QIZZynCEuiudmXnF89Lx/GhU1/yV9bjbsN1/dIH8BuT9a5Lj3AxID
 OrDvCj8xJS8/ukoCRNdEpXttG2eWWdp9sG4f6xxmRIBT18Qzt9zeAXO2q g==;
X-CSE-ConnectionGUID: cTza0RShTQWtOWj9ndE3lQ==
X-CSE-MsgGUID: rnBgAnK+RBOc2sZ9lmK3mA==
X-IronPort-AV: E=McAfee;i="6700,10204,11120"; a="17004691"
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="17004691"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2024 22:07:33 -0700
X-CSE-ConnectionGUID: deifn5QwRNSOtArgKHRw9g==
X-CSE-MsgGUID: B4NSbYsSQ/SCribc4wXiQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="45666033"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa007.fm.intel.com with ESMTP; 01 Jul 2024 22:07:31 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	imre.deak@intel.com
Subject: [PATCH 1/2] drm/i915/display: Avoid reading as sdp caps during each
 atomic commit
Date: Tue,  2 Jul 2024 10:37:54 +0530
Message-ID: <20240702050755.2091221-2-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240702050755.2091221-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20240702050755.2091221-1-mitulkumar.ajitkumar.golani@intel.com>
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

Add new member to struct intel_dp to cache support of Adaptive Sync
SDP capabilities and use it whenever required to avoid HW access
to read capability during each atomic commit.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c          | 2 +-
 drivers/gpu/drm/i915/display/intel_display_types.h | 1 +
 drivers/gpu/drm/i915/display/intel_dp.c            | 3 +--
 drivers/gpu/drm/i915/display/intel_vrr.c           | 3 +--
 4 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 866b3b409c4d..f4f05a859379 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -280,7 +280,7 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
 	if (DISPLAY_VER(i915) < 20)
 		return;
 
-	if (!intel_dp_as_sdp_supported(intel_dp))
+	if (!intel_dp->as_sdp_supported)
 		return;
 
 	if (crtc_state->has_psr)
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 8713835e2307..a9d2acdc51a4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1806,6 +1806,7 @@ struct intel_dp {
 
 	/* connector directly attached - won't be use for modeset in mst world */
 	struct intel_connector *attached_connector;
+	bool as_sdp_supported;
 
 	struct drm_dp_tunnel *tunnel;
 	bool tunnel_suspended:1;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3903f6ead6e6..c6f0a46a0388 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2625,8 +2625,7 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 
-	if (!crtc_state->vrr.enable ||
-	    !intel_dp_as_sdp_supported(intel_dp))
+	if (!crtc_state->vrr.enable || intel_dp->as_sdp_supported)
 		return;
 
 	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 5a0da64c7db3..7e1d9c718214 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -233,8 +233,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 	}
 
-	if (intel_dp_as_sdp_supported(intel_dp) &&
-	    crtc_state->vrr.enable) {
+	if (intel_dp->as_sdp_supported && crtc_state->vrr.enable) {
 		crtc_state->vrr.vsync_start =
 			(crtc_state->hw.adjusted_mode.crtc_vtotal -
 			 crtc_state->hw.adjusted_mode.vsync_start);
-- 
2.45.2

