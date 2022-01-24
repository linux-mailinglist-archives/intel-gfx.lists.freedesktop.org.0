Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 206ED497B05
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jan 2022 10:07:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F51110EDAC;
	Mon, 24 Jan 2022 09:07:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0799F10EDAC
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jan 2022 09:06:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643015218; x=1674551218;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qN3EN1Neevy6XTgnCss1skeQV6rF5jkWTrwNJiXabFU=;
 b=HAce13hXcc4uo8AFgkb/2m9rNPV22k1jF6nMtXTtY/bOxRVYjgD75WQD
 2p/mDmW+7U18XJ0w2gc85JtiMZy2c9id+GY6vAIeOo5EMF8H24GzTzgCE
 jTE0fCFgw5R9Ys2kn4miwCB9WZ6TJnkUwvIBYbcyXDaYlH2V+IoDXHZhN
 oVoEjmB9CdUcdFe997DfMUfRM2Ntwb8rSFpm89ac6fN53rG8uAAH3dqKV
 WmMttZTj9OWIiloy/zczgJv4USq+cjPyVYcOhdzGkibktUOdsC6s4e8/z
 M/zgui31WcKCqfhqTPBuR9NzohErPDK3rRI5jwUawuxxa3j9F2r0Jg5/R w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10236"; a="245782543"
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="245782543"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 01:06:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="627424723"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga004.jf.intel.com with ESMTP; 24 Jan 2022 01:06:53 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Jan 2022 11:06:53 +0200
Message-Id: <20220124090653.14547-5-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20220124090653.14547-1-stanislav.lisovskiy@intel.com>
References: <20220124090653.14547-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: Don't allocate extra ddb during
 async flip for DG2
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

In terms of async flip optimization we don't to allocate
extra ddb space, so lets skip it.

v2: - Extracted min ddb async flip check to separate function
      (Ville Syrjälä)
    - Used this function to prevent false positive WARN
      to be triggered(Ville Syrjälä)

v3: - Renamed dg2_need_min_ddb to need_min_ddb thus making
      it more universal.
    - Also used DISPLAY_VER instead of IS_DG2(Ville Syrjälä)
    - Use rate = 0 instead of just setting extra = 0, thus
      letting other planes to use extra ddb and avoiding WARN
      (Ville Syrjälä)

v4: - Renamed needs_min_ddb as s/needs/use/ to match
      the wm0 counterpart(Ville Syrjälä)
    - Added plane->async_flip check to use_min_ddb(now
      passing plane as a parameter to do that)(Ville Syrjälä)
    - Account for use_min_ddb also when calculating total data rate
      (Ville Syrjälä)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c |  2 +-
 .../gpu/drm/i915/display/intel_atomic_plane.h |  3 +-
 drivers/gpu/drm/i915/intel_pm.c               | 53 ++++++++++++++-----
 3 files changed, 44 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index b20cf2c16691..9d79ab987b2e 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -374,7 +374,7 @@ int intel_plane_atomic_check_with_state(const struct intel_crtc_state *old_crtc_
 					       old_plane_state, new_plane_state);
 }
 
