Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C9F4A953BA
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Apr 2025 17:51:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0337E10E480;
	Mon, 21 Apr 2025 15:51:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rmk/IHzD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3866D10E47E;
 Mon, 21 Apr 2025 15:51:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745250673; x=1776786673;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=N+aYsBCyULbD1v9gXlQE5fF34wi/aXUN3xcxhq99/ss=;
 b=Rmk/IHzDPvw/cOVJSbMG3SH/Vr467koCyZHf9pqwT5tEkG7W2DIBnIjn
 3FYSu709FB6UAnWbMc1GRH+F9ZFWi4B7ILojKVZcMnd7aU2X3Z7ILqMUz
 JqNF6+EH/mgQLVJx0an0sb0ceBp6eikF6r0a6v9RqiCUA3G0nqnyXyaFz
 7gnL6qwufdDnv2ntlTRIVLVS371xJIlFEgaV19bQSFXDUViY8Dy/qTerj
 OmdD4OBCkJu73xCEGxwrLxlN33Glh410VxYjABHXjv/sW95yeTcwbYTlu
 uruxA9xKUvd6P+PyIJ8Ln+qDillcNT+T+sT/HowupVCqBOYYxHK6N0b8I Q==;
X-CSE-ConnectionGUID: itv0XBivQsO61eHhnTfepA==
X-CSE-MsgGUID: jTVt/fJ7QseAWizixyn1xg==
X-IronPort-AV: E=McAfee;i="6700,10204,11410"; a="57434067"
X-IronPort-AV: E=Sophos;i="6.15,228,1739865600"; d="scan'208";a="57434067"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2025 08:51:13 -0700
X-CSE-ConnectionGUID: 9wxEbbSVRuWp4CHbuMx1cQ==
X-CSE-MsgGUID: sBhI+frXSsC6cnCZA8Qovw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,228,1739865600"; d="scan'208";a="162725583"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa002.jf.intel.com with ESMTP; 21 Apr 2025 08:51:11 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	ankit.k.nautiyal@intel.com
Subject: [PATCH v2 04/13] drm/i915/vrr: Add enable/disable calls for DC Balance
Date: Mon, 21 Apr 2025 21:18:51 +0530
Message-ID: <20250421154900.2095202-5-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250421154900.2095202-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250421154900.2095202-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
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

Add enable/disable calls along with required hw registers
for DC balance enablement.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  7 ++
 drivers/gpu/drm/i915/display/intel_dmc_regs.h | 71 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vrr.c      | 29 ++++++++
 drivers/gpu/drm/i915/display/intel_vrr_regs.h | 10 +++
 4 files changed, 117 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 94468a9d2e0d..126d54e6a393 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1307,6 +1307,13 @@ struct intel_crtc_state {
 		u8 pipeline_full;
 		u16 flipline, vmin, vmax, guardband;
 		u32 vsync_end, vsync_start;
+		struct {
+			bool enable;
+			u16 vmin, vmax;
+			u16 guardband, slope;
+			u16 max_increase, max_decrease;
+			u16 vblank_target;
+		} dc_balance;
 	} vrr;
 
 	/* Content Match Refresh Rate state */
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
index 1bf446f96a10..39e4f70005ab 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
@@ -103,4 +103,75 @@
 #define  DMC_WAKELOCK_CTL_REQ	 REG_BIT(31)
 #define  DMC_WAKELOCK_CTL_ACK	 REG_BIT(15)
 
