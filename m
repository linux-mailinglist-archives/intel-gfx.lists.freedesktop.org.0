Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 419C5A1B887
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 16:12:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 001B810E9AF;
	Fri, 24 Jan 2025 15:12:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="USaM2kLg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CB2210E9AB;
 Fri, 24 Jan 2025 15:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737731520; x=1769267520;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kyBXfQuzCzgCk2QXBNmBwzI2c8x5w8fwBzmd6olE1dU=;
 b=USaM2kLgCVozgvn/AmrlMTB3yRacZsJn9+6QUeBkZxYR3TQA7ubJhLIb
 yrH7sRG6rCJskoXJJASuRWM+XT9AEDG4RV+jtcUD5ZaMcsfORXV75mM1W
 +08vLqiwyVWH5QMzE5RvIYI8zwAvCRQbUAThOaDFI2g/ccQADT7ieevV7
 hGsW6B7z3N4ZS8z0wr/GtfEasPRB1pBbTMy8R/DRyjwaUOSeiYC/F6Cme
 uUSLe1XM/nUP7VA88TdwbKH+EU3EHsucNT8IKDwTbHN734+zKZvU2liYu
 gCmCtJ/jJYZCK0TUSEitCIA8nd/6vhcG4usk4QTg3o+2vZrF/2QjZEl4z g==;
X-CSE-ConnectionGUID: PDbJBHugTVu08edIooTTyQ==
X-CSE-MsgGUID: CHPeGw19Q4OeoU9WnbFXXw==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="38177399"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="38177399"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:12:00 -0800
X-CSE-ConnectionGUID: 1Th2t6jATn2iFYBKmcLQSA==
X-CSE-MsgGUID: YpsSd/FhQbKKeYzDfMXTOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108221244"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:11:58 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 11/35] drm/i915/vrr: Avoid prepare vrr timings for cmrr
Date: Fri, 24 Jan 2025 20:29:56 +0530
Message-ID: <20250124150020.2271747-12-ankit.k.nautiyal@intel.com>
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

CMRR has a separate logic for computing vrr timings and so it
overwrites the timings prepared for vrr.

Avoid prepare vrr timings for cmrr. This will help to separate the
helpers for timings for vrr, cmrr and the forthcoming
fixed_rr.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 7e69e30b2076..90fd6fe58fce 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -257,8 +257,9 @@ void intel_vrr_compute_cmrr_timings(struct intel_crtc_state *crtc_state)
 }
 
 static
-void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state)
+void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state, int vmin, int vmax)
 {
+	intel_vrr_prepare_vrr_timings(crtc_state, vmin, vmax);
 	crtc_state->vrr.enable = true;
 	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 }
@@ -328,12 +329,12 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	if (vmin >= vmax)
 		return;
 
-	intel_vrr_prepare_vrr_timings(crtc_state, vmin, vmax);
-
 	if (crtc_state->uapi.vrr_enabled)
-		intel_vrr_compute_vrr_timings(crtc_state);
+		intel_vrr_compute_vrr_timings(crtc_state, vmin, vmax);
 	else if (is_cmrr_frac_required(crtc_state) && is_edp)
 		intel_vrr_compute_cmrr_timings(crtc_state);
+	else
+		intel_vrr_prepare_vrr_timings(crtc_state, vmin, vmax);
 
 	if (HAS_AS_SDP(display)) {
 		crtc_state->vrr.vsync_start =
-- 
2.45.2

