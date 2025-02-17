Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E309A37BC0
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2025 08:01:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B34EF10E380;
	Mon, 17 Feb 2025 07:01:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Opfkg/Jb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C75BB10E389;
 Mon, 17 Feb 2025 07:01:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739775670; x=1771311670;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4q39IoZf2aIKLRBh1R5y20QEogESByeEy9J2K1gyK04=;
 b=Opfkg/JbYDkRDp2crRMOnL4E/Ah8sz5PrCDeeqXq3GVVfBq1VGeQGOyD
 ItC6dW4VfAtINbmm6LkAWOHII7Auxt0OehU10asrjl6LkokqjXsPL9N0D
 szAopkQJS3BAG43KMjULRlrv72pUL72RihqAPnT3dhA4ltsQ4mlChBCgm
 Ic29y7WJzcaOExMu2zfGNqDjuD/jGk8NUznlQHR51GbS45B6ycxjfGVVm
 ywoBRgPSxFpRr8E7HFVZ/E+NMjSRZbJ6vtWG2KOkKRUaLlNYQV/qPs5UE
 LSZ8REl+wyefXZvY2c6AhFMh4i7aTbSk0yqYv8o19qKur/cfh6W9qthN8 A==;
X-CSE-ConnectionGUID: mws+HyRZTLqQuW/zeZkhQw==
X-CSE-MsgGUID: +l4yW5+KRJajKofDVAxFyQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11347"; a="39676266"
X-IronPort-AV: E=Sophos;i="6.13,292,1732608000"; d="scan'208";a="39676266"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2025 23:01:09 -0800
X-CSE-ConnectionGUID: WPIfUpi/Qs2F/jFSuhY0cQ==
X-CSE-MsgGUID: Mkb7RpW1SwOf1fovfONfqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,292,1732608000"; d="scan'208";a="114233488"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 Feb 2025 23:01:07 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 17 Feb 2025 09:01:06 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
 Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: [PATCH v2 6/8] drm/i915: Introduce i915_error_regs
Date: Mon, 17 Feb 2025 09:00:45 +0200
Message-ID: <20250217070047.953-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250217070047.953-1-ville.syrjala@linux.intel.com>
References: <20250217070047.953-1-ville.syrjala@linux.intel.com>
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

v2: Include xe compat versions

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c           | 29 +++++++++++++++++++++--
 drivers/gpu/drm/i915/i915_irq.h           |  4 ++++
 drivers/gpu/drm/i915/i915_reg.h           |  3 +++
 drivers/gpu/drm/i915/i915_reg_defs.h      |  8 +++++++
 drivers/gpu/drm/xe/display/ext/i915_irq.c | 23 ++++++++++++++++++
 5 files changed, 65 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index f98e5cc14724..bba0a0acf0ae 100644
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
index 5e91fcf40a0f..be1aab838be9 100644
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
diff --git a/drivers/gpu/drm/xe/display/ext/i915_irq.c b/drivers/gpu/drm/xe/display/ext/i915_irq.c
index ac4cda2d81c7..3c6bca66ddab 100644
--- a/drivers/gpu/drm/xe/display/ext/i915_irq.c
+++ b/drivers/gpu/drm/xe/display/ext/i915_irq.c
@@ -51,6 +51,29 @@ void gen2_irq_init(struct intel_uncore *uncore, struct i915_irq_regs regs,
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
 bool intel_irqs_enabled(struct xe_device *xe)
 {
 	return atomic_read(&xe->irq.enabled);
-- 
2.45.3

