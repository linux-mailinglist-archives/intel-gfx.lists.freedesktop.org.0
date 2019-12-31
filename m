Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B01212D89D
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Dec 2019 13:27:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD37B6E21A;
	Tue, 31 Dec 2019 12:27:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE06F6E21A
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Dec 2019 12:27:29 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19734327-1500050 
 for multiple; Tue, 31 Dec 2019 12:27:10 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 Dec 2019 12:27:08 +0000
Message-Id: <20191231122708.4025916-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Restore coarse power gating
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

The coarse power gating was disabled as part of commit 2248a28384fe
("drm/i915/gen8+: Add RC6 CTX corruption WA") as a prelude to recover
from the context corruption; the power gating itself has no direct
impact on the RC6 context corruption. However, that recovery scheme was
never implemented due to difficult corner cases, and so we no longer need
to keep the power gating disabled.

Fixes: 2248a28384fe ("drm/i915/gen8+: Add RC6 CTX corruption WA")
Closes: https://gitlab.freedesktop.org/drm/intel/issues/846
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Imre Deak <imre.deak@intel.com>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Eero Tamminen <eero.t.tamminen@intel.com>
Cc: Jon Bloomfield <jon.bloomfield@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index b7f122dccdca..85b565e69ad4 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1657,8 +1657,11 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	(IS_BROADWELL(dev_priv) || IS_GEN(dev_priv, 9))
 
 /* WaRsDisableCoarsePowerGating:skl,cnl */
-#define NEEDS_WaRsDisableCoarsePowerGating(dev_priv) \
-	IS_GEN_RANGE(dev_priv, 9, 10)
+#define NEEDS_WaRsDisableCoarsePowerGating(dev_priv) 			\
+	(IS_CANNONLAKE(dev_priv) ||					\
+	 IS_SKL_GT3(dev_priv) ||					\
+	 IS_SKL_GT4(dev_priv))
+
 
 #define HAS_GMBUS_IRQ(dev_priv) (INTEL_GEN(dev_priv) >= 4)
 #define HAS_GMBUS_BURST_READ(dev_priv) (INTEL_GEN(dev_priv) >= 10 || \
-- 
2.25.0.rc0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