-static struct intel_plane *
+struct intel_plane *
 intel_crtc_get_plane(struct intel_crtc *crtc, enum plane_id plane_id)
 {
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
index ead789709477..aaddcc636f98 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
@@ -23,7 +23,8 @@ unsigned int intel_adjusted_rate(const struct drm_rect *src,
 				 unsigned int rate);
 unsigned int intel_plane_pixel_rate(const struct intel_crtc_state *crtc_state,
 				    const struct intel_plane_state *plane_state);
-
+struct intel_plane *intel_crtc_get_plane(struct intel_crtc *crtc,
+					  enum plane_id plane_id);
 unsigned int intel_plane_data_rate(const struct intel_crtc_state *crtc_state,
 				   const struct intel_plane_state *plane_state);
 void intel_plane_copy_uapi_to_hw_state(struct intel_plane_state *plane_state,
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 8269f1e9c784..fbe6a45801bc 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -4988,6 +4988,25 @@ skl_get_total_relative_data_rate(struct intel_atomic_state *state,
 	return total_data_rate;
 }
 
+static bool use_min_ddb(struct intel_crtc_state *crtc_state,
+			struct intel_plane *plane)
+{
+	struct drm_i915_private *i915 = to_i915(plane->base.dev);
+
+	return DISPLAY_VER(i915) >= 13 && crtc_state->uapi.async_flip &&
+	       plane->async_flip;
+}
+
+static bool use_minimal_wm0_only(const struct intel_crtc_state *crtc_state,
+				 struct intel_plane *plane)
+{
+	struct drm_i915_private *i915 = to_i915(plane->base.dev);
+
+	return DISPLAY_VER(i915) >= 13 &&
+	       crtc_state->uapi.async_flip &&
+	       plane->async_flip;
+}
+
 static u64
 icl_get_total_relative_data_rate(struct intel_atomic_state *state,
 				 struct intel_crtc *crtc)
@@ -5033,8 +5052,15 @@ icl_get_total_relative_data_rate(struct intel_atomic_state *state,
 		}
 	}
 
-	for_each_plane_id_on_crtc(crtc, plane_id)
-		total_data_rate += crtc_state->plane_data_rate[plane_id];
+	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
+		/*
+		 * We calculate extra ddb based on ratio plane rate/total data rate
+		 * in case, in some cases we should not allocate extra ddb for the plane,
+		 * so do not count its data rate, if this is the case.
+		 */
+		if (!use_min_ddb(crtc_state, plane))
+			total_data_rate += crtc_state->plane_data_rate[plane->id];
+	}
 
 	return total_data_rate;
 }
@@ -5199,6 +5225,8 @@ skl_allocate_plane_ddb(struct intel_atomic_state *state,
 	for_each_plane_id_on_crtc(crtc, plane_id) {
 		const struct skl_plane_wm *wm =
 			&crtc_state->wm.skl.optimal.planes[plane_id];
+		struct intel_plane *plane =
+			intel_crtc_get_plane(crtc, plane_id);
 		u64 rate;
 		u16 extra;
 
@@ -5213,9 +5241,14 @@ skl_allocate_plane_ddb(struct intel_atomic_state *state,
 			break;
 
 		rate = crtc_state->plane_data_rate[plane_id];
+
+		if (use_min_ddb(crtc_state, plane))
+			rate = 0;
+
 		extra = min_t(u16, alloc_size,
 			      DIV64_U64_ROUND_UP(alloc_size * rate,
 						 total_data_rate));
+
 		total[plane_id] = wm->wm[level].min_ddb_alloc + extra;
 		alloc_size -= extra;
 		total_data_rate -= rate;
@@ -5224,13 +5257,19 @@ skl_allocate_plane_ddb(struct intel_atomic_state *state,
 			break;
 
 		rate = crtc_state->uv_plane_data_rate[plane_id];
+
+		if (use_min_ddb(crtc_state, plane))
+			rate = 0;
+
 		extra = min_t(u16, alloc_size,
 			      DIV64_U64_ROUND_UP(alloc_size * rate,
 						 total_data_rate));
+
 		uv_total[plane_id] = wm->uv_wm[level].min_ddb_alloc + extra;
 		alloc_size -= extra;
 		total_data_rate -= rate;
 	}
+
 	drm_WARN_ON(&dev_priv->drm, alloc_size != 0 || total_data_rate != 0);
 
 	/* Set the actual DDB start/end points for each plane */
@@ -5497,16 +5536,6 @@ static int skl_wm_max_lines(struct drm_i915_private *dev_priv)
 		return 31;
 }
 
-static bool use_minimal_wm0_only(const struct intel_crtc_state *crtc_state,
-				 struct intel_plane *plane)
-{
-	struct drm_i915_private *i915 = to_i915(plane->base.dev);
-
-	return DISPLAY_VER(i915) >= 13 &&
-	       crtc_state->uapi.async_flip &&
-	       plane->async_flip;
-}
-
 static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 				 struct intel_plane *plane,
 				 int level,
-- 
2.24.1.485.gad05a3d8e5

