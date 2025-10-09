Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A48C7BC7B9E
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Oct 2025 09:31:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30AB710E951;
	Thu,  9 Oct 2025 07:31:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kkmAgNmq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEA4510E93D;
 Thu,  9 Oct 2025 07:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759995061; x=1791531061;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YRVsAVSjqj/oDPZBI+Y91cXtWb8ezZe8A/ToVBPQlZE=;
 b=kkmAgNmqAeTwcCrTrHBXRl9eIRXEmSiZDG1JEcRivO9F4CCPeFG9+UPX
 Jkn1g5Js1wfkaYIrx1hy0d4u4BVAvpL5ZAC+4H7C5pCofhrFvADePoa5T
 RPhxwxqYg89Y38Zd/l0+BwXnnKw4BvRzf7iFlrEqnYKcOWbM/QJ6SB0rY
 AyjbH/gBd+GQ4NSM/AYg8IFbcxo9L1SGFrJfww9gCnwOSkPZy9Dsx7en0
 lQP7rYN+O68RG6mXdbdIwlAp0eyb0lgaWECBdakYZ3ElOZaXEmpuxqp/T
 FdAKA/XQtD9dwGY/j1UDUZ9zI6PIvWhFNwWfkK7J76sgQnf4Q0ZxfyWlw A==;
X-CSE-ConnectionGUID: 92mqw7NVT7efRVB1lZOXNw==
X-CSE-MsgGUID: hhQBpmYXSzyKzgaJ4Ro9+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11576"; a="66050838"
X-IronPort-AV: E=Sophos;i="6.19,215,1754982000"; d="scan'208";a="66050838"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 00:31:00 -0700
X-CSE-ConnectionGUID: OL8po/UySJ2dOYHte7UKUQ==
X-CSE-MsgGUID: Bw5A/AQRR8CQ3noQYjRu/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,215,1754982000"; d="scan'208";a="181073555"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 00:30:59 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 7/8] drm/i915/display: Add vblank_start adjustment logic for
 always-on VRR TG
Date: Thu,  9 Oct 2025 12:47:35 +0530
Message-ID: <20251009071736.800248-8-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251009071736.800248-1-ankit.k.nautiyal@intel.com>
References: <20251009071736.800248-1-ankit.k.nautiyal@intel.com>
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

As we move towards using a shorter, optimized guardband, we need to adjust
how the delayed vblank start is computed.

Adjust the crtc_vblank_start using Vmin Vtotal - guardband only when
intel_vrr_always_use_vrr_tg() is true.

This also paves way for guardband optimization, by handling the movement of
the crtc_vblank_start for platforms that have VRR TG always active.

v2: Drop the helper and add the adjustment directly to
intel_vrr_compute_guardband(). Ville

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 221b25832e56..5f9b8e5c48be 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -436,7 +436,7 @@ intel_vrr_max_guardband(struct intel_crtc_state *crtc_state)
 void intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
-	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 
 	if (!intel_vrr_possible(crtc_state))
 		return;
@@ -444,6 +444,10 @@ void intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state)
 	crtc_state->vrr.guardband = min(crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay,
 					intel_vrr_max_guardband(crtc_state));
 
+	if (intel_vrr_always_use_vrr_tg(display))
+		adjusted_mode->crtc_vblank_start  =
+			crtc_state->vrr.vmin - crtc_state->vrr.guardband;
+
 	if (DISPLAY_VER(display) < 13)
 		crtc_state->vrr.pipeline_full =
 			intel_vrr_guardband_to_pipeline_full(crtc_state,
-- 
2.45.2

