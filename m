Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60119A953B8
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Apr 2025 17:51:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C5D810E47C;
	Mon, 21 Apr 2025 15:51:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E/092ozt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE94A10E031;
 Mon, 21 Apr 2025 15:51:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745250670; x=1776786670;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BHrumGJgDLrRHKpp1mBoBdYiKcLYy4ObUxzmzV53KTE=;
 b=E/092oztscPvxM5MA9f+PJWipvsEvcbotOrLwKTMJTmWZy3VGTCORhZZ
 y/11OwdO9/FygZy1Cuh0g54XeatQ3L47f4Nf7eyLFam7u6r4Ip/V/xe37
 muRGM1S45UpFzd39CD0KUFEtkj9cPkGpf1uuca1miDwBnUyxkjkwEug2Q
 JczaDvwgYhQekW8ztdSZQOzX15rv3JvjOXRHviHvpbh4zBm1ZHFUboDkY
 LmcRq9txrOB8m5XQxkjj3z8n4jOlgcnqom1RGyNnKlZzZeUSvH6Y4Pdvz
 DU+wzl3xDZlLsXrLZ06s9Q7CNDt3+intIvzBJBSMe7Z6DX0/SgqZgBOWM A==;
X-CSE-ConnectionGUID: nhIO1RQ6TGWDHdCNI9XnSA==
X-CSE-MsgGUID: ZVJi6w03TpmInzW7cFShnw==
X-IronPort-AV: E=McAfee;i="6700,10204,11410"; a="57434063"
X-IronPort-AV: E=Sophos;i="6.15,228,1739865600"; d="scan'208";a="57434063"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2025 08:51:09 -0700
X-CSE-ConnectionGUID: Zd6TiTnFSzWfdViUihQ5bg==
X-CSE-MsgGUID: UZfmTJ/oSaSXZU4wGVtjcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,228,1739865600"; d="scan'208";a="162725567"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa002.jf.intel.com with ESMTP; 21 Apr 2025 08:51:08 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	ankit.k.nautiyal@intel.com
Subject: [PATCH v2 02/13] drm/i915/vrr: Add functions to read out vmin/vmax
 stuff
Date: Mon, 21 Apr 2025 21:18:49 +0530
Message-ID: <20250421154900.2095202-3-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250421154900.2095202-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250421154900.2095202-1-mitulkumar.ajitkumar.golani@intel.com>
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

Calculate delayed vblank start position with the help of added
vmin/vmax stuff for next frame and final computation.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c      | 57 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vrr.h      |  5 ++
 drivers/gpu/drm/i915/display/intel_vrr_regs.h | 44 ++++++++++++++
 3 files changed, 106 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index adfd231eb578..1c0eaa08927b 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -746,3 +746,60 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 	if (crtc_state->vrr.enable)
 		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 }
+
+int intel_vrr_dcb_vmin_vblank_start_next(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	u32 tmp;
+
+	tmp = intel_de_read(display,
+			    TRANS_VRR_DCB_ADJ_FLIPLINE_CFG(display, cpu_transcoder));
+
+	if (REG_FIELD_GET(VRR_DCB_ADJ_FLIPLINE_CNT_MASK, tmp) == 0)
+		return -1;
+
+	return intel_vrr_vblank_start(crtc_state,
+				      REG_FIELD_GET(VRR_DCB_ADJ_FLIPLINE_MASK, tmp) + 1);
+}
+
+int intel_vrr_dcb_vmax_vblank_start_next(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	u32 tmp;
+
+	tmp = intel_de_read(display,
+			    TRANS_VRR_DCB_ADJ_VMAX_CFG(display, cpu_transcoder));
+
+	if (REG_FIELD_GET(VRR_DCB_ADJ_VMAX_CNT_MASK, tmp) == 0)
+		return -1;
+
+	return intel_vrr_vblank_start(crtc_state,
+				      REG_FIELD_GET(VRR_DCB_ADJ_VMAX_MASK, tmp) + 1);
+}
+
+int intel_vrr_dcb_vmin_vblank_start_final(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	u32 tmp;
+
+	tmp = intel_de_read(display,
+			    TRANS_VRR_FLIPLINE_DCB(display, cpu_transcoder));
+
+	return intel_vrr_vblank_start(crtc_state,
+				      REG_FIELD_GET(VRR_FLIPLINE_DCB_MASK, tmp) + 1);
+}
+
+int intel_vrr_dcb_vmax_vblank_start_final(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	u32 tmp;
+
+	tmp = intel_de_read(display, TRANS_VRR_VMAX_DCB(display, cpu_transcoder));
+
+	return intel_vrr_vblank_start(crtc_state,
+				      REG_FIELD_GET(VRR_VMAX_DCB_MASK, tmp) + 1);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 38bf9996b883..e62b8b50aec6 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -42,4 +42,9 @@ void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state);
 bool intel_vrr_always_use_vrr_tg(struct intel_display *display);
 
