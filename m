Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7336B903B4E
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 14:01:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2E2F10E5CD;
	Tue, 11 Jun 2024 12:01:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fIAb/7zs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8EA710E5CD
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2024 12:01:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718107303; x=1749643303;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rBuqlP5eyGPouS0O7CkY4umcamRyxaQEzWKyyjp8fpU=;
 b=fIAb/7zsW8rrnb51R1twpvzzxJsxXQByW1U7NUCqdMQGDfONAsmvWAfw
 SG59wAERpP3dFM8vPiosS6uv1lYaz41lcDp4ODfSFpqL5GB51Qy0Ukycn
 UKzF8l3j7cPc8EQ8zrIE94NPHRHS/6AIdvRPeqRP7Wm1dg238cZIMvLnH
 jWe6lRb7f2fMsSlxIYcTFvbYVq42Mug+GEKKCKXZnQ1UaFIrpz7bC/XKB
 H50+UgP1aEMEtc13jWebPXlxXg7rWiKwPW9xAz7KNB7VB49o0oE4pSVcW
 YpX9hRkHsiphhd8YwGjhPafUvoelKiREmWBRqZgl4bQ+ddioWrGhYa4NC w==;
X-CSE-ConnectionGUID: WYUQEVPcRUiQHPeiBRkbsg==
X-CSE-MsgGUID: Tc7WLPWcTKOT0khFvDxV7Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="37333190"
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="37333190"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 05:01:42 -0700
X-CSE-ConnectionGUID: q0smoTbfSZq/hBdiPdOAig==
X-CSE-MsgGUID: 8b3pimg1QsOkH54XumB+WA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="39355093"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa010.jf.intel.com with ESMTP; 11 Jun 2024 05:01:42 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com
Subject: [PATCH] drm/i915/display: Send vrr vsync params whne vrr is enabled
Date: Tue, 11 Jun 2024 17:31:51 +0530
Message-ID: <20240611120151.147778-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.45.2
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

Compute trans vrr vsync params only when either VRR or CMRR
is enabled.

Fixes: 5922f45329cd ("drm/i915/display: Compute vrr vsync params")
Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 05f67dc9d98d..ec3a68577356 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -232,7 +232,8 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 	}
 
-	if (intel_dp_as_sdp_supported(intel_dp)) {
+	if (intel_dp_as_sdp_supported(intel_dp) &&
+			crtc_state->vrr.enable) {
 		crtc_state->vrr.vsync_start =
 			(crtc_state->hw.adjusted_mode.crtc_vtotal -
 			 crtc_state->hw.adjusted_mode.vsync_start);
-- 
2.45.2

