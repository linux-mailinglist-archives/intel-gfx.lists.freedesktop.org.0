Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C20314A85B0
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Feb 2022 15:03:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E483810F980;
	Thu,  3 Feb 2022 14:03:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACD3410F97E
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Feb 2022 14:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643896984; x=1675432984;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=464gal6UOirYrYmiFh6kegMByEMuJKVdH76D0sj4tIU=;
 b=jZ12Iq7YyC2vJ7c9QDGFP8oQcWMvZAcNGbmQ/lRViJQmkCaEfj7YcVmK
 dHt1VHUr7u/RXmcutAGciQbIAHT29RPGBVTtTXf0MA/zuyYb3repHpG1e
 iehvh4Uz8H+To5M0Zkdkes0+Xjs0RAMZ/Kbu+VG8iD0/TwKMtqcnYvyiS
 dPBQWi8r0CHr8q+EKw9cG90cavWhTlpU9pmTIlhfYMWoRQ6+M2Di+x/tc
 mVEytR0Wlb2C/r30nl/Q5E7S8jSdKM3XPTc0zUhU/SCqgV1huEagK5RiB
 wS+RTu0QDgK70mjFJ5cYZqRrGbXYA5L7aaH3ty4m5JqH1LQgJZx7O98sC Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10246"; a="231717887"
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="231717887"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 06:03:04 -0800
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="523931990"
Received: from cbrady-mobl1.ger.corp.intel.com (HELO localhost) ([10.252.6.65])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 06:03:02 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Feb 2022 16:02:31 +0200
Message-Id: <12ac40c1ef9915fe680c6657b603b08be022626b.1643896905.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1643896905.git.jani.nikula@intel.com>
References: <cover.1643896905.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/7] drm/i915/dpll: add
 intel_dpll_crtc_compute_clock()
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Avoid referencing the function pointer directly to be able to abstract
the call better.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 2 +-
 drivers/gpu/drm/i915/display/intel_dpll.c    | 8 ++++++++
 drivers/gpu/drm/i915/display/intel_dpll.h    | 1 +
 3 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index df347329d90e..04909088cae6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5266,7 +5266,7 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 
 	if (mode_changed && crtc_state->hw.enable &&
 	    !drm_WARN_ON(&dev_priv->drm, crtc_state->shared_dpll)) {
-		ret = dev_priv->dpll_funcs->crtc_compute_clock(crtc_state);
+		ret = intel_dpll_crtc_compute_clock(crtc_state);
 		if (ret)
 			return ret;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 1ce0c171f4fb..809b2004e5b2 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1400,6 +1400,14 @@ static const struct intel_dpll_funcs i8xx_dpll_funcs = {
 	.crtc_compute_clock = i8xx_crtc_compute_clock,
 };
 
+int intel_dpll_crtc_compute_clock(struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+
+	return i915->dpll_funcs->crtc_compute_clock(crtc_state);
+}
+
 void
 intel_dpll_init_clock_hook(struct drm_i915_private *dev_priv)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.h b/drivers/gpu/drm/i915/display/intel_dpll.h
index 1af0ac43cca4..69b06a9e473e 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll.h
@@ -15,6 +15,7 @@ struct intel_crtc_state;
 enum pipe;
 
 void intel_dpll_init_clock_hook(struct drm_i915_private *dev_priv);
+int intel_dpll_crtc_compute_clock(struct intel_crtc_state *crtc_state);
 int vlv_calc_dpll_params(int refclk, struct dpll *clock);
 int pnv_calc_dpll_params(int refclk, struct dpll *clock);
 int i9xx_calc_dpll_params(int refclk, struct dpll *clock);
-- 
2.30.2

