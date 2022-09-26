Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0196B5EB103
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Sep 2022 21:14:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F12C10E79B;
	Mon, 26 Sep 2022 19:13:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9809E10E776
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Sep 2022 19:13:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664219630; x=1695755630;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4YveLBKfGogXdcdmlYQqFU9KW92gqXJn67272llIASY=;
 b=XaVJQaITwOMfONSZv+tO62wCADxM/j2fBaU94WrkzCjMRqQI4CPIn274
 OkAMCIXehUrXDoYvmcXnYE/Z0krdn7v3kycg2drhQW5KNffbWqImEaWXV
 4lmCIc/77PawUqChntz8ErpD/fLN4SgMikUCthOA98OvAWQVi1p6mgR/E
 SgQZ5ondic4gv+kwzYk5XMHTEHG9rFnvHJR8v9oWYfFvw3xPCedm7pADg
 BJsfZRqR9GAlSHY3zppS1dfwkNbKXBn0Z/CZ6PBmS1pxTii+UoB2zGzFI
 ckFWxO1o/ncYQk2z/AJQ8eSUSPD4dt+Q+xZAj5irf3I6OjINIL/hC+nO6 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="280841923"
X-IronPort-AV: E=Sophos;i="5.93,346,1654585200"; d="scan'208";a="280841923"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 12:13:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="616525367"
X-IronPort-AV: E=Sophos;i="5.93,346,1654585200"; d="scan'208";a="616525367"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 26 Sep 2022 12:13:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 26 Sep 2022 22:13:47 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Sep 2022 22:13:39 +0300
Message-Id: <20220926191341.5495-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220926191341.5495-1-ville.syrjala@linux.intel.com>
References: <20220926191341.5495-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/4] drm/i915: Decouple I915_NUM_PLLS from
 PLL IDs
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Stop assuming the size of PLL ID based bitmask is restricted
to I915_NUM_PLLS bits. This is the last thing coupling the
two things together and thus artificially limiting PLL IDs.

We could just pass any arbitrary (large enough) size to
for_each_set_bit() and be done with it, but the WARN
requiring the caller to not pass in a bogus bitmask seems
potentially useful to keep around. So let's just calculate
the full bitmask on the spot.

And while at it let's assert that the PLL IDs will fit
into the bitmask we use for them.

TODO: could also get rid of I915_NUM_PLLS entirely and just
dynamically allocate i915->shared_dplls[] and state->shared_dpll[].
But that would involve error handling in the modeset init path. Uff.

v2: Warn about conflicting PLL IDs (Jani)

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 26 +++++++++++++++++--
 1 file changed, 24 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 78c63a2532c1..25e6f7a427b0 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -308,6 +308,23 @@ void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_state)
 	mutex_unlock(&dev_priv->display.dpll.lock);
 }
 
+static unsigned long
+intel_dpll_mask_all(struct drm_i915_private *i915)
+{
+	unsigned long dpll_mask = 0;
+	int i;
+
+	for (i = 0; i < i915->display.dpll.num_shared_dpll; i++) {
+		struct intel_shared_dpll *pll = &i915->display.dpll.shared_dplls[i];
+
+		drm_WARN_ON(&i915->drm, dpll_mask & BIT(pll->info->id));
+
+		dpll_mask |= BIT(pll->info->id);
+	}
+
+	return dpll_mask;
+}
+
 static struct intel_shared_dpll *
 intel_find_shared_dpll(struct intel_atomic_state *state,
 		       const struct intel_crtc *crtc,
@@ -315,15 +332,16 @@ intel_find_shared_dpll(struct intel_atomic_state *state,
 		       unsigned long dpll_mask)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	unsigned long dpll_mask_all = intel_dpll_mask_all(dev_priv);
 	struct intel_shared_dpll_state *shared_dpll;
 	struct intel_shared_dpll *unused_pll = NULL;
 	enum intel_dpll_id id;
 
 	shared_dpll = intel_atomic_get_shared_dpll_state(&state->base);
 
-	drm_WARN_ON(&dev_priv->drm, dpll_mask & ~(BIT(I915_NUM_PLLS) - 1));
+	drm_WARN_ON(&dev_priv->drm, dpll_mask & ~dpll_mask_all);
 
-	for_each_set_bit(id, &dpll_mask, I915_NUM_PLLS) {
+	for_each_set_bit(id, &dpll_mask, fls(dpll_mask_all)) {
 		struct intel_shared_dpll *pll;
 
 		pll = intel_get_shared_dpll_by_id(dev_priv, id);
@@ -4220,6 +4238,10 @@ void intel_shared_dpll_init(struct drm_i915_private *dev_priv)
 				i >= ARRAY_SIZE(dev_priv->display.dpll.shared_dplls)))
 			break;
 
+		/* must fit into unsigned long bitmask on 32bit */
+		if (drm_WARN_ON(&dev_priv->drm, dpll_info[i].id >= 32))
+			break;
+
 		dev_priv->display.dpll.shared_dplls[i].info = &dpll_info[i];
 		dev_priv->display.dpll.shared_dplls[i].index = i;
 	}
-- 
2.35.1

