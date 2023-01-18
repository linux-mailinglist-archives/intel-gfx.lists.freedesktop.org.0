Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DE62672350
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 17:31:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A56B10E7A0;
	Wed, 18 Jan 2023 16:31:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0794910E79F
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 16:31:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674059476; x=1705595476;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=/Jo3DXrPJXMXWzEW31d8SFmiA+iWnMzoE72SZtPBcEc=;
 b=ilUwVmRQxXVDcmXUXoj+0Dns6eUOEzdm3rfoFLR5wVOo+cpoPFuHoBXG
 jWP1fIUjgq9Fesx5XlJXSOKb3khUafNYyoAvErunzrpadnHM5s0j9CkxD
 o8SFQCZp2CDIP4/6PeeeDsaFSVVcN2US7V/5pxJGdj3xg4QVopvZzNduW
 1GjzLojHq1GapjrDsAl3FL2EWqCdC58rrBvFUIVlWKUOqygbFHjbTZgGG
 VDMG0r98BP/k4kWmuaz9JiaztKCUIDElUoCKMOZ2RprzBDjTuEYofIkQy
 9zopNgtHM8T7E4GCkEVpOSLKLbeGYC22BKFrWwPtXeSnviaST+BLsL+zn g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="326289929"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="326289929"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 08:31:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="692060491"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="692060491"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga001.jf.intel.com with SMTP; 18 Jan 2023 08:31:11 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Jan 2023 18:31:10 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Jan 2023 18:30:37 +0200
Message-Id: <20230118163040.29808-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.38.2
In-Reply-To: <20230118163040.29808-1-ville.syrjala@linux.intel.com>
References: <20230118163040.29808-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/13] drm/i915/dsb: Load LUTs using the DSB
 during vblank
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

Loading LUTs with the DSB outside of vblank doesn't really
work due to the palette anti-collision logic. Apparently the
DSB register writes don't get stalled like CPU mmio writes
do and instead we end up corrupting the LUT entries. Disabling
the anti-collision logic would allow us to successfully load
the LUT outside of vblank, but presumably that risks the LUT
reads from the scanout (temportarily) getting corrupted data
from the LUT instead.

The anti-collision logic isn't active during vblank so that
is when we can successfully load the LUT with the DSB. That is
what we want to do anyway to avoid tearing.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c   | 30 ++++++++++++++++----
 drivers/gpu/drm/i915/display/intel_color.h   |  2 ++
 drivers/gpu/drm/i915/display/intel_crtc.c    |  4 ++-
 drivers/gpu/drm/i915/display/intel_display.c |  3 ++
 4 files changed, 32 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index cab8dfd03853..4c3344ee473e 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1255,12 +1255,6 @@ static void icl_load_luts(const struct intel_crtc_state *crtc_state)
 		MISSING_CASE(crtc_state->gamma_mode);
 		break;
 	}
-
-	if (crtc_state->dsb) {
-		intel_dsb_finish(crtc_state->dsb);
-		intel_dsb_commit(crtc_state->dsb, false);
-		intel_dsb_wait(crtc_state->dsb);
-	}
 }
 
 static u32 chv_cgm_degamma_ldw(const struct drm_color_lut *color)
@@ -1358,6 +1352,9 @@ void intel_color_load_luts(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
+	if (crtc_state->dsb)
+		return;
+
 	i915->display.funcs.color->load_luts(crtc_state);
 }
 
@@ -1374,11 +1371,15 @@ void intel_color_commit_arm(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
 	i915->display.funcs.color->color_commit_arm(crtc_state);
+
+	if (crtc_state->dsb)
+		intel_dsb_commit(crtc_state->dsb, true);
 }
 
 void intel_color_prepare_commit(struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 
 	/* FIXME DSB has issues loading LUTs, disable it for now */
 	return;
@@ -1391,6 +1392,12 @@ void intel_color_prepare_commit(struct intel_crtc_state *crtc_state)
 		return;
 
 	crtc_state->dsb = intel_dsb_prepare(crtc, 1024);
+	if (!crtc_state->dsb)
+		return;
+
+	i915->display.funcs.color->load_luts(crtc_state);
+
+	intel_dsb_finish(crtc_state->dsb);
 }
 
 void intel_color_cleanup_commit(struct intel_crtc_state *crtc_state)
@@ -1402,6 +1409,17 @@ void intel_color_cleanup_commit(struct intel_crtc_state *crtc_state)
 	crtc_state->dsb = NULL;
 }
 
+void intel_color_wait_commit(const struct intel_crtc_state *crtc_state)
+{
+	if (crtc_state->dsb)
+		intel_dsb_wait(crtc_state->dsb);
+}
+
+bool intel_color_uses_dsb(const struct intel_crtc_state *crtc_state)
+{
+	return crtc_state->dsb;
+}
+
 static bool intel_can_preload_luts(const struct intel_crtc_state *new_crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_color.h b/drivers/gpu/drm/i915/display/intel_color.h
index d620b5b1e2a6..a478606a38d4 100644
--- a/drivers/gpu/drm/i915/display/intel_color.h
+++ b/drivers/gpu/drm/i915/display/intel_color.h
@@ -19,6 +19,8 @@ void intel_color_crtc_init(struct intel_crtc *crtc);
 int intel_color_check(struct intel_crtc_state *crtc_state);
 void intel_color_prepare_commit(struct intel_crtc_state *crtc_state);
 void intel_color_cleanup_commit(struct intel_crtc_state *crtc_state);
+bool intel_color_uses_dsb(const struct intel_crtc_state *crtc_state);
+void intel_color_wait_commit(const struct intel_crtc_state *crtc_state);
 void intel_color_commit_noarm(const struct intel_crtc_state *crtc_state);
 void intel_color_commit_arm(const struct intel_crtc_state *crtc_state);
 void intel_color_load_luts(const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 82be0fbe9934..764942c843fd 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -24,6 +24,7 @@
 #include "intel_display_trace.h"
 #include "intel_display_types.h"
 #include "intel_drrs.h"
+#include "intel_dsb.h"
 #include "intel_dsi.h"
 #include "intel_pipe_crc.h"
 #include "intel_psr.h"
@@ -387,7 +388,8 @@ static bool intel_crtc_needs_vblank_work(const struct intel_crtc_state *crtc_sta
 	return crtc_state->hw.active &&
 		!intel_crtc_needs_modeset(crtc_state) &&
 		!crtc_state->preload_luts &&
-		intel_crtc_needs_color_update(crtc_state);
+		intel_crtc_needs_color_update(crtc_state) &&
+		!intel_color_uses_dsb(crtc_state);
 }
 
 static void intel_crtc_vblank_work(struct kthread_work *base)
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c38a54efedbe..a5f1a4698a78 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -80,6 +80,7 @@
 #include "intel_dpll_mgr.h"
 #include "intel_dpt.h"
 #include "intel_drrs.h"
+#include "intel_dsb.h"
 #include "intel_dsi.h"
 #include "intel_dvo.h"
 #include "intel_fb.h"
@@ -7482,6 +7483,8 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
 		if (new_crtc_state->do_async_flip)
 			intel_crtc_disable_flip_done(state, crtc);
+
+		intel_color_wait_commit(new_crtc_state);
 	}
 
 	/*
-- 
2.38.2

