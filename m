Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7D7C12A96F
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Dec 2019 01:57:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AC6A898C6;
	Thu, 26 Dec 2019 00:57:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6630B898AA
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Dec 2019 00:57:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19692255-1500050 
 for multiple; Thu, 26 Dec 2019 00:57:03 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Dec 2019 00:57:00 +0000
Message-Id: <20191226005701.2534997-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191226005701.2534997-1-chris@chris-wilson.co.uk>
References: <20191226005701.2534997-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/5] drm/i915/gt: Restore coarse power gating
 for gen9
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
Cc: Eero Tamminen <eero.t.tamminen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Believe in the power of the sacrificial kernel context and restore
coarse power gating in the belief that the issue affects only the
context idling on another engine -- i.e. only affects our scratch
kernel_context.

Closes: https://gitlab.freedesktop.org/drm/intel/issues/846
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Imre Deak <imre.deak@intel.com>
Cc: Eero Tamminen <eero.t.tamminen@intel.com>
Cc: Jon Bloomfield <jon.bloomfield@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rc6.c    | 9 ++-------
 drivers/gpu/drm/i915/gt/uc/intel_guc.c | 2 +-
 drivers/gpu/drm/i915/i915_drv.h        | 4 ----
 3 files changed, 3 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index 9e303c29d6e3..c47b02e2e029 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -175,13 +175,8 @@ static void gen9_rc6_enable(struct intel_rc6 *rc6)
 		GEN6_RC_CTL_RC6_ENABLE |
 		rc6_mode;
 
-	/*
-	 * WaRsDisableCoarsePowerGating:skl,cnl
-	 *   - Render/Media PG need to be disabled with RC6.
-	 */
-	if (!NEEDS_WaRsDisableCoarsePowerGating(rc6_to_i915(rc6)))
-		set(uncore, GEN9_PG_ENABLE,
-		    GEN9_RENDER_PG_ENABLE | GEN9_MEDIA_PG_ENABLE);
+	set(uncore, GEN9_PG_ENABLE,
+	    GEN9_RENDER_PG_ENABLE | GEN9_MEDIA_PG_ENABLE);
 }
 
 static void gen8_rc6_enable(struct intel_rc6 *rc6)
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 5d00a3b2d914..cfa6dde0fc63 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -496,7 +496,7 @@ int intel_guc_sample_forcewake(struct intel_guc *guc)
 
 	action[0] = INTEL_GUC_ACTION_SAMPLE_FORCEWAKE;
 	/* WaRsDisableCoarsePowerGating:skl,cnl */
-	if (!HAS_RC6(dev_priv) || NEEDS_WaRsDisableCoarsePowerGating(dev_priv))
+	if (IS_GEN(dev_priv, 9))
 		action[1] = 0;
 	else
 		/* bit 0 and 1 are for Render and Media domain separately */
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index b7f122dccdca..776d4e4b9435 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1656,10 +1656,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define NEEDS_RC6_CTX_CORRUPTION_WA(dev_priv)	\
 	(IS_BROADWELL(dev_priv) || IS_GEN(dev_priv, 9))
 
-/* WaRsDisableCoarsePowerGating:skl,cnl */
-#define NEEDS_WaRsDisableCoarsePowerGating(dev_priv) \
-	IS_GEN_RANGE(dev_priv, 9, 10)
-
 #define HAS_GMBUS_IRQ(dev_priv) (INTEL_GEN(dev_priv) >= 4)
 #define HAS_GMBUS_BURST_READ(dev_priv) (INTEL_GEN(dev_priv) >= 10 || \
 					IS_GEMINILAKE(dev_priv) || \
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
