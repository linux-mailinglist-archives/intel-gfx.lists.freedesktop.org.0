Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A99EC623B57
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Nov 2022 06:37:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FAA510E09E;
	Thu, 10 Nov 2022 05:37:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44D2510E09E
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Nov 2022 05:37:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668058631; x=1699594631;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VSv24uZyaRo7nf1ucQLOw6k2k0hi1GqNxB9WrzXQTS8=;
 b=EDj++QYvGbs+HlH2lZANLtevK+w8g+jtK4MkY2pyL8mHSCo+M7HbfWKE
 hFEslxUBvbB9arjTg2mB0IZWl04MDc73Xf1+0qXYdPJqj+s2zXbZ37R4G
 uxsp42xJk3V1i08La8yeKtCfWhrWRnBxaXucbv29kkBSGof6JL7yk9MdW
 oZ0i7zW2GEx6avx/JzTvSTwG6/S1HsAasjKjd+s5AAqK4KztjpKRDrH3V
 /nKixx33F0dDWBt6GKqS01ZYLp8kIq8AJ2pLvH/m4dqU1K1TZJNHE3Fyx
 mDZE7rhsZ3kcV5jwOiuPNTBNrkb/dpyvGRZkURvudVktDUgPSpWo2h2/r g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="375463256"
X-IronPort-AV: E=Sophos;i="5.96,152,1665471600"; d="scan'208";a="375463256"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 21:37:10 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="762153258"
X-IronPort-AV: E=Sophos;i="5.96,152,1665471600"; d="scan'208";a="762153258"
Received: from mdatla-mobl1.amr.corp.intel.com (HELO anushasr-mobl7.intel.com)
 ([10.209.100.94])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 21:37:10 -0800
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Nov 2022 21:37:24 -0800
Message-Id: <20221110053724.14701-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Add missing checks for cdclk
 crawling
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

cdclk_sanitize() function was written assuming vco was a signed integer.
vco gets assigned to -1 (essentially ~0) for the case where PLL
might be enabled and vco is not a frequency that will ever
get used. In such a scenario the right thing to do is disable the
PLL and re-enable it again with a valid frequency.
However the vco is declared as a unsigned variable.
With the above assumption, driver takes crawl path when not needed.
Add explicit check to not crawl in the case of an invalid PLL.

Cc: Matt Roper <matthew.d.roper@intel.com>
Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 2 ++
 drivers/gpu/drm/i915/display/intel_cdclk.h | 1 +
 2 files changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 8a9031012d74..91112d266763 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1962,6 +1962,8 @@ static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
 	if (!HAS_CDCLK_CRAWL(dev_priv))
 		return false;
 
+	if (intel_pll_is_unknown(a->vco))
+		return false;
 	/*
 	 * The vco and cd2x divider will change independently
 	 * from each, so we disallow cd2x change when crawling.
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index c674879a84a5..6eb83d806f11 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -80,6 +80,7 @@ intel_atomic_get_cdclk_state(struct intel_atomic_state *state);
 	to_intel_cdclk_state(intel_atomic_get_old_global_obj_state(state, &to_i915(state->base.dev)->display.cdclk.obj))
 #define intel_atomic_get_new_cdclk_state(state) \
 	to_intel_cdclk_state(intel_atomic_get_new_global_obj_state(state, &to_i915(state->base.dev)->display.cdclk.obj))
+#define intel_pll_is_unknown(vco)	((vco) == ~0)
 
 int intel_cdclk_init(struct drm_i915_private *dev_priv);
 
-- 
2.25.1

