Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BBFB9A934B
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 00:28:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFBF110E5C9;
	Mon, 21 Oct 2024 22:28:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xmi/1omm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A0FD10E5C8;
 Mon, 21 Oct 2024 22:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729549696; x=1761085696;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aoyl62LdyFaN1m9lyhoUYq9VlODkW/XOoCECIYnwy5A=;
 b=Xmi/1omm5iSe4E4THXIm6L6ohGgG3TFtp6QOP9bYTbp1twM9jc3Q6ZSw
 EGB/gcRKbOJHgyZL60SbNpSl/cO+CZGlEIkhhySm/HZNZCrBcZE4LkW8r
 uW36Sk6LCRxGtvQRyqAirjNndZK9oSlht8pl14AaXcoCLDegFFir85byd
 S+TWJ0aJNo9/N48cfA8poFvO7/TQAG0ypIyVI5b4tr8TzIEFGRQjxEHd/
 GYUpteRcyCwGJvv002YM+sXIXZmaVtrQGFXYyXqyOwv6gdZQLH19FJ72T
 QEqK0mo6V6hOhHThRlYG2p4LqkP/Om8kDXgVt/O7S0Qfw5tW9ERJLk8+2 g==;
X-CSE-ConnectionGUID: xps92BvvT6Kqtz8bWV3C1w==
X-CSE-MsgGUID: UKFQRhvfQp241HO/TsI97Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28934469"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28934469"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 15:28:16 -0700
X-CSE-ConnectionGUID: lS5EI/qGQKWkb5efSbCW8w==
X-CSE-MsgGUID: iCNQxaPwTH6G4guvA1fWUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,221,1725346800"; d="scan'208";a="80009630"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO
 gjsousa-mobl2.intel.com) ([10.125.110.79])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 15:28:14 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 09/13] drm/i915/dmc_wl: Deal with existing references when
 disabling
Date: Mon, 21 Oct 2024 19:27:28 -0300
Message-ID: <20241021222744.294371-10-gustavo.sousa@intel.com>
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

It is possible that there are active wakelock references at the time we
are disabling the DMC wakelock mechanism. We need to deal with that in
two ways:

(A) Implement the missing step from Bspec:

    The Bspec instructs us to clear any existing wakelock request bit
    after disabling the mechanism. That gives a clue that it is okay to
    disable while there are locks held and we do not need to wait for
    them. However, since the spec is not explicit about it, we need
    still to get confirmation with the hardware team. Let's thus
    implement the spec and add a TODO note.

(B) Ensure a consistent driver state:

    The enable/disable logic would be problematic if the following
    sequence of events would happen:

    1. Function A calls intel_dmc_wl_get();
    2. Some function calls intel_dmc_wl_disable();
    3. Some function calls intel_dmc_wl_enable();
    4. Function A is done and calls intel_dmc_wl_put().

    At (2), the refcount becomes zero and then (4) causes an invalid
    decrement to the refcount. That would cause some issues:

        - At the time between (3) and (4), function A would think that
          the hardware lock is held but it could not be really held
          until intel_dmc_wl_get() is called by something else.
        - The call made to (4) could cause the refcount to become zero
          and consequently the hardware lock to be released while there
          could be innocent paths trusting they still have the lock.

    To fix that, we need to keep the refcount correctly in sync with
    intel_dmc_wl_{get,put}() calls and retake the hardware lock when
    enabling the DMC wakelock with a non-zero refcount.

    One missing piece left to be handled here is the following scenario:

    1. Function A calls intel_dmc_wl_get();
    2. Some function calls intel_dmc_wl_disable();
    3. Some function calls intel_dmc_wl_enable();
    4. Concurrently with (3), function A performs the MMIO in between
       setting DMC_WAKELOCK_CFG_ENABLE and asserting the lock with
       __intel_dmc_wl_take().

    I'm mostly sure this would cause issues future display IPs if DMC
    trap implementation was completely removed. We need to check with
    the hardware team whether it would be safe to assert the hardware
    lock before setting DMC_WAKELOCK_CFG_ENABLE to avoid this scenario.
    If not, then we would have to deal with that via software
    synchronization.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc_wl.c | 97 ++++++++++++++-------
 1 file changed, 67 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index 6992ce654e75..e27c06b7c42f 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -177,6 +177,37 @@ static void intel_dmc_wl_work(struct work_struct *work)
 	spin_unlock_irqrestore(&wl->lock, flags);
 }
 