+#define _PIPEDMC_DCB_CTL_A			0x5F1A0
+#define _PIPEDMC_DCB_CTL_B			0x5F5A0
+#define _PIPEDMC_DCB_CTL_C			0x5F9A0
+#define _PIPEDMC_DCB_CTL_D			0x5FDA0
+#define _PIPEDMC_DCB_CTL_E			0x551A0
+#define _PIPEDMC_DCB_CTL_F			0x555A0
+#define PIPEDMC_DCB_CTL(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _PIPEDMC_DCB_CTL_A)
+#define PIPEDMC_ADAPTIVE_DCB_ENABLE		REG_BIT(31)
+
+#define _PIPEDMC_DCB_VBLANK_A			0x5F1BC
+#define _PIPEDMC_DCB_VBLANK_B			0x5F5BC
+#define _PIPEDMC_DCB_VBLANK_C			0x5F9BC
+#define _PIPEDMC_DCB_VBLANK_D			0x5FDBC
+#define _PIPEDMC_DCB_VBLANK_E			0x551BC
+#define _PIPEDMC_DCB_VBLANK_F			0x555BC
+#define PIPEDMC_DCB_VBLANK(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _PIPEDMC_DCB_VBLANK_A)
+
+#define _PIPEDMC_DCB_SLOPE_A			0x5F1B8
+#define _PIPEDMC_DCB_SLOPE_B			0x5F5B8
+#define _PIPEDMC_DCB_SLOPE_C			0x5F9B8
+#define _PIPEDMC_DCB_SLOPE_D			0x5FDB8
+#define _PIPEDMC_DCB_SLOPE_E			0x551B8
+#define _PIPEDMC_DCB_SLOPE_F			0x555B8
+#define PIPEDMC_DCB_SLOPE(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _PIPEDMC_DCB_SLOPE_A)
+
+#define _PIPEDMC_DCB_GUARDBAND_A		0x5F1B4
+#define _PIPEDMC_DCB_GUARDBAND_B		0x5F5B4
+#define _PIPEDMC_DCB_GUARDBAND_C		0x5F9B4
+#define _PIPEDMC_DCB_GUARDBAND_D		0x5FDB4
+#define _PIPEDMC_DCB_GUARDBAND_E		0x551B4
+#define _PIPEDMC_DCB_GUARDBAND_F		0x555B4
+#define PIPEDMC_DCB_GUARDBAND(dev_priv, trans)	_MMIO_TRANS2(dev_priv, \
+							     trans, \
+							     _PIPEDMC_DCB_GUARDBAND_A)
+
+#define _PIPEDMC_DCB_MAX_INCREASE_A			0x5F1AC
+#define _PIPEDMC_DCB_MAX_INCREASE_B			0x5F5AC
+#define _PIPEDMC_DCB_MAX_INCREASE_C			0x5F9AC
+#define _PIPEDMC_DCB_MAX_INCREASE_D			0x5FDAC
+#define _PIPEDMC_DCB_MAX_INCREASE_E			0x551AC
+#define _PIPEDMC_DCB_MAX_INCREASE_F			0x555AC
+#define PIPEDMC_DCB_MAX_INCREASE(dev_priv, trans)	_MMIO_TRANS2(dev_priv, \
+								     trans, \
+								     _PIPEDMC_DCB_MAX_INCREASE_A)
+
+#define _PIPEDMC_DCB_MAX_DECREASE_A			0x5F1B0
+#define _PIPEDMC_DCB_MAX_DECREASE_B			0x5F5B0
+#define _PIPEDMC_DCB_MAX_DECREASE_C			0x5F9B0
+#define _PIPEDMC_DCB_MAX_DECREASE_D			0x5FDB0
+#define _PIPEDMC_DCB_MAX_DECREASE_E			0x551B0
+#define _PIPEDMC_DCB_MAX_DECREASE_F			0x555B0
+#define PIPEDMC_DCB_MAX_DECREASE(dev_priv, trans)	_MMIO_TRANS2(dev_priv, \
+								     trans, \
+								     _PIPEDMC_DCB_MAX_DECREASE_A)
+
+#define _PIPEDMC_DCB_VMIN_A			0x5F1A4
+#define _PIPEDMC_DCB_VMIN_B			0x5F5A4
+#define _PIPEDMC_DCB_VMIN_C			0x5F9A4
+#define _PIPEDMC_DCB_VMIN_D			0x5FDA4
+#define _PIPEDMC_DCB_VMIN_E			0x551A4
+#define _PIPEDMC_DCB_VMIN_F			0x555A4
+#define PIPEDMC_DCB_VMIN(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _PIPEDMC_DCB_VMIN_A)
+
+#define _PIPEDMC_DCB_VMAX_A			0x5F1A8
+#define _PIPEDMC_DCB_VMAX_B			0x5F5A8
+#define _PIPEDMC_DCB_VMAX_C			0x5F9A8
+#define _PIPEDMC_DCB_VMAX_D			0x5FDA8
+#define _PIPEDMC_DCB_VMAX_E			0x551A8
+#define _PIPEDMC_DCB_VMAX_F			0x555A8
+#define PIPEDMC_DCB_VMAX(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _PIPEDMC_DCB_VMAX_A)
+
 #endif /* __INTEL_DMC_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 1c0eaa08927b..c4fb78d86ab0 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -10,6 +10,7 @@
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
+#include "intel_dmc_regs.h"
 #include "intel_vrr.h"
 #include "intel_vrr_regs.h"
 
