Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68E1696814F
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2024 10:05:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0095010E237;
	Mon,  2 Sep 2024 08:05:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MpW3MKfl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D80A110E23A
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Sep 2024 08:05:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725264310; x=1756800310;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BQBFH8lqc4/yJYn7tMDrhjuR7TZM1KwjqGifaCci0r4=;
 b=MpW3MKfl7c42kpEqfEBK5krhA+4eebbURQlPo5BomuFjP0WfUbPSA7nG
 sYwR385hceyVuFD8LYE8AB8hqpITmITlAk9MiIohIIFdr1IapEI0I9i4M
 KpMPp6yG7PgcPGDNBVbs0ZMf1GKVsu1GX0gdkZLeAwm/GGD0RBIXkxUK7
 bnY9MigEssp77F92W7wxQYrtrQD8LcHPI0BtXAHte3JfpWZmBbop5PVUk
 DOp8ZudcLaHBfBuwdGgKqEyNopCZb910Omb13p7O6VFuYb+mx8G1p+SXH
 3liB0DWNTfF0Hs7LbxjG2XZqwEar7X1TurLhVRX1cpSkZsOayKPKQgvT2 g==;
X-CSE-ConnectionGUID: SaPYML8jTYeepTswIs2RZQ==
X-CSE-MsgGUID: yA5oCiwnSP26oCKMrasOWA==
X-IronPort-AV: E=McAfee;i="6700,10204,11182"; a="23967394"
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="23967394"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 01:05:10 -0700
X-CSE-ConnectionGUID: SZFtylG5TYSBUVBaSYrasA==
X-CSE-MsgGUID: KQBj49LqRkyFlXfiO0qafQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="65039873"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 01:05:09 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 06/13] drm/i915/vrr: Compute vrr vsync if platforms support it
Date: Mon,  2 Sep 2024 13:36:27 +0530
Message-ID: <20240902080635.2946858-7-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240902080635.2946858-1-ankit.k.nautiyal@intel.com>
References: <20240902080635.2946858-1-ankit.k.nautiyal@intel.com>
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
index 9a51f5bac307..03af50b9f9eb 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -231,7 +231,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 	}
 
-	if (intel_dp->as_sdp_supported && crtc_state->vrr.enable) {
+	if (HAS_AS_SDP(display) && crtc_state->vrr.enable) {
 		crtc_state->vrr.vsync_start =
 			(crtc_state->hw.adjusted_mode.crtc_vtotal -
 			 crtc_state->hw.adjusted_mode.vsync_start);
-- 
2.45.2

