Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A718FBF3048
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Oct 2025 20:51:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17A6D10E4B1;
	Mon, 20 Oct 2025 18:51:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J5TwlIGS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C31E10E4B1;
 Mon, 20 Oct 2025 18:51:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760986279; x=1792522279;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FNYZQnLyDyLRXaSU5TVTo2Zfty4OGkWCROaXpZxjT2I=;
 b=J5TwlIGSDWujnjZ5Yi2WX2L9AL3a9deeZOwmNV6/lChNeKLYJyoxpfQY
 bEPAHlwoRJYSjuMWiMr1VBgChk2DWzcNL/FLdtJ0BQ4lldwXovDFKvyje
 82Rn4qOn/mke5PhWXETKjB5qatHVMUgA6IuUFRgM0n7YDeB+e35r4np2a
 Hz93B2MX3VmT7rC3KUi3XcMNcl6MNyAfQsPrbtFQlspvZVX8G2eRy3U59
 v0z7ejk5aMn6yiuS6yQO7yBfnW3t6PCJqD1C/dB1eobD/wPKQMvq1l3iP
 ltwcwta+mGj2DU/nYhWk3v6H9qoN5xNnNGCAMknLbNx2PMjCjjtMj7x8U Q==;
X-CSE-ConnectionGUID: +T+YggrFSECwyPJaJxZyXg==
X-CSE-MsgGUID: gB/iOnv+T7ShngdJfc9mzg==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63254810"
X-IronPort-AV: E=Sophos;i="6.19,243,1754982000"; d="scan'208";a="63254810"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 11:51:09 -0700
X-CSE-ConnectionGUID: VntqXzS5TSqaHTJR0px+eQ==
X-CSE-MsgGUID: 0+xXU/fkQm2YcGPsswVq8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,243,1754982000"; d="scan'208";a="183344944"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.245.58])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 11:51:07 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 07/22] drm/i915/vrr: Move compute_fixed_rr_timings()
Date: Mon, 20 Oct 2025 21:50:23 +0300
Message-ID: <20251020185038.4272-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
References: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
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

Relocate intel_vrr_compute_fixed_rr_timings() next to its
VRR and CMRR counterparts.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 9179ad53a2e7..99e10943368d 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -246,6 +246,15 @@ void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state,
 	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 }
 
+static
+void intel_vrr_compute_fixed_rr_timings(struct intel_crtc_state *crtc_state)
+{
+	/* For fixed rr,  vmin = vmax = flipline */
+	crtc_state->vrr.vmax = crtc_state->hw.adjusted_mode.crtc_vtotal;
+	crtc_state->vrr.vmin = crtc_state->vrr.vmax;
+	crtc_state->vrr.flipline = crtc_state->vrr.vmin;
+}
+
 static int intel_vrr_hw_value(const struct intel_crtc_state *crtc_state,
 			      int value)
 {
@@ -308,15 +317,6 @@ void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state)
 		       intel_vrr_fixed_rr_hw_flipline(crtc_state) - 1);
 }
 
-static
-void intel_vrr_compute_fixed_rr_timings(struct intel_crtc_state *crtc_state)
-{
-	/* For fixed rr,  vmin = vmax = flipline */
-	crtc_state->vrr.vmax = crtc_state->hw.adjusted_mode.crtc_vtotal;
-	crtc_state->vrr.vmin = crtc_state->vrr.vmax;
-	crtc_state->vrr.flipline = crtc_state->vrr.vmin;
-}
-
 static
 int intel_vrr_compute_vmin(struct intel_crtc_state *crtc_state)
 {
-- 
2.49.1

