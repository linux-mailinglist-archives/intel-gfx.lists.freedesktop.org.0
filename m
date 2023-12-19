Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BE7781884B
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Dec 2023 14:08:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 616D410E24A;
	Tue, 19 Dec 2023 13:08:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAA9910E24A
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Dec 2023 13:08:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702991286; x=1734527286;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=B6BQzhysLPY/XHxKRqOJktMqm1AgoU153A2Hnmy+PK8=;
 b=nwZrW4O7vydW3SEatQpRpeJ1S4EQaZedgEhMZo4vIFGKduynqHVRo7JQ
 WfmOYRuwNbfuUQOCn5m2hdLkM/+7Y6jhKFEgvPW9BD5Y7C7R/hd+oVlws
 sVR3HFnFTAir/Wb7BXF996URM2G02qF5N2+GVd8zpnsJ4rca4+DtRMfyr
 Bm8uYhLX0RVwo6AxL1474R1q0prRfas/xSkHjw0MXuqL2Ck2X81gmLvsc
 Dm0oyAkv6Dhaa65YJgfq5rfqM1W7jCbyiRX8AtlJT/DBybXA4AR5nCQyy
 9gFUaSQKpgc7jhXjnH9FM+sd2lnD+DJAbfbndR0YgSunBiJVuVEQ2pPIb w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="17213570"
X-IronPort-AV: E=Sophos;i="6.04,288,1695711600"; d="scan'208";a="17213570"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2023 05:08:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="769230601"
X-IronPort-AV: E=Sophos;i="6.04,288,1695711600"; d="scan'208";a="769230601"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 19 Dec 2023 05:08:03 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 19 Dec 2023 15:08:02 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/3] drm/i915: Rework global state serializaiton
Date: Tue, 19 Dec 2023 15:07:55 +0200
Message-ID: <20231219130756.25986-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231219130756.25986-1-ville.syrjala@linux.intel.com>
References: <20231219130756.25986-1-ville.syrjala@linux.intel.com>
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

Instead of injecting extra crtc commits to serialize the global
state let's hand roll a but of commit machinery to take care of
the hardware synchronization.

Rather than basing everything on the crtc commits we track these
as their own thing. I think this makes more sense as the hardware
blocks we are working with are not in any way tied to the pipes,
so the completion should not be tied in with the vblank machinery
either.

The difference to the old behaviour is that:
- we no longer pull extra crtcs into the commit which should
  make drm_atomic_check_only() happier
- since those crtcs don't get pulled in we also don't end up
  reprogamming them and thus don't need to wait their vblanks
  to pass/etc. So this should be tad faster as well.

TODO: perhaps have each global object complete its own commit
once the post-plane update phase is done?

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6728
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  19 ++-
 .../gpu/drm/i915/display/intel_global_state.c | 137 ++++++++++++++++--
 .../gpu/drm/i915/display/intel_global_state.h |   9 +-
 3 files changed, 152 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b10aad15a63d..46eff0ee5519 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7068,6 +7068,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 
 	drm_atomic_helper_wait_for_dependencies(&state->base);
 	drm_dp_mst_atomic_wait_for_dependencies(&state->base);
