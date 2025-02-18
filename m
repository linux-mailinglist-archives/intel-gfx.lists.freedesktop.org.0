Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 734E9A3AAB2
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2025 22:19:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C32810E76F;
	Tue, 18 Feb 2025 21:19:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RwyAXyHe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26ABC10E76B
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2025 21:19:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739913595; x=1771449595;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=JSZS/hfOc96gNmEGmmGhIgOZ1UxtjOrD59URnwl4wGo=;
 b=RwyAXyHecwn7oghOA/mJgPba0sKIuTELp8Wce1jp2ujRCU3oZnNN5x1y
 khNGsgy/PEJFwl5ynR9QIlnCoOIq/Bl/kkEkhMwhYG/3JRp66oNQiTJXY
 KWqWWhI0KzHa+OWx4IFU9l4a/3BVDio4tsLZgd4egtCy3DLWsBtL1eiuJ
 B/uy0kzQ2CxDYW/jhlXhseOLjqJxtnzNBefo65XwqDz/K9OT0IX8y1nZN
 Uq2XRSh9een/kVjUt8K3ELvsY36pxn3zqXSU+i1CU4/bg1QFOGoYGntoN
 nMkowtg9LBlYcM7aXc+0kdLw2+alYtcOZw9BzuX7biozdGxu2t4SM4sL6 w==;
X-CSE-ConnectionGUID: mICbj39vT5WLd/UHaZBF6Q==
X-CSE-MsgGUID: /xiGFGMBQjmSSDYgwS6M+Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="39862301"
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="39862301"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 13:19:49 -0800
X-CSE-ConnectionGUID: QOvF+OdLRr6InKakrFKOqA==
X-CSE-MsgGUID: 8hy1pluZQqWGybWyvEh//g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="114693459"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 18 Feb 2025 13:19:47 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Feb 2025 23:19:46 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 09/19] drm/i915: Extract intel_bw_crtc_disable_noatomic()
Date: Tue, 18 Feb 2025 23:19:03 +0200
Message-ID: <20250218211913.27867-10-ville.syrjala@linux.intel.com>
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

Hoist the bw stuff into a separate function from
intel_crtc_disable_noatomic_complete() so that the details
are better hidden inside intel_bw.c.

We can also skip the whole thing on pre-skl since the dbuf state
isn't actually used on those platforms.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c            | 14 ++++++++++++++
 drivers/gpu/drm/i915/display/intel_bw.h            |  2 ++
 drivers/gpu/drm/i915/display/intel_modeset_setup.c |  6 +-----
 3 files changed, 17 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 23edc81741de..417d2d527ae4 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -1422,6 +1422,20 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
 	return 0;
 }
 
+void intel_bw_crtc_disable_noatomic(struct intel_crtc *crtc)
+{
+	struct intel_display *display = to_intel_display(crtc);
+	struct intel_bw_state *bw_state =
+		to_intel_bw_state(display->bw.obj.state);
+	enum pipe pipe = crtc->pipe;
+
+	if (DISPLAY_VER(display) < 9)
+		return;
+
+	bw_state->data_rate[pipe] = 0;
+	bw_state->num_active_planes[pipe] = 0;
+}
+
 static struct intel_global_state *
 intel_bw_duplicate_state(struct intel_global_obj *obj)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
index 161813cca473..bd94dde207ee 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_bw.h
@@ -14,6 +14,7 @@
 
 struct drm_i915_private;
 struct intel_atomic_state;
+struct intel_crtc;
 struct intel_crtc_state;
 
 struct intel_dbuf_bw {
@@ -81,5 +82,6 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
 			    bool *need_cdclk_calc);
 int intel_bw_min_cdclk(struct drm_i915_private *i915,
 		       const struct intel_bw_state *bw_state);
+void intel_bw_crtc_disable_noatomic(struct intel_crtc *crtc);
 
 #endif /* __INTEL_BW_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 10a2421f7c50..e9b0533526f6 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -156,8 +156,6 @@ static void intel_crtc_disable_noatomic_complete(struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	struct intel_bw_state *bw_state =
-		to_intel_bw_state(i915->display.bw.obj.state);
 	struct intel_pmdemand_state *pmdemand_state =
 		to_intel_pmdemand_state(i915->display.pmdemand.obj.state);
 	struct intel_crtc_state *crtc_state =
@@ -177,9 +175,7 @@ static void intel_crtc_disable_noatomic_complete(struct intel_crtc *crtc)
 
 	intel_cdclk_crtc_disable_noatomic(crtc);
 	skl_wm_crtc_disable_noatomic(crtc);
-
-	bw_state->data_rate[pipe] = 0;
-	bw_state->num_active_planes[pipe] = 0;
+	intel_bw_crtc_disable_noatomic(crtc);
 
 	intel_pmdemand_update_port_clock(display, pmdemand_state, pipe, 0);
 }
-- 
2.45.3

