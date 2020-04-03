Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DF3519D023
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 08:18:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 255E66EAEE;
	Fri,  3 Apr 2020 06:18:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DFED6EAEE
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 06:18:48 +0000 (UTC)
IronPort-SDR: dWy3Pz5rqZx/u6YwTvwIP1zHchYoUT+dFaXCZERRCKlkf0HIKmKlIZmY9nolE7vdNZ82IBvT2+
 Ymzfew+NkaMw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2020 23:18:47 -0700
IronPort-SDR: Qd836SGxwRqDm8C1qBa2Nfbtb9KCuCQ1v8d2oMAwnZ2EV/blp40OOwFvzwk12Z7iIIhzsVCe8n
 vGdDcSAARFTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,338,1580803200"; d="scan'208";a="241038886"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by fmsmga007.fm.intel.com with ESMTP; 02 Apr 2020 23:18:45 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 Apr 2020 09:15:09 +0300
Message-Id: <20200403061509.11105-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200326181005.11775-5-stanislav.lisovskiy@intel.com>
References: <20200326181005.11775-5-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v21 04/10] drm/i915: Add
 intel_atomic_get_bw_*_state helpers
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add correspondent helpers to be able to get old/new bandwidth
global state object.

v2: - Fixed typo in function call
v3: - Changed new functions naming to use convention proposed
      by Jani Nikula, i.e intel_bw_* in intel_bw.c file.
v4: - Change function naming back to intel_atomic* pattern,
      was decided to rename in a separate patch series.
v5: - Fix function naming to match existing practices(Ville)
v6: - Removed spurious whitespace

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 28 ++++++++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_bw.h |  9 ++++++++
 2 files changed, 36 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 58b264bc318d..d5f5c2f49af2 100644
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
+	if (!bw_state)
+		return NULL;
+
+	return to_intel_bw_state(bw_state);
+}
+
+struct intel_bw_state *
+intel_atomic_get_new_bw_state(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_global_state *bw_state;
+
+	bw_state = intel_atomic_get_new_global_obj_state(state, &dev_priv->bw_obj);
+	if (!bw_state)
+		return NULL;
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
