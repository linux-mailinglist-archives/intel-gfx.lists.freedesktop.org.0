Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4AA38A83AA
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Apr 2024 15:03:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FEE71134C9;
	Wed, 17 Apr 2024 13:03:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iWoVFYfj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45DA21134C9;
 Wed, 17 Apr 2024 13:03:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713359019; x=1744895019;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7IzUr3YZTyTOnnj09pKQXtbyUPpopw5VUs2PEiZf+cs=;
 b=iWoVFYfj6vVVY3dzGEpSb6i8lJzK7EBMKrWlhRWQRbsYTvGzKbP1Jj33
 DnpFcYNTWCSTtMu6m9thupuLqGoC+BS0N5emFs87moUwj8uOtsEebHJRk
 HYdHZwTwBbhsT6T1BXUEPwQxRvbBf8f6d2QycQMF3056h7khDd0yAxbHY
 nNYiP4Jt7QFXBJHcsTrKvC6IaZIYxCRBKs7CZj5KrwpZOY0OKdjHF1epn
 v+e988tC1qkLQ1fnaEmr8tTMNWBM2UFQGNRa7rKwE7UgDb/TNqnCruFgH
 B8tZHWBYpjXEboLIY6piX2HNA6E/uRRIYchL6W6NQIM644iZcXAv7X8nN A==;
X-CSE-ConnectionGUID: CTdXq/BkTYqPzju4rJW48g==
X-CSE-MsgGUID: Q9DEnhGKQVSBkwtV8bstEw==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="8976906"
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; 
   d="scan'208";a="8976906"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 06:03:38 -0700
X-CSE-ConnectionGUID: q9cuvCXRQ9WRFaDIcww0yA==
X-CSE-MsgGUID: BqeMpEGsSBu6+UNZdMLKpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; d="scan'208";a="27199544"
Received: from vpus-mobl1.ger.corp.intel.com (HELO localhost) ([10.252.45.164])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 06:03:35 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, Luca Coelho <luciano.coelho@intel.com>,
 jani.nikula@intel.com
Subject: [PATCH v4 9/9] drm/i915/dmc: use struct intel_display more
Date: Wed, 17 Apr 2024 16:02:47 +0300
Message-Id: <06bc9fd9d0472e899bd9d50f3b10a6066c1a0238.1713358679.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1713358679.git.jani.nikula@intel.com>
References: <cover.1713358679.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Now that the intel_de_ functions and DISPLAY_VER() accept struct
intel_display *, use it more.

