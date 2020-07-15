Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 513F32217DD
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jul 2020 00:40:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B80F6EC0A;
	Wed, 15 Jul 2020 22:40:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D76026EC0E
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 22:40:24 +0000 (UTC)
IronPort-SDR: cY7owcobu4u4ZnWanX9FhCIJF2Ab91NMrMouBvU33L0D+5jX4lj8bO7uMgo8SOveiYYbGQvrN8
 F0+aeAuyQBew==
X-IronPort-AV: E=McAfee;i="6000,8403,9683"; a="137414147"
X-IronPort-AV: E=Sophos;i="5.75,357,1589266800"; d="scan'208";a="137414147"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2020 15:40:23 -0700
IronPort-SDR: ldZ5lkeCr/nBOUTTdk5tx77PWaM2Sj2pwVdN4rwK2J3CiNNH3S/r+dNuWx3pn+Wlw6T8lMRqVR
 mkIHJQGD9bIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,357,1589266800"; d="scan'208";a="316850665"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga008.jf.intel.com with ESMTP; 15 Jul 2020 15:40:22 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Jul 2020 15:42:19 -0700
Message-Id: <20200715224222.7557-8-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200715224222.7557-1-manasi.d.navare@intel.com>
References: <20200715224222.7557-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 08/11] drm/i915: Link planes in a bigjoiner
 configuration, v3.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

 Make sure that when a plane is set in a bigjoiner mode, we will add
 their counterpart to the atomic state as well. This will allow us to
 make sure all state is available when planes are checked.

Because of the funny interactions with bigjoiner and planar YUV
formats, we may end up adding a lot of planes, so we have to keep
iterating until we no longer add any planes.

Also fix the atomic intel plane iterator, so things watermarks start
working automagically.

v5:
* Rebase after adding sagv support (Manasi)
v4:
* Manual rebase (Manasi)
Changes since v1:
- Rebase on top of plane_state split, cleaning up the code a lot.
- Make intel_atomic_crtc_state_for_each_plane_state() bigjoiner capable.
- Add iter macro to intel_atomic_crtc_state_for_each_plane_state() to
  keep iteration working.
Changes since v2:
- Add icl_(un)set_bigjoiner_plane_links, to make it more clear where
  links are made and broken.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c |  52 ++++-
 .../gpu/drm/i915/display/intel_atomic_plane.h |   3 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 207 ++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_display.h  |  20 +-
 .../drm/i915/display/intel_display_types.h    |  11 +
 drivers/gpu/drm/i915/intel_pm.c               |  20 +-
 6 files changed, 274 insertions(+), 39 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 79032701873a..5c6e72063fac 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -246,11 +246,17 @@ static void intel_plane_clear_hw_state(struct intel_plane_state *plane_state)
 	memset(&plane_state->hw, 0, sizeof(plane_state->hw));
 }
 
