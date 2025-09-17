Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B97FB81C89
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Sep 2025 22:35:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD67610E592;
	Wed, 17 Sep 2025 20:35:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KmFDJPxW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF08510E591;
 Wed, 17 Sep 2025 20:35:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758141308; x=1789677308;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4wjUgmRMtE+0/DGF03JjPSDeoBPBB06sSy7XrD1NIkM=;
 b=KmFDJPxWcAyX+ur6HNMJN9Geyd0rTJdqU4ldVW+u5Z8sxlVWQ6zcY5I2
 DkDUuKNQpsDiLMXea1P3BZDPu7HM4op5zYYZ9OtUCPrbRnDjXN4ew+JLs
 aH4CMija5TIojukGqGgT1zLr1LdAXzYSjYXdSJDQKgLGbUtfj4GfN0UOT
 xJmnYl1PB0d/FQEqYVzNmXvce9m3sEb68J7Jehl7/PTjE7vpGCxB6ZX5e
 oWDhT40xg88uaU8BW9cJdTK9wzxU2utgSEirWnBPLIDz5TX/R1wIaroyT
 ylWgHqb8asLJLDIXSA7hzF473OsnxmZVyPITNZ4GaRZCWYicYc21O+muw A==;
X-CSE-ConnectionGUID: lPct8sngTFiiTAfbv7ntzA==
X-CSE-MsgGUID: HI+Bek5eTw6vnSJjT86gcQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11556"; a="60570014"
X-IronPort-AV: E=Sophos;i="6.18,273,1751266800"; d="scan'208";a="60570014"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2025 13:35:07 -0700
X-CSE-ConnectionGUID: UW5Gs4sYTM2iVqq6KSzS1Q==
X-CSE-MsgGUID: r3dxJ1PlTJ+Rrcf3G8cFmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,273,1751266800"; d="scan'208";a="174465058"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.83])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2025 13:35:06 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 4/5] drm/i915/vrr: Annotate some functions with "hw"
Date: Wed, 17 Sep 2025 23:34:45 +0300
Message-ID: <20250917203446.14374-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250917203446.14374-1-ville.syrjala@linux.intel.com>
References: <20250917203446.14374-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

intel_vrr_fixed_rr_*() return values that have had the TGL
SCL adjustment applied to them. So we should indicate that these
values are only really useful when fed to the hardware. Add
a "_hw_" indicator to the function names to reflect that fact.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 9cdcc2558ead..71fb64c92165 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -263,7 +263,7 @@ void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state)
  * Vtotal value.
  */
 static
-int intel_vrr_fixed_rr_vtotal(const struct intel_crtc_state *crtc_state)
+int intel_vrr_fixed_rr_hw_vtotal(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	int crtc_vtotal = crtc_state->hw.adjusted_mode.crtc_vtotal;
@@ -276,24 +276,24 @@ int intel_vrr_fixed_rr_vtotal(const struct intel_crtc_state *crtc_state)
 }
 
 static
-int intel_vrr_fixed_rr_vmax(const struct intel_crtc_state *crtc_state)
+int intel_vrr_fixed_rr_hw_vmax(const struct intel_crtc_state *crtc_state)
 {
-	return intel_vrr_fixed_rr_vtotal(crtc_state);
+	return intel_vrr_fixed_rr_hw_vtotal(crtc_state);
 }
 
 static
-int intel_vrr_fixed_rr_vmin(const struct intel_crtc_state *crtc_state)
+int intel_vrr_fixed_rr_hw_vmin(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 
-	return intel_vrr_fixed_rr_vtotal(crtc_state) -
+	return intel_vrr_fixed_rr_hw_vtotal(crtc_state) -
 		intel_vrr_flipline_offset(display);
 }
 
 static
-int intel_vrr_fixed_rr_flipline(const struct intel_crtc_state *crtc_state)
+int intel_vrr_fixed_rr_hw_flipline(const struct intel_crtc_state *crtc_state)
 {
-	return intel_vrr_fixed_rr_vtotal(crtc_state);
+	return intel_vrr_fixed_rr_hw_vtotal(crtc_state);
 }
 
 void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state)
@@ -305,11 +305,11 @@ void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state)
 		return;
 
 	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
-		       intel_vrr_fixed_rr_vmin(crtc_state) - 1);
+		       intel_vrr_fixed_rr_hw_vmin(crtc_state) - 1);
 	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
-		       intel_vrr_fixed_rr_vmax(crtc_state) - 1);
+		       intel_vrr_fixed_rr_hw_vmax(crtc_state) - 1);
 	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
-		       intel_vrr_fixed_rr_flipline(crtc_state) - 1);
+		       intel_vrr_fixed_rr_hw_flipline(crtc_state) - 1);
 }
 
 static
-- 
2.49.1

