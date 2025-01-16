Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 626E9A1412A
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 18:48:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D08C10E9E1;
	Thu, 16 Jan 2025 17:48:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PgYKHB3S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C669310E9EC;
 Thu, 16 Jan 2025 17:48:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737049699; x=1768585699;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=S3XlmK7h9L1PyJ9OK4teEutuxU5sE4tN5PL6IzObEQs=;
 b=PgYKHB3SBsg1vvxy782Y4ky50MUN2nBPWGUa8TpTuD7MJebRgjSbMfiI
 5rWo+kfTYGBtm9QSNi9g/0t3GbCzYHPcJALJMTceIzTMReSa3gfraZEQL
 9qRck+9oeK/EhgwUSbWwLu0Z9YD8AJc8mZ5+vI2N0tWWqxkl7EqQbXkGF
 anNfjZLGARojrclj3BLY4CMBFRwSHBnT9I1fJrSlZTU5Jpe8fVGBRe5a1
 0CJXKH8QyvKVvPzsRX0tDcHepsM6i6esBUxn6AQOr0sTrN6C1zWMUkGdb
 uLluG4kj69tfNJ55Cattu0jVsVGbeb6m6zfNAr91jVwWuS/vHxJK35AjY A==;
X-CSE-ConnectionGUID: x0Yf7oIhQ6SlZgNL0gi77g==
X-CSE-MsgGUID: 1u8p61S+TvmePVhh7NrH1g==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="48847595"
X-IronPort-AV: E=Sophos;i="6.13,210,1732608000"; d="scan'208";a="48847595"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 09:48:19 -0800
X-CSE-ConnectionGUID: inMs1qkHSK2lQEBaA/HIcg==
X-CSE-MsgGUID: CAm8MU9pRba3k9Wkkh10+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,210,1732608000"; d="scan'208";a="105712624"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 Jan 2025 09:48:17 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Jan 2025 19:48:15 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 6/8] drm/i915: Introduce i915_error_regs
Date: Thu, 16 Jan 2025 19:47:56 +0200
Message-ID: <20250116174758.18298-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250116174758.18298-1-ville.syrjala@linux.intel.com>
References: <20250116174758.18298-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Introduce i915_error_regs as the EIR/EMR counterpart
to the IIR/IMR/IER i915_irq_regs, and update the irq
reset/postingstall to utilize them accordingly.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c      | 29 ++++++++++++++++++++++++++--
 drivers/gpu/drm/i915/i915_irq.h      |  4 ++++
 drivers/gpu/drm/i915/i915_reg.h      |  3 +++
 drivers/gpu/drm/i915/i915_reg_defs.h |  8 ++++++++
 4 files changed, 42 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 202eb1b6ae54..3040c000f837 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -120,6 +120,29 @@ void gen2_irq_init(struct intel_uncore *uncore, struct i915_irq_regs regs,
 	intel_uncore_posting_read(uncore, regs.imr);
 }
 