@@ -601,6 +602,23 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 				       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
 		}
 	}
+
+	if (crtc_state->vrr.dc_balance.enable && HAS_DC_BALANCE(display)) {
+		intel_de_write(display, PIPEDMC_DCB_VMIN(display, cpu_transcoder),
+			       crtc_state->vrr.dc_balance.vmin - 1);
+		intel_de_write(display, PIPEDMC_DCB_VMAX(display, cpu_transcoder),
+			       crtc_state->vrr.dc_balance.vmax - 1);
+		intel_de_write(display, PIPEDMC_DCB_MAX_INCREASE(display, cpu_transcoder),
+			       crtc_state->vrr.dc_balance.max_increase);
+		intel_de_write(display, PIPEDMC_DCB_MAX_DECREASE(display, cpu_transcoder),
+			       crtc_state->vrr.dc_balance.max_decrease);
+		intel_de_write(display, PIPEDMC_DCB_GUARDBAND(display, cpu_transcoder),
+			       crtc_state->vrr.dc_balance.guardband);
+		intel_de_write(display, PIPEDMC_DCB_SLOPE(display, cpu_transcoder),
+			       crtc_state->vrr.dc_balance.slope);
+		intel_de_write(display, PIPEDMC_DCB_VBLANK(display, cpu_transcoder),
+			       crtc_state->vrr.dc_balance.vblank_target);
+	}
 }
 
 void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
@@ -611,6 +629,17 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 	if (!old_crtc_state->vrr.enable)
 		return;
 
+	if (old_crtc_state->vrr.dc_balance.enable && HAS_DC_BALANCE(display)) {
+		intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(display, cpu_transcoder), 0);
+		intel_de_write(display, PIPEDMC_DCB_VMIN(display, cpu_transcoder), 0);
+		intel_de_write(display, PIPEDMC_DCB_VMAX(display, cpu_transcoder), 0);
+		intel_de_write(display, PIPEDMC_DCB_MAX_INCREASE(display, cpu_transcoder), 0);
+		intel_de_write(display, PIPEDMC_DCB_MAX_DECREASE(display, cpu_transcoder), 0);
+		intel_de_write(display, PIPEDMC_DCB_GUARDBAND(display, cpu_transcoder), 0);
+		intel_de_write(display, PIPEDMC_DCB_SLOPE(display, cpu_transcoder), 0);
+		intel_de_write(display, PIPEDMC_DCB_VBLANK(display, cpu_transcoder), 0);
+	}
+
 	if (!intel_vrr_always_use_vrr_tg(display)) {
 		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
 			       trans_vrr_ctl(old_crtc_state));
diff --git a/drivers/gpu/drm/i915/display/intel_vrr_regs.h b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
index 2214c10d4084..2db477325c83 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
@@ -53,6 +53,16 @@
 #define VRR_FLIPLINE_DCB_MASK			REG_GENMASK(19, 0)
 #define VRR_VMAX_DCB_MASK			REG_GENMASK(19, 0)
 
+#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_A			0x604C0
+#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_B			0x614C0
+#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_C			0x624C0
+#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_D			0x634C0
+#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_E			0x6B4C0
+#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_F			0x6C4C0
+#define TRANS_ADAPTIVE_SYNC_DCB_CTL(dev_priv, trans)	_MMIO_TRANS2(dev_priv, \
+								     trans, \
+								     _TRANS_ADAPTIVE_SYNC_DCB_CTL_A)
+
 #define _TRANS_VRR_CTL_A			0x60420
 #define _TRANS_VRR_CTL_B			0x61420
 #define _TRANS_VRR_CTL_C			0x62420
-- 
2.48.1

