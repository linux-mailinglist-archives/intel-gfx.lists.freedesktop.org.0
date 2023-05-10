Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8221A6FDBA9
	for <lists+intel-gfx@lfdr.de>; Wed, 10 May 2023 12:31:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A81610E471;
	Wed, 10 May 2023 10:31:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D059C10E471
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 May 2023 10:30:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683714657; x=1715250657;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8yu+pv+Dya4rE3pcNOmJ4quQKafKvl0kijbytJe9yWg=;
 b=Zhgw6pKeNlgP5gq+rblKeJamAYrpAXjm4o4iwywI/1+ankSLeN70Gk03
 8vLLkwsQ+eUbFHQQLVkE8AnabB0K8Irvc4vrHNrvc8b7ts5RztYa+3FL0
 vFyXcptv0CpuWuDLHzJYwBqyUaLO0ygrhAcc58g5z9lnsD48hrBYwk6uo
 1p7W6sGHDAP27Be6FxB/BNVieOgonnwTWtLV+ePp+9yntFM+NBpqBZ0Q9
 Fxpxicw/yiYHb/0h7sJpUpPSa2AQ57fVEQT+NvCcX9Hv3yDZF4IDRT7VV
 7XOb0c9hkkUM8BRIBvwG4rofdWx9BUrmVnyvTUqvoSo7AZXMDC8iz0lX+ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="350214399"
X-IronPort-AV: E=Sophos;i="5.99,264,1677571200"; d="scan'208";a="350214399"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 03:30:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="676796693"
X-IronPort-AV: E=Sophos;i="5.99,264,1677571200"; d="scan'208";a="676796693"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.72.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 03:30:56 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 May 2023 13:31:19 +0300
Message-Id: <20230510103131.1618266-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230510103131.1618266-1-imre.deak@intel.com>
References: <20230510103131.1618266-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 02/14] drm/i915: Add helpers to
 reference/unreference a DPLL for a CRTC
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

Add helpers to reference/unreference a shared DPLL tracking the use of
it by a given CRTC.

This prepares for the next patch, which unreferences a DPLL during CRTC
HW-readout/sanitization.

Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 58 +++++++++++++++----
 1 file changed, 46 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index ed372d227aa73..84ebe66012b1d 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -351,13 +351,35 @@ intel_find_shared_dpll(struct intel_atomic_state *state,
 	return NULL;
 }
 
+/**
+ * intel_reference_shared_dpll_crtc - Get a DPLL reference for a CRTC
+ * @crtc: CRTC on which behalf the reference is taken
+ * @pll: DPLL for which the reference is taken
+ * @shared_dpll_state: the DPLL atomic state in which the reference is tracked
+ *
+ * Take a reference for @pll tracking the use of it by @crtc.
+ */
+static void
+intel_reference_shared_dpll_crtc(const struct intel_crtc *crtc,
+				 const struct intel_shared_dpll *pll,
+				 struct intel_shared_dpll_state *shared_dpll_state)
+{
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+
+	drm_WARN_ON(&i915->drm, (shared_dpll_state->pipe_mask & BIT(crtc->pipe)) != 0);
+
+	shared_dpll_state->pipe_mask |= BIT(crtc->pipe);
+
+	drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] reserving %s\n",
+		    crtc->base.base.id, crtc->base.name, pll->info->name);
+}
+
 static void
 intel_reference_shared_dpll(struct intel_atomic_state *state,
 			    const struct intel_crtc *crtc,
 			    const struct intel_shared_dpll *pll,
 			    const struct intel_dpll_hw_state *pll_state)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_shared_dpll_state *shared_dpll;
 	const enum intel_dpll_id id = pll->info->id;
 
@@ -366,11 +388,29 @@ intel_reference_shared_dpll(struct intel_atomic_state *state,
 	if (shared_dpll[id].pipe_mask == 0)
 		shared_dpll[id].hw_state = *pll_state;
 
-	drm_WARN_ON(&i915->drm, (shared_dpll[id].pipe_mask & BIT(crtc->pipe)) != 0);
+	intel_reference_shared_dpll_crtc(crtc, pll, &shared_dpll[id]);
+}
+
+/**
+ * intel_unreference_shared_dpll_crtc - Drop a DPLL reference for a CRTC
+ * @crtc: CRTC on which behalf the reference is dropped
+ * @pll: DPLL for which the reference is dropped
+ * @shared_dpll_state: the DPLL atomic state in which the reference is tracked
+ *
+ * Drop a reference for @pll tracking the end of use of it by @crtc.
+ */
+static void
+intel_unreference_shared_dpll_crtc(const struct intel_crtc *crtc,
+				   const struct intel_shared_dpll *pll,
+				   struct intel_shared_dpll_state *shared_dpll_state)
+{
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 
-	shared_dpll[id].pipe_mask |= BIT(crtc->pipe);
+	drm_WARN_ON(&i915->drm, (shared_dpll_state->pipe_mask & BIT(crtc->pipe)) == 0);
 
-	drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] reserving %s\n",
+	shared_dpll_state->pipe_mask &= ~BIT(crtc->pipe);
+
+	drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] releasing %s\n",
 		    crtc->base.base.id, crtc->base.name, pll->info->name);
 }
 
@@ -378,18 +418,12 @@ static void intel_unreference_shared_dpll(struct intel_atomic_state *state,
 					  const struct intel_crtc *crtc,
 					  const struct intel_shared_dpll *pll)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_shared_dpll_state *shared_dpll;
 	const enum intel_dpll_id id = pll->info->id;
 
 	shared_dpll = intel_atomic_get_shared_dpll_state(&state->base);
 
-	drm_WARN_ON(&i915->drm, (shared_dpll[id].pipe_mask & BIT(crtc->pipe)) == 0);
-
-	shared_dpll[id].pipe_mask &= ~BIT(crtc->pipe);
-
-	drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] releasing %s\n",
-		    crtc->base.base.id, crtc->base.name, pll->info->name);
+	intel_unreference_shared_dpll_crtc(crtc, pll, &shared_dpll[id]);
 }
 
 static void intel_put_dpll(struct intel_atomic_state *state,
@@ -4314,7 +4348,7 @@ static void readout_dpll_hw_state(struct drm_i915_private *i915,
 			to_intel_crtc_state(crtc->base.state);
 
 		if (crtc_state->hw.active && crtc_state->shared_dpll == pll)
-			pll->state.pipe_mask |= BIT(crtc->pipe);
+			intel_reference_shared_dpll_crtc(crtc, pll, &pll->state);
 	}
 	pll->active_mask = pll->state.pipe_mask;
 
-- 
2.37.2

