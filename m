Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A675A3AAAB
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2025 22:19:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9142510E451;
	Tue, 18 Feb 2025 21:19:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="itdFAL6y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BDE610E775
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2025 21:19:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739913582; x=1771449582;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=9E+zAFHyc7BOn0OxOe2Ebpp1uOaaQWgUJFwU3kXgZ0M=;
 b=itdFAL6yETiCnZ3UXLK+4/Rg0YO8tw/eESFtDs4F7vvcY3fDJaeaPsZQ
 Kj5Epu7d5kN5yLwTastzfp5a4myIGPU1Sjm+YqT/OTVhc0+/qGOKXBw34
 WK/XPZXY0AYZ6jHol8csvQccHUEh+n0DqwUq4PaS9Qq18Kq7u5K4cdCvx
 R2AN813dW1J8uNQQ4jdov3zq1mBRXKN1NxKvIe41/ChKgLR2NB4uDHwHK
 ZjDmyuzyKYAXbI70M8t6LZJEbvHf6XWV69ZHlm6Z69pa4mfT1+ugPccv8
 7orc9M9BCdkfFEWcNef/nzWzkn7pc9b8GWu8/8r/VGSOthGAwf0Z+tffE g==;
X-CSE-ConnectionGUID: 3HyJSKHATm2EMCHLRhq2ZA==
X-CSE-MsgGUID: DVaT1AstQWyuHY/oEOL3Dg==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="39862278"
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="39862278"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 13:19:38 -0800
X-CSE-ConnectionGUID: yJKpgWXnR1qpk4dusvKtEg==
X-CSE-MsgGUID: grFdKHu0R1esXEKqtwJpbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="114693408"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 18 Feb 2025 13:19:35 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Feb 2025 23:19:34 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 05/19] drm/i915: Extract intel_cdclk_crtc_disable_noatomic()
Date: Tue, 18 Feb 2025 23:18:59 +0200
Message-ID: <20250218211913.27867-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
References: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Hoist the cdclk stuff into a separate function from
intel_crtc_disable_noatomic_complete() so that the details
are better hidden inside intel_cdclk.c.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c         | 12 ++++++++++++
 drivers/gpu/drm/i915/display/intel_cdclk.h         |  2 ++
 drivers/gpu/drm/i915/display/intel_modeset_setup.c |  6 +-----
 3 files changed, 15 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index c6cfc57a0346..4b7058e65588 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3340,6 +3340,18 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 	return 0;
 }
 
+void intel_cdclk_crtc_disable_noatomic(struct intel_crtc *crtc)
+{
+	struct intel_display *display = to_intel_display(crtc);
+	struct intel_cdclk_state *cdclk_state =
+		to_intel_cdclk_state(display->cdclk.obj.state);
+	enum pipe pipe = crtc->pipe;
+
+	cdclk_state->min_cdclk[pipe] = 0;
+	cdclk_state->min_voltage_level[pipe] = 0;
+	cdclk_state->active_pipes &= ~BIT(pipe);
+}
+
 static int intel_compute_max_dotclk(struct intel_display *display)
 {
 	int ppc = intel_cdclk_ppc(display, HAS_DOUBLE_WIDE(display));
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index 6b0e7a41eba3..689e12e2196b 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -12,6 +12,7 @@
 #include "intel_global_state.h"
 
 struct intel_atomic_state;
+struct intel_crtc;
 struct intel_crtc_state;
 struct intel_display;
 
@@ -83,6 +84,7 @@ int intel_cdclk_atomic_check(struct intel_atomic_state *state,
 int intel_cdclk_state_set_joined_mbus(struct intel_atomic_state *state, bool joined_mbus);
 struct intel_cdclk_state *
 intel_atomic_get_cdclk_state(struct intel_atomic_state *state);
+void intel_cdclk_crtc_disable_noatomic(struct intel_crtc *crtc);
 
 #define to_intel_cdclk_state(global_state) \
 	container_of_const((global_state), struct intel_cdclk_state, base)
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index a5a00b3ce98f..826998909045 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -158,8 +158,6 @@ static void intel_crtc_disable_noatomic_complete(struct intel_crtc *crtc)
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_bw_state *bw_state =
 		to_intel_bw_state(i915->display.bw.obj.state);
-	struct intel_cdclk_state *cdclk_state =
-		to_intel_cdclk_state(i915->display.cdclk.obj.state);
 	struct intel_dbuf_state *dbuf_state =
 		to_intel_dbuf_state(i915->display.dbuf.obj.state);
 	struct intel_pmdemand_state *pmdemand_state =
@@ -179,9 +177,7 @@ static void intel_crtc_disable_noatomic_complete(struct intel_crtc *crtc)
 
 	intel_display_power_put_all_in_set(display, &crtc->enabled_power_domains);
 
-	cdclk_state->min_cdclk[pipe] = 0;
-	cdclk_state->min_voltage_level[pipe] = 0;
-	cdclk_state->active_pipes &= ~BIT(pipe);
+	intel_cdclk_crtc_disable_noatomic(crtc);
 
 	dbuf_state->active_pipes &= ~BIT(pipe);
 
-- 
2.45.3

