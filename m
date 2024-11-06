Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96DE59BF8B6
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 22:53:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DB1010E789;
	Wed,  6 Nov 2024 21:53:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eVWP6gMs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FD5010E784;
 Wed,  6 Nov 2024 21:53:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730929990; x=1762465990;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GvwkU13JngCfcB+xQwowEb+0BpMfvHIyeAA7Mc11bDI=;
 b=eVWP6gMsE8l5meNyua/26AZHQpGUwgtSOteYcafg1PVyjd2do+IErU4a
 d2nwn1xw/5nskTBchbyaVfv1SCZtFbznTsETYNlNQgW1iMea+Ud1U8hru
 XxHUI+1G+fIlTsn7BrP6I3slL6jNdxUpkNebV7vKaLOAEFo7snKgnmBA9
 4RhXosbyRL7nSato3bh2YihjeHXnUaTuuQz9HH1mWMHUU0uUQQ2NAZPaI
 AoQwPkZ2lQO9qE9GLggiD+4inw46Iap5IHistEqZgbUDnRBAayLplrWRc
 qn1fy2jOqviRIoKBnEvvgeofwshB2mZ+mxsGaKQ7+HgKIX7E2yZmrHfty Q==;
X-CSE-ConnectionGUID: wQYvhOSLR3OhMmzhaod66A==
X-CSE-MsgGUID: iJNL0roLQ52JUbc3v70YFw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="48212194"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="48212194"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 13:53:03 -0800
X-CSE-ConnectionGUID: O4gCREsaRmqejCl3MwaRxQ==
X-CSE-MsgGUID: irLFNs4/ScmQ+uTBK8KuNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="84882507"
Received: from puneetse-mobl.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.110.118])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 13:53:01 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 12/17] drm/i915/dmc_wl: Couple enable/disable with dynamic
 DC states
Date: Wed,  6 Nov 2024 18:50:38 -0300
Message-ID: <20241106215231.103474-13-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241106215231.103474-1-gustavo.sousa@intel.com>
References: <20241106215231.103474-1-gustavo.sousa@intel.com>
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

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power_well.c | 5 ++++-
 drivers/gpu/drm/i915/display/intel_dmc.c                | 4 ----
 drivers/gpu/drm/i915/display/intel_dmc_wl.c             | 6 ++++--
 3 files changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 578959ff2d75..bdf6c690a03b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -988,6 +988,7 @@ void gen9_disable_dc_states(struct intel_display *display)
 	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct i915_power_domains *power_domains = &display->power.domains;
 	struct intel_cdclk_config cdclk_config = {};
+	u32 old_state = power_domains->dc_state;
 
 	if (power_domains->target_dc_state == DC_STATE_EN_DC3CO) {
 		tgl_disable_dc3co(display);
@@ -1003,7 +1004,9 @@ void gen9_disable_dc_states(struct intel_display *display)
 		return;
 	}
 
-	intel_dmc_wl_disable(display);
+	if (old_state == DC_STATE_EN_UPTO_DC5 ||
+	    old_state == DC_STATE_EN_UPTO_DC6)
+		intel_dmc_wl_disable(display);
 
 	intel_cdclk_get_cdclk(display, &cdclk_config);
 	/* Can't read out voltage_level so can't use intel_cdclk_changed() */
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 87bdacfd9edf..221d3abda791 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -638,8 +638,6 @@ void intel_dmc_disable_program(struct intel_display *display)
 	pipedmc_clock_gating_wa(display, true);
 	disable_all_event_handlers(display);
 	pipedmc_clock_gating_wa(display, false);
-
-	intel_dmc_wl_disable(display);
 }
 
 void assert_dmc_loaded(struct intel_display *display)
@@ -1146,8 +1144,6 @@ void intel_dmc_suspend(struct intel_display *display)
 	if (dmc)
 		flush_work(&dmc->work);
 
-	intel_dmc_wl_disable(display);
-
 	/* Drop the reference held in case DMC isn't loaded. */
 	if (!intel_dmc_has_payload(display))
 		intel_dmc_runtime_pm_put(display);
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index b8887216a684..f2d64954916a 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -283,6 +283,7 @@ void intel_dmc_wl_init(struct intel_display *display)
 	refcount_set(&wl->refcount, 0);
 }
 
+/* Must only be called as part of enabling dynamic DC states. */
 void intel_dmc_wl_enable(struct intel_display *display, u32 dc_state)
 {
 	struct intel_dmc_wl *wl = &display->wl;
@@ -295,7 +296,7 @@ void intel_dmc_wl_enable(struct intel_display *display, u32 dc_state)
 
 	wl->dc_state = dc_state;
 
-	if (wl->enabled)
+	if (drm_WARN_ON(display->drm, wl->enabled))
 		goto out_unlock;
 
 	/*
@@ -328,6 +329,7 @@ void intel_dmc_wl_enable(struct intel_display *display, u32 dc_state)
 	spin_unlock_irqrestore(&wl->lock, flags);
 }
 
+/* Must only be called as part of disabling dynamic DC states. */
 void intel_dmc_wl_disable(struct intel_display *display)
 {
 	struct intel_dmc_wl *wl = &display->wl;
@@ -340,7 +342,7 @@ void intel_dmc_wl_disable(struct intel_display *display)
 
 	spin_lock_irqsave(&wl->lock, flags);
 
-	if (!wl->enabled)
+	if (drm_WARN_ON(display->drm, !wl->enabled))
 		goto out_unlock;
 
 	/* Disable wakelock in DMC */
-- 
2.47.0

