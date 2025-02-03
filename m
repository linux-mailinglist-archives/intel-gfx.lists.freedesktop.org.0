Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B43BA259EE
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 13:50:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E56A210E035;
	Mon,  3 Feb 2025 12:50:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hTVPfpb6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59CC510E035;
 Mon,  3 Feb 2025 12:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738587052; x=1770123052;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=At8P6bL9xkWjU8ytrjunukZys2HTbKSwKxWmHa79jbI=;
 b=hTVPfpb6kTegjfNPqogls+bPnflGRbCTt3Flugvlz9RL3di3QO+zngWS
 3D3sOqFGZOt1cBZSSF4mKSTRzDilHm7hNx5MujB4RH6Xv5DwCX4PMJClt
 eOsyb+dwPFw6UT64icNIPS/9lcefqOCnqUgiFE2OKcUfH3DQimaUPoSje
 KpLzG6sSd51m2NM+QYE0DMS1077beFUyfeMfeV2YnQixklj/JzWe9JF3B
 tlg1LiNnKA7bMimV0tz0Z5wTNRxIvgGK2naTFSwo5XOmKR7TT+qejRFyg
 eWaBFOBeB5xCGjhksklch7nyZYcjbgBdwWQSik1UYUvLYKZXVMc+2vnZ8 Q==;
X-CSE-ConnectionGUID: y0c7HnELRXaAELIrP/Nhrg==
X-CSE-MsgGUID: ZuS/K0Y7QTOCzSuWcufrDw==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="61548171"
X-IronPort-AV: E=Sophos;i="6.13,255,1732608000"; d="scan'208";a="61548171"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:50:51 -0800
X-CSE-ConnectionGUID: TsiBH/TTQFipEuJmMH/QPg==
X-CSE-MsgGUID: mY8uN0dwQGOmIGNt99cQ6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="133529117"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:50:49 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 28/28] drm/i915/vblank: Avoid warning for platforms that
 always use VRR TG
Date: Mon,  3 Feb 2025 18:08:40 +0530
Message-ID: <20250203123840.3855874-29-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250203123840.3855874-1-ankit.k.nautiyal@intel.com>
References: <20250203123840.3855874-1-ankit.k.nautiyal@intel.com>
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

For fixed refresh rate timings, the VRR TG is not disabled and timings
are changed on the fly.
Modify the check for warning for changing timings with VRR TG disabled.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vblank.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index 8abcf4c2cfe7..3053babcd0b0 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -670,9 +670,13 @@ void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
 	adjusted_mode = &crtc_state->hw.adjusted_mode;
 
 	if (crtc->mode_flags & I915_MODE_FLAG_VRR) {
-		/* timing changes should happen with VRR disabled */
-		drm_WARN_ON(crtc->base.dev, intel_crtc_needs_modeset(new_crtc_state) ||
-			    new_crtc_state->update_m_n || new_crtc_state->update_lrr);
+		/*
+		 * For platforms that do not always use VRR Timing generator,
+		 * timing changes should happen with VRR disabled.
+		 */
+		if (!intel_vrr_always_use_vrr_tg(display))
+			drm_WARN_ON(crtc->base.dev, intel_crtc_needs_modeset(new_crtc_state) ||
+				    new_crtc_state->update_m_n || new_crtc_state->update_lrr);
 
 		if (intel_vrr_is_push_sent(crtc_state))
 			evade->vblank_start = intel_vrr_vmin_vblank_start(crtc_state);
-- 
2.45.2

