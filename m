Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD68C8302AC
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jan 2024 10:47:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B10A10E655;
	Wed, 17 Jan 2024 09:46:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1149210E655
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jan 2024 09:46:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705484807; x=1737020807;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Ue8GC4MyuY8+8Zz3Fr3WOxsGPGMjBw1gkI96EwQdrI4=;
 b=W+TW/fR/NImr0J3OCnfCO1ZbAzDabGUunoaadvXdmoHyRPzwc9m0M3c+
 ujc7nDPXXLgqViDTvPatxVQA/3XocVXtyjKhdfFdpY4COJhSuzfxSB/LX
 UOvTOd0PGoReYxbLG2T3joLsKZm+AajWfl6Xhp+jhi00r9nekFLH77ngO
 AzxywIVpfuUlH7My2nmKiILDsWXDZzKXHBx0WWQLg6SirzuxqtjNdbA3k
 egiIqKDo1rZV2DzfQrRESaWlcwq6tbt+4FqbbxJQ7YBxntwL4GoccVxIs
 oibAAQCm8DP+yZh8uVrNT9IIyYIRflRmS7wWgWY40MhaHTD57WLSkQ9oD Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10955"; a="464406771"
X-IronPort-AV: E=Sophos;i="6.05,200,1701158400"; d="scan'208";a="464406771"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2024 01:46:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10955"; a="787746681"
X-IronPort-AV: E=Sophos;i="6.05,200,1701158400"; d="scan'208";a="787746681"
Received: from ljcornel-mobl.ger.corp.intel.com (HELO hazy.ger.corp.intel.com)
 ([10.252.39.109])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2024 01:46:24 -0800
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915: move interrupt save/restore into vblank section
 helpers
Date: Wed, 17 Jan 2024 11:46:13 +0200
Message-Id: <20240117094613.1401573-1-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
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

In all cases when we call the new helper functions, we save/restore
the interrupts, so we can move this to the helpers themselves.  This
improves the semantics of the helper functions by having all
functionality needed to keep the section tight.

This makes a slight functional change by calling the irq_save/restore
functions twice in intel_crtc_update_active_timings().  This shouldn't
be a problem because nesting irq_save/restore calls is safe.
Nevertheless, the commit that originally introduced these helper
functions did not include the irq_save/restore calls in the helpers
themselves because of this exact, though minimal, functional change.

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vblank.c | 20 +++++++++++++-------
 1 file changed, 13 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index fe256bf7b485..57ace171a94f 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -266,9 +266,10 @@ int intel_crtc_scanline_to_hw(struct intel_crtc *crtc, int scanline)
 }
 
 /*
- * The uncore version of the spin lock functions is used to decide
- * whether we need to lock the uncore lock or not.  This is only
- * needed in i915, not in Xe.
+ * These functions help enter and exit vblank critical sections.  When
+ * entering, they disable interrupts and, for i915, acquire the
+ * uncore's spinlock.  Conversely, when exiting, they release the
+ * spinlock and restore the interrupts state.
  *
  * This lock in i915 is needed because some old platforms (at least
  * IVB and possibly HSW as well), which are not supported in Xe, need
@@ -278,6 +279,7 @@ int intel_crtc_scanline_to_hw(struct intel_crtc *crtc, int scanline)
 static void intel_vblank_section_enter(struct drm_i915_private *i915)
 	__acquires(i915->uncore.lock)
 {
+	local_irq_save(irqflags);
 #ifdef I915
 	spin_lock(&i915->uncore.lock);
 #endif
@@ -289,6 +291,7 @@ static void intel_vblank_section_exit(struct drm_i915_private *i915)
 #ifdef I915
 	spin_unlock(&i915->uncore.lock);
 #endif
+	local_irq_restore(irqflags);
 }
 
 static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
@@ -332,7 +335,6 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
 	 * timing critical raw register reads, potentially with
 	 * preemption disabled, so the following code must not block.
 	 */
-	local_irq_save(irqflags);
 	intel_vblank_section_enter(dev_priv);
 
 	/* preempt_disable_rt() should go right here in PREEMPT_RT patchset. */
@@ -402,7 +404,6 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
 	/* preempt_enable_rt() should go right here in PREEMPT_RT patchset. */
 
 	intel_vblank_section_exit(dev_priv);
-	local_irq_restore(irqflags);
 
 	/*
 	 * While in vblank, position will be negative
@@ -440,13 +441,11 @@ int intel_get_crtc_scanline(struct intel_crtc *crtc)
 	unsigned long irqflags;
 	int position;
 
-	local_irq_save(irqflags);
 	intel_vblank_section_enter(dev_priv);
 
 	position = __intel_get_crtc_scanline(crtc);
 
 	intel_vblank_section_exit(dev_priv);
-	local_irq_restore(irqflags);
 
 	return position;
 }
@@ -569,6 +568,13 @@ void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state,
 	 * Need to audit everything to make sure it's safe.
 	 */
 	spin_lock_irqsave(&i915->drm.vblank_time_lock, irqflags);
+
+	/*
+	 * At this point we have already disabled interrupts, and
+	 * intel_vblank_section_enter() does that too.  But the
+	 * nesting is safe here, so it shouldn't be a problem to do it
+	 * twice.
+	*/
 	intel_vblank_section_enter(i915);
 
 	drm_calc_timestamping_constants(&crtc->base, &adjusted_mode);
-- 
2.39.2

