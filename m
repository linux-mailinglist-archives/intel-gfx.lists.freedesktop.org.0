Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13361A37BBF
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2025 08:01:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC15010E37D;
	Mon, 17 Feb 2025 07:01:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nlas0Mmh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FB9310E388;
 Mon, 17 Feb 2025 07:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739775666; x=1771311666;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vRDaSrLlwb5Bn7wAwIlWW4qveubKteu5V9M1r/eRDls=;
 b=Nlas0MmhRYS7su10QF/KGd2mo80R6ufPs8g52RROwUU4ZUJRxVzjw1KS
 gJscC2X+rQ9oPr5LzADuIvhfdgbGQ8D7fHYNNwl5b1X43GcnhMa19imvZ
 uJxV17sz/8hFj/A+qbnaIfaoGhO5azLWFoRF4k6sW2sHSqoITB760divL
 jz+vmRgW5e6pW5LSHIMWvFNoW8FyhRJJbIISmVXovHIyihj/7GLdNEWgF
 zAuqGXjaNQQBRsyOlchOLYdHnrLlHv0g3our1AoRMVYC+bcPkNGo3nrQn
 VnY2nX1KYRCzMK60jxd4i98fT9JeBKgUzPYfPiDr3qC7d5U+O/OVf1U76 Q==;
X-CSE-ConnectionGUID: F68m6upFTbChwdon8ia3JA==
X-CSE-MsgGUID: ktYuG/eUR/aCn0nhSN4htQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11347"; a="39676262"
X-IronPort-AV: E=Sophos;i="6.13,292,1732608000"; d="scan'208";a="39676262"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2025 23:01:06 -0800
X-CSE-ConnectionGUID: CYuCD7LyQZKV774+EFsz8Q==
X-CSE-MsgGUID: c7fDNh2gRXWkO3ROVH/FAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,292,1732608000"; d="scan'208";a="114233455"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 Feb 2025 23:01:03 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 17 Feb 2025 09:01:03 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
 Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: [PATCH v2 5/8] drm/i915: Hook in display GTT faults for ILK/SNB
Date: Mon, 17 Feb 2025 09:00:44 +0200
Message-ID: <20250217070047.953-6-ville.syrjala@linux.intel.com>
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

Hook up display GTT fault interrupts for ILK/SNB.

Bspec: 8559
Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c  | 56 ++++++++++++++++++-
 drivers/gpu/drm/i915/i915_reg.h               | 10 ++++
 2 files changed, 65 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index cd53008ab590..1fa44f6bf880 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -844,6 +844,56 @@ static void cpt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 		cpt_serr_int_handler(dev_priv);
 }
 
