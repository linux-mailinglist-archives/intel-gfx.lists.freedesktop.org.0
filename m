Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5AD1BA280A
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Sep 2025 08:13:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35DD210E674;
	Fri, 26 Sep 2025 06:13:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LS3hIH4V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5DCC10E336;
 Fri, 26 Sep 2025 06:12:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758867178; x=1790403178;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kpp8C3R51Gz4vQQa+dyhawDbNS9mxI8zMvC1Vvq8+8s=;
 b=LS3hIH4VekGLNv89NUcpWjpRs6uMyRtyz+6FxEgfkPmsl5FsmJuYy0VT
 rS+fCxYw8qqr8+8/KxG+tlilcwFeFOBytbRlZIvV+0aWxatbKH70NIBuN
 8Al+Nn2LzHIHnTcJOK2h4tkdS5se9rLvrfdIf2yLrZItdkebsvJ+PDs60
 Zh+VPny38rZLTOSZUu9KdfDVHNCQhD5P0A1Mc7x0wMtouVLMtGTERs1Ls
 b3N1jULLIFOBHapJDyduMBS/zb9dxcGxkh/C6aQTvD2XfrKlGP2Iy29z3
 lSqFAGLN/g9CFbRGtwxH6Qcn3ZLfhj5bAYJVSjePIkkdqrBwn2nJE2tC7 Q==;
X-CSE-ConnectionGUID: EW+SbrAuTl2B1ejNBVCBmQ==
X-CSE-MsgGUID: GaPtWDvuRIWXv/EstfV2ig==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="65007585"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="65007585"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 23:12:58 -0700
X-CSE-ConnectionGUID: fCeo7Y/fT5SCU5viu6iTcw==
X-CSE-MsgGUID: WsvHG0fxSJK7rX/lOI9XMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,294,1751266800"; d="scan'208";a="177092815"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 23:12:56 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH 01/14] drm/i915/vrr: Use crtc_vsync_start/end for computing
 vrr.vsync_start/end
Date: Fri, 26 Sep 2025 11:29:22 +0530
Message-ID: <20250926055935.3532568-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250926055935.3532568-1-ankit.k.nautiyal@intel.com>
References: <20250926055935.3532568-1-ankit.k.nautiyal@intel.com>
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

Use adjusted_mode->crtc_vsync_start/end instead of
adjusted_mode->vsync_start while computing vrr.vsync_start/end.
For most modes, these are same but for 3D/stereo modes the
crtc_vsync_start is different than vsync_start.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 190c51be5cbc..4bc14b5e685f 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -394,10 +394,10 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	if (HAS_AS_SDP(display)) {
 		crtc_state->vrr.vsync_start =
 			(crtc_state->hw.adjusted_mode.crtc_vtotal -
-			 crtc_state->hw.adjusted_mode.vsync_start);
+			 crtc_state->hw.adjusted_mode.crtc_vsync_start);
 		crtc_state->vrr.vsync_end =
 			(crtc_state->hw.adjusted_mode.crtc_vtotal -
-			 crtc_state->hw.adjusted_mode.vsync_end);
+			 crtc_state->hw.adjusted_mode.crtc_vsync_end);
 	}
 }
 
-- 
2.45.2

