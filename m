Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C796668EC0B
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Feb 2023 10:49:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0548110E72E;
	Wed,  8 Feb 2023 09:49:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 767AD10E725
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Feb 2023 09:49:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675849761; x=1707385761;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SF1fMCI1Vd2bGVpzR5O5l/7LJbPenxqJWQvVg7psgas=;
 b=DsiDCM6T0nwUlGb4uh+UrfA4zSDXBAtAv4QqwZqCP8xppI4cvxDm4CwE
 NM8wFw9IL/m2oPWBEtG6Favu9Pe2ztNK5tk/yEHn4KI/UbHbQgba1MmNL
 zZ9REQivnGFaVtJ1vmJdl0zHlFVQMd/ZQNugeNgRs0qhVvdpcJ9QyF08+
 MXHMdXnEDn6knHajEHeO2ceMGkQE6EueGSy44UmDVaLQkaAZ9L0dfZrwq
 CiAoN3dn5sfOonbkth2jejCvLXQhbnCEoTMvVmSDZZbOd7w5ANB6U4smM
 wSYA+jJ9PgWNbmVfMhATpxI3oRBX4gA7haXEsH4/FsYZofoNI4bff7ou2 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="357146030"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="357146030"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 01:49:11 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="775944437"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="775944437"
Received: from joergber-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.82])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 01:49:09 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Feb 2023 11:48:42 +0200
Message-Id: <6fc335ec79f163b7a612af012ce07be6d98f2ef9.1675849634.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1675849634.git.jani.nikula@intel.com>
References: <cover.1675849634.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/10] drm/i915/wm: add .get_hw_state to
 watermark funcs
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Get rid of the if ladder in intel_modeset_setup_hw_state() and hide a
number of functions by adding a .get_hw_state() hook to watermark
functions. At least for now, combine the platform specific sanitization
to the hw state readouts on the relevant platforms instead of adding a
separate hook for that.

There's a functional change on PCH split platforms: If i9xx_wm_init()
fails to read plane latency and chooses the nop functions,
ilk_wm_get_hw_state() won't get called for readout. Add the
ilk_init_lp_watermarks() call on that path which now won't be called in
.get_hw_state(), as it looks like the only thing that could make a
difference.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c        | 24 +++++++++++++++----
 drivers/gpu/drm/i915/display/i9xx_wm.h        |  5 ----
 .../gpu/drm/i915/display/intel_display_core.h |  1 +
 .../drm/i915/display/intel_modeset_setup.c    | 14 ++---------
 drivers/gpu/drm/i915/display/intel_wm.c       |  6 +++++
 drivers/gpu/drm/i915/display/intel_wm.h       |  1 +
 drivers/gpu/drm/i915/display/skl_watermark.c  | 11 +++++++--
 drivers/gpu/drm/i915/display/skl_watermark.h  |  3 ---
 8 files changed, 39 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 93ad40dad730..889c901aa3e7 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -3505,7 +3505,7 @@ static void vlv_read_wm_values(struct drm_i915_private *dev_priv,
 #undef _FW_WM
 #undef _FW_WM_VLV
 
-void g4x_wm_get_hw_state(struct drm_i915_private *dev_priv)
+static void g4x_wm_get_hw_state(struct drm_i915_private *dev_priv)
 {
 	struct g4x_wm_values *wm = &dev_priv->display.wm.g4x;
 	struct intel_crtc *crtc;
@@ -3598,7 +3598,7 @@ void g4x_wm_get_hw_state(struct drm_i915_private *dev_priv)
 		    str_yes_no(wm->fbc_en));
 }
 
-void g4x_wm_sanitize(struct drm_i915_private *dev_priv)
+static void g4x_wm_sanitize(struct drm_i915_private *dev_priv)
 {
 	struct intel_plane *plane;
 	struct intel_crtc *crtc;
@@ -3647,7 +3647,13 @@ void g4x_wm_sanitize(struct drm_i915_private *dev_priv)
 	mutex_unlock(&dev_priv->display.wm.wm_mutex);
 }
 
-void vlv_wm_get_hw_state(struct drm_i915_private *dev_priv)
+static void g4x_wm_get_hw_state_and_sanitize(struct drm_i915_private *i915)
+{
+	g4x_wm_get_hw_state(i915);
+	g4x_wm_sanitize(i915);
+}
+
+static void vlv_wm_get_hw_state(struct drm_i915_private *dev_priv)
 {
 	struct vlv_wm_values *wm = &dev_priv->display.wm.vlv;
 	struct intel_crtc *crtc;
@@ -3747,7 +3753,7 @@ void vlv_wm_get_hw_state(struct drm_i915_private *dev_priv)
 		    wm->sr.plane, wm->sr.cursor, wm->level, wm->cxsr);
 }
 
