Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B6EA5B5E9C
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 18:55:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D12D10E448;
	Mon, 12 Sep 2022 16:55:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FE8510E618
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 16:55:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663001726; x=1694537726;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=19cEVxehR9t8+D59vTeRrqvxgJs3BQPPD/35DlzTHkg=;
 b=ONK1OKroIadM67wFsRitlDaxH94EzPB2/tcFn/MKDQNM+RAtHgQg1PlH
 r8n5nwERemrkJLDI1bmYQzdNrvtWuYyxdnfAod9q0ia7pc8R5tFcMzMcz
 kI8O4WG3xmq+pKUJiLG7D2/YPXryKQXQ5y3p2XMCWdh8L2USW6E4nrQhy
 UIwIG6Uo5mjXS+x68AZ9wqGMafaKJ7PwEfWulZe9kUwOtE7Vzaw0TJ5ME
 TrjpyqCLtAoUnWk6XROfYvsHK7Ks6QO8w24x5G3nlcNZGyuvwbkKPEsvw
 hPwALzyeHSV/MTZhHI0yIp5YGKEExmWlQRKKyKsifbGZTJSBqEvOjPjzq g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="324152930"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="324152930"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 09:55:25 -0700
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="944711870"
Received: from abijaz-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.58.140])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 09:55:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Sep 2022 19:54:33 +0300
Message-Id: <8814655d4e05ce2ae1752b2fb4c864192f666ab0.1662999695.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1662999695.git.jani.nikula@intel.com>
References: <cover.1662999695.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/15] drm/i915/irq: make
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
index 86a42d9e8041..65038750b6f6 100644
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
 
@@ -3928,7 +3928,7 @@ static void i8xx_irq_reset(struct drm_i915_private *dev_priv)
 
 	i9xx_pipestat_irq_reset(dev_priv);
 
-	GEN2_IRQ_RESET(uncore);
+	gen2_irq_reset(uncore);
 	dev_priv->irq_mask = ~0u;
 }
 
@@ -3954,7 +3954,7 @@ static void i8xx_irq_postinstall(struct drm_i915_private *dev_priv)
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

