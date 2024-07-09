Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADD9792AEB3
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2024 05:26:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49F7410E3F7;
	Tue,  9 Jul 2024 03:26:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OhrBC1PF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F5E710E479
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2024 03:26:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720495567; x=1752031567;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6sjRps4vVBzYzP2x8Sxec4RRjzRmr00cCqQyhB4X6i0=;
 b=OhrBC1PFNhrbN5lNs4xJ8Fsgm67yxXv4gKOVx9/8ifJjhJGjCP12XSB0
 9/HZJPXAegO8IOdIMBx+HeH0RHfykbPxxBkowQLHW6oG2sC84jdz/IiU2
 QS3kTdyGJ5yyzXFI/JuKi3orRV+JzGVbTwEdD1lL0BXFs1/ED7Zx4C8cv
 8qCuQDKt6DxPb0snB5q6Tp3D+4utscC0QfzAuTQbu+0Ze7w/OMuNaiEbK
 qNZYNZCvuDqsV1sTlR8KDcATqnViKvAQMgW4wTN5hWUqkD3sfhN6Cb7fu
 RUshxdcThJikR76zSwgVo3tTJ3eUaSLgzOAhUIXif0UOW+8S5TPvqps3p A==;
X-CSE-ConnectionGUID: jzAqBVB8TZG5kQWegxUX9A==
X-CSE-MsgGUID: cYCiMZm5SZalQNf/MlGt5w==
X-IronPort-AV: E=McAfee;i="6700,10204,11127"; a="21536460"
X-IronPort-AV: E=Sophos;i="6.09,193,1716274800"; d="scan'208";a="21536460"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2024 20:26:07 -0700
X-CSE-ConnectionGUID: 1sxKNdeARv+Z2t447AymKQ==
X-CSE-MsgGUID: n4VtJ0g8Tnea9ujvftwf9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,193,1716274800"; d="scan'208";a="48374182"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2024 20:26:05 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 04/10] drm/i915/vrr: Compute vrr vsync if platforms support it
Date: Tue,  9 Jul 2024 08:56:45 +0530
Message-Id: <20240709032651.1824185-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240709032651.1824185-1-ankit.k.nautiyal@intel.com>
References: <20240709032651.1824185-1-ankit.k.nautiyal@intel.com>
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
 drivers/gpu/drm/i915/display/intel_vrr.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 24568dae717a..43b772f91556 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -233,8 +233,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 	}
 
-	if (intel_dp_as_sdp_supported(intel_dp) &&
-	    crtc_state->vrr.enable) {
+	if (HAS_AS_SDP(i915) && crtc_state->vrr.enable) {
 		crtc_state->vrr.vsync_start =
 			(crtc_state->hw.adjusted_mode.crtc_vtotal -
 			 crtc_state->hw.adjusted_mode.vsync_start);
-- 
2.40.1

