Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6A91A1B897
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 16:12:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3ADE110E9B2;
	Fri, 24 Jan 2025 15:12:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O3HQeifx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C696A10E9C0;
 Fri, 24 Jan 2025 15:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737731554; x=1769267554;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RfJPEgE1gZdnnrX3alaUFSXPA/UJZo97l3i7G6a2HN0=;
 b=O3HQeifxwzhaNZ9ONfHa2k2ooQvfUxkqW3Wx4at9z2heFfXLm6lBx5yB
 orzFPR6WNgduzzWEeZP+ciqDPU272qqW1PpAmxZ2U1JA53pxVfSQZb7IH
 UbvnvAsSOj8RxNZFq+aUrp/7MK2UgtHppLDoNnS8ibIeKjdjM7yQJOEsg
 A0dHS2zfLRx8krpRPyoc5k5MGSL/ARAZYSNfTe6GBuGbpNxyH4H0QZLoP
 KI/R/zWone08lKd7KhyNw1oCy1EqGQKq4fa7kjRsGBPKRe0cEisyTcSZQ
 WrLsOAowQXKItkaQb448VKmHx9KY9aCevWMJVd6e0IwthV5GaL9ft6izK Q==;
X-CSE-ConnectionGUID: pmu6MQxdQ/m5bO684wNi/Q==
X-CSE-MsgGUID: tKoK0gYzS6ehh+R0fEhcKA==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="38177454"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="38177454"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:12:34 -0800
X-CSE-ConnectionGUID: wmZOmdI8RhS4rxr/zIUYYQ==
X-CSE-MsgGUID: iHIQrxslRrW1uP8cc+vzpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108221560"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:12:32 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 25/35] drm/i915/vrr: Prepare for fixed refresh rate timings
Date: Fri, 24 Jan 2025 20:30:10 +0530
Message-ID: <20250124150020.2271747-26-ankit.k.nautiyal@intel.com>
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

Currently we always compute the timings as if vrr is enabled.
With this approach the state checker becomes complicated when we
introduce fixed refresh rate mode with vrr timing generator.

To avoid the complications, instead of always computing vrr timings, we
compute vrr timings based on uapi.vrr_enable knob.
So when the knob is disabled we always compute vmin=flipline=vmax.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 5a1b0d61c483..7e9b60ce3fc4 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -223,6 +223,18 @@ cmrr_get_vtotal(struct intel_crtc_state *crtc_state, bool video_mode_required)
 	return vtotal;
 }
 
+static
+void intel_vrr_prepare_fixed_timings(struct intel_crtc_state *crtc_state, int vmin)
+{
+	/*
+	 * For fixed refresh rate mode Vmin, Vmax and Flipline all are set to
+	 * Vtotal value, which is already computed in vmin.
+	 */
+	crtc_state->vrr.vmin = vmin;
+	crtc_state->vrr.vmax = crtc_state->vrr.vmin;
+	crtc_state->vrr.flipline = crtc_state->vrr.vmax;
+}
+
 static
 void intel_vrr_prepare_vrr_timings(struct intel_crtc_state *crtc_state, int vmin, int vmax)
 {
@@ -350,7 +362,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	else if (is_cmrr_frac_required(crtc_state) && is_edp)
 		intel_vrr_compute_cmrr_timings(crtc_state);
 	else
-		intel_vrr_prepare_vrr_timings(crtc_state, vmin, vmax);
+		intel_vrr_prepare_fixed_timings(crtc_state, vmin);
 
 	if (HAS_AS_SDP(display)) {
 		crtc_state->vrr.vsync_start =
-- 
2.45.2

