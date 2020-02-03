Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE7EF150820
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2020 15:11:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 470186EC00;
	Mon,  3 Feb 2020 14:11:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5515C6EC01
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2020 14:11:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Feb 2020 06:11:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,398,1574150400"; d="scan'208";a="429455568"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com ([10.237.72.89])
 by fmsmga005.fm.intel.com with ESMTP; 03 Feb 2020 06:11:17 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Feb 2020 16:07:43 +0200
Message-Id: <20200203140747.22771-4-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200203140747.22771-1-stanislav.lisovskiy@intel.com>
References: <20200203140747.22771-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v14 3/7] drm/i915: Init obj state in
 intel_atomic_get_old/new_global_obj_state
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

We might be willing to call intel_atomic_get_old_global_obj_state
and intel_atomic_get_new_global_obj_state right away, however
those are not initializing global obj state as
intel_atomic_get_global_obj_state does.
Extracted initializing part to separate function and now using this
also in intel_atomic_get_old_global_obj_state and intel_atomic_get_new_global_obj_state

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c       | 28 ++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_bw.h       |  9 ++++++
 .../gpu/drm/i915/display/intel_global_state.c | 30 +++++++++++++------
 3 files changed, 57 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 26fa94329eda..c0168dfe8884 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -373,7 +373,33 @@ static unsigned int intel_bw_data_rate(struct drm_i915_private *dev_priv,
 	return data_rate;
 }
 
-static struct intel_bw_state *
+struct intel_bw_state *
+intel_atomic_get_old_bw_state(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_global_state *bw_state;
+
+	bw_state = intel_atomic_get_global_obj_state(state, &dev_priv->bw_obj);
+	if (IS_ERR(bw_state))
+		return ERR_CAST(bw_state);
+
+	return to_intel_bw_state(bw_state);
+}
+
+struct intel_bw_state *
+intel_atomic_get_new_bw_state(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_global_state *bw_state;
+	bw_state = intel_atomic_get_new_global_obj_state(state, &dev_priv->bw_obj);
+
+	if (IS_ERR(bw_state))
+		return ERR_CAST(bw_state);
+
+	return to_intel_bw_state(bw_state);
+}
+
+struct intel_bw_state *
 intel_atomic_get_bw_state(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
index a8aa7624c5aa..ac004d6f4276 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_bw.h
@@ -24,6 +24,15 @@ struct intel_bw_state {
 
 #define to_intel_bw_state(x) container_of((x), struct intel_bw_state, base)
 
+struct intel_bw_state *
+intel_atomic_get_old_bw_state(struct intel_atomic_state *state);
+
+struct intel_bw_state *
+intel_atomic_get_new_bw_state(struct intel_atomic_state *state);
+
+struct intel_bw_state *
+intel_atomic_get_bw_state(struct intel_atomic_state *state);
+
 void intel_bw_init_hw(struct drm_i915_private *dev_priv);
 int intel_bw_init(struct drm_i915_private *dev_priv);
 int intel_bw_atomic_check(struct intel_atomic_state *state);
diff --git a/drivers/gpu/drm/i915/display/intel_global_state.c b/drivers/gpu/drm/i915/display/intel_global_state.c
index a0cc894c3868..89e85048329f 100644
--- a/drivers/gpu/drm/i915/display/intel_global_state.c
+++ b/drivers/gpu/drm/i915/display/intel_global_state.c
@@ -67,19 +67,15 @@ static void assert_global_state_read_locked(struct intel_atomic_state *state)
 	WARN(1, "Global state not read locked\n");
 }
 
-struct intel_global_state *
-intel_atomic_get_global_obj_state(struct intel_atomic_state *state,
+static struct intel_global_state *
+_intel_atomic_init_global_obj_state(struct intel_atomic_state *state,
 				  struct intel_global_obj *obj)
 {
-	int index, num_objs, i;
+	int index, num_objs;
 	size_t size;
 	struct __intel_global_objs_state *arr;
 	struct intel_global_state *obj_state;
 
-	for (i = 0; i < state->num_global_objs; i++)
-		if (obj == state->global_objs[i].ptr)
-			return state->global_objs[i].state;
-
 	assert_global_state_read_locked(state);
 
 	num_objs = state->num_global_objs + 1;
@@ -112,6 +108,20 @@ intel_atomic_get_global_obj_state(struct intel_atomic_state *state,
 	return obj_state;
 }
 
+
+struct intel_global_state *
+intel_atomic_get_global_obj_state(struct intel_atomic_state *state,
+				  struct intel_global_obj *obj)
+{
+	int i;
+
+	for (i = 0; i < state->num_global_objs; i++)
+		if (obj == state->global_objs[i].ptr)
+			return state->global_objs[i].state;
+
+	return _intel_atomic_init_global_obj_state(state, obj);
+}
+
 struct intel_global_state *
 intel_atomic_get_old_global_obj_state(struct intel_atomic_state *state,
 				      struct intel_global_obj *obj)
@@ -122,7 +132,9 @@ intel_atomic_get_old_global_obj_state(struct intel_atomic_state *state,
 		if (obj == state->global_objs[i].ptr)
 			return state->global_objs[i].old_state;
 
-	return NULL;
+	_intel_atomic_init_global_obj_state(state, obj);
+
+	return obj->state;
 }
 
 struct intel_global_state *
@@ -135,7 +147,7 @@ intel_atomic_get_new_global_obj_state(struct intel_atomic_state *state,
 		if (obj == state->global_objs[i].ptr)
 			return state->global_objs[i].new_state;
 
-	return NULL;
+	return _intel_atomic_init_global_obj_state(state, obj);
 }
 
 void intel_atomic_swap_global_state(struct intel_atomic_state *state)
-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
