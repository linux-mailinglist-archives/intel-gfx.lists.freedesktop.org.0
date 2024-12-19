Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F5879F87A1
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2024 23:15:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A188910EDF6;
	Thu, 19 Dec 2024 22:14:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ysh8AUyE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E7A610EDF5;
 Thu, 19 Dec 2024 22:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734646498; x=1766182498;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=TVeC1NQjlRTgOg4RZ8TEsTG2cEJIPnEHtWZpZcI3quM=;
 b=Ysh8AUyE6mIQnfgjFUdnA0lKeOBFd537HaiIr2l/9cIFv1miIGGTVBWX
 ElfseyFnFxDsesBlIovx88Ol9V9R9o1HjnvE9KLbSp6UxxDbn09m6zBx6
 mYGfUssrcDvNHq7jxkzn8PJZ4Hc3VSXczWDVeX5CYylwn1Qe2GJc+qNmL
 0ku6gC9hcXnsei7JhcTWp8jt8C+Snc5QmZTlkBaiqq+NXqC1DtQbj3y6q
 5R+5D0rCLaKd7g5WTFmko1r2gG5twF7rP20o6EubTp6RQMrzeIC3V0zNC
 fwEjO9FtRuXx4EPMj+EgM7lXVqZwDSeLT5PcILZdjQlbjUlWCMwMxmaGQ Q==;
X-CSE-ConnectionGUID: C0ckYgiSTKmHWJjSp/pZLw==
X-CSE-MsgGUID: qUbl7L3ZRrehqlCCYpUPfw==
X-IronPort-AV: E=McAfee;i="6700,10204,11291"; a="35217718"
X-IronPort-AV: E=Sophos;i="6.12,248,1728975600"; d="scan'208";a="35217718"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 14:14:58 -0800
X-CSE-ConnectionGUID: VifHxqOhQNeldPGF4YTFiQ==
X-CSE-MsgGUID: R37b7EN3QEauGtWvyrOGIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="102944128"
Received: from bmurrell-mobl.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.108.91])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 14:14:57 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/4] drm/i915/dmc_wl: Allow enable_dmc_wl=2 to mean "match any
 register"
Date: Thu, 19 Dec 2024 19:14:15 -0300
Message-ID: <20241219221429.109668-4-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241219221429.109668-1-gustavo.sousa@intel.com>
References: <20241219221429.109668-1-gustavo.sousa@intel.com>
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

When debugging issues that might be related to the DMC wakelock code, it
is sometimes useful to compare runs when we match any register offset vs
the regular case. If issues disappear when we take the wakelock for any
register, it might indicate that we are missing some offset to be
tracked. Support matching any register offset with enable_dmc_wl=2.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 .../gpu/drm/i915/display/intel_display_params.c |  2 +-
 drivers/gpu/drm/i915/display/intel_dmc_wl.c     | 17 ++++++++++++++---
 2 files changed, 15 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index f92e4640a613..f0f388f38fa7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -130,7 +130,7 @@ intel_display_param_named_unsafe(enable_psr2_sel_fetch, bool, 0400,
 
 intel_display_param_named_unsafe(enable_dmc_wl, int, 0400,
 	"Enable DMC wakelock "
-	"(-1=use per-chip default, 0=disabled, 1=enabled) "
+	"(-1=use per-chip default, 0=disabled, 1=enabled, 2=match any register) "
 	"Default: -1");
 
 __maybe_unused
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index 2315c6318b51..22e963da65c6 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -56,6 +56,7 @@
 enum {
 	ENABLE_DMC_WL_DISABLED,
 	ENABLE_DMC_WL_ENABLED,
+	ENABLE_DMC_WL_ANY_REGISTER,
 	ENABLE_DMC_WL_MAX,
 };
 
@@ -239,10 +240,15 @@ static bool intel_dmc_wl_reg_in_range(i915_reg_t reg,
 	return false;
 }
 
-static bool intel_dmc_wl_check_range(i915_reg_t reg, u32 dc_state)
+static bool intel_dmc_wl_check_range(struct intel_display *display,
+				     i915_reg_t reg,
+				     u32 dc_state)
 {
 	const struct intel_dmc_wl_range *ranges;
 
+	if (display->params.enable_dmc_wl == ENABLE_DMC_WL_ANY_REGISTER)
+		return true;
+
 	/*
 	 * Check that the offset is in one of the ranges for which
 	 * registers are powered off during DC states.
@@ -303,6 +309,9 @@ static void intel_dmc_wl_sanitize_param(struct intel_display *display)
 	case ENABLE_DMC_WL_ENABLED:
 		desc = "enabled";
 		break;
+	case ENABLE_DMC_WL_ANY_REGISTER:
+		desc = "match any register";
+		break;
 	default:
 		desc = "unknown";
 		break;
@@ -429,7 +438,8 @@ void intel_dmc_wl_get(struct intel_display *display, i915_reg_t reg)
 
 	spin_lock_irqsave(&wl->lock, flags);
 
-	if (i915_mmio_reg_valid(reg) && !intel_dmc_wl_check_range(reg, wl->dc_state))
+	if (i915_mmio_reg_valid(reg) &&
+	    !intel_dmc_wl_check_range(display, reg, wl->dc_state))
 		goto out_unlock;
 
 	if (!wl->enabled) {
@@ -461,7 +471,8 @@ void intel_dmc_wl_put(struct intel_display *display, i915_reg_t reg)
 
 	spin_lock_irqsave(&wl->lock, flags);
 
-	if (i915_mmio_reg_valid(reg) && !intel_dmc_wl_check_range(reg, wl->dc_state))
+	if (i915_mmio_reg_valid(reg) &&
+	    !intel_dmc_wl_check_range(display, reg, wl->dc_state))
 		goto out_unlock;
 
 	if (WARN_RATELIMIT(!refcount_read(&wl->refcount),
-- 
2.47.1

