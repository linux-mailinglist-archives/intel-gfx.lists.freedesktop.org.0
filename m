Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 857A5A9E81A
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Apr 2025 08:23:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDC2210E389;
	Mon, 28 Apr 2025 06:23:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AxksLB14";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41BAC10E383;
 Mon, 28 Apr 2025 06:23:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745821387; x=1777357387;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tWyuZWiWna7ch0Eu2rBdQgSnu5SI4jZelU9nIf5/N9M=;
 b=AxksLB14abjlYNk8z1/C8ffB7ZGud1cLPTYX260yTEAJrIPHDuhU0bA3
 aa3X+h7XSbYlsxiVKa0dGUu1smvdWUIiDR5q5AgQduWgNQC04F5mH8rDX
 F9pMfq/hf9YopYc92xGa4y/p5zlf0Roi25HSMYGq8DN4IsPy/ySGhvoLw
 c1GhwMkJUXvrsRI338wVX44hM8pr/DFFcreg9KmXUEKC5ujoRMiXGSMJp
 06mt92BOYlozfUXTZAlsHr4z1UOWNqQkT5ITS0hMZMf++XUbf1GeF2ef0
 i+/dikwiVKvgAt++wdEWHwKLfaq2fYQSGYkjZjIvlH7Q1I06/PQp0RtkR A==;
X-CSE-ConnectionGUID: FJc/hXBhScaL+i2f50uQYw==
X-CSE-MsgGUID: TYCePhCASomdpN3jOHdnnw==
X-IronPort-AV: E=McAfee;i="6700,10204,11416"; a="51204171"
X-IronPort-AV: E=Sophos;i="6.15,245,1739865600"; d="scan'208";a="51204171"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2025 23:23:06 -0700
X-CSE-ConnectionGUID: ISw9rJMDSUeu9UPGZILqUQ==
X-CSE-MsgGUID: mq0/3rjCS56fpbIgDepEog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,245,1739865600"; d="scan'208";a="138231211"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa005.fm.intel.com with ESMTP; 27 Apr 2025 23:23:04 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	ville.syrjala@intel.com
Subject: [PATCH v3 04/15] drm/i915/display: Add registers and bits for DC
 Balance
Date: Mon, 28 Apr 2025 11:50:47 +0530
Message-ID: <20250428062058.2811655-5-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250428062058.2811655-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250428062058.2811655-1-mitulkumar.ajitkumar.golani@intel.com>
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

Add registers and access bits for DC Balance enable.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc_regs.h | 55 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vrr_regs.h | 50 +++++++++++++++++
 2 files changed, 105 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
index e16ea3f16ed8..a376499fbfab 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
@@ -117,4 +117,59 @@
 #define  DMC_WAKELOCK_CTL_REQ	 REG_BIT(31)
 #define  DMC_WAKELOCK_CTL_ACK	 REG_BIT(15)
 
