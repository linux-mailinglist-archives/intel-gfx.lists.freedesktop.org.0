Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EBE08CE435
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2024 12:30:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30B7510E97D;
	Fri, 24 May 2024 10:30:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KTscsZqf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBC4910E97D
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2024 10:30:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716546627; x=1748082627;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nVWM4vyxp0Wknorm/wK+BdMLZp2Uv4HGhTN48rj3vWE=;
 b=KTscsZqfO4Jyb1+4W+qjw0wCbQaAG2IHqtsnYSJccs9VRfJzfUBwP7Qy
 Uk80mO6Yu2OYtP859G+AzMLqvv6ysdSfIUnZciUuIn83RozndDTv0a1Kg
 48VZsGQmKrlGnRPVRBGqV0NGBInN9hd+N/iqmutgsCgWgAUfyO+OI0UUl
 PVLQmJxiaIGiDjEF9ms62P9fNgDZuBWnrZTw8UAcD11mB5eRJmB/OQhz2
 Hq9Aydqf0LjX6/h2B/Kl8Cm6Dn8nF7e/2eXu0l17SCxArGYcZAKbdByK1
 po+3Y30K/lmxsVfGcO+xV4zPrTDLiAV+egdUH4bLbBqC6/Y2eyxdQ1qjn Q==;
X-CSE-ConnectionGUID: 2VwT/wQmTLysi1/l1rYM8A==
X-CSE-MsgGUID: TJBIhmNmSKSpANlEPrjBcw==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="15862739"
X-IronPort-AV: E=Sophos;i="6.08,185,1712646000"; d="scan'208";a="15862739"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2024 03:30:23 -0700
X-CSE-ConnectionGUID: aAUcmUY3RO2YhGY2PbHX/w==
X-CSE-MsgGUID: AePmKdIhQpygpg/rUQU7ig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,185,1712646000"; d="scan'208";a="71385708"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa001.jf.intel.com with ESMTP; 24 May 2024 03:30:22 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com
Subject: [PATCH v9 7/8] drm/i915/display: Compute vrr vsync params
Date: Fri, 24 May 2024 15:54:31 +0530
Message-Id: <20240524102432.2499104-8-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240524102432.2499104-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20240524102432.2499104-1-mitulkumar.ajitkumar.golani@intel.com>
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

Compute vrr vsync params in case of FAVT as well instead of
only to AVT mode of operation.

--v2:
- Remove redundant computation for vrr_vsync_start
and vrr_vsync_end(Ankit).

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 3fbedd7366bb..07be70f7c536 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -224,14 +224,6 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	if (crtc_state->uapi.vrr_enabled) {
 		crtc_state->vrr.enable = true;
 		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
-		if (intel_dp_as_sdp_supported(intel_dp)) {
-			crtc_state->vrr.vsync_start =
-				(crtc_state->hw.adjusted_mode.crtc_vtotal -
-					crtc_state->hw.adjusted_mode.vsync_start);
-			crtc_state->vrr.vsync_end =
-				(crtc_state->hw.adjusted_mode.crtc_vtotal -
-					crtc_state->hw.adjusted_mode.vsync_end);
-		}
 	} else if (is_cmrr_frac_required(crtc_state, is_edp)) {
 		crtc_state->vrr.enable = true;
 		crtc_state->vrr.vmax = cmrr_get_vtotal(crtc_state);
@@ -240,6 +232,15 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 	}
 
+	if (intel_dp_as_sdp_supported(intel_dp)) {
+		crtc_state->vrr.vsync_start =
+			(crtc_state->hw.adjusted_mode.crtc_vtotal -
+			 crtc_state->hw.adjusted_mode.vsync_start);
+		crtc_state->vrr.vsync_end =
+			(crtc_state->hw.adjusted_mode.crtc_vtotal -
+			 crtc_state->hw.adjusted_mode.vsync_end);
+	}
+
 	/*
 	 * For XE_LPD+, we use guardband and pipeline override
 	 * is deprecated.
-- 
2.25.1

