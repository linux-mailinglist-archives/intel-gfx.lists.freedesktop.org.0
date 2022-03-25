Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FAFC4E738E
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 13:32:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F22110E677;
	Fri, 25 Mar 2022 12:32:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D2E810E677
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Mar 2022 12:32:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648211552; x=1679747552;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=KRIH7lbq9maUAgJ3YppdU/DksnLCC/Y4VTLu06GoF5A=;
 b=dedAW0LdZL/kdSuwwHWzaKphXjzlwtfwRxgBFwg/z01dDc+2hABR9LxL
 ZR1lgs7P9xIiipJTIF5YkJptJJsvDrWS3mJ8TdInBIDmVpsEq2wiCi8Pc
 kO1CiwiTJ6TcXF0ZUhm/G4wP+Rk8HS6B4Pp5UBFdR4KKAEpfDcFoEl2o7
 Ow49FBkewA2CAvYbYq02pN1CY24Bu5XXq8+SJRySHjbI15tMf3E+RUnm/
 YrEAJX9YaGKJaXyQhAHSOe+6+T5ZNNj3HN2ZRgXoMTwzoIKeJtW26g8oj
 lJyYmTG+63wH2lhUh9GTGi83hMOoV8BdBQeeiIA+wC4xaqi0U1hmJQoX9 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10296"; a="258338579"
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="258338579"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 05:32:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="584449731"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by orsmga001.jf.intel.com with SMTP; 25 Mar 2022 05:32:11 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 25 Mar 2022 14:32:11 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Mar 2022 14:31:54 +0200
Message-Id: <20220325123205.22140-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220325123205.22140-1-ville.syrjala@linux.intel.com>
References: <20220325123205.22140-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/13] drm/i915: Pass dev_priv to
 intel_shared_dpll_init()
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

Stop passing around the drm_device and just pass the
dev_priv instead.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 2 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 9 ++++-----
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h | 3 +--
 3 files changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 3d2ff258f0a9..986e2e67ef91 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -9754,7 +9754,7 @@ int intel_modeset_init_nogem(struct drm_i915_private *i915)
 	}
 
 	intel_plane_possible_crtcs_init(i915);
-	intel_shared_dpll_init(dev);
+	intel_shared_dpll_init(i915);
 	intel_fdi_pll_freq_update(i915);
 
 	intel_update_czclk(i915);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 1d52796333ab..dc3c889b0aa6 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4078,13 +4078,12 @@ static const struct intel_dpll_mgr adlp_pll_mgr = {
 
 /**
  * intel_shared_dpll_init - Initialize shared DPLLs
- * @dev: drm device
+ * @dev_priv: i915 device
  *
- * Initialize shared DPLLs for @dev.
+ * Initialize shared DPLLs for @dev_priv.
  */
-void intel_shared_dpll_init(struct drm_device *dev)
+void intel_shared_dpll_init(struct drm_i915_private *dev_priv)
 {
-	struct drm_i915_private *dev_priv = to_i915(dev);
 	const struct intel_dpll_mgr *dpll_mgr = NULL;
 	const struct dpll_info *dpll_info;
 	int i;
@@ -4123,7 +4122,7 @@ void intel_shared_dpll_init(struct drm_device *dev)
 	dpll_info = dpll_mgr->dpll_info;
 
 	for (i = 0; dpll_info[i].name; i++) {
-		drm_WARN_ON(dev, i != dpll_info[i].id);
+		drm_WARN_ON(&dev_priv->drm, i != dpll_info[i].id);
 		dev_priv->dpll.shared_dplls[i].info = &dpll_info[i];
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index 499a43e39123..f7c96a1f13c8 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -37,7 +37,6 @@
 	__a > __b ? (__a - __b) : (__b - __a); })
 
 enum tc_port;
-struct drm_device;
 struct drm_i915_private;
 struct intel_atomic_state;
 struct intel_crtc;
@@ -356,7 +355,7 @@ bool intel_dpll_get_hw_state(struct drm_i915_private *i915,
 void intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state);
 void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_state);
 void intel_shared_dpll_swap_state(struct intel_atomic_state *state);
-void intel_shared_dpll_init(struct drm_device *dev);
+void intel_shared_dpll_init(struct drm_i915_private *dev_priv);
 void intel_dpll_update_ref_clks(struct drm_i915_private *dev_priv);
 void intel_dpll_readout_hw_state(struct drm_i915_private *dev_priv);
 void intel_dpll_sanitize_state(struct drm_i915_private *dev_priv);
-- 
2.34.1