-void vlv_wm_sanitize(struct drm_i915_private *dev_priv)
+static void vlv_wm_sanitize(struct drm_i915_private *dev_priv)
 {
 	struct intel_plane *plane;
 	struct intel_crtc *crtc;
@@ -3793,6 +3799,12 @@ void vlv_wm_sanitize(struct drm_i915_private *dev_priv)
 	mutex_unlock(&dev_priv->display.wm.wm_mutex);
 }
 
+static void vlv_wm_get_hw_state_and_sanitize(struct drm_i915_private *i915)
+{
+	vlv_wm_get_hw_state(i915);
+	vlv_wm_sanitize(i915);
+}
+
 /*
  * FIXME should probably kill this and improve
  * the real watermark readout/sanitation instead
@@ -3847,6 +3859,7 @@ static const struct intel_wm_funcs ilk_wm_funcs = {
 	.compute_intermediate_wm = ilk_compute_intermediate_wm,
 	.initial_watermarks = ilk_initial_watermarks,
 	.optimize_watermarks = ilk_optimize_watermarks,
+	.get_hw_state = ilk_wm_get_hw_state,
 };
 
 static const struct intel_wm_funcs vlv_wm_funcs = {
@@ -3855,6 +3868,7 @@ static const struct intel_wm_funcs vlv_wm_funcs = {
 	.initial_watermarks = vlv_initial_watermarks,
 	.optimize_watermarks = vlv_optimize_watermarks,
 	.atomic_update_watermarks = vlv_atomic_update_fifo,
+	.get_hw_state = vlv_wm_get_hw_state_and_sanitize,
 };
 
 static const struct intel_wm_funcs g4x_wm_funcs = {
@@ -3862,6 +3876,7 @@ static const struct intel_wm_funcs g4x_wm_funcs = {
 	.compute_intermediate_wm = g4x_compute_intermediate_wm,
 	.initial_watermarks = g4x_initial_watermarks,
 	.optimize_watermarks = g4x_optimize_watermarks,
+	.get_hw_state = g4x_wm_get_hw_state_and_sanitize,
 };
 
 static const struct intel_wm_funcs pnv_wm_funcs = {
@@ -3895,6 +3910,7 @@ void i9xx_wm_init(struct drm_i915_private *dev_priv)
 		     dev_priv->display.wm.spr_latency[0] && dev_priv->display.wm.cur_latency[0])) {
 			dev_priv->display.funcs.wm = &ilk_wm_funcs;
 		} else {
+			ilk_init_lp_watermarks(dev_priv);
 			drm_dbg_kms(&dev_priv->drm,
 				    "Failed to read display plane latency. "
 				    "Disable CxSR\n");
diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.h b/drivers/gpu/drm/i915/display/i9xx_wm.h
index af4721b1909a..e5293a4ff540 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.h
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.h
@@ -13,11 +13,6 @@ struct intel_crtc_state;
 struct intel_plane_state;
 
 int ilk_wm_max_level(const struct drm_i915_private *i915);
-void g4x_wm_get_hw_state(struct drm_i915_private *i915);
-void vlv_wm_get_hw_state(struct drm_i915_private *i915);
-void ilk_wm_get_hw_state(struct drm_i915_private *i915);
-void g4x_wm_sanitize(struct drm_i915_private *i915);
-void vlv_wm_sanitize(struct drm_i915_private *i915);
 bool ilk_disable_lp_wm(struct drm_i915_private *i915);
 bool intel_set_memory_cxsr(struct drm_i915_private *i915, bool enable);
 void i9xx_wm_init(struct drm_i915_private *i915);
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index fb8670aa2932..176dbe52025b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -85,6 +85,7 @@ struct intel_wm_funcs {
 	void (*optimize_watermarks)(struct intel_atomic_state *state,
 				    struct intel_crtc *crtc);
 	int (*compute_global_watermarks)(struct intel_atomic_state *state);
+	void (*get_hw_state)(struct drm_i915_private *i915);
 };
 
 struct intel_audio_state {
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 1cce96146ef5..5359b9663a07 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -25,6 +25,7 @@
 #include "intel_modeset_setup.h"
 #include "intel_pch_display.h"
 #include "intel_pm.h"
+#include "intel_wm.h"
 #include "skl_watermark.h"
 
 static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
@@ -724,18 +725,7 @@ void intel_modeset_setup_hw_state(struct drm_i915_private *i915,
 
 	intel_dpll_sanitize_state(i915);
 
-	if (IS_G4X(i915)) {
-		g4x_wm_get_hw_state(i915);
-		g4x_wm_sanitize(i915);
-	} else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
-		vlv_wm_get_hw_state(i915);
-		vlv_wm_sanitize(i915);
-	} else if (DISPLAY_VER(i915) >= 9) {
-		skl_wm_get_hw_state(i915);
-		skl_wm_sanitize(i915);
-	} else if (HAS_PCH_SPLIT(i915)) {
-		ilk_wm_get_hw_state(i915);
-	}
+	intel_wm_get_hw_state(i915);
 
 	for_each_intel_crtc(&i915->drm, crtc) {
 		struct intel_crtc_state *crtc_state =
diff --git a/drivers/gpu/drm/i915/display/intel_wm.c b/drivers/gpu/drm/i915/display/intel_wm.c
index 15e004bf7eba..97d0fb7e1bbe 100644
--- a/drivers/gpu/drm/i915/display/intel_wm.c
+++ b/drivers/gpu/drm/i915/display/intel_wm.c
@@ -114,6 +114,12 @@ int intel_compute_global_watermarks(struct intel_atomic_state *state)
 	return 0;
 }
 
+void intel_wm_get_hw_state(struct drm_i915_private *i915)
+{
+	if (i915->display.funcs.wm->get_hw_state)
+		return i915->display.funcs.wm->get_hw_state(i915);
+}
+
 bool intel_wm_plane_visible(const struct intel_crtc_state *crtc_state,
 			    const struct intel_plane_state *plane_state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_wm.h b/drivers/gpu/drm/i915/display/intel_wm.h
index 916302a0077a..b261a6feffca 100644
--- a/drivers/gpu/drm/i915/display/intel_wm.h
+++ b/drivers/gpu/drm/i915/display/intel_wm.h
@@ -26,6 +26,7 @@ void intel_atomic_update_watermarks(struct intel_atomic_state *state,
 void intel_optimize_watermarks(struct intel_atomic_state *state,
 			       struct intel_crtc *crtc);
 int intel_compute_global_watermarks(struct intel_atomic_state *state);
+void intel_wm_get_hw_state(struct drm_i915_private *i915);
 bool intel_wm_plane_visible(const struct intel_crtc_state *crtc_state,
 			    const struct intel_plane_state *plane_state);
 void intel_print_wm_latency(struct drm_i915_private *i915,
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index d653217560d3..bb09fdca7161 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2861,7 +2861,7 @@ static void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
 	}
 }
 
-void skl_wm_get_hw_state(struct drm_i915_private *i915)
+static void skl_wm_get_hw_state(struct drm_i915_private *i915)
 {
 	struct intel_dbuf_state *dbuf_state =
 		to_intel_dbuf_state(i915->display.dbuf.obj.state);
@@ -2961,7 +2961,7 @@ static bool skl_dbuf_is_misconfigured(struct drm_i915_private *i915)
 	return false;
 }
 
-void skl_wm_sanitize(struct drm_i915_private *i915)
+static void skl_wm_sanitize(struct drm_i915_private *i915)
 {
 	struct intel_crtc *crtc;
 
@@ -2997,6 +2997,12 @@ void skl_wm_sanitize(struct drm_i915_private *i915)
 	}
 }
 
+static void skl_wm_get_hw_state_and_sanitize(struct drm_i915_private *i915)
+{
+	skl_wm_get_hw_state(i915);
+	skl_wm_sanitize(i915);
+}
+
 void intel_wm_state_verify(struct intel_crtc *crtc,
 			   struct intel_crtc_state *new_crtc_state)
 {
@@ -3269,6 +3275,7 @@ static void skl_setup_wm_latency(struct drm_i915_private *i915)
 
 static const struct intel_wm_funcs skl_wm_funcs = {
 	.compute_global_watermarks = skl_compute_wm,
+	.get_hw_state = skl_wm_get_hw_state_and_sanitize,
 };
 
 void skl_wm_init(struct drm_i915_private *i915)
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
index 1f81e1a5a4a3..f03fd991b189 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.h
+++ b/drivers/gpu/drm/i915/display/skl_watermark.h
@@ -38,9 +38,6 @@ bool skl_ddb_allocation_overlaps(const struct skl_ddb_entry *ddb,
 				 const struct skl_ddb_entry *entries,
 				 int num_entries, int ignore_idx);
 
-void skl_wm_get_hw_state(struct drm_i915_private *i915);
-void skl_wm_sanitize(struct drm_i915_private *i915);
-
 void intel_wm_state_verify(struct intel_crtc *crtc,
 			   struct intel_crtc_state *new_crtc_state);
 
-- 
2.34.1

