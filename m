Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B0B162A62
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 17:25:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF23D6EA43;
	Tue, 18 Feb 2020 16:25:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96D2D6EA3F
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 16:25:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Feb 2020 08:25:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,456,1574150400"; d="scan'208";a="228326333"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com ([10.237.72.89])
 by fmsmga007.fm.intel.com with ESMTP; 18 Feb 2020 08:25:44 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Feb 2020 18:22:28 +0200
Message-Id: <20200218162232.14368-4-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200218162232.14368-1-stanislav.lisovskiy@intel.com>
References: <20200218162232.14368-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v16 3/7] drm/i915: Init obj state in
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

v2: - Fixed typo in function call

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 28 ++++++++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_bw.h |  9 ++++++++
 2 files changed, 36 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 58b264bc318d..ff57277e8880 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -374,7 +374,33 @@ static unsigned int intel_bw_data_rate(struct drm_i915_private *dev_priv,
 	return data_rate;
 }
 
-static struct intel_bw_state *
+struct intel_bw_state *
+intel_atomic_get_old_bw_state(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_global_state *bw_state;
+
+	bw_state = intel_atomic_get_old_global_obj_state(state, &dev_priv->bw_obj);
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
-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
