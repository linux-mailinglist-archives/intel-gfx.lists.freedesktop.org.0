Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D8FDA14128
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 18:48:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B706310E9E7;
	Thu, 16 Jan 2025 17:48:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IrngV8mX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F91A10E9E7;
 Thu, 16 Jan 2025 17:48:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737049694; x=1768585694;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oNjFybamy79x8G1H35AcRgz5/toaqGShslJm4IxJ4Ms=;
 b=IrngV8mXGsEoq6iOsSg/SoaQ8DpM73NP/SNiZxYK9R38uI+pkRIrQrPo
 6QC4s1d2X6AN7wq37T7+V/aFHbxnULKm7nXvyuDk36VQqJAF1Sh8N+PXL
 ODWa+jyW03QcnssND4jfz3o6EqfDUiFNPru4Ktsr0Yt6d9f8hfHK5oldR
 25JO1PzyQj4F1eAfAkDOPiJfRXaemTct8e1j4ZSqHBQZl0IeYoOwtHXgB
 V7fWVezrDpHzRD4vidAGB9gVudyWhOeCPmAxs7nM20bUA9shY5zzX1NU9
 LnhEfaQQerDaSa1Lx1mtsTVgRbiL0IkHy360ox3yjo6aYOrmAmjkp0ki2 A==;
X-CSE-ConnectionGUID: YnevDDoxS1O7XeVtPFQUdw==
X-CSE-MsgGUID: lYki4RPcSF6xLPIUkoYlWw==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="48847577"
X-IronPort-AV: E=Sophos;i="6.13,210,1732608000"; d="scan'208";a="48847577"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 09:48:13 -0800
X-CSE-ConnectionGUID: bdauqFD5RuCg1ZubkLDwew==
X-CSE-MsgGUID: VR4QyF5yQXOUYlsU3Elahg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,210,1732608000"; d="scan'208";a="105712613"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 Jan 2025 09:48:11 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Jan 2025 19:48:10 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 4/8] drm/i915: Hook in display GTT faults for IVB/HSW
Date: Thu, 16 Jan 2025 19:47:54 +0200
Message-ID: <20250116174758.18298-5-ville.syrjala@linux.intel.com>
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

Dump out the display fault information from the IVB/HSW
error interrupt handler.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c  | 47 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h               | 11 +++++
 2 files changed, 58 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 1b3b6b8bc794..70e5326b86d0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -669,15 +669,57 @@ static void ibx_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 		intel_pch_fifo_underrun_irq_handler(dev_priv, PIPE_B);
 }
 
+static u32 ivb_err_int_pipe_fault_mask(enum pipe pipe)
+{
+	switch (pipe) {
+	case PIPE_A:
+		return ERR_INT_SPRITE_A_FAULT |
+			ERR_INT_PRIMARY_A_FAULT |
+			ERR_INT_CURSOR_A_FAULT;
+	case PIPE_B:
+		return ERR_INT_SPRITE_B_FAULT |
+			ERR_INT_PRIMARY_B_FAULT |
+			ERR_INT_CURSOR_B_FAULT;
+	case PIPE_C:
+		return ERR_INT_SPRITE_C_FAULT |
+			ERR_INT_PRIMARY_C_FAULT |
+			ERR_INT_CURSOR_C_FAULT;
+	default:
+		return 0;
+	}
+}
+
+static const struct pipe_fault_handler ivb_pipe_fault_handlers[] = {
+	{ .fault = ERR_INT_SPRITE_A_FAULT, .handle = handle_plane_fault, .plane_id = PLANE_SPRITE0, },
+	{ .fault = ERR_INT_PRIMARY_A_FAULT, .handle = handle_plane_fault, .plane_id = PLANE_PRIMARY, },
+	{ .fault = ERR_INT_CURSOR_A_FAULT, .handle = handle_plane_fault, .plane_id = PLANE_CURSOR, },
+	{ .fault = ERR_INT_SPRITE_B_FAULT, .handle = handle_plane_fault, .plane_id = PLANE_SPRITE0, },
+	{ .fault = ERR_INT_PRIMARY_B_FAULT, .handle = handle_plane_fault, .plane_id = PLANE_PRIMARY, },
+	{ .fault = ERR_INT_CURSOR_B_FAULT, .handle = handle_plane_fault, .plane_id = PLANE_CURSOR, },
+	{ .fault = ERR_INT_SPRITE_C_FAULT, .handle = handle_plane_fault, .plane_id = PLANE_SPRITE0, },
+	{ .fault = ERR_INT_PRIMARY_C_FAULT, .handle = handle_plane_fault, .plane_id = PLANE_PRIMARY, },
+	{ .fault = ERR_INT_CURSOR_C_FAULT, .handle = handle_plane_fault, .plane_id = PLANE_CURSOR, },
+	{}
+};
+
 static void ivb_err_int_handler(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
 	u32 err_int = intel_uncore_read(&dev_priv->uncore, GEN7_ERR_INT);
 	enum pipe pipe;
 
 	if (err_int & ERR_INT_POISON)
 		drm_err(&dev_priv->drm, "Poison interrupt\n");
 
+	if (err_int & ERR_INT_INVALID_GTT_PTE)
+		drm_err_ratelimited(display->drm, "Invalid GTT PTE\n");
+
+	if (err_int & ERR_INT_INVALID_PTE_DATA)
+		drm_err_ratelimited(display->drm, "Invalid PTE data\n");
+
 	for_each_pipe(dev_priv, pipe) {
+		u32 fault_errors;
+
 		if (err_int & ERR_INT_FIFO_UNDERRUN(pipe))
 			intel_cpu_fifo_underrun_irq_handler(dev_priv, pipe);
 
@@ -687,6 +729,11 @@ static void ivb_err_int_handler(struct drm_i915_private *dev_priv)
 			else
 				hsw_pipe_crc_irq_handler(dev_priv, pipe);
 		}
+
+		fault_errors = err_int & ivb_err_int_pipe_fault_mask(pipe);
+		if (fault_errors)
+			intel_pipe_fault_irq_handler(display, ivb_pipe_fault_handlers,
+						     pipe, fault_errors);
 	}
 
 	intel_uncore_write(&dev_priv->uncore, GEN7_ERR_INT, err_int);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 765e6c0528fb..9021f3ead7e6 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -374,6 +374,17 @@
 
 #define GEN7_ERR_INT	_MMIO(0x44040)
 #define   ERR_INT_POISON		(1 << 31)
+#define   ERR_INT_INVALID_GTT_PTE	(1 << 29)
+#define   ERR_INT_INVALID_PTE_DATA	(1 << 28)
+#define   ERR_INT_SPRITE_C_FAULT	(1 << 23)
+#define   ERR_INT_PRIMARY_C_FAULT	(1 << 22)
+#define   ERR_INT_CURSOR_C_FAULT	(1 << 21)
+#define   ERR_INT_SPRITE_B_FAULT	(1 << 20)
+#define   ERR_INT_PRIMARY_B_FAULT	(1 << 19)
+#define   ERR_INT_CURSOR_B_FAULT	(1 << 18)
+#define   ERR_INT_SPRITE_A_FAULT	(1 << 17)
+#define   ERR_INT_PRIMARY_A_FAULT	(1 << 16)
+#define   ERR_INT_CURSOR_A_FAULT	(1 << 15)
 #define   ERR_INT_MMIO_UNCLAIMED	(1 << 13)
 #define   ERR_INT_PIPE_CRC_DONE_C	(1 << 8)
 #define   ERR_INT_FIFO_UNDERRUN_C	(1 << 6)
-- 
2.45.2

