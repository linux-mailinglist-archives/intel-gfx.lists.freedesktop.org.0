Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B8B5702A57
	for <lists+intel-gfx@lfdr.de>; Mon, 15 May 2023 12:17:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3826D10E197;
	Mon, 15 May 2023 10:17:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65C1510E1A0
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 May 2023 10:17:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684145864; x=1715681864;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wZLS8b9B4Q/YbuckQEuX+cLnMxBk45+g+ar7l5PT7M4=;
 b=Rzj6D7xyohncTx8lYYk4i4Mq0f7zCtak3mRDAtCqcsko39ls9ubj6kBB
 tac4kJIKgVNM6CDNCmOOoilsCIfJ8KyYFVS+EwB03PKlqrb/qWjUN1u1N
 sgdO7rmJkoFRT2XNc0SjPABH8Z/klo1D5M/7WMsgXvSJIfA1xXFORdTgX
 48DNsxP1id7HPGmcOxtiay1OPy5vTmDsdcQRJ1diySNfp6A1NKPWxVh7Z
 0Xe3wDRZmgxMcjvNbjWSSy6YVwXuQihOZAMuxDjVDaDuRm6DmEUl4nAcs
 ql2jjl50lddqnhMJsHr9psMdhVUQBhOZZQnt4k579zeqh6E7enRXoLqtq w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="331534657"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="331534657"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 03:17:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="947364892"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="947364892"
Received: from lveltman-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.42.56])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 03:17:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 15 May 2023 13:17:36 +0300
Message-Id: <20230515101738.2399816-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/3] drm/i915/irq: convert
 gen8_de_irq_handler() to void
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
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The return value is not used for anything.

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 12 +-----------
 1 file changed, 1 insertion(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 02b6cbb832e9..64cc52538206 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -2124,10 +2124,8 @@ static void gen8_read_and_ack_pch_irqs(struct drm_i915_private *i915, u32 *pch_i
 		intel_de_write(i915, PICAINTERRUPT_IER, pica_ier);
 }
 
-static irqreturn_t
-gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
+static void gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 {
-	irqreturn_t ret = IRQ_NONE;
 	u32 iir;
 	enum pipe pipe;
 
@@ -2137,7 +2135,6 @@ gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 		iir = intel_uncore_read(&dev_priv->uncore, GEN8_DE_MISC_IIR);
 		if (iir) {
 			intel_uncore_write(&dev_priv->uncore, GEN8_DE_MISC_IIR, iir);
-			ret = IRQ_HANDLED;
 			gen8_de_misc_irq_handler(dev_priv, iir);
 		} else {
 			drm_err_ratelimited(&dev_priv->drm,
@@ -2149,7 +2146,6 @@ gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 		iir = intel_uncore_read(&dev_priv->uncore, GEN11_DE_HPD_IIR);
 		if (iir) {
 			intel_uncore_write(&dev_priv->uncore, GEN11_DE_HPD_IIR, iir);
-			ret = IRQ_HANDLED;
 			gen11_hpd_irq_handler(dev_priv, iir);
 		} else {
 			drm_err_ratelimited(&dev_priv->drm,
@@ -2163,7 +2159,6 @@ gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 			bool found = false;
 
 			intel_uncore_write(&dev_priv->uncore, GEN8_DE_PORT_IIR, iir);
-			ret = IRQ_HANDLED;
 
 			if (iir & gen8_de_port_aux_mask(dev_priv)) {
 				intel_dp_aux_irq_handler(dev_priv);
@@ -2223,7 +2218,6 @@ gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 			continue;
 		}
 
-		ret = IRQ_HANDLED;
 		intel_uncore_write(&dev_priv->uncore, GEN8_DE_PIPE_IIR(pipe), iir);
 
 		if (iir & GEN8_PIPE_VBLANK)
@@ -2257,8 +2251,6 @@ gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 		 */
 		gen8_read_and_ack_pch_irqs(dev_priv, &iir, &pica_iir);
 		if (iir) {
-			ret = IRQ_HANDLED;
-
 			if (pica_iir)
 				xelpdp_pica_irq_handler(dev_priv, pica_iir);
 
@@ -2277,8 +2269,6 @@ gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 				"The master control interrupt lied (SDE)!\n");
 		}
 	}
-
-	return ret;
 }
 
 static inline u32 gen8_master_intr_disable(void __iomem * const regs)
-- 
2.39.2

