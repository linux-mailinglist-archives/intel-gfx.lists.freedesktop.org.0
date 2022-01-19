Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 189ED49392E
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jan 2022 12:05:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 465AE10E720;
	Wed, 19 Jan 2022 11:05:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C56DD10E6A8
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jan 2022 11:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642590334; x=1674126334;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=E82jfYpnUOHf9PTyqG1owvoH6V+r2c61Xq1r11yaimg=;
 b=MVISOjIxH8vPJ1NRheMmTHxd1hNbAQFw4YKEOPcYk6Ph0gqrjs8E7zXc
 lXkFspPv6GU3JUl2Lrhu5UyrqDamU/TO8Nk/oKb5n3JGUS6nP9eEL+pKt
 g7y3yYA0iGWD62Gpodlru+Rf9FSpTyEdLgBpsfXvh33NwJOf4Xcp9i6zN
 nhFDlDRvxd2Unn9eTEFYW3pmhyOU2O97ZB7lr4tXxR/v+VawpNc0uBWfR
 Iu35cZc6Tz4Vd4gEBo7+h69rPW8HOb6M0CcrhqR9+R39CiF7k5eB7kMnK
 bISQbWlnRmU9SGh6s5sVR2DdxHpyX/J0tnbYTj/Py1uMRBAuZeyuaSwO7 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10231"; a="308381983"
X-IronPort-AV: E=Sophos;i="5.88,299,1635231600"; d="scan'208";a="308381983"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2022 03:05:34 -0800
X-IronPort-AV: E=Sophos;i="5.88,299,1635231600"; d="scan'208";a="532235734"
Received: from elenadel-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.50.196])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2022 03:05:32 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Jan 2022 13:05:28 +0200
Message-Id: <20220119110528.2377899-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dpll: make intel_shared_dpll_funcs
 internal to intel_dpll_mgr.c
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

Move struct intel_shared_dpll_funcs to intel_dpll_mgr.c, as no other
place needs to have access to it. We also don't need to have kernel-doc
documentation for file internal structures, so drop them while at it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 35 ++++++++++++++
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h | 46 +------------------
 2 files changed, 36 insertions(+), 45 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 3f7357123a6d..6723c3de5a80 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -50,6 +50,41 @@
  * commit phase.
  */
 
+/* platform specific hooks for managing DPLLs */
+struct intel_shared_dpll_funcs {
+	/*
+	 * Hook for enabling the pll, called from intel_enable_shared_dpll() if
+	 * the pll is not already enabled.
+	 */
+	void (*enable)(struct drm_i915_private *i915,
+		       struct intel_shared_dpll *pll);
+
+	/*
+	 * Hook for disabling the pll, called from intel_disable_shared_dpll()
+	 * only when it is safe to disable the pll, i.e., there are no more
+	 * tracked users for it.
+	 */
+	void (*disable)(struct drm_i915_private *i915,
+			struct intel_shared_dpll *pll);
+
+	/*
+	 * Hook for reading the values currently programmed to the DPLL
+	 * registers. This is used for initial hw state readout and state
+	 * verification after a mode set.
+	 */
+	bool (*get_hw_state)(struct drm_i915_private *i915,
+			     struct intel_shared_dpll *pll,
+			     struct intel_dpll_hw_state *hw_state);
+
+	/*
+	 * Hook for calculating the pll's output frequency based on its passed
+	 * in state.
+	 */
+	int (*get_freq)(struct drm_i915_private *i915,
+			const struct intel_shared_dpll *pll,
+			const struct intel_dpll_hw_state *pll_state);
+};
+
 struct intel_dpll_mgr {
 	const struct dpll_info *dpll_info;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index ef2889753807..91fe181462b2 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -44,6 +44,7 @@ struct intel_crtc;
 struct intel_crtc_state;
 struct intel_encoder;
 struct intel_shared_dpll;
+struct intel_shared_dpll_funcs;
 
 /**
  * enum intel_dpll_id - possible DPLL ids
@@ -251,51 +252,6 @@ struct intel_shared_dpll_state {
 	struct intel_dpll_hw_state hw_state;
 };
 
-/**
- * struct intel_shared_dpll_funcs - platform specific hooks for managing DPLLs
- */
-struct intel_shared_dpll_funcs {
-	/**
-	 * @enable:
-	 *
-	 * Hook for enabling the pll, called from intel_enable_shared_dpll()
-	 * if the pll is not already enabled.
-	 */
-	void (*enable)(struct drm_i915_private *dev_priv,
-		       struct intel_shared_dpll *pll);
-
-	/**
-	 * @disable:
-	 *
-	 * Hook for disabling the pll, called from intel_disable_shared_dpll()
-	 * only when it is safe to disable the pll, i.e., there are no more
-	 * tracked users for it.
-	 */
-	void (*disable)(struct drm_i915_private *dev_priv,
-			struct intel_shared_dpll *pll);
-
-	/**
-	 * @get_hw_state:
-	 *
-	 * Hook for reading the values currently programmed to the DPLL
-	 * registers. This is used for initial hw state readout and state
-	 * verification after a mode set.
-	 */
-	bool (*get_hw_state)(struct drm_i915_private *dev_priv,
-			     struct intel_shared_dpll *pll,
-			     struct intel_dpll_hw_state *hw_state);
-
-	/**
-	 * @get_freq:
-	 *
-	 * Hook for calculating the pll's output frequency based on its
-	 * passed in state.
-	 */
-	int (*get_freq)(struct drm_i915_private *i915,
-			const struct intel_shared_dpll *pll,
-			const struct intel_dpll_hw_state *pll_state);
-};
-
 /**
  * struct dpll_info - display PLL platform specific info
  */
-- 
2.30.2