+void gen2_error_reset(struct intel_uncore *uncore, struct i915_error_regs regs)
+{
+	intel_uncore_write(uncore, regs.emr, 0xffffffff);
+	intel_uncore_posting_read(uncore, regs.emr);
+
+	intel_uncore_write(uncore, regs.eir, 0xffffffff);
+	intel_uncore_posting_read(uncore, regs.eir);
+	intel_uncore_write(uncore, regs.eir, 0xffffffff);
+	intel_uncore_posting_read(uncore, regs.eir);
+}
+
+void gen2_error_init(struct intel_uncore *uncore, struct i915_error_regs regs,
+		     u32 emr_val)
+{
+	intel_uncore_write(uncore, regs.eir, 0xffffffff);
+	intel_uncore_posting_read(uncore, regs.eir);
+	intel_uncore_write(uncore, regs.eir, 0xffffffff);
+	intel_uncore_posting_read(uncore, regs.eir);
+
+	intel_uncore_write(uncore, regs.emr, emr_val);
+	intel_uncore_posting_read(uncore, regs.emr);
+}
+
 /**
  * ivb_parity_work - Workqueue called when a parity error interrupt
  * occurred.
@@ -867,6 +890,7 @@ static void i915_irq_reset(struct drm_i915_private *dev_priv)
 
 	i9xx_display_irq_reset(dev_priv);
 
+	gen2_error_reset(uncore, GEN2_ERROR_REGS);
 	gen2_irq_reset(uncore, GEN2_IRQ_REGS);
 	dev_priv->irq_mask = ~0u;
 }
@@ -876,7 +900,7 @@ static void i915_irq_postinstall(struct drm_i915_private *dev_priv)
 	struct intel_uncore *uncore = &dev_priv->uncore;
 	u32 enable_mask;
 
-	intel_uncore_write(uncore, EMR, i9xx_error_mask(dev_priv));
+	gen2_error_init(uncore, GEN2_ERROR_REGS, i9xx_error_mask(dev_priv));
 
 	dev_priv->irq_mask =
 		~(I915_DISPLAY_PIPE_A_EVENT_INTERRUPT |
@@ -972,6 +996,7 @@ static void i965_irq_reset(struct drm_i915_private *dev_priv)
 
 	i9xx_display_irq_reset(dev_priv);
 
+	gen2_error_reset(uncore, GEN2_ERROR_REGS);
 	gen2_irq_reset(uncore, GEN2_IRQ_REGS);
 	dev_priv->irq_mask = ~0u;
 }
@@ -1000,7 +1025,7 @@ static void i965_irq_postinstall(struct drm_i915_private *dev_priv)
 	struct intel_uncore *uncore = &dev_priv->uncore;
 	u32 enable_mask;
 
-	intel_uncore_write(uncore, EMR, i965_error_mask(dev_priv));
+	gen2_error_init(uncore, GEN2_ERROR_REGS, i965_error_mask(dev_priv));
 
 	dev_priv->irq_mask =
 		~(I915_ASLE_INTERRUPT |
diff --git a/drivers/gpu/drm/i915/i915_irq.h b/drivers/gpu/drm/i915/i915_irq.h
index 0457f6402e05..58789b264575 100644
--- a/drivers/gpu/drm/i915/i915_irq.h
+++ b/drivers/gpu/drm/i915/i915_irq.h
@@ -47,4 +47,8 @@ void gen2_irq_reset(struct intel_uncore *uncore, struct i915_irq_regs regs);
 void gen2_irq_init(struct intel_uncore *uncore, struct i915_irq_regs regs,
 		   u32 imr_val, u32 ier_val);
 
+void gen2_error_reset(struct intel_uncore *uncore, struct i915_error_regs regs);
+void gen2_error_init(struct intel_uncore *uncore, struct i915_error_regs regs,
+		     u32 emr_val);
+
 #endif /* __I915_IRQ_H__ */
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 71d09c21695a..aed109adfedf 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -472,6 +472,9 @@
 #define   GM45_ERROR_CP_PRIV				(1 << 3)
 #define   I915_ERROR_MEMORY_REFRESH			(1 << 1)
 #define   I915_ERROR_INSTRUCTION			(1 << 0)
+
+#define GEN2_ERROR_REGS		I915_ERROR_REGS(EMR, EIR)
+
 #define INSTPM	        _MMIO(0x20c0)
 #define   INSTPM_SELF_EN (1 << 12) /* 915GM only */
 #define   INSTPM_AGPBUSY_INT_EN (1 << 11) /* gen3: when disabled, pending interrupts
diff --git a/drivers/gpu/drm/i915/i915_reg_defs.h b/drivers/gpu/drm/i915/i915_reg_defs.h
index e251bcc0c89f..94a8f902689e 100644
--- a/drivers/gpu/drm/i915/i915_reg_defs.h
+++ b/drivers/gpu/drm/i915/i915_reg_defs.h
@@ -294,4 +294,12 @@ struct i915_irq_regs {
 #define I915_IRQ_REGS(_imr, _ier, _iir) \
 	((const struct i915_irq_regs){ .imr = (_imr), .ier = (_ier), .iir = (_iir) })
 
+struct i915_error_regs {
+	i915_reg_t emr;
+	i915_reg_t eir;
+};
+
+#define I915_ERROR_REGS(_emr, _eir) \
+	((const struct i915_error_regs){ .emr = (_emr), .eir = (_eir) })
+
 #endif /* __I915_REG_DEFS__ */
-- 
2.45.2

