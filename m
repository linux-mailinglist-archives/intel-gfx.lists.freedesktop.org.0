Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BECDA54C01
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Mar 2025 14:23:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 040D110E993;
	Thu,  6 Mar 2025 13:23:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Axm3rSw4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 199AA10E991;
 Thu,  6 Mar 2025 13:23:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741267418; x=1772803418;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HGMlxBGke+lei48EjdjnLSPUg8B2/uHDIs9GhBcwRRg=;
 b=Axm3rSw49SGYjx9JttzovFaXQ+XwV6XPykERoUNHTA8j63CTHQn5zFL2
 Q7LERUIntKFayxyx774dBGy68o56kh2uy7/nJwIVk8vOOrtGrpyv4Ct4j
 F+FOxOToVzw05INF7CSYK+r5u/SDWjAX9zt2oxfm+b4fRDOAYfaqlxMfh
 zrCB37xpcvUE6INxziePFp48B0BXmu1fSRQK8WWQDuVfMy4NvoSVZz7Qp
 RsQe5HbtkKgB5vSi9MKrClRApEBxsAVsBKNz1/RACzfwzsXvVvx0ikwz0
 U3EBgFIqwPGWo5s1SosXMyNdD2BlzOKhOzXJZThF8iRXb6ciXZqOI2B0j Q==;
X-CSE-ConnectionGUID: 9KzlsVAhRVC6vEX+gLp1TA==
X-CSE-MsgGUID: UmApwVgRQxalncoPy0IbSA==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="41524686"
X-IronPort-AV: E=Sophos;i="6.14,226,1736841600"; d="scan'208";a="41524686"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 05:23:38 -0800
X-CSE-ConnectionGUID: MACxD/HBTw+m6mbENuGNzQ==
X-CSE-MsgGUID: Ib49HGvfQACT37FazRGL0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,226,1736841600"; d="scan'208";a="142243193"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 05:23:36 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 16/21] drm/i915/vrr: Use fixed timings for platforms that
 support VRR
Date: Thu,  6 Mar 2025 18:40:55 +0530
Message-ID: <20250306131100.3989503-17-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250306131100.3989503-1-ankit.k.nautiyal@intel.com>
References: <20250306131100.3989503-1-ankit.k.nautiyal@intel.com>
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

For fixed refresh rate use fixed timings for all platforms that support
VRR. For this add checks to avoid computing and reading VRR for
platforms that do not support VRR.

v2: Avoid touching check for VRR_CTL_FLIP_LINE_EN. (Ville)
v3: Avoid redundant statements in vrr_{compute/get}_config. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index d7580b6e4e37..efa26a39b86a 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -351,6 +351,9 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	int vmin, vmax;
 
+	if (!HAS_VRR(display))
+		return;
+
 	/*
 	 * FIXME all joined pipes share the same transcoder.
 	 * Need to account for that during VRR toggle/push/etc.
@@ -374,15 +377,12 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
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

