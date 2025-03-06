Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73E84A5511C
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Mar 2025 17:34:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79B1C10E9FE;
	Thu,  6 Mar 2025 16:34:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b8c7M0rX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BEAB10E9FE
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Mar 2025 16:34:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741278877; x=1772814877;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aSo+Y9elL95DCMCzhOg0MM0d2Kp/f9OQnHGsG3QDfBI=;
 b=b8c7M0rXr7ouVxUK+yjXXdMIX0VmHIIPqv/D8Xbbem0jCF4AmJIQqJYX
 F3BFig5Wm71C0hPjqsXPxZu4g/Ol03475EoBQsTiPPpHaDfalBGapnddQ
 8/0dAkKF4Dxfxjk8yHJVN0kwglLXFlOamQCw65vsNcZ9XyBgtg7Sl5lzW
 YEmTZKbicBrZIU0WJ42c2DMtgGjJn9XIK/dczZEelaOVlAjyaSG4H88Bf
 vu1mfRvbb61M1YuQDZjLrVZP440Yi39UwwRI1q9NTSHKlT0dw42NW1LsD
 QRrgaiFQ6PMoOMBRlZ7gdpHJjEkOCecrpeX8J8CxXbyv3Bwvn+sFC9FyY w==;
X-CSE-ConnectionGUID: A/cqIB4kQ9efcg7qjIJUgw==
X-CSE-MsgGUID: P65LNhGQSlukh3l+mCHtiA==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="53704311"
X-IronPort-AV: E=Sophos;i="6.14,226,1736841600"; d="scan'208";a="53704311"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 08:34:36 -0800
X-CSE-ConnectionGUID: BVbI1EQdSp+if7fjX4ki9A==
X-CSE-MsgGUID: +TKnPKpGRGKXlfkyqw6Hkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="124288871"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 06 Mar 2025 08:34:33 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 06 Mar 2025 18:34:32 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: [PATCH v2 04/18] drm/i915: Extract intel_cdclk_crtc_disable_noatomic()
Date: Thu,  6 Mar 2025 18:34:06 +0200
Message-ID: <20250306163420.3961-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250306163420.3961-1-ville.syrjala@linux.intel.com>
References: <20250306163420.3961-1-ville.syrjala@linux.intel.com>
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

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
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