+int intel_vrr_dcb_vmin_vblank_start_next(const struct intel_crtc_state *crtc_state);
+int intel_vrr_dcb_vmax_vblank_start_next(const struct intel_crtc_state *crtc_state);
+int intel_vrr_dcb_vmin_vblank_start_final(const struct intel_crtc_state *crtc_state);
+int intel_vrr_dcb_vmax_vblank_start_final(const struct intel_crtc_state *crtc_state);
+
 #endif /* __INTEL_VRR_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_vrr_regs.h b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
index 6ed0e0dc97e7..2214c10d4084 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
@@ -9,6 +9,50 @@
 #include "intel_display_reg_defs.h"
 
 /* VRR registers */
+#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_A		0x604D4
+#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_B		0x614D4
+#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_C		0x624D4
+#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_D		0x634D4
+#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_E		0x6B4D4
+#define TRANS_VRR_DCB_ADJ_FLIPLINE_CFG(dev_priv, trans)	\
+					_MMIO_TRANS2(dev_priv, \
+						     trans, \
+						     _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_A)
+
+#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_A			0x604D8
+#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_B			0x614D8
+#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_C			0x624D8
+#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_D			0x634D8
+#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_E			0x6B4D8
+#define TRANS_VRR_DCB_ADJ_VMAX_CFG(dev_priv, trans)	_MMIO_TRANS2(dev_priv, \
+								     trans, \
+								     _TRANS_VRR_DCB_ADJ_VMAX_CFG_A)
+
+#define _TRANS_VRR_FLIPLINE_DCB_A		0x60418
+#define _TRANS_VRR_FLIPLINE_DCB_B		0x61418
+#define _TRANS_VRR_FLIPLINE_DCB_C		0x62418
+#define _TRANS_VRR_FLIPLINE_DCB_D		0x63418
+#define _TRANS_VRR_FLIPLINE_DCB_E		0x6B418
+#define TRANS_VRR_FLIPLINE_DCB(dev_priv, trans) _MMIO_TRANS2(dev_priv, \
+							     trans, \
+							     _TRANS_VRR_FLIPLINE_DCB_A)
+
+#define _TRANS_VRR_VMAX_DCB_A			0x60414
+#define _TRANS_VRR_VMAX_DCB_B			0x61414
+#define _TRANS_VRR_VMAX_DCB_C			0x62414
+#define _TRANS_VRR_VMAX_DCB_D			0x63414
+#define _TRANS_VRR_VMAX_DCB_E			0x6B414
+#define TRANS_VRR_VMAX_DCB(dev_priv, trans)	_MMIO_TRANS2(dev_priv, \
+							     trans, \
+							     _TRANS_VRR_VMAX_DCB_A)
+
+#define VRR_DCB_ADJ_FLIPLINE_CNT_MASK		REG_GENMASK(31, 24)
+#define VRR_DCB_ADJ_FLIPLINE_MASK		REG_GENMASK(19, 0)
+#define VRR_DCB_ADJ_VMAX_CNT_MASK		REG_GENMASK(31, 24)
+#define VRR_DCB_ADJ_VMAX_MASK			REG_GENMASK(19, 0)
+#define VRR_FLIPLINE_DCB_MASK			REG_GENMASK(19, 0)
+#define VRR_VMAX_DCB_MASK			REG_GENMASK(19, 0)
+
 #define _TRANS_VRR_CTL_A			0x60420
 #define _TRANS_VRR_CTL_B			0x61420
 #define _TRANS_VRR_CTL_C			0x62420
-- 
2.48.1

