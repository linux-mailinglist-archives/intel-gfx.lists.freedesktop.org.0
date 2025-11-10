Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE85C48549
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Nov 2025 18:28:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D695510E49D;
	Mon, 10 Nov 2025 17:28:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f1qZ+Ed7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D333210E49F;
 Mon, 10 Nov 2025 17:28:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762795733; x=1794331733;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=j4FtGa6gVpHEntYGtvwuZG8Ushux8bm3O3AroiWVt+I=;
 b=f1qZ+Ed7YwiiwAVPkuvaeEg+U/Cjnz6Di1arw1SVDjXujE6Go34LfbHD
 SeW70ktDXEjdJr3Msp9SjCe5/oYBjRazJ12y8Rbt+MM9vBEDTBRhAEy41
 GVC+mwHRJ8vCWQFXzih/7vPqPkmLjTan0wZxsngTGZzeJvrbyrUNw3v2j
 lpl+USUeebQ/PjrRwz5g46YHLXeYizx/Gr60FiN2Ctd6rU4MXp8UhCWoZ
 /zSrPUfmYL9UU0pOjbjeTFy82TdQYp9Su9zRD2VDXSym159ZLDeAWx588
 uB9NF7tZ+ykoj2oteuvduFRsMM8iZEWVFxETKJboZNlK+ZgrcA1t/5P0q Q==;
X-CSE-ConnectionGUID: +/ZQXXRnQDi86mF9ucFAMw==
X-CSE-MsgGUID: lH4HQX2WSYKqimczvI/20w==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="76301034"
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="76301034"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 09:28:52 -0800
X-CSE-ConnectionGUID: xzkWqdg2QKmeJUvvbm3WEg==
X-CSE-MsgGUID: IPgMq4djSeyBrfWKn9w3XA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="189170029"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.30])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 09:28:51 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 12/16] drm/u195/de: Replace __intel_de_rmw_nowl() with
 intel_de_rmw_fw()
Date: Mon, 10 Nov 2025 19:27:51 +0200
Message-ID: <20251110172756.2132-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251110172756.2132-1-ville.syrjala@linux.intel.com>
References: <20251110172756.2132-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We already have the lower level intel_de_*_fw() stuff, so use
that instead of hand rolling something custom for the DMC
wakelock stuff.

As the wakelock stuff exists only on platforms supported
by the xe driver this doesn't even result in any functional
changes since xe doesn't have uncore.lock nor unclaimed
register access detection.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_de.h     | 21 +++++++++++++--------
 drivers/gpu/drm/i915/display/intel_dmc_wl.c | 11 +++++------
 2 files changed, 18 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
index a82da6443af9..345b27ada04f 100644
--- a/drivers/gpu/drm/i915/display/intel_de.h
+++ b/drivers/gpu/drm/i915/display/intel_de.h
@@ -83,13 +83,6 @@ intel_de_write(struct intel_display *display, i915_reg_t reg, u32 val)
 	intel_dmc_wl_put(display, reg);
 }
 
-static inline u32
-__intel_de_rmw_nowl(struct intel_display *display, i915_reg_t reg,
-		    u32 clear, u32 set)
-{
-	return intel_uncore_rmw(__to_uncore(display), reg, clear, set);
-}
-
 static inline u32
 intel_de_rmw(struct intel_display *display, i915_reg_t reg, u32 clear, u32 set)
 {
@@ -97,7 +90,7 @@ intel_de_rmw(struct intel_display *display, i915_reg_t reg, u32 clear, u32 set)
 
 	intel_dmc_wl_get(display, reg);
 
-	val = __intel_de_rmw_nowl(display, reg, clear, set);
+	val = intel_uncore_rmw(__to_uncore(display), reg, clear, set);
 
 	intel_dmc_wl_put(display, reg);
 
@@ -219,6 +212,18 @@ intel_de_write_fw(struct intel_display *display, i915_reg_t reg, u32 val)
 	intel_uncore_write_fw(__to_uncore(display), reg, val);
 }
 
+static inline u32
+intel_de_rmw_fw(struct intel_display *display, i915_reg_t reg, u32 clear, u32 set)
+{
+	u32 old, val;
+
+	old = intel_de_read_fw(display, reg);
+	val = (old & ~clear) | set;
+	intel_de_write_fw(display, reg, val);
+
+	return old;
+}
+
 static inline u32
 intel_de_read_notrace(struct intel_display *display, i915_reg_t reg)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index b3bb89ba34f9..869beb6f280d 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -179,7 +179,7 @@ static void intel_dmc_wl_work(struct work_struct *work)
 	if (refcount_read(&wl->refcount))
 		goto out_unlock;
 
-	__intel_de_rmw_nowl(display, DMC_WAKELOCK1_CTL, DMC_WAKELOCK_CTL_REQ, 0);
+	intel_de_rmw_fw(display, DMC_WAKELOCK1_CTL, DMC_WAKELOCK_CTL_REQ, 0);
 
 	if (__intel_de_wait_for_register_atomic_nowl(display, DMC_WAKELOCK1_CTL,
 						     DMC_WAKELOCK_CTL_ACK, 0,
@@ -207,8 +207,7 @@ static void __intel_dmc_wl_take(struct intel_display *display)
 	if (wl->taken)
 		return;
 
-	__intel_de_rmw_nowl(display, DMC_WAKELOCK1_CTL, 0,
-			    DMC_WAKELOCK_CTL_REQ);
+	intel_de_rmw_fw(display, DMC_WAKELOCK1_CTL, 0, DMC_WAKELOCK_CTL_REQ);
 
 	/*
 	 * We need to use the atomic variant of the waiting routine
@@ -360,7 +359,7 @@ void intel_dmc_wl_enable(struct intel_display *display, u32 dc_state)
 	 * wakelock, because we're just enabling it, so call the
 	 * non-locking version directly here.
 	 */
-	__intel_de_rmw_nowl(display, DMC_WAKELOCK_CFG, 0, DMC_WAKELOCK_CFG_ENABLE);
+	intel_de_rmw_fw(display, DMC_WAKELOCK_CFG, 0, DMC_WAKELOCK_CFG_ENABLE);
 
 	wl->enabled = true;
 
@@ -402,7 +401,7 @@ void intel_dmc_wl_disable(struct intel_display *display)
 		goto out_unlock;
 
 	/* Disable wakelock in DMC */
-	__intel_de_rmw_nowl(display, DMC_WAKELOCK_CFG, DMC_WAKELOCK_CFG_ENABLE, 0);
+	intel_de_rmw_fw(display, DMC_WAKELOCK_CFG, DMC_WAKELOCK_CFG_ENABLE, 0);
 
 	wl->enabled = false;
 
@@ -414,7 +413,7 @@ void intel_dmc_wl_disable(struct intel_display *display)
 	 *
 	 * TODO: Get the correct expectation from the hardware team.
 	 */
-	__intel_de_rmw_nowl(display, DMC_WAKELOCK1_CTL, DMC_WAKELOCK_CTL_REQ, 0);
+	intel_de_rmw_fw(display, DMC_WAKELOCK1_CTL, DMC_WAKELOCK_CTL_REQ, 0);
 
 	wl->taken = false;
 
-- 
2.49.1

