Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2454B1C1FB7
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 23:37:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 733916E05F;
	Fri,  1 May 2020 21:37:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15E776E05F
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 May 2020 21:37:06 +0000 (UTC)
IronPort-SDR: a819zrAq5Ad4Pdjxvv6Dqj9xuPfL5GtuN7eDWZjrqzortpr7cWcVkzrIVjc9m+T5pGfUbt8zoc
 l1klhoO7R+DQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 14:37:05 -0700
IronPort-SDR: +NEif1FUtVYDypB+YABUABWTUcW+KryqpHXKoSSmIqNGrOBTRiOiX7DNUSEPBoj9MHMqL+vSBn
 VbTTW9o7+HaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,341,1583222400"; d="scan'208";a="405857179"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by orsmga004.jf.intel.com with ESMTP; 01 May 2020 14:37:04 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 May 2020 14:37:01 -0700
Message-Id: <20200501213701.371443-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/icp: Add Wa_14010685332
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We need to toggle a SDE chicken bit on and then off as the final
step when disabling interrupts in preparation for runtime suspend.

Bspec: 33450
Bspec: 8402
Cc: Bob Paauwe <bob.j.paauwe@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 8 ++++++++
 drivers/gpu/drm/i915/i915_reg.h | 1 +
 2 files changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index bd722d0650c8..f8202a32c112 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -2870,6 +2870,14 @@ static void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
 
 	if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
 		GEN3_IRQ_RESET(uncore, SDE);
+
+	/* Wa_14010685332:icl */
+	if (INTEL_PCH_TYPE(dev_priv) == PCH_ICP) {
+		intel_uncore_rmw(uncore, SOUTH_CHICKEN1,
+				 SBCLK_RUN_REFCLK_DIS, SBCLK_RUN_REFCLK_DIS);
+		intel_uncore_rmw(uncore, SOUTH_CHICKEN1,
+				 SBCLK_RUN_REFCLK_DIS, 0);
+	}
 }
 
 static void gen11_irq_reset(struct drm_i915_private *dev_priv)
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index fd9f2904d93c..34af899751e2 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -8573,6 +8573,7 @@ enum {
 #define  FDI_BC_BIFURCATION_SELECT	(1 << 12)
 #define  CHASSIS_CLK_REQ_DURATION_MASK	(0xf << 8)
 #define  CHASSIS_CLK_REQ_DURATION(x)	((x) << 8)
+#define  SBCLK_RUN_REFCLK_DIS		(1 << 7)
 #define  SPT_PWM_GRANULARITY		(1 << 0)
 #define SOUTH_CHICKEN2		_MMIO(0xc2004)
 #define  FDI_MPHY_IOSFSB_RESET_STATUS	(1 << 13)
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