-void intel_plane_copy_uapi_to_hw_state(struct intel_plane_state *plane_state,
+void intel_plane_copy_uapi_to_hw_state(const struct intel_crtc_state *crtc_state,
+				       struct intel_plane_state *plane_state,
 				       const struct intel_plane_state *from_plane_state)
 {
 	intel_plane_clear_hw_state(plane_state);
 
+	if (from_plane_state->uapi.crtc)
+		plane_state->hw.crtc = crtc_state->uapi.crtc;
+	else
+		plane_state->hw.crtc = NULL;
+
 	plane_state->hw.crtc = from_plane_state->uapi.crtc;
 	plane_state->hw.fb = from_plane_state->uapi.fb;
 	if (plane_state->hw.fb)
@@ -319,15 +325,36 @@ int intel_plane_atomic_check_with_state(const struct intel_crtc_state *old_crtc_
 }
 
 static struct intel_crtc *
-get_crtc_from_states(const struct intel_plane_state *old_plane_state,
+get_crtc_from_states(struct intel_atomic_state *state,
+		     const struct intel_plane_state *old_plane_state,
 		     const struct intel_plane_state *new_plane_state)
 {
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_plane *plane = to_intel_plane(new_plane_state->uapi.plane);
+
 	if (new_plane_state->uapi.crtc)
 		return to_intel_crtc(new_plane_state->uapi.crtc);
 
 	if (old_plane_state->uapi.crtc)
 		return to_intel_crtc(old_plane_state->uapi.crtc);
 
+	if (new_plane_state->bigjoiner_slave) {
+		const struct intel_plane_state *new_master_plane_state =
+			intel_atomic_get_new_plane_state(state, new_plane_state->bigjoiner_plane);
+
+		/* need to use uapi here, new_master_plane_state might not be copied to hw yet */
+		if (new_master_plane_state->uapi.crtc)
+			return intel_get_crtc_for_pipe(dev_priv, plane->pipe);
+	}
+
+	if (old_plane_state->bigjoiner_slave) {
+		const struct intel_plane_state *old_master_plane_state =
+			intel_atomic_get_old_plane_state(state, old_plane_state->bigjoiner_plane);
+
+		if (old_master_plane_state->uapi.crtc)
+			return intel_get_crtc_for_pipe(dev_priv, plane->pipe);
+	}
+
 	return NULL;
 }
 
@@ -338,18 +365,33 @@ int intel_plane_atomic_check(struct intel_atomic_state *state,
 		intel_atomic_get_new_plane_state(state, plane);
 	const struct intel_plane_state *old_plane_state =
 		intel_atomic_get_old_plane_state(state, plane);
+	const struct intel_plane_state *new_master_plane_state;
 	struct intel_crtc *crtc =
-		get_crtc_from_states(old_plane_state, new_plane_state);
+		get_crtc_from_states(state, old_plane_state,
+				     new_plane_state);
 	const struct intel_crtc_state *old_crtc_state;
 	struct intel_crtc_state *new_crtc_state;
 
-	intel_plane_copy_uapi_to_hw_state(new_plane_state, new_plane_state);
+	if (crtc)
+		new_crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
+	else
+		new_crtc_state = NULL;
+
+	new_master_plane_state = new_plane_state;
+	if (new_plane_state->bigjoiner_slave)
+		new_master_plane_state =
+			intel_atomic_get_new_plane_state(state,
+							 new_plane_state->bigjoiner_plane);
+
+	intel_plane_copy_uapi_to_hw_state(new_crtc_state,
+					  new_plane_state,
+					  new_master_plane_state);
+
 	new_plane_state->uapi.visible = false;
 	if (!crtc)
 		return 0;
 
 	old_crtc_state = intel_atomic_get_old_crtc_state(state, crtc);
-	new_crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
 
 	return intel_plane_atomic_check_with_state(old_crtc_state,
 						   new_crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
index 59dd1fbb02ea..c2a1e7c86e6c 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
@@ -23,7 +23,8 @@ unsigned int intel_plane_pixel_rate(const struct intel_crtc_state *crtc_state,
 
 unsigned int intel_plane_data_rate(const struct intel_crtc_state *crtc_state,
 				   const struct intel_plane_state *plane_state);
-void intel_plane_copy_uapi_to_hw_state(struct intel_plane_state *plane_state,
+void intel_plane_copy_uapi_to_hw_state(const struct intel_crtc_state *crtc_state,
+				       struct intel_plane_state *plane_state,
 				       const struct intel_plane_state *from_plane_state);
 void intel_update_plane(struct intel_plane *plane,
 			const struct intel_crtc_state *crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index bfc5c890ab4e..6f4a2845674d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3693,7 +3693,7 @@ intel_find_initial_plane_obj(struct intel_crtc *intel_crtc,
 	drm_framebuffer_get(fb);
 
 	plane_state->crtc = &intel_crtc->base;
-	intel_plane_copy_uapi_to_hw_state(intel_state, intel_state);
+	intel_plane_copy_uapi_to_hw_state(crtc_state, intel_state, intel_state);
 
 	intel_frontbuffer_flush(to_intel_frontbuffer(fb), ORIGIN_DIRTYFB);
 
@@ -12582,26 +12582,180 @@ static bool check_single_encoder_cloning(struct intel_atomic_state *state,
 	return true;
 }
 
+static int icl_unset_bigjoiner_plane_links(struct intel_atomic_state *state,
+					   struct intel_crtc_state *new_crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
+	struct intel_plane *plane;
+
+	/*
+	 * Teardown the old bigjoiner plane mappings.
+	 */
+	for_each_intel_plane_on_crtc(crtc->base.dev, crtc, plane) {
+		struct intel_plane_state *plane_state, *other_plane_state;
+		struct intel_plane *other_plane;
+
+		plane_state = intel_atomic_get_plane_state(state, plane);
+		if (IS_ERR(plane_state))
+			return PTR_ERR(plane_state);
+
+		other_plane = plane_state->bigjoiner_plane;
+		if (!other_plane)
+			continue;
+
+		plane_state->bigjoiner_plane = NULL;
+		plane_state->bigjoiner_slave = false;
+
+		other_plane_state = intel_atomic_get_plane_state(state, other_plane);
+		if (IS_ERR(other_plane_state))
+			return PTR_ERR(other_plane_state);
+		other_plane_state->bigjoiner_plane = NULL;
+		other_plane_state->bigjoiner_slave = false;
+	}
+	return 0;
+}
+
+static int icl_set_bigjoiner_plane_links(struct intel_atomic_state *state,
+					 struct intel_crtc_state *new_crtc_state)
+{
+	struct intel_plane *plane;
+	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
+	struct intel_crtc *other_crtc = new_crtc_state->bigjoiner_linked_crtc;
+
+	/*
+         * Setup and teardown the new bigjoiner plane mappings.
+         */
+	for_each_intel_plane_on_crtc(crtc->base.dev, crtc, plane) {
+		struct intel_plane_state *plane_state;
+		struct intel_plane *other_plane = NULL;
+		bool found_plane = false;
+
+		plane_state = intel_atomic_get_plane_state(state, plane);
+		if (IS_ERR(plane_state))
+			return PTR_ERR(plane_state);
+
+		for_each_intel_plane_on_crtc(crtc->base.dev, other_crtc, other_plane) {
+			if (other_plane->id != plane->id)
+				continue;
+
+			plane_state->bigjoiner_plane = other_plane;
+			plane_state->bigjoiner_slave = new_crtc_state->bigjoiner_slave;
+
+			plane_state = intel_atomic_get_plane_state(state, other_plane);
+			if (IS_ERR(plane_state))
+				return PTR_ERR(plane_state);
+
+			plane_state->bigjoiner_plane = plane;
+			plane_state->bigjoiner_slave = !new_crtc_state->bigjoiner_slave;
+
+			found_plane = true;
+			break;
+		}
+
+		if (!found_plane) {
+			/* All pipes should have identical planes. */
+			WARN_ON(!found_plane);
+			return -EINVAL;
+		}
+	}
+	return 0;
+}
+
+static int icl_add_dependent_planes(struct intel_atomic_state *state,
+				    struct intel_plane_state *plane_state)
+{
+	struct intel_plane_state *new_plane_state;
+	struct intel_plane *plane;
+	int ret = 0;
+
+	plane = plane_state->bigjoiner_plane;
+	if (plane && !intel_atomic_get_new_plane_state(state, plane)) {
+		new_plane_state = intel_atomic_get_plane_state(state, plane);
+		if (IS_ERR(new_plane_state))
+			return PTR_ERR(new_plane_state);
+
+		ret = 1;
+	}
+
+	plane = plane_state->planar_linked_plane;
+	if (plane && !intel_atomic_get_new_plane_state(state, plane)) {
+		new_plane_state = intel_atomic_get_plane_state(state, plane);
+		if (IS_ERR(new_plane_state))
+			return PTR_ERR(new_plane_state);
+
+		ret = 1;
+	}
+
+	return ret;
+}
+
 static int icl_add_linked_planes(struct intel_atomic_state *state)
 {
-	struct intel_plane *plane, *linked;
-	struct intel_plane_state *plane_state, *linked_plane_state;
+	struct intel_plane *plane;
+	struct intel_plane_state *old_plane_state, *new_plane_state;
+	struct intel_crtc *crtc, *linked_crtc;
+	struct intel_crtc_state *old_crtc_state, *new_crtc_state, *linked_crtc_state;
+	bool added;
 	int i;
 
-	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
-		linked = plane_state->planar_linked_plane;
+	/*
+	 * Iteratively add plane_state->linked_plane and plane_state->bigjoiner_plane
+	 *
+	 * This needs to be done repeatedly, because of is a funny interaction;
+	 * the Y-plane may be assigned differently on the other bigjoiner crtc,
+	 * and we could end up with the following evil recursion, when only adding a
+	 * single plane to state:
+         *
+	 * XRGB8888 master plane 6 adds NV12 slave Y-plane 6, which adds slave UV plane 0,
+	 * which adds master UV plane 0, which adds master Y-plane 7, which adds XRGB8888
+	 *slave plane 7.
+	 *
+	 * We could pull in even more because of old_plane_state vs new_plane_state.
+	 *
+	 * Max depth = 5 (or 7 for evil case) in this case.
+	 * Number of passes will be less, because newly added planes show up in the
+	 * same iteration round when added_plane->index > plane->index.
+	 */
+	do {
+		added = false;
 
-		if (!linked)
-			continue;
+		for_each_oldnew_intel_plane_in_state(state, plane, old_plane_state, new_plane_state, i) {
+			int ret, ret2;
+
+			ret = icl_add_dependent_planes(state, old_plane_state);
+			if (ret < 0)
+				return ret;
+
+			ret2 = icl_add_dependent_planes(state, new_plane_state);
+			if (ret2 < 0)
+				return ret2;
+
+			added |= ret || ret2;
+		}
+	} while (added);
+
+	/*
+         * Make sure bigjoiner slave crtc's are also pulled in. This is not done automatically
+         * when adding slave planes, because plane_state->crtc is null.
+         */
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state, i) {
+		linked_crtc = old_crtc_state->bigjoiner_linked_crtc;
+		if (linked_crtc) {
+			linked_crtc_state =
+				intel_atomic_get_crtc_state(&state->base, linked_crtc);
+
+			if (IS_ERR(linked_crtc_state))
+				return PTR_ERR(linked_crtc_state);
+		}
 
-		linked_plane_state = intel_atomic_get_plane_state(state, linked);
-		if (IS_ERR(linked_plane_state))
-			return PTR_ERR(linked_plane_state);
+		linked_crtc = new_crtc_state->bigjoiner_linked_crtc;
+		if (linked_crtc && linked_crtc != old_crtc_state->bigjoiner_linked_crtc) {
+			linked_crtc_state =
+				intel_atomic_get_crtc_state(&state->base, linked_crtc);
 
-		drm_WARN_ON(state->base.dev,
-			    linked_plane_state->planar_linked_plane != plane);
-		drm_WARN_ON(state->base.dev,
-			    linked_plane_state->planar_slave == plane_state->planar_slave);
+			if (IS_ERR(linked_crtc_state))
+				return PTR_ERR(linked_crtc_state);
+		}
 	}
 
 	return 0;
@@ -12641,6 +12795,7 @@ static int icl_check_nv12_planes(struct intel_crtc_state *crtc_state)
 
 	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
 		struct intel_plane_state *linked_state = NULL;
+		struct intel_plane_state *master_plane_state;
 
 		if (plane->pipe != crtc->pipe ||
 		    !(crtc_state->nv12_planes & BIT(plane->id)))
@@ -12684,7 +12839,14 @@ static int icl_check_nv12_planes(struct intel_crtc_state *crtc_state)
 		memcpy(linked_state->color_plane, plane_state->color_plane,
 		       sizeof(linked_state->color_plane));
 
-		intel_plane_copy_uapi_to_hw_state(linked_state, plane_state);
+		master_plane_state = plane_state;
+		if (plane_state->bigjoiner_slave)
+			master_plane_state =
+				intel_atomic_get_new_plane_state(state,
+								 plane_state->bigjoiner_plane);
+
+		intel_plane_copy_uapi_to_hw_state(crtc_state, linked_state,
+						  master_plane_state);
 		linked_state->uapi.src = plane_state->uapi.src;
 		linked_state->uapi.dst = plane_state->uapi.dst;
 
@@ -15028,6 +15190,7 @@ static int intel_atomic_check_bigjoiner(struct intel_atomic_state *state,
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_crtc_state *slave_crtc_state, *master_crtc_state;
 	struct intel_crtc *slave, *master;
+	int ret;
 
 	/* slave being enabled, is master is still claiming this crtc? */
 	if (old_crtc_state->bigjoiner_slave) {
@@ -15038,6 +15201,12 @@ static int intel_atomic_check_bigjoiner(struct intel_atomic_state *state,
 			goto claimed;
 	}
 
+	if (old_crtc_state->bigjoiner) {
+		ret = icl_unset_bigjoiner_plane_links(state, new_crtc_state);
+		if (ret)
+			return ret;
+	}
+
 	if (!new_crtc_state->bigjoiner)
 		return 0;
 
@@ -15062,7 +15231,11 @@ static int intel_atomic_check_bigjoiner(struct intel_atomic_state *state,
 	DRM_DEBUG_KMS("[CRTC:%d:%s] Used as slave for big joiner\n",
 		      slave->base.base.id, slave->base.name);
 
-	return copy_bigjoiner_crtc_state(slave_crtc_state, new_crtc_state);
+	ret = copy_bigjoiner_crtc_state(slave_crtc_state, new_crtc_state);
+	if (ret)
+		return ret;
+
+	return icl_set_bigjoiner_plane_links(state, new_crtc_state);
 
 claimed:
 	DRM_DEBUG_KMS("[CRTC:%d:%s] Slave is enabled as normal CRTC, but "
@@ -16531,7 +16704,7 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 	new_plane_state->uapi.crtc_w = crtc_w;
 	new_plane_state->uapi.crtc_h = crtc_h;
 
-	intel_plane_copy_uapi_to_hw_state(new_plane_state, new_plane_state);
+	intel_plane_copy_uapi_to_hw_state(new_crtc_state, new_plane_state, new_plane_state);
 
 	ret = intel_plane_atomic_check_with_state(crtc_state, new_crtc_state,
 						  old_plane_state, new_plane_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index e890c8fb779b..78010ee364f3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -467,12 +467,20 @@ enum phy_fia {
 		for_each_if(crtc)
 
 #define intel_atomic_crtc_state_for_each_plane_state( \
-		  plane, plane_state, \
-		  crtc_state) \
-	for_each_intel_plane_mask(((crtc_state)->uapi.state->dev), (plane), \
-				((crtc_state)->uapi.plane_mask)) \
-		for_each_if ((plane_state = \
-			      to_intel_plane_state(__drm_atomic_get_current_plane_state((crtc_state)->uapi.state, &plane->base))))
+	plane, iter, plane_state, \
+	crtc_state) \
+	for_each_intel_plane_mask(((crtc_state)->uapi.state->dev), (iter), \
+				  (((crtc_state)->bigjoiner_slave ?	\
+				    intel_atomic_get_new_crtc_state(	\
+					    to_intel_atomic_state((crtc_state)->uapi.state), \
+					    (crtc_state)->bigjoiner_linked_crtc) : \
+				    (crtc_state))->uapi.plane_mask))	\
+	for_each_if ((((plane_state) = \
+		       to_intel_plane_state(__drm_atomic_get_current_plane_state((crtc_state)->uapi.state, &iter->base))), \
+		      ((plane) = (plane_state)->bigjoiner_slave ? (plane_state)->bigjoiner_plane : (iter)), \
+		      ((plane_state) = (plane_state)->bigjoiner_slave ? \
+		       to_intel_plane_state(__drm_atomic_get_current_plane_state((crtc_state)->uapi.state, &plane->base)) : \
+		       (plane_state))))
 
 #define for_each_new_intel_connector_in_state(__state, connector, new_connector_state, __i) \
 	for ((__i) = 0; \
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 943709f192f7..6957eac140cd 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -575,6 +575,17 @@ struct intel_plane_state {
 	 */
 	struct intel_plane *planar_linked_plane;
 
+	/*
+	 * bigjoiner_plane:
+	 *
+	 * When 2 pipes are joined in a bigjoiner configuration,
+	 * points to the same plane on the other pipe.
+	 *
+	 * bigjoiner_slave is set on the slave pipe.
+	 */
+	struct intel_plane *bigjoiner_plane;
+	u32 bigjoiner_slave;
+
 	/*
 	 * planar_slave:
 	 * If set don't update use the linked plane's state for updating
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index d1263ebd3811..a3e3ac429fd4 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -3150,7 +3150,7 @@ static int ilk_compute_pipe_wm(struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct intel_pipe_wm *pipe_wm;
-	struct intel_plane *plane;
+	struct intel_plane *plane, *iter;
 	const struct intel_plane_state *plane_state;
 	const struct intel_plane_state *pristate = NULL;
 	const struct intel_plane_state *sprstate = NULL;
@@ -3160,7 +3160,7 @@ static int ilk_compute_pipe_wm(struct intel_crtc_state *crtc_state)
 
 	pipe_wm = &crtc_state->wm.ilk.optimal;
 
-	intel_atomic_crtc_state_for_each_plane_state(plane, plane_state, crtc_state) {
+	intel_atomic_crtc_state_for_each_plane_state(plane, iter, plane_state, crtc_state) {
 		if (plane->base.type == DRM_PLANE_TYPE_PRIMARY)
 			pristate = plane_state;
 		else if (plane->base.type == DRM_PLANE_TYPE_OVERLAY)
@@ -3879,7 +3879,7 @@ static bool skl_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	struct intel_plane *plane;
+	struct intel_plane *plane, *iter;
 	const struct intel_plane_state *plane_state;
 	int level, latency;
 
@@ -3892,7 +3892,7 @@ static bool skl_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state)
 	if (crtc_state->hw.pipe_mode.flags & DRM_MODE_FLAG_INTERLACE)
 		return false;
 
-	intel_atomic_crtc_state_for_each_plane_state(plane, plane_state, crtc_state) {
+	intel_atomic_crtc_state_for_each_plane_state(plane, iter, plane_state, crtc_state) {
 		const struct skl_plane_wm *wm =
 			&crtc_state->wm.skl.optimal.planes[plane->id];
 
@@ -4714,12 +4714,12 @@ skl_get_total_relative_data_rate(struct intel_crtc_state *crtc_state,
 				 u64 *plane_data_rate,
 				 u64 *uv_plane_data_rate)
 {
-	struct intel_plane *plane;
+	struct intel_plane *plane, *iter;
 	const struct intel_plane_state *plane_state;
 	u64 total_data_rate = 0;
 
 	/* Calculate and cache data rate for each plane */
-	intel_atomic_crtc_state_for_each_plane_state(plane, plane_state, crtc_state) {
+	intel_atomic_crtc_state_for_each_plane_state(plane, iter, plane_state, crtc_state) {
 		enum plane_id plane_id = plane->id;
 		u64 rate;
 
@@ -4741,12 +4741,12 @@ static u64
 icl_get_total_relative_data_rate(struct intel_crtc_state *crtc_state,
 				 u64 *plane_data_rate)
 {
-	struct intel_plane *plane;
+	struct intel_plane *plane, *iter;
 	const struct intel_plane_state *plane_state;
 	u64 total_data_rate = 0;
 
 	/* Calculate and cache data rate for each plane */
-	intel_atomic_crtc_state_for_each_plane_state(plane, plane_state, crtc_state) {
+	intel_atomic_crtc_state_for_each_plane_state(plane, iter, plane_state, crtc_state) {
 		enum plane_id plane_id = plane->id;
 		u64 rate;
 
@@ -5593,7 +5593,7 @@ static int skl_build_pipe_wm(struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	struct skl_pipe_wm *pipe_wm = &crtc_state->wm.skl.optimal;
-	struct intel_plane *plane;
+	struct intel_plane *plane, *iter;
 	const struct intel_plane_state *plane_state;
 	int ret;
 
@@ -5603,7 +5603,7 @@ static int skl_build_pipe_wm(struct intel_crtc_state *crtc_state)
 	 */
 	memset(pipe_wm->planes, 0, sizeof(pipe_wm->planes));
 
-	intel_atomic_crtc_state_for_each_plane_state(plane, plane_state,
+	intel_atomic_crtc_state_for_each_plane_state(plane, iter, plane_state,
 						     crtc_state) {
 
 		if (INTEL_GEN(dev_priv) >= 11)
-- 
2.19.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
