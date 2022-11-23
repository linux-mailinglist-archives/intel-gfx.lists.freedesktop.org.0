Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80C8C63637D
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 16:27:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25A6C10E579;
	Wed, 23 Nov 2022 15:27:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D122710E575
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 15:27:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669217224; x=1700753224;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Tii7eSJ+XtWLqKDQoALPh3iT91/hQqY67Lr48W1HrrU=;
 b=L0mKwsqyOiYhN0eXHL+Pe43TYYb7OBHYhqp8RRbx1cXnJ5qo38lbWcAO
 pNfBV4NzsGQhQVx5D4/dxlKJavDSKyBiZ47SGZ6Sbn3x541lRZMP8/mrR
 HJu9yAdL4vdagSeVXv6jE8/Va8MzkudxbuIuR6Z8iXaCnGL9OFSH9IDwN
 q/RKgilHLgS2fbhQZipcGgI2MSlJEpEKCMqoHgULRlaXwN6ICFA5w9fo9
 EEKhEl4V3Gtfs9QI0YxWn3qHwh3SWpAEn1GzF9uCXdnhkuq9EZ3sG1rcP
 hSwwRNPgf+sR6hY/8A1L1fo4isiNYwr6EcrhNQQSXZddLViL40feS5Tvi w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="312789949"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="312789949"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 07:27:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="619651032"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="619651032"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga006.jf.intel.com with SMTP; 23 Nov 2022 07:27:02 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Nov 2022 17:27:01 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Nov 2022 17:26:33 +0200
Message-Id: <20221123152638.20622-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221123152638.20622-1-ville.syrjala@linux.intel.com>
References: <20221123152638.20622-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/13] drm/i915: Move the DSB setup/cleaup into
 the color code
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

Since the color management code is the only user of the DSB
at the moment move the DSB prepare/cleanup there too. The
code has to anyway make decisions on whether to use the DSB
or not (and how to use it). Also we'll need a place where we
actually generate the DSB command buffer ahead of time rather
than the current situation where it gets generated too late
during the mmio programming of the hardware.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c   | 10 ++++++++
 drivers/gpu/drm/i915/display/intel_color.h   |  2 ++
 drivers/gpu/drm/i915/display/intel_display.c | 25 ++++++++------------
 drivers/gpu/drm/i915/display/intel_display.h |  8 +++++++
 4 files changed, 30 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 5a4f794e1d08..5a8652407f30 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1389,6 +1389,16 @@ void intel_color_commit_arm(const struct intel_crtc_state *crtc_state)
 	i915->display.funcs.color->color_commit_arm(crtc_state);
 }
 
+void intel_color_prepare_commit(struct intel_crtc_state *crtc_state)
+{
+	intel_dsb_prepare(crtc_state);
+}
+
+void intel_color_cleanup_commit(struct intel_crtc_state *crtc_state)
+{
+	intel_dsb_cleanup(crtc_state);
+}
+
 static bool intel_can_preload_luts(const struct intel_crtc_state *new_crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_color.h b/drivers/gpu/drm/i915/display/intel_color.h
index 1c6b1755f6d2..d620b5b1e2a6 100644
--- a/drivers/gpu/drm/i915/display/intel_color.h
+++ b/drivers/gpu/drm/i915/display/intel_color.h
@@ -17,6 +17,8 @@ void intel_color_init_hooks(struct drm_i915_private *i915);
 int intel_color_init(struct drm_i915_private *i915);
 void intel_color_crtc_init(struct intel_crtc *crtc);
 int intel_color_check(struct intel_crtc_state *crtc_state);
+void intel_color_prepare_commit(struct intel_crtc_state *crtc_state);
+void intel_color_cleanup_commit(struct intel_crtc_state *crtc_state);
 void intel_color_commit_noarm(const struct intel_crtc_state *crtc_state);
 void intel_color_commit_arm(const struct intel_crtc_state *crtc_state);
 void intel_color_load_luts(const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 32b257157186..45d7996f5c1a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -93,7 +93,6 @@
 #include "intel_dp_link_training.h"
 #include "intel_dpio_phy.h"
 #include "intel_dpt.h"
-#include "intel_dsb.h"
 #include "intel_fbc.h"
 #include "intel_fbdev.h"
 #include "intel_fdi.h"
@@ -6931,7 +6930,7 @@ static int intel_atomic_prepare_commit(struct intel_atomic_state *state)
 
 	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
 		if (intel_crtc_needs_color_update(crtc_state))
-			intel_dsb_prepare(crtc_state);
+			intel_color_prepare_commit(crtc_state);
 	}
 
 	return 0;
@@ -7382,24 +7381,18 @@ static void intel_atomic_commit_fence_wait(struct intel_atomic_state *intel_stat
 		    &wait_reset);
 }
 
-static void intel_cleanup_dsbs(struct intel_atomic_state *state)
-{
-	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
-	struct intel_crtc *crtc;
-	int i;
-
-	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
-					    new_crtc_state, i)
-		intel_dsb_cleanup(old_crtc_state);
-}
-
 static void intel_atomic_cleanup_work(struct work_struct *work)
 {
 	struct intel_atomic_state *state =
 		container_of(work, struct intel_atomic_state, base.commit_work);
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_crtc_state *old_crtc_state;
+	struct intel_crtc *crtc;
+	int i;
+
+	for_each_old_intel_crtc_in_state(state, crtc, old_crtc_state, i)
+		intel_color_cleanup_commit(old_crtc_state);
 
-	intel_cleanup_dsbs(state);
 	drm_atomic_helper_cleanup_planes(&i915->drm, &state->base);
 	drm_atomic_helper_commit_cleanup_done(&state->base);
 	drm_atomic_state_put(&state->base);
@@ -7590,6 +7583,8 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 		 * DSB cleanup is done in cleanup_work aligning with framebuffer
 		 * cleanup. So copy and reset the dsb structure to sync with
 		 * commit_done and later do dsb cleanup in cleanup_work.
+		 *
+		 * FIXME get rid of this funny new->old swapping
 		 */
 		old_crtc_state->dsb = fetch_and_zero(&new_crtc_state->dsb);
 	}
@@ -7740,7 +7735,7 @@ static int intel_atomic_commit(struct drm_device *dev,
 		i915_sw_fence_commit(&state->commit_ready);
 
 		for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
-			intel_dsb_cleanup(new_crtc_state);
+			intel_color_cleanup_commit(new_crtc_state);
 
 		drm_atomic_helper_cleanup_planes(dev, &state->base);
 		intel_runtime_pm_put(&dev_priv->runtime_pm, state->wakeref);
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 714030136b7f..ef73730f32b0 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -440,6 +440,14 @@ enum hpd_pin {
 	     (__i)++) \
 		for_each_if(plane)
 
+#define for_each_old_intel_crtc_in_state(__state, crtc, old_crtc_state, __i) \
+	for ((__i) = 0; \
+	     (__i) < (__state)->base.dev->mode_config.num_crtc && \
+		     ((crtc) = to_intel_crtc((__state)->base.crtcs[__i].ptr), \
+		      (old_crtc_state) = to_intel_crtc_state((__state)->base.crtcs[__i].old_state), 1); \
+	     (__i)++) \
+		for_each_if(crtc)
+
 #define for_each_new_intel_plane_in_state(__state, plane, new_plane_state, __i) \
 	for ((__i) = 0; \
 	     (__i) < (__state)->base.dev->mode_config.num_total_plane && \
-- 
2.37.4

