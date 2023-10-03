Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17BCB7B724A
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Oct 2023 22:06:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FACD10E319;
	Tue,  3 Oct 2023 20:06:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5B7A10E318
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Oct 2023 20:06:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696363595; x=1727899595;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tuODbmhEyV+ktfjehi6L6HyVSktv2Wdf0RPmLE6wKl8=;
 b=L8Dte0qQGbKKekvTOMcF3y+mpSiAyOu5AQsAh48plRjoKjJiKwGnCsVO
 j5vlyCHEmIOzubmO2LIXnKvXwUJCvEbr1LXXovFT1fGpSx1U62Vv3yL7+
 XVaPkGiZQNLawhJlewYwvT0oupUW4Mp1lkKe2AZy9iSOBUA9kyV0hh34d
 CXjvc5DEHPsfj+FDepEmn2cCNCE56JNHBty1BVGXvgY/1Ad6Dn5n/T81z
 YRfmRJe6CPu2s+Q0yWtMXpHzmo/ndGg9FZ5E/ua1pdPwvFw3ZRGxnwWyL
 vKYFF2+jAzotV5tGvxDnY9bTmenuOv6Va74zkeImxupNXW+hiMQPccfsu g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="380242822"
X-IronPort-AV: E=Sophos;i="6.03,198,1694761200"; d="scan'208";a="380242822"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 13:06:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="816829653"
X-IronPort-AV: E=Sophos;i="6.03,198,1694761200"; d="scan'208";a="816829653"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga008.fm.intel.com with SMTP; 03 Oct 2023 13:06:27 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 Oct 2023 23:06:26 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Oct 2023 23:06:18 +0300
Message-ID: <20231003200620.11633-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231003200620.11633-1-ville.syrjala@linux.intel.com>
References: <20231003200620.11633-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/4] drm/i915: Decouple I915_NUM_PLLS from
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
index 614fdc21bde0..5b0ad34132c6 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -314,6 +314,23 @@ void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_state)
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
@@ -321,15 +338,16 @@ intel_find_shared_dpll(struct intel_atomic_state *state,
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
@@ -4189,6 +4207,10 @@ void intel_shared_dpll_init(struct drm_i915_private *dev_priv)
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
2.41.0