+	intel_atomic_global_state_wait_for_dependencies(state);
 
 	/*
 	 * During full modesets we write a lot of registers, wait
@@ -7244,6 +7245,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	intel_pmdemand_post_plane_update(state);
 
 	drm_atomic_helper_commit_hw_done(&state->base);
+	intel_atomic_global_state_commit_done(state);
 
 	if (state->modeset) {
 		/* As one of the primary mmio accessors, KMS has a high
@@ -7294,6 +7296,21 @@ static void intel_atomic_track_fbs(struct intel_atomic_state *state)
 					plane->frontbuffer_bit);
 }
 
+static int intel_atomic_setup_commit(struct intel_atomic_state *state, bool nonblock)
+{
+	int ret;
+
+	ret = drm_atomic_helper_setup_commit(&state->base, nonblock);
+	if (ret)
+		return ret;
+
+	ret = intel_atomic_global_state_setup_commit(state);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
 int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state *_state,
 			bool nonblock)
 {
@@ -7339,7 +7356,7 @@ int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state *_state,
 		return ret;
 	}
 
-	ret = drm_atomic_helper_setup_commit(&state->base, nonblock);
+	ret = intel_atomic_setup_commit(state, nonblock);
 	if (!ret)
 		ret = drm_atomic_helper_swap_state(&state->base, true);
 	if (!ret)
diff --git a/drivers/gpu/drm/i915/display/intel_global_state.c b/drivers/gpu/drm/i915/display/intel_global_state.c
index e8e8be54143b..cbcd1e91b7be 100644
--- a/drivers/gpu/drm/i915/display/intel_global_state.c
+++ b/drivers/gpu/drm/i915/display/intel_global_state.c
@@ -10,12 +10,55 @@
 #include "intel_display_types.h"
 #include "intel_global_state.h"
 
+struct intel_global_commit {
+	struct kref ref;
+	struct completion done;
+};
+
+static struct intel_global_commit *commit_new(void)
+{
+	struct intel_global_commit *commit;
+
+	commit = kzalloc(sizeof(*commit), GFP_KERNEL);
+	if (!commit)
+		return NULL;
+
+	init_completion(&commit->done);
+	kref_init(&commit->ref);
+
+	return commit;
+}
+
+static void __commit_free(struct kref *kref)
+{
+	struct intel_global_commit *commit =
+		container_of(kref, typeof(*commit), ref);
+
+	kfree(commit);
+}
+
+static struct intel_global_commit *commit_get(struct intel_global_commit *commit)
+{
+	if (commit)
+		kref_get(&commit->ref);
+
+	return commit;
+}
+
+static void commit_put(struct intel_global_commit *commit)
+{
+	if (commit)
+		kref_put(&commit->ref, __commit_free);
+}
+
 static void __intel_atomic_global_state_free(struct kref *kref)
 {
 	struct intel_global_state *obj_state =
 		container_of(kref, struct intel_global_state, ref);
 	struct intel_global_obj *obj = obj_state->obj;
 
+	commit_put(obj_state->commit);
+
 	obj->funcs->atomic_destroy_state(obj, obj_state);
 }
 
@@ -127,6 +170,8 @@ intel_atomic_get_global_obj_state(struct intel_atomic_state *state,
 
 	obj_state->obj = obj;
 	obj_state->changed = false;
+	obj_state->serialized = false;
+	obj_state->commit = NULL;
 
 	kref_init(&obj_state->ref);
 
@@ -239,19 +284,13 @@ int intel_atomic_lock_global_state(struct intel_global_state *obj_state)
 
 int intel_atomic_serialize_global_state(struct intel_global_state *obj_state)
 {
-	struct intel_atomic_state *state = obj_state->state;
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	struct intel_crtc *crtc;
+	int ret;
 
-	for_each_intel_crtc(&dev_priv->drm, crtc) {
-		struct intel_crtc_state *crtc_state;
+	ret = intel_atomic_lock_global_state(obj_state);
+	if (ret)
+		return ret;
 
-		crtc_state = intel_atomic_get_crtc_state(&state->base, crtc);
-		if (IS_ERR(crtc_state))
-			return PTR_ERR(crtc_state);
-	}
-
-	obj_state->changed = true;
+	obj_state->serialized = true;
 
 	return 0;
 }
@@ -267,3 +306,79 @@ intel_atomic_global_state_is_serialized(struct intel_atomic_state *state)
 			return false;
 	return true;
 }
+
+int
+intel_atomic_global_state_setup_commit(struct intel_atomic_state *state)
+{
+	const struct intel_global_state *old_obj_state;
+	struct intel_global_state *new_obj_state;
+	struct intel_global_obj *obj;
+	int i;
+
+	for_each_oldnew_global_obj_in_state(state, obj, old_obj_state,
+					    new_obj_state, i) {
+		struct intel_global_commit *commit = NULL;
+
+		if (new_obj_state->serialized) {
+			/*
+			 * New commit which is going to be completed
+			 * after the hardware reprogramming is done.
+			 */
+			commit = commit_new();
+			if (!commit)
+				return -ENOMEM;
+		} else if (new_obj_state->changed) {
+			/*
+			 * We're going to swap to this state, so carry the
+			 * previous commit along, in case it's not yet done.
+			 */
+			commit = commit_get(old_obj_state->commit);
+		}
+
+		new_obj_state->commit = commit;
+	}
+
+	return 0;
+}
+
+int
+intel_atomic_global_state_wait_for_dependencies(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	const struct intel_global_state *old_obj_state;
+	struct intel_global_obj *obj;
+	int i;
+
+	for_each_old_global_obj_in_state(state, obj, old_obj_state, i) {
+		struct intel_global_commit *commit = old_obj_state->commit;
+		long ret;
+
+		if (!commit)
+			continue;
+
+		ret = wait_for_completion_timeout(&commit->done, 10 * HZ);
+		if (ret == 0) {
+			drm_err(&i915->drm, "global state timed out\n");
+			return -ETIMEDOUT;
+		}
+	}
+
+	return 0;
+}
+
+void
+intel_atomic_global_state_commit_done(struct intel_atomic_state *state)
+{
+	const struct intel_global_state *new_obj_state;
+	struct intel_global_obj *obj;
+	int i;
+
+	for_each_new_global_obj_in_state(state, obj, new_obj_state, i) {
+		struct intel_global_commit *commit = new_obj_state->commit;
+
+		if (!new_obj_state->serialized)
+			continue;
+
+		complete_all(&commit->done);
+	}
+}
diff --git a/drivers/gpu/drm/i915/display/intel_global_state.h b/drivers/gpu/drm/i915/display/intel_global_state.h
index 5477de8f0b30..5c8545d7a76a 100644
--- a/drivers/gpu/drm/i915/display/intel_global_state.h
+++ b/drivers/gpu/drm/i915/display/intel_global_state.h
@@ -54,11 +54,14 @@ struct intel_global_obj {
 	     (__i)++) \
 		for_each_if(obj)
 
+struct intel_global_commit;
+
 struct intel_global_state {
 	struct intel_global_obj *obj;
 	struct intel_atomic_state *state;
+	struct intel_global_commit *commit;
 	struct kref ref;
-	bool changed;
+	bool changed, serialized;
 };
 
 struct __intel_global_objs_state {
@@ -87,6 +90,10 @@ void intel_atomic_clear_global_state(struct intel_atomic_state *state);
 int intel_atomic_lock_global_state(struct intel_global_state *obj_state);
 int intel_atomic_serialize_global_state(struct intel_global_state *obj_state);
 
+int intel_atomic_global_state_setup_commit(struct intel_atomic_state *state);
+void intel_atomic_global_state_commit_done(struct intel_atomic_state *state);
+int intel_atomic_global_state_wait_for_dependencies(struct intel_atomic_state *state);
+
 bool intel_atomic_global_state_is_serialized(struct intel_atomic_state *state);
 
 #endif
-- 
2.41.0