+static u32 ilk_gtt_fault_pipe_fault_mask(enum pipe pipe)
+{
+	switch (pipe) {
+	case PIPE_A:
+		return GTT_FAULT_SPRITE_A_FAULT |
+			GTT_FAULT_PRIMARY_A_FAULT |
+			GTT_FAULT_CURSOR_A_FAULT;
+	case PIPE_B:
+		return GTT_FAULT_SPRITE_B_FAULT |
+			GTT_FAULT_PRIMARY_B_FAULT |
+			GTT_FAULT_CURSOR_B_FAULT;
+	default:
+		return 0;
+	}
+}
+
+static const struct pipe_fault_handler ilk_pipe_fault_handlers[] = {
+	{ .fault = GTT_FAULT_SPRITE_A_FAULT, .handle = handle_plane_fault, .plane_id = PLANE_SPRITE0, },
+	{ .fault = GTT_FAULT_SPRITE_B_FAULT, .handle = handle_plane_fault, .plane_id = PLANE_SPRITE0, },
+	{ .fault = GTT_FAULT_PRIMARY_A_FAULT, .handle = handle_plane_fault, .plane_id = PLANE_PRIMARY, },
+	{ .fault = GTT_FAULT_PRIMARY_B_FAULT, .handle = handle_plane_fault, .plane_id = PLANE_PRIMARY, },
+	{ .fault = GTT_FAULT_CURSOR_A_FAULT, .handle = handle_plane_fault, .plane_id = PLANE_CURSOR, },
+	{ .fault = GTT_FAULT_CURSOR_B_FAULT, .handle = handle_plane_fault, .plane_id = PLANE_CURSOR, },
+	{}
+};
+
+static void ilk_gtt_fault_irq_handler(struct intel_display *display)
+{
+	enum pipe pipe;
+	u32 gtt_fault;
+
+	gtt_fault = intel_de_read(display, ILK_GTT_FAULT);
+	intel_de_write(display, ILK_GTT_FAULT, gtt_fault);
+
+	if (gtt_fault & GTT_FAULT_INVALID_GTT_PTE)
+		drm_err_ratelimited(display->drm, "Invalid GTT PTE\n");
+
+	if (gtt_fault & GTT_FAULT_INVALID_PTE_DATA)
+		drm_err_ratelimited(display->drm, "Invalid PTE data\n");
+
+	for_each_pipe(display, pipe) {
+		u32 fault_errors;
+
+		fault_errors = gtt_fault & ilk_gtt_fault_pipe_fault_mask(pipe);
+		if (fault_errors)
+			intel_pipe_fault_irq_handler(display, ilk_pipe_fault_handlers,
+						     pipe, fault_errors);
+	}
+}
+
 void ilk_display_irq_handler(struct drm_i915_private *dev_priv, u32 de_iir)
 {
 	struct intel_display *display = &dev_priv->display;
@@ -862,6 +912,9 @@ void ilk_display_irq_handler(struct drm_i915_private *dev_priv, u32 de_iir)
 	if (de_iir & DE_POISON)
 		drm_err(&dev_priv->drm, "Poison interrupt\n");
 
+	if (de_iir & DE_GTT_FAULT)
+		ilk_gtt_fault_irq_handler(display);
+
 	for_each_pipe(dev_priv, pipe) {
 		if (de_iir & DE_PIPE_VBLANK(pipe))
 			intel_handle_vblank(dev_priv, pipe);
@@ -1988,7 +2041,8 @@ void ilk_de_irq_postinstall(struct drm_i915_private *i915)
 			      DE_PLANE_FLIP_DONE_IVB(PLANE_A) |
 			      DE_DP_A_HOTPLUG_IVB);
 	} else {
-		display_mask = (DE_MASTER_IRQ_CONTROL | DE_GSE | DE_PCH_EVENT |
+		display_mask = (DE_MASTER_IRQ_CONTROL | DE_GSE |
+				DE_PCH_EVENT | DE_GTT_FAULT |
 				DE_AUX_CHANNEL_A | DE_PIPEB_CRC_DONE |
 				DE_PIPEA_CRC_DONE | DE_POISON);
 		extra_mask = (DE_PIPEA_VBLANK | DE_PIPEB_VBLANK |
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index b8756e5d2cae..5e91fcf40a0f 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -372,6 +372,16 @@
 #define GEN7_MEDIA_MAX_REQ_COUNT	_MMIO(0x4070)
 #define GEN7_GFX_MAX_REQ_COUNT		_MMIO(0x4074)
 
+#define ILK_GTT_FAULT	_MMIO(0x44040) /* ilk/snb */
+#define   GTT_FAULT_INVALID_GTT_PTE	(1 << 7)
+#define   GTT_FAULT_INVALID_PTE_DATA	(1 << 6)
+#define   GTT_FAULT_CURSOR_B_FAULT	(1 << 5)
+#define   GTT_FAULT_CURSOR_A_FAULT	(1 << 4)
+#define   GTT_FAULT_SPRITE_B_FAULT	(1 << 3)
+#define   GTT_FAULT_SPRITE_A_FAULT	(1 << 2)
+#define   GTT_FAULT_PRIMARY_B_FAULT	(1 << 1)
+#define   GTT_FAULT_PRIMARY_A_FAULT	(1 << 0)
+
 #define GEN7_ERR_INT	_MMIO(0x44040)
 #define   ERR_INT_POISON		(1 << 31)
 #define   ERR_INT_INVALID_GTT_PTE	(1 << 29)
-- 
2.45.3

