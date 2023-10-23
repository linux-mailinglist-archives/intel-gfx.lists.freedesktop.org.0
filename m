Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E4F27D2FF9
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Oct 2023 12:33:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC29210E094;
	Mon, 23 Oct 2023 10:33:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D10910E094;
 Mon, 23 Oct 2023 10:33:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698057223; x=1729593223;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fS7Oa+7Y3QP/ACY+XlbtkyYG4KQVpit6H4/bVmaIBU0=;
 b=l/l063PCp+xX/coLi+CoINpeyZZJvMxuIlhS95U08KMuI5iKNJQ1K4xY
 tRUFN4CnxJJhkSLxlzN+eNwQJftxEeqK4kR3yLkPsEfGbFt0tdSQHdMJH
 fvd37J87Cdk3nJbOiBfOw/NCN56TAD5DM8pXsx4DUDxFCvqZptAuDmjN9
 wQobijjnwhNX4VPWDTGQCMc06PmIbgWYD0n+oifLFmSSINzX/oDhWDyhl
 388fqWoInsrHFMuw2j4n07/0Y9+mQ1LyMgWvt0PxaV9DclCk2fZ4oDkHD
 AavAt+sY2T61vXVtnJHJxbLWLbKHZ8vXuudc4kJr57S0G0kL+YsLNCDR3 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10871"; a="367040145"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; d="scan'208";a="367040145"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 03:33:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10871"; a="787426464"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; d="scan'208";a="787426464"
Received: from agherasi-mobl.ger.corp.intel.com (HELO hazy.ger.corp.intel.com)
 ([10.252.47.132])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 03:33:40 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Oct 2023 13:33:28 +0300
Message-Id: <20231023103328.1495942-1-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] drm/i915: handle uncore spinlock when not
 available
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
Cc: intel-xe@lists.freedesktop.org, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The uncore code may not always be available (e.g. when we build the
display code with Xe), so we can't always rely on having the uncore's
spinlock.

To handle this, split the spin_lock/unlock_irqsave/restore() into
spin_lock/unlock() followed by a call to local_irq_save/restore() and
create wrapper functions for locking and unlocking the uncore's
spinlock.  In these functions, we have a condition check and only
actually try to lock/unlock the spinlock when I915 is defined, and
thus uncore is available.

This keeps the ifdefs contained in these new functions and all such
logic inside the display code.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---

In v2:

   * Renamed uncore_spin_*() to intel_spin_*()
   * Corrected the order: save, lock, unlock, restore

In v3:

   * Undid the change to pass drm_i915_private instead of the lock
     itself, since we would have to include i915_drv.h and that pulls
     in a truckload of other includes.

 drivers/gpu/drm/i915/display/intel_display.h | 20 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vblank.c  | 19 ++++++++++++-------
 2 files changed, 32 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 0e5dffe8f018..2a33fcc8ce68 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -559,4 +559,24 @@ bool assert_port_valid(struct drm_i915_private *i915, enum port port);
 
 bool intel_scanout_needs_vtd_wa(struct drm_i915_private *i915);
 
+/*
+ * The uncore version of the spin lock functions is used to decide
+ * whether we need to lock the uncore lock or not.  This is only
+ * needed in i915, not in Xe.  Keep the decision-making centralized
+ * here.
+ */
+static inline void intel_spin_lock(spinlock_t *lock)
+{
+#ifdef I915
+	spin_lock(lock);
+#endif
+}
+
+static inline void intel_spin_unlock(spinlock_t *lock)
+{
+#ifdef I915
+	spin_unlock(lock);
+#endif
+}
+
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index 2cec2abf9746..9b482d648762 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -306,7 +306,8 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
 	 * register reads, potentially with preemption disabled, so the
 	 * following code must not block on uncore.lock.
 	 */
-	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
+	local_irq_save(irqflags);
+	intel_spin_lock(&dev_priv->uncore.lock);
 
 	/* preempt_disable_rt() should go right here in PREEMPT_RT patchset. */
 
@@ -374,7 +375,8 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
 
 	/* preempt_enable_rt() should go right here in PREEMPT_RT patchset. */
 
-	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
+	intel_spin_unlock(&dev_priv->uncore.lock);
+	local_irq_restore(irqflags);
 
 	/*
 	 * While in vblank, position will be negative
@@ -412,9 +414,13 @@ int intel_get_crtc_scanline(struct intel_crtc *crtc)
 	unsigned long irqflags;
 	int position;
 
-	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
+	local_irq_save(irqflags);
+	intel_spin_lock(&dev_priv->uncore.lock);
+
 	position = __intel_get_crtc_scanline(crtc);
-	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
+
+	intel_spin_unlock(&dev_priv->uncore.lock);
+	local_irq_restore(irqflags);
 
 	return position;
 }
@@ -537,7 +543,7 @@ void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state,
 	 * Need to audit everything to make sure it's safe.
 	 */
 	spin_lock_irqsave(&i915->drm.vblank_time_lock, irqflags);
-	spin_lock(&i915->uncore.lock);
+	intel_spin_lock(&i915->uncore.lock);
 
 	drm_calc_timestamping_constants(&crtc->base, &adjusted_mode);
 
@@ -546,7 +552,6 @@ void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state,
 	crtc->mode_flags = mode_flags;
 
 	crtc->scanline_offset = intel_crtc_scanline_offset(crtc_state);
-
-	spin_unlock(&i915->uncore.lock);
+	intel_spin_unlock(&i915->uncore.lock);
 	spin_unlock_irqrestore(&i915->drm.vblank_time_lock, irqflags);
 }
-- 
2.39.2