+static void __intel_dmc_wl_take(struct intel_display *display)
+{
+	struct intel_dmc_wl *wl = &display->wl;
+
+	/*
+	 * Only try to take the wakelock if it's not marked as taken
+	 * yet.  It may be already taken at this point if we have
+	 * already released the last reference, but the work has not
+	 * run yet.
+	 */
+	if (wl->taken)
+		return;
+
+	__intel_de_rmw_nowl(display, DMC_WAKELOCK1_CTL, 0,
+			    DMC_WAKELOCK_CTL_REQ);
+
+	/*
+	 * We need to use the atomic variant of the waiting routine
+	 * because the DMC wakelock is also taken in atomic context.
+	 */
+	if (__intel_de_wait_for_register_atomic_nowl(display, DMC_WAKELOCK1_CTL,
+						     DMC_WAKELOCK_CTL_ACK,
+						     DMC_WAKELOCK_CTL_ACK,
+						     DMC_WAKELOCK_CTL_TIMEOUT_US)) {
+		WARN_RATELIMIT(1, "DMC wakelock ack timed out");
+		return;
+	}
+
+	wl->taken = true;
+}
+
 static bool intel_dmc_wl_addr_in_range(u32 address,
 				       const struct intel_dmc_wl_range ranges[])
 {
@@ -261,7 +292,23 @@ void intel_dmc_wl_enable(struct intel_display *display)
 	__intel_de_rmw_nowl(display, DMC_WAKELOCK_CFG, 0, DMC_WAKELOCK_CFG_ENABLE);
 
 	wl->enabled = true;
-	wl->taken = false;
+
+	/*
+	 * This would be racy in the following scenario:
+	 *
+	 *   1. Function A calls intel_dmc_wl_get();
+	 *   2. Some function calls intel_dmc_wl_disable();
+	 *   3. Some function calls intel_dmc_wl_enable();
+	 *   4. Concurrently with (3), function A performs the MMIO in between
+	 *      setting DMC_WAKELOCK_CFG_ENABLE and asserting the lock with
+	 *      __intel_dmc_wl_take().
+	 *
+	 * TODO: Check with the hardware team whether it is safe to assert the
+	 * hardware lock before enabling to avoid such a scenario. Otherwise, we
+	 * would need to deal with it via software synchronization.
+	 */
+	if (refcount_read(&wl->refcount))
+		__intel_dmc_wl_take(display);
 
 out_unlock:
 	spin_unlock_irqrestore(&wl->lock, flags);
@@ -285,8 +332,18 @@ void intel_dmc_wl_disable(struct intel_display *display)
 	/* Disable wakelock in DMC */
 	__intel_de_rmw_nowl(display, DMC_WAKELOCK_CFG, DMC_WAKELOCK_CFG_ENABLE, 0);
 
-	refcount_set(&wl->refcount, 0);
 	wl->enabled = false;
+
+	/*
+	 * The spec is not explicit about the expectation of existing
+	 * lock users at the moment of disabling, but it does say that we must
+	 * clear DMC_WAKELOCK_CTL_REQ, which gives us a clue that it is okay to
+	 * disable with existing lock users.
+	 *
+	 * TODO: Get the correct expectation from the hardware team.
+	 */
+	__intel_de_rmw_nowl(display, DMC_WAKELOCK1_CTL, DMC_WAKELOCK_CTL_REQ, 0);
+
 	wl->taken = false;
 
 out_unlock:
@@ -306,8 +363,11 @@ void intel_dmc_wl_get(struct intel_display *display, i915_reg_t reg)
 
 	spin_lock_irqsave(&wl->lock, flags);
 
-	if (!wl->enabled)
+	if (!wl->enabled) {
+		if (!refcount_inc_not_zero(&wl->refcount))
+			refcount_set(&wl->refcount, 1);
 		goto out_unlock;
+	}
 
 	cancel_delayed_work(&wl->work);
 
@@ -316,30 +376,7 @@ void intel_dmc_wl_get(struct intel_display *display, i915_reg_t reg)
 
 	refcount_set(&wl->refcount, 1);
 
-	/*
-	 * Only try to take the wakelock if it's not marked as taken
-	 * yet.  It may be already taken at this point if we have
-	 * already released the last reference, but the work has not
-	 * run yet.
-	 */
-	if (!wl->taken) {
-		__intel_de_rmw_nowl(display, DMC_WAKELOCK1_CTL, 0,
-				    DMC_WAKELOCK_CTL_REQ);
-
-		/*
-		 * We need to use the atomic variant of the waiting routine
-		 * because the DMC wakelock is also taken in atomic context.
-		 */
-		if (__intel_de_wait_for_register_atomic_nowl(display, DMC_WAKELOCK1_CTL,
-							     DMC_WAKELOCK_CTL_ACK,
-							     DMC_WAKELOCK_CTL_ACK,
-							     DMC_WAKELOCK_CTL_TIMEOUT_US)) {
-			WARN_RATELIMIT(1, "DMC wakelock ack timed out");
-			goto out_unlock;
-		}
-
-		wl->taken = true;
-	}
+	__intel_dmc_wl_take(display);
 
 out_unlock:
 	spin_unlock_irqrestore(&wl->lock, flags);
@@ -358,14 +395,14 @@ void intel_dmc_wl_put(struct intel_display *display, i915_reg_t reg)
 
 	spin_lock_irqsave(&wl->lock, flags);
 
-	if (!wl->enabled)
-		goto out_unlock;
-
 	if (WARN_RATELIMIT(!refcount_read(&wl->refcount),
 			   "Tried to put wakelock with refcount zero\n"))
 		goto out_unlock;
 
 	if (refcount_dec_and_test(&wl->refcount)) {
+		if (!wl->enabled)
+			goto out_unlock;
+
 		__intel_dmc_wl_release(display);
 
 		goto out_unlock;
-- 
2.47.0

