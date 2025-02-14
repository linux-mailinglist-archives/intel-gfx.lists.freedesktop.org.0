Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54F71A35D7D
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 13:23:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1D7810EC82;
	Fri, 14 Feb 2025 12:23:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NAXdegsa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7518010EC82;
 Fri, 14 Feb 2025 12:23:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739535783; x=1771071783;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ciI/dXEAh3Cy497IZ4ZvPVJdxvF14ZwgFwuEl11+7kk=;
 b=NAXdegsahXlk4EJDmYILq+jlx/RnMDDhhQipFOBPxuMvr8F6t3+c4n+M
 1r7sdaXIMhq0u1e7/bnKZ7B1URTS+QyFGPrtTyk2a4nfixOp/nhp90jJn
 nL4zVQKwqO+4CQ+vVRJHpKwzUsL1YEZz7StypXgL2W9M2kGLWT1wNmFcU
 JSFRkXO4V+yxXEkKeOBpkUsxTmv8fRdNe4Wbmwp3qukhSIyUWmi3rk5aG
 19wNAywfWdmhgvass7ImIssmmncueNjf2pH27JzvwPnHKx2bm/c1oWw+6
 1UbUEpGOZiCVZ02SRvxKWHjXVobx2okPLXCZRxJF6XhcjhHkQpQL1sICi A==;
X-CSE-ConnectionGUID: 7FBF4LSTQHi6EIDak26UVA==
X-CSE-MsgGUID: wkHyrXJdTYee5fapye6ebw==
X-IronPort-AV: E=McAfee;i="6700,10204,11345"; a="51256034"
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="51256034"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 04:23:02 -0800
X-CSE-ConnectionGUID: ByjI7y7fQrqQojzJpjh6bQ==
X-CSE-MsgGUID: EWZkSxCvRsisGbm2kyJhyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="113309612"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 04:23:00 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 18/19] drm/i915/vrr: Always use VRR timing generator for MTL+
Date: Fri, 14 Feb 2025 17:41:28 +0530
Message-ID: <20250214121130.1808451-19-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250214121130.1808451-1-ankit.k.nautiyal@intel.com>
References: <20250214121130.1808451-1-ankit.k.nautiyal@intel.com>
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

Currently VRR timing generator is used only when VRR is enabled by
userspace for sinks that support VRR. From MTL+ gradually move away from
the older timing generator and use VRR timing generator for both variable
and fixed timings.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 4151fcd0f978..d0b18102ef2c 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -346,7 +346,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 
 	vmin = intel_vrr_compute_vmin(crtc_state);
 
-	if (vmin >= vmax)
+	if (vmin >= vmax && !intel_vrr_always_use_vrr_tg(display))
 		return;
 
 	crtc_state->vrr.vmin = vmin;
@@ -361,7 +361,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	 */
 	crtc_state->vrr.vmin -= intel_vrr_flipline_offset(display);
 
-	if (crtc_state->uapi.vrr_enabled)
+	if (crtc_state->uapi.vrr_enabled && vmin < vmax)
 		intel_vrr_compute_vrr_timings(crtc_state);
 	else if (is_cmrr_frac_required(crtc_state) && is_edp)
 		intel_vrr_compute_cmrr_timings(crtc_state);
@@ -545,7 +545,9 @@ bool intel_vrr_always_use_vrr_tg(struct intel_display *display)
 	if (!HAS_VRR(display))
 		return false;
 
-	/* #TODO return true for platforms supporting fixed_rr */
+	if (DISPLAY_VER(display) >= 14)
+		return true;
+
 	return false;
 }
 
-- 
2.45.2