Cc: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc_wl.c | 24 +++++++++------------
 1 file changed, 10 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index e79c45e36722..d9864b9cc429 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -66,8 +66,8 @@ static void intel_dmc_wl_work(struct work_struct *work)
 {
 	struct intel_dmc_wl *wl =
 		container_of(work, struct intel_dmc_wl, work.work);
-	struct drm_i915_private *i915 =
-		container_of(wl, struct drm_i915_private, display.wl);
+	struct intel_display *display =
+		container_of(wl, struct intel_display, wl);
 	unsigned long flags;
 
 	spin_lock_irqsave(&wl->lock, flags);
@@ -76,9 +76,9 @@ static void intel_dmc_wl_work(struct work_struct *work)
 	if (!refcount_read(&wl->refcount))
 		goto out_unlock;
 
-	__intel_de_rmw_nowl(i915, DMC_WAKELOCK1_CTL, DMC_WAKELOCK_CTL_REQ, 0);
+	__intel_de_rmw_nowl(display, DMC_WAKELOCK1_CTL, DMC_WAKELOCK_CTL_REQ, 0);
 
-	if (__intel_de_wait_for_register_nowl(i915, DMC_WAKELOCK1_CTL,
+	if (__intel_de_wait_for_register_nowl(display, DMC_WAKELOCK1_CTL,
 					      DMC_WAKELOCK_CTL_ACK, 0,
 					      DMC_WAKELOCK_CTL_TIMEOUT)) {
 		WARN_RATELIMIT(1, "DMC wakelock release timed out");
@@ -111,7 +111,7 @@ static bool __intel_dmc_wl_supported(struct intel_display *display)
 {
 	struct drm_i915_private *i915 = to_i915(display->drm);
 
-	if (DISPLAY_VER(i915) < 20 ||
+	if (DISPLAY_VER(display) < 20 ||
 	    !intel_dmc_has_payload(i915) ||
 	    !display->params.enable_dmc_wl)
 		return false;
@@ -121,11 +121,10 @@ static bool __intel_dmc_wl_supported(struct intel_display *display)
 
 void intel_dmc_wl_init(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_dmc_wl *wl = &display->wl;
 
 	/* don't call __intel_dmc_wl_supported(), DMC is not loaded yet */
-	if (DISPLAY_VER(i915) < 20 || !display->params.enable_dmc_wl)
+	if (DISPLAY_VER(display) < 20 || !display->params.enable_dmc_wl)
 		return;
 
 	INIT_DELAYED_WORK(&wl->work, intel_dmc_wl_work);
@@ -135,7 +134,6 @@ void intel_dmc_wl_init(struct intel_display *display)
 
 void intel_dmc_wl_enable(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_dmc_wl *wl = &display->wl;
 	unsigned long flags;
 
@@ -152,7 +150,7 @@ void intel_dmc_wl_enable(struct intel_display *display)
 	 * wakelock, because we're just enabling it, so call the
 	 * non-locking version directly here.
 	 */
-	__intel_de_rmw_nowl(i915, DMC_WAKELOCK_CFG, 0, DMC_WAKELOCK_CFG_ENABLE);
+	__intel_de_rmw_nowl(display, DMC_WAKELOCK_CFG, 0, DMC_WAKELOCK_CFG_ENABLE);
 
 	wl->enabled = true;
 	wl->taken = false;
@@ -163,7 +161,6 @@ void intel_dmc_wl_enable(struct intel_display *display)
 
 void intel_dmc_wl_disable(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_dmc_wl *wl = &display->wl;
 	unsigned long flags;
 
@@ -178,7 +175,7 @@ void intel_dmc_wl_disable(struct intel_display *display)
 		goto out_unlock;
 
 	/* Disable wakelock in DMC */
-	__intel_de_rmw_nowl(i915, DMC_WAKELOCK_CFG, DMC_WAKELOCK_CFG_ENABLE, 0);
+	__intel_de_rmw_nowl(display, DMC_WAKELOCK_CFG, DMC_WAKELOCK_CFG_ENABLE, 0);
 
 	refcount_set(&wl->refcount, 0);
 	wl->enabled = false;
@@ -190,7 +187,6 @@ void intel_dmc_wl_disable(struct intel_display *display)
 
 void intel_dmc_wl_get(struct intel_display *display, i915_reg_t reg)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_dmc_wl *wl = &display->wl;
 	unsigned long flags;
 
@@ -219,10 +215,10 @@ void intel_dmc_wl_get(struct intel_display *display, i915_reg_t reg)
 	 * run yet.
 	 */
 	if (!wl->taken) {
-		__intel_de_rmw_nowl(i915, DMC_WAKELOCK1_CTL, 0,
+		__intel_de_rmw_nowl(display, DMC_WAKELOCK1_CTL, 0,
 				    DMC_WAKELOCK_CTL_REQ);
 
-		if (__intel_de_wait_for_register_nowl(i915, DMC_WAKELOCK1_CTL,
+		if (__intel_de_wait_for_register_nowl(display, DMC_WAKELOCK1_CTL,
 						      DMC_WAKELOCK_CTL_ACK,
 						      DMC_WAKELOCK_CTL_ACK,
 						      DMC_WAKELOCK_CTL_TIMEOUT)) {
-- 
2.39.2

