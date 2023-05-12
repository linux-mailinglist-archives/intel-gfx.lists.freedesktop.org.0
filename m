Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6934D700524
	for <lists+intel-gfx@lfdr.de>; Fri, 12 May 2023 12:23:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 698A310E676;
	Fri, 12 May 2023 10:23:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB04410E66E
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 May 2023 10:23:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683886997; x=1715422997;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZbAGRp3XrRjn/84WrfASb5exs+CqqZYuqbU3Ta9zlzU=;
 b=KV1pPAov2WGZ6AYCYm1sNZXfZvDW34kycg6BsaxGOvCbAgQSR8NRfru2
 vnpfsbEhKMMfLXX+7+Ct+UrwrTpWoHK/un8xgzBrr5boBPARM0eD5JkjK
 kx8xYB8lLi6WeTGCc7I+sy8h0YApo5CX+Krxw+q/FyUgn5fm+/QfKpCaX
 AyhTljziKRR8tWP4JVey1nqX+jID7ZWoJH1qepMaZiEtQUV5UPbH3qmdv
 hKHfzsTVNiLK1UU00B+D988Yg+FYZQ1Y7VoripuA941ZniyBVNQntUFEX
 h/EYXTe8W3ZYISMNDeesglH5TbX0lxCYtFnyDXO6avghecL/KencPj+hN A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="437091063"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="437091063"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 03:23:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="694194761"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="694194761"
Received: from tsavina-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.63.51])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 03:23:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 May 2023 13:23:08 +0300
Message-Id: <20230512102310.1398406-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/irq: convert gen8_de_irq_handler()
 to void
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The return value is not used for anything.

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

