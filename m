Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C51B5616095
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 11:09:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE3CC10E488;
	Wed,  2 Nov 2022 10:09:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC99710E488
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 10:09:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667383751; x=1698919751;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vB2cCgo96cjfi3E3esEc/V9pxJ4jfTNcoLi2Aw2yzc4=;
 b=PZ4bWrD2K/Pwwgl0RoegRmE0uuuKDZDpIFquplbxNvX8evFT50zHWmQm
 TqM+MGuDst7aCk1pmtQ5IXFCarc9K35JCdYOUKjSLEjpFvloUvKdQvOiq
 cbj2qsEMInEk9oOa21ieGPGae0f2CmDXIrzN2tRd1gq3Q67L+/3wB5TdI
 LWXsx+108tbm1xxB+FKJjMlgW4/zxwMXQkUxAe7L69BC6NWL7KMyQtVD1
 yatlNojLeGWaMLGad1m38lmQ+iaHmuZVWKo6JIq+r1b7H4KNBFp2BBXsa
 wgkIGZtN2A+SS4J5V1APmoZkp2qDG3lbZGufnZXj34zqL2RwaPDn++CJZ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="296807718"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="296807718"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 03:09:11 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="963469200"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="963469200"
Received: from cjokeeff-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.15.91])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 03:09:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Nov 2022 12:08:19 +0200
Message-Id: <b28f45ef4ef69ab7a6f96ffa3fa3118994667332.1667383630.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1667383630.git.jani.nikula@intel.com>
References: <cover.1667383630.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 11/16] drm/i915/irq: make
 gen2_irq_init()/gen2_irq_reset() static
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

The gen2 irq functions aren't used outside of i915_irq.h. Make them
static, and remove the useless macro wrappers.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 10 +++++-----
 drivers/gpu/drm/i915/i915_irq.h |  9 ---------
 2 files changed, 5 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index d68859866bf2..b0180ea38de0 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -248,7 +248,7 @@ void gen3_irq_reset(struct intel_uncore *uncore, i915_reg_t imr,
 	intel_uncore_posting_read(uncore, iir);
 }
 
-void gen2_irq_reset(struct intel_uncore *uncore)
+static void gen2_irq_reset(struct intel_uncore *uncore)
 {
 	intel_uncore_write16(uncore, GEN2_IMR, 0xffff);
 	intel_uncore_posting_read16(uncore, GEN2_IMR);
@@ -309,8 +309,8 @@ void gen3_irq_init(struct intel_uncore *uncore,
 	intel_uncore_posting_read(uncore, imr);
 }
 
-void gen2_irq_init(struct intel_uncore *uncore,
-		   u32 imr_val, u32 ier_val)
+static void gen2_irq_init(struct intel_uncore *uncore,
+			  u32 imr_val, u32 ier_val)
 {
 	gen2_assert_iir_is_zero(uncore);
 
@@ -3871,7 +3871,7 @@ static void i8xx_irq_reset(struct drm_i915_private *dev_priv)
 
 	i9xx_pipestat_irq_reset(dev_priv);
 
-	GEN2_IRQ_RESET(uncore);
+	gen2_irq_reset(uncore);
 	dev_priv->irq_mask = ~0u;
 }
 
@@ -3897,7 +3897,7 @@ static void i8xx_irq_postinstall(struct drm_i915_private *dev_priv)
 		I915_MASTER_ERROR_INTERRUPT |
 		I915_USER_INTERRUPT;
 
-	GEN2_IRQ_INIT(uncore, dev_priv->irq_mask, enable_mask);
+	gen2_irq_init(uncore, dev_priv->irq_mask, enable_mask);
 
 	/* Interrupt setup is already guaranteed to be single-threaded, this is
 	 * just to make the assert_spin_locked check happy. */
diff --git a/drivers/gpu/drm/i915/i915_irq.h b/drivers/gpu/drm/i915/i915_irq.h
index 82639d9d7e82..9b004fc3444e 100644
--- a/drivers/gpu/drm/i915/i915_irq.h
+++ b/drivers/gpu/drm/i915/i915_irq.h
@@ -90,12 +90,9 @@ void i965_disable_vblank(struct drm_crtc *crtc);
 void ilk_disable_vblank(struct drm_crtc *crtc);
 void bdw_disable_vblank(struct drm_crtc *crtc);
 
-void gen2_irq_reset(struct intel_uncore *uncore);
 void gen3_irq_reset(struct intel_uncore *uncore, i915_reg_t imr,
 		    i915_reg_t iir, i915_reg_t ier);
 
-void gen2_irq_init(struct intel_uncore *uncore,
-		   u32 imr_val, u32 ier_val);
 void gen3_irq_init(struct intel_uncore *uncore,
 		   i915_reg_t imr, u32 imr_val,
 		   i915_reg_t ier, u32 ier_val,
@@ -111,9 +108,6 @@ void gen3_irq_init(struct intel_uncore *uncore,
 #define GEN3_IRQ_RESET(uncore, type) \
 	gen3_irq_reset((uncore), type##IMR, type##IIR, type##IER)
 
-#define GEN2_IRQ_RESET(uncore) \
-	gen2_irq_reset(uncore)
-
 #define GEN8_IRQ_INIT_NDX(uncore, type, which, imr_val, ier_val) \
 ({ \
 	unsigned int which_ = which; \
@@ -129,7 +123,4 @@ void gen3_irq_init(struct intel_uncore *uncore,
 		      type##IER, ier_val, \
 		      type##IIR)
 
-#define GEN2_IRQ_INIT(uncore, imr_val, ier_val) \
-	gen2_irq_init((uncore), imr_val, ier_val)
-
 #endif /* __I915_IRQ_H__ */
-- 
2.34.1

