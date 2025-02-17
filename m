Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A2BA37BBE
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2025 08:01:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2525710E386;
	Mon, 17 Feb 2025 07:01:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QLiM+p0b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 279E810E384;
 Mon, 17 Feb 2025 07:01:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739775663; x=1771311663;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NLz1yy/dyZRt0UyboCTGIOp9wchnTcElUI6SHcVtGGI=;
 b=QLiM+p0b6rU2JHyRBiJQ9bKRLDhJJ3e7JfZSfHJfKNtotQEcoRkAnUiF
 toDaa6XJSGUFxvjTmPdrCXLHpkoxi22SplFiooSbfxqwwHXmros0y3nQ6
 smOP9OZ89nuw/x0++OkVyl2PRBoFXSYV78gIHoJk9Js783wcNyhB5q+qq
 JNx6sIgo80SMWX3u3eMvnY6+6Ul5m5EaqK/2kxlqEi32tH/bbJicqgDYQ
 H3Bz5jo44RPuJWBqzbXzR+mYia1gc9bLxNtjbP0iEB3nHbCaUkQl7nRGs
 VYPhAqEn9OLAUHC5VlwW06IKklh0Jci6ZH+JVF6b4kJGCsXio/e8FenQN Q==;
X-CSE-ConnectionGUID: bVlTNd0BTsuXFNUVn2KTvw==
X-CSE-MsgGUID: NfOJ28BzS0+tJHbk6g5Zow==
X-IronPort-AV: E=McAfee;i="6700,10204,11347"; a="39676260"
X-IronPort-AV: E=Sophos;i="6.13,292,1732608000"; d="scan'208";a="39676260"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2025 23:01:03 -0800
X-CSE-ConnectionGUID: XBUYuFrlSfmTquG7/t355g==
X-CSE-MsgGUID: MTS3I1EJTe+rbUTq3nqJTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,292,1732608000"; d="scan'208";a="114233424"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 Feb 2025 23:01:00 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 17 Feb 2025 09:00:59 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
 Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: [PATCH v2 4/8] drm/i915: Hook in display GTT faults for IVB/HSW
Date: Mon, 17 Feb 2025 09:00:43 +0200
Message-ID: <20250217070047.953-5-ville.syrjala@linux.intel.com>
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

Dump out the display fault information from the IVB/HSW
error interrupt handler.

Bspec: 8203
Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c  | 46 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h               | 11 +++++
 2 files changed, 57 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 8c73dc872384..cd53008ab590 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -720,6 +720,39 @@ static void ibx_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 		intel_pch_fifo_underrun_irq_handler(display, PIPE_B);
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
 	struct intel_display *display = &dev_priv->display;
@@ -729,7 +762,15 @@ static void ivb_err_int_handler(struct drm_i915_private *dev_priv)
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
 			intel_cpu_fifo_underrun_irq_handler(display, pipe);
 
@@ -739,6 +780,11 @@ static void ivb_err_int_handler(struct drm_i915_private *dev_priv)
 			else
 				hsw_pipe_crc_irq_handler(dev_priv, pipe);
 		}
+
+		fault_errors = err_int & ivb_err_int_pipe_fault_mask(pipe);
+		if (fault_errors)
+			intel_pipe_fault_irq_handler(display, ivb_pipe_fault_handlers,
+						     pipe, fault_errors);
 	}
 
 	intel_de_write(display, GEN7_ERR_INT, err_int);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 3a936a4aa2e8..b8756e5d2cae 100644
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
2.45.3

