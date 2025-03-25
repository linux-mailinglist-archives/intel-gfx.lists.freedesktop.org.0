Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81E47A6F438
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Mar 2025 12:34:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDE2E10E55E;
	Tue, 25 Mar 2025 11:34:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I4n4WnRh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 660C010E55B;
 Tue, 25 Mar 2025 11:34:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742902495; x=1774438495;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=owCoZKr/IzZGH2U2LhkX4VSXET85s8rmkSA4rymgUls=;
 b=I4n4WnRh3jOnzp6pCAShp2MAynUQO45ZK43Xu7jlE5AseJIBbWZlBCav
 jldxY20PR+9AMqW+DCGQ+zFcZijcnYhQYm/zpsiYjlEm6BL6pypD64bEl
 Ld6ZYtVB4OMmE4LI+TeenpXwUxvlgiq9gXtyihASA1j7m0ZyzpOD4YfDk
 o2O8ssXSXuPpDYkZCmsMrD/y2lde7WoTOPfxAf3ylza69Cq9nzccp0TG1
 nEz/VjeE+B+LtyqtNkZGhrTiwwI1bqkf6Cnrd7XyJIkGMI/mK3g0tWKAT
 H5i73495ksK9u1gEUbEGignjK4C7PlmA520sOseRSviJ4xi50FmMU2nfE A==;
X-CSE-ConnectionGUID: r8Vs+TYBS4yu7wnUYcdYBw==
X-CSE-MsgGUID: gCWHrheETeSA1WjUVlgIjA==
X-IronPort-AV: E=McAfee;i="6700,10204,11383"; a="44266923"
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="44266923"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 04:34:55 -0700
X-CSE-ConnectionGUID: nx0WyszZS4OH/6DR8fAFqg==
X-CSE-MsgGUID: +UsM2gJTSRe4WIAiAH6dOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="124070587"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 04:34:53 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 09/16] drm/i915/vrr: Use fixed timings for platforms that
 support VRR
Date: Tue, 25 Mar 2025 16:52:42 +0530
Message-ID: <20250325112249.228444-10-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250325112249.228444-1-ankit.k.nautiyal@intel.com>
References: <20250325112249.228444-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

For fixed refresh rate use fixed timings for all platforms that support
VRR. For this add checks to avoid computing and reading VRR for
platforms that do not support VRR.

v2: Avoid touching check for VRR_CTL_FLIP_LINE_EN. (Ville)
v3: Avoid redundant statements in vrr_{compute/get}_config. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 96b6b730bea4..f225fd7f34ff 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -353,6 +353,9 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	int vmin, vmax;
 
+	if (!HAS_VRR(display))
+		return;
+
 	/*
 	 * FIXME all joined pipes share the same transcoder.
 	 * Need to account for that during VRR toggle/push/etc.
@@ -376,15 +379,12 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 		vmax = vmin;
 	}
 
-	if (vmin >= vmax)
-		return;
-
 	crtc_state->vrr.vmin = vmin;
 	crtc_state->vrr.vmax = vmax;
 
 	crtc_state->vrr.flipline = crtc_state->vrr.vmin;
 
-	if (crtc_state->uapi.vrr_enabled)
+	if (crtc_state->uapi.vrr_enabled && vmin < vmax)
 		intel_vrr_compute_vrr_timings(crtc_state);
 	else if (is_cmrr_frac_required(crtc_state) && is_edp)
 		intel_vrr_compute_cmrr_timings(crtc_state);
-- 
2.45.2

