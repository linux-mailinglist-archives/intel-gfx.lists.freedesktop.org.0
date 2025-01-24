Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83098A1B893
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 16:12:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9245D10E9B6;
	Fri, 24 Jan 2025 15:12:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S+x4rAIg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B757510E9BC;
 Fri, 24 Jan 2025 15:12:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737731547; x=1769267547;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+32ndMfgDLVx3xjDUAb0Smf2Vpuz8UFlvcGOSfxqNyU=;
 b=S+x4rAIgJ+x4mM9a7A4MhD//TIRW/RxfgxwOysQWafeaakxwBPo5kmfB
 s19VoZLkXxGFnzG1oC4PYrM1iNqQmzKFubEQfmqSCwlZOWRkUo27gxFDC
 rR4zz+oCf0/9uPBr84FRqqEW5SDa009I6hCYwJ/MC7GRdCCR9tQkQ9xD3
 W/wmyagBSzUzN41VBIYeDqriY1SXzUwOFRQenu77ohyfHZfRsGtPDPOcr
 szn0FzII8QXFM0SrsXHfqoAYsX2Yws8hXTuXGBvep23wR+wdrnlkmEGdB
 eJaaSDu5X8Ca4P3Lep8+M3IVfrzvDZqDpHxEDPsCVNZpZ2loWejD6aeDv g==;
X-CSE-ConnectionGUID: hcCJ7dG/Q3KmaSFSAvxOsQ==
X-CSE-MsgGUID: 577j71wdSIO5wi8YNxPO/A==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="38177436"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="38177436"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:12:27 -0800
X-CSE-ConnectionGUID: JJSNnISfRHKDW5HVBkWVgg==
X-CSE-MsgGUID: i6JgeKl3TMej2/2YhERP+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108221432"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:12:25 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 22/35] drm/i915/vrr: Disable CMRR
Date: Fri, 24 Jan 2025 20:30:07 +0530
Message-ID: <20250124150020.2271747-23-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
References: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
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

Switching between variable and fixed timings is possible as for that we
just need to flip between VRR timings. However for CMRR along with the
timings, few other bits also need to be changed on the fly, which might
cause issues. So disable CMRR for now, till we have variable and fixed
timings sorted out.

Since CMRR is disabled, the check for intel_vrr_is_enabled can be
simplified to have just the INTEL_VRRTG_MODE_VRR.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 34e44cd52353..42e661acdf32 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -182,7 +182,8 @@ is_cmrr_frac_required(struct intel_crtc_state *crtc_state)
 	int calculated_refresh_k, actual_refresh_k, pixel_clock_per_line;
 	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 
-	if (!HAS_CMRR(display))
+	/* Avoid CMRR for now till we have VRR with fixed timings working */
+	if (!HAS_CMRR(display) || true)
 		return false;
 
 	actual_refresh_k =
@@ -294,7 +295,7 @@ int intel_vrr_compute_vmax(struct intel_connector *connector,
 
 bool intel_vrrtg_is_enabled(const struct intel_crtc_state *crtc_state)
 {
-	return crtc_state->vrr.mode != INTEL_VRRTG_MODE_NONE;
+	return crtc_state->vrr.mode == INTEL_VRRTG_MODE_VRR;
 }
 
 void
-- 
2.45.2

