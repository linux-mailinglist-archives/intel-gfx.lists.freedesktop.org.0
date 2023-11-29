Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 92E617FD264
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Nov 2023 10:24:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0155310E196;
	Wed, 29 Nov 2023 09:24:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 426 seconds by postgrey-1.36 at gabe;
 Wed, 29 Nov 2023 09:24:47 UTC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91DE210E196;
 Wed, 29 Nov 2023 09:24:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701249888; x=1732785888;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ob6yQDS7nk2sqJeUYLjLoqIFveNzX4NsHKc/lzyU/84=;
 b=LPKCggWEE0Z7BJEuveC8zn5zzZREQgr12wvuJxuWwgwlmZAg94/Rl1+X
 DJBFZVdi+WIv570Jvrekf1SXQyzVU+9Chno8KajaewnhpOT2oGTTHAlWh
 z2LOlLR8SzPhJXgA8HXxNaEr/lNT9eg+igr4NOb8Znw2Zm3v90iyDq13S
 Kbn/yyiJHUdZ1oUXHyey82klI094JCngEv25eiFkoh7Tj+GDioyyFEbLP
 LsAk6jd5GOnBASdpZ7UHqKvfehFUDd51mvCGtb+jBF1rHqAMb7j4ooU8O
 Wl5pqkCzzgp2vD968Rw0j8MIlBCV0Qng2+4PhMt2Z7zkD/xEnm/U6BKhp A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="27734"
X-IronPort-AV: E=Sophos;i="6.04,235,1695711600"; 
   d="scan'208";a="27734"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 01:17:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="718684912"
X-IronPort-AV: E=Sophos;i="6.04,235,1695711600"; d="scan'208";a="718684912"
Received: from elrefaee-mobl.ger.corp.intel.com (HELO hazy.ger.corp.intel.com)
 ([10.252.58.227])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 01:17:39 -0800
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Nov 2023 11:17:28 +0200
Message-Id: <20231129091728.1272876-1-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4] drm/i915: handle uncore spinlock when not
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

Cc: Tvrtko Ursulin <tvrto.ursulin@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---

In v2:

   * Renamed uncore_spin_*() to intel_spin_*()
   * Corrected the order: save, lock, unlock, restore

In v3:

   * Undid the change to pass drm_i915_private instead of the lock
     itself, since we would have to include i915_drv.h and that pulls
     in a truckload of other includes.

In v4:

   * After a brief attempt to replace this with a different patch,
     we're back to this one;
   * Pass drm_i195_private again, and move the functions to
     intel_vblank.c, so we don't need to include i915_drv.h in a
     header file and it's already included in intel_vblank.c;

 drivers/gpu/drm/i915/display/intel_display.h |  1 +
 drivers/gpu/drm/i915/display/intel_vblank.c  | 45 +++++++++++++++-----
 2 files changed, 36 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 8548f49e3972..5ff299bc4b87 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -29,6 +29,7 @@
 
 #include "i915_reg_defs.h"
 #include "intel_display_limits.h"
+#include "i915_drv.h"
 
 enum drm_scaling_filter;
 struct dpll;
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index 2cec2abf9746..d9625db82681 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -265,6 +265,26 @@ int intel_crtc_scanline_to_hw(struct intel_crtc *crtc, int scanline)
 	return (scanline + vtotal - crtc->scanline_offset) % vtotal;
 }
 
+/*
+ * The uncore version of the spin lock functions is used to decide
+ * whether we need to lock the uncore lock or not.  This is only
+ * needed in i915, not in Xe.  Keep the decision-making centralized
+ * here.
+ */
+static inline void intel_vblank_section_enter(struct drm_i915_private *i915)
+{
+#ifdef I915
+	spin_lock(&i915->uncore.lock);
+#endif
+}
+
+static inline void intel_vblank_section_exit(struct drm_i915_private *i915)
+{
+#ifdef I915
+	spin_unlock(&i915->uncore.lock);
+#endif
+}
+
 static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
 				     bool in_vblank_irq,
 				     int *vpos, int *hpos,
@@ -302,11 +322,12 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
 	}
 
 	/*
-	 * Lock uncore.lock, as we will do multiple timing critical raw
-	 * register reads, potentially with preemption disabled, so the
-	 * following code must not block on uncore.lock.
+	 * Enter vblank critical section, as we will do multiple
+	 * timing critical raw register reads, potentially with
+	 * preemption disabled, so the following code must not block.
 	 */
-	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
+	local_irq_save(irqflags);
+	intel_vblank_section_enter(dev_priv);
 
 	/* preempt_disable_rt() should go right here in PREEMPT_RT patchset. */
 
@@ -374,7 +395,8 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
 
 	/* preempt_enable_rt() should go right here in PREEMPT_RT patchset. */
 
-	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
+	intel_vblank_section_exit(dev_priv);
+	local_irq_restore(irqflags);
 
 	/*
 	 * While in vblank, position will be negative
@@ -412,9 +434,13 @@ int intel_get_crtc_scanline(struct intel_crtc *crtc)
 	unsigned long irqflags;
 	int position;
 
-	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
+	local_irq_save(irqflags);
+	intel_vblank_section_enter(dev_priv);
+
 	position = __intel_get_crtc_scanline(crtc);
-	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
+
+	intel_vblank_section_exit(dev_priv);
+	local_irq_restore(irqflags);
 
 	return position;
 }
@@ -537,7 +563,7 @@ void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state,
 	 * Need to audit everything to make sure it's safe.
 	 */
 	spin_lock_irqsave(&i915->drm.vblank_time_lock, irqflags);
-	spin_lock(&i915->uncore.lock);
+	intel_vblank_section_enter(i915);
 
 	drm_calc_timestamping_constants(&crtc->base, &adjusted_mode);
 
@@ -546,7 +572,6 @@ void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state,
 	crtc->mode_flags = mode_flags;
 
 	crtc->scanline_offset = intel_crtc_scanline_offset(crtc_state);
-
-	spin_unlock(&i915->uncore.lock);
+	intel_vblank_section_exit(i915);
 	spin_unlock_irqrestore(&i915->drm.vblank_time_lock, irqflags);
 }
-- 
2.39.2

