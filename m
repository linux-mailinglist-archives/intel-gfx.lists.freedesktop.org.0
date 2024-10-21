Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 294A29A934D
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 00:28:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA7EB10E5C0;
	Mon, 21 Oct 2024 22:28:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eCLa4B/R";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 584CD10E5BC;
 Mon, 21 Oct 2024 22:28:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729549698; x=1761085698;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=82pkxPbdqdDrqUVYQtV2U8WiNHQLIJYqYJ8Q9nd6CMg=;
 b=eCLa4B/RnEXye+YGjiCAxcTih0tiJhsrnf39wVaTQY7ERZwPBBgYzrwm
 h9c3JuBJ3x4aa6vMwBqKQDZ1yd1JDRrDNH2n48wqXx6U7CC3QCOvflEEE
 FXeZG8LPeXzwSAP2HcyHqbs87ynVXlGW7uXf+LMM38aLoTglp5/WvykB0
 mywZ6bBif/6qRik9V1NjD14LUj999SgmrxLZSF5Iq/168VI+Va2c2tukP
 R7BqR9oUdbuvpBx3LwC3Ia7q+E8a81WVKyNUoK9+AN8/wlxXKfQF9K4xe
 Id9IMg/11yy3dXPO2+UpS3sEcaVhmgFu7JdmAzPDSnJ/wZaIFhPMdhVBh Q==;
X-CSE-ConnectionGUID: V7aBkTglRa6FKxt+GQzG1w==
X-CSE-MsgGUID: 1tjzU/TEQQ+d2C1tHknwIw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28934471"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28934471"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 15:28:18 -0700
X-CSE-ConnectionGUID: 4SqmUJ8LTe6XdUT1x920WA==
X-CSE-MsgGUID: TOBj4N7LT/u/9oJZf7x71Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,221,1725346800"; d="scan'208";a="80009637"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO
 gjsousa-mobl2.intel.com) ([10.125.110.79])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 15:28:16 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 10/13] drm/i915/dmc_wl: Couple enable/disable with dynamic DC
 states
Date: Mon, 21 Oct 2024 19:27:29 -0300
Message-ID: <20241021222744.294371-11-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241021222744.294371-1-gustavo.sousa@intel.com>
References: <20241021222744.294371-1-gustavo.sousa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Enabling and disabling the DMC wakelock should be done as part of
enabling and disabling of dynamic DC states, respectively. We should not
enable or disable DMC wakelock independently of DC states, otherwise we
would risk ending up with an inconsistent state where dynamic DC states
are enabled and the DMC wakelock is disabled, going against current
recommendations and making MMIO transactions potentially slower. In
future display IPs that could have a worse outcome if DMC trap
implementation is completely removed.

So, let's make things safer by tying stuff together, removing the
independent calls, and also put warnings in place to detect inconsistent
calls.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power_well.c | 5 ++++-
 drivers/gpu/drm/i915/display/intel_dmc.c                | 4 ----
 drivers/gpu/drm/i915/display/intel_dmc_wl.c             | 6 ++++--
 3 files changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index e8946ce86aaa..1a6c93170a5a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -981,6 +981,7 @@ void gen9_disable_dc_states(struct intel_display *display)
 	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct i915_power_domains *power_domains = &display->power.domains;
 	struct intel_cdclk_config cdclk_config = {};
+	u32 old_state = power_domains->dc_state;
 
 	if (power_domains->target_dc_state == DC_STATE_EN_DC3CO) {
 		tgl_disable_dc3co(display);
@@ -996,7 +997,9 @@ void gen9_disable_dc_states(struct intel_display *display)
 		return;
 	}
 
-	intel_dmc_wl_disable(display);
+	if (old_state == DC_STATE_EN_UPTO_DC5 ||
+	    old_state == DC_STATE_EN_UPTO_DC6)
+		intel_dmc_wl_disable(display);
 
 	intel_cdclk_get_cdclk(display, &cdclk_config);
 	/* Can't read out voltage_level so can't use intel_cdclk_changed() */
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 48bbbf8f312c..f0b12c609884 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -632,8 +632,6 @@ void intel_dmc_disable_program(struct intel_display *display)
 	pipedmc_clock_gating_wa(display, true);
 	disable_all_event_handlers(display);
 	pipedmc_clock_gating_wa(display, false);
-
-	intel_dmc_wl_disable(display);
 }
 
 void assert_dmc_loaded(struct intel_display *display)
@@ -1140,8 +1138,6 @@ void intel_dmc_suspend(struct intel_display *display)
 	if (dmc)
 		flush_work(&dmc->work);
 
-	intel_dmc_wl_disable(display);
-
 	/* Drop the reference held in case DMC isn't loaded. */
 	if (!intel_dmc_has_payload(display))
 		intel_dmc_runtime_pm_put(display);
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index e27c06b7c42f..8283b607aac4 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -271,6 +271,7 @@ void intel_dmc_wl_init(struct intel_display *display)
 	refcount_set(&wl->refcount, 0);
 }
 
+/* Must only be called as part of enabling dynamic DC states. */
 void intel_dmc_wl_enable(struct intel_display *display)
 {
 	struct intel_dmc_wl *wl = &display->wl;
@@ -281,7 +282,7 @@ void intel_dmc_wl_enable(struct intel_display *display)
 
 	spin_lock_irqsave(&wl->lock, flags);
 
-	if (wl->enabled)
+	if (drm_WARN_ON(display->drm, wl->enabled))
 		goto out_unlock;
 
 	/*
@@ -314,6 +315,7 @@ void intel_dmc_wl_enable(struct intel_display *display)
 	spin_unlock_irqrestore(&wl->lock, flags);
 }
 
+/* Must only be called as part of disabling dynamic DC states. */
 void intel_dmc_wl_disable(struct intel_display *display)
 {
 	struct intel_dmc_wl *wl = &display->wl;
@@ -326,7 +328,7 @@ void intel_dmc_wl_disable(struct intel_display *display)
 
 	spin_lock_irqsave(&wl->lock, flags);
 
-	if (!wl->enabled)
+	if (drm_WARN_ON(display->drm, !wl->enabled))
 		goto out_unlock;
 
 	/* Disable wakelock in DMC */
-- 
2.47.0