+#define _PIPEDMC_DCB_CTL_A			0x5F1A0
+#define _PIPEDMC_DCB_CTL_B			0x5F5A0
+#define _PIPEDMC_DCB_CTL_C			0x5F9A0
+#define _PIPEDMC_DCB_CTL_D			0x5FDA0
+#define PIPEDMC_DCB_CTL(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _PIPEDMC_DCB_CTL_A)
+#define PIPEDMC_ADAPTIVE_DCB_ENABLE		REG_BIT(31)
+
+#define _PIPEDMC_DCB_VBLANK_A			0x5F1BC
+#define _PIPEDMC_DCB_VBLANK_B			0x5F5BC
+#define _PIPEDMC_DCB_VBLANK_C			0x5F9BC
+#define _PIPEDMC_DCB_VBLANK_D			0x5FDBC
+#define PIPEDMC_DCB_VBLANK(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _PIPEDMC_DCB_VBLANK_A)
+
+#define _PIPEDMC_DCB_SLOPE_A			0x5F1B8
+#define _PIPEDMC_DCB_SLOPE_B			0x5F5B8
+#define _PIPEDMC_DCB_SLOPE_C			0x5F9B8
+#define _PIPEDMC_DCB_SLOPE_D			0x5FDB8
+#define PIPEDMC_DCB_SLOPE(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _PIPEDMC_DCB_SLOPE_A)
+
+#define _PIPEDMC_DCB_GUARDBAND_A		0x5F1B4
+#define _PIPEDMC_DCB_GUARDBAND_B		0x5F5B4
+#define _PIPEDMC_DCB_GUARDBAND_C		0x5F9B4
+#define _PIPEDMC_DCB_GUARDBAND_D		0x5FDB4
+#define PIPEDMC_DCB_GUARDBAND(dev_priv, trans)	_MMIO_TRANS2(dev_priv, \
+							     trans, \
+							     _PIPEDMC_DCB_GUARDBAND_A)
+
+#define _PIPEDMC_DCB_MAX_INCREASE_A			0x5F1AC
+#define _PIPEDMC_DCB_MAX_INCREASE_B			0x5F5AC
+#define _PIPEDMC_DCB_MAX_INCREASE_C			0x5F9AC
+#define _PIPEDMC_DCB_MAX_INCREASE_D			0x5FDAC
+#define PIPEDMC_DCB_MAX_INCREASE(dev_priv, trans)	_MMIO_TRANS2(dev_priv, \
+								     trans, \
+								     _PIPEDMC_DCB_MAX_INCREASE_A)
+
+#define _PIPEDMC_DCB_MAX_DECREASE_A			0x5F1B0
+#define _PIPEDMC_DCB_MAX_DECREASE_B			0x5F5B0
+#define _PIPEDMC_DCB_MAX_DECREASE_C			0x5F9B0
+#define _PIPEDMC_DCB_MAX_DECREASE_D			0x5FDB0
+#define PIPEDMC_DCB_MAX_DECREASE(dev_priv, trans)	_MMIO_TRANS2(dev_priv, \
+								     trans, \
+								     _PIPEDMC_DCB_MAX_DECREASE_A)
+
+#define _PIPEDMC_DCB_VMIN_A			0x5F1A4
+#define _PIPEDMC_DCB_VMIN_B			0x5F5A4
+#define _PIPEDMC_DCB_VMIN_C			0x5F9A4
+#define _PIPEDMC_DCB_VMIN_D			0x5FDA4
+#define PIPEDMC_DCB_VMIN(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _PIPEDMC_DCB_VMIN_A)
+
+#define _PIPEDMC_DCB_VMAX_A			0x5F1A8
+#define _PIPEDMC_DCB_VMAX_B			0x5F5A8
+#define _PIPEDMC_DCB_VMAX_C			0x5F9A8
+#define _PIPEDMC_DCB_VMAX_D			0x5FDA8
+#define PIPEDMC_DCB_VMAX(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _PIPEDMC_DCB_VMAX_A)
+
 #endif /* __INTEL_DMC_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_vrr_regs.h b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
index 6ed0e0dc97e7..1fdba51b4bbd 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
@@ -9,6 +9,56 @@
 #include "intel_display_reg_defs.h"
 
 /* VRR registers */
+#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_A		0x604D4
+#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_B		0x614D4
+#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_C		0x624D4
+#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_D		0x634D4
+#define TRANS_VRR_DCB_ADJ_FLIPLINE_CFG(dev_priv, trans)	\
+					_MMIO_TRANS2(dev_priv, \
+						     trans, \
+						     _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_A)
+
+#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_A			0x604D8
+#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_B			0x614D8
+#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_C			0x624D8
+#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_D			0x634D8
+#define TRANS_VRR_DCB_ADJ_VMAX_CFG(dev_priv, trans)	_MMIO_TRANS2(dev_priv, \
+								     trans, \
+								     _TRANS_VRR_DCB_ADJ_VMAX_CFG_A)
+
+#define _TRANS_VRR_FLIPLINE_DCB_A		0x60418
+#define _TRANS_VRR_FLIPLINE_DCB_B		0x61418
+#define _TRANS_VRR_FLIPLINE_DCB_C		0x62418
+#define _TRANS_VRR_FLIPLINE_DCB_D		0x63418
+#define TRANS_VRR_FLIPLINE_DCB(dev_priv, trans) _MMIO_TRANS2(dev_priv, \
+							     trans, \
+							     _TRANS_VRR_FLIPLINE_DCB_A)
+
+#define _TRANS_VRR_VMAX_DCB_A			0x60414
+#define _TRANS_VRR_VMAX_DCB_B			0x61414
+#define _TRANS_VRR_VMAX_DCB_C			0x62414
+#define _TRANS_VRR_VMAX_DCB_D			0x63414
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
+#define VRR_CTL_DCB_ADJ_ENABLE			REG_BIT(28)
+
+#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_A			0x604C0
+#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_B			0x614C0
+#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_C			0x624C0
+#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_D			0x634C0
+#define TRANS_ADAPTIVE_SYNC_DCB_CTL(dev_priv, trans)	_MMIO_TRANS2(dev_priv, \
+								     trans, \
+								     _TRANS_ADAPTIVE_SYNC_DCB_CTL_A)
+#define  ADAPTIVE_SYNC_COUNTER_EN			REG_BIT(31)
+
 #define _TRANS_VRR_CTL_A			0x60420
 #define _TRANS_VRR_CTL_B			0x61420
 #define _TRANS_VRR_CTL_C			0x62420
-- 
2.48.1

