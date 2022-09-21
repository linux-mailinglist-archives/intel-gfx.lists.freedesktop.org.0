Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CBE25BFDCC
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Sep 2022 14:24:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C6DF10E95D;
	Wed, 21 Sep 2022 12:24:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B442B10E957
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Sep 2022 12:23:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663763038; x=1695299038;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=6/ajOean8DR31+fupjTgT50npA8RQOXovAAvJTZpTTM=;
 b=eIK6rpV2UAvTctQcRWRMzTlpCLyou0k4S5qYDYpUeIkMl0Y7/1Lw2uhl
 e52xCPxbhneO8tu0BoHXNu4djFcFHpGml66WQw/DKgLhQX1gWcGyWxUBY
 88w4w8/36MdjVEG1W8alQABHQ64xxPPvVM77jQMB6kn2FoovKsy+VV/+O
 vemTmpAHArUYHv2wkAuACc5hU6luJagRyTXy84uz50v9TL9vZ0lQ764re
 3GobKWSblnHm+FmQeZdoLZ0sAs87uY/CsLoqbqgtakxTycz4+EExIT3TI
 L44b+RL71zQnuo7TH9XfQgFAL9zqsvVP3BPP1CB0F2Zf9IUX1rF7GJolI w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="298704367"
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; d="scan'208";a="298704367"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 05:23:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; d="scan'208";a="761728407"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga001.fm.intel.com with SMTP; 21 Sep 2022 05:23:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 21 Sep 2022 15:23:55 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Sep 2022 15:23:43 +0300
Message-Id: <20220921122343.13061-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220921122343.13061-1-ville.syrjala@linux.intel.com>
References: <20220921122343.13061-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: Decouple I915_NUM_PLLS from PLL
 IDs
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 24 +++++++++++++++++--
 1 file changed, 22 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index fb09029cc4aa..ee04b63d2696 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -315,6 +315,21 @@ void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_state)
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
+		dpll_mask |= BIT(pll->info->id);
+	}
+
+	return dpll_mask;
+}
+
 static struct intel_shared_dpll *
 intel_find_shared_dpll(struct intel_atomic_state *state,
 		       const struct intel_crtc *crtc,
@@ -322,15 +337,16 @@ intel_find_shared_dpll(struct intel_atomic_state *state,
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
 		int i;
 
@@ -4234,6 +4250,10 @@ void intel_shared_dpll_init(struct drm_i915_private *dev_priv)
 				i >= ARRAY_SIZE(dev_priv->display.dpll.shared_dplls)))
 			break;
 
+		/* must fit into unsigned long bitmask on 32bit */
+		if (drm_WARN_ON(&dev_priv->drm, dpll_info[i].id >= 32))
+			break;
+
 		dev_priv->display.dpll.shared_dplls[i].info = &dpll_info[i];
 	}
 
-- 
2.35.1

