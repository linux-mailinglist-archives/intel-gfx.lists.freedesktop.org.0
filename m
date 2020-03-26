Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5299C194639
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2020 19:14:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A35826E903;
	Thu, 26 Mar 2020 18:14:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BA6E6E903
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2020 18:14:01 +0000 (UTC)
IronPort-SDR: /jp0niOLoa/ntThZ56+sw8EsMOxoe2am3Hqn/okgXErquDvRbrVA4hSN3R058Y1p3njG/KeYeP
 Q87yVtsgM04g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2020 11:14:01 -0700
IronPort-SDR: 6tPGZ3JaCQRABWrf1NIPVqt2aDL4ObpfUIr7x4mkbxr0t0IhMC2Yylx68iN/cSDQXi3uVWU2le
 inAKDI4TbHSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,309,1580803200"; d="scan'208";a="420808215"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by orsmga005.jf.intel.com with ESMTP; 26 Mar 2020 11:13:59 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Mar 2020 20:09:59 +0200
Message-Id: <20200326181005.11775-5-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200326181005.11775-1-stanislav.lisovskiy@intel.com>
References: <20200326181005.11775-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v20 04/10] drm/i915: Add
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

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 29 ++++++++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_bw.h |  9 ++++++++
 2 files changed, 37 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 58b264bc318d..a8b2038db4d2 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -374,7 +374,34 @@ static unsigned int intel_bw_data_rate(struct drm_i915_private *dev_priv,
 	return data_rate;
 }
 
-static struct intel_bw_state *
+struct intel_bw_state *
+intel_atomic_get_bw_old_state(struct intel_atomic_state *state)
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
+intel_atomic_get_bw_new_state(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_global_state *bw_state;
+
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
index a8aa7624c5aa..fe6579c952f5 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_bw.h
@@ -24,6 +24,15 @@ struct intel_bw_state {
 
 #define to_intel_bw_state(x) container_of((x), struct intel_bw_state, base)
 
+struct intel_bw_state *
+intel_atomic_get_bw_old_state(struct intel_atomic_state *state);
+
+struct intel_bw_state *
+intel_atomic_get_bw_new_state(struct intel_atomic_state *state);
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
