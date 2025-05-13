Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D0F7AB4AD6
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 07:19:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31A8110E516;
	Tue, 13 May 2025 05:18:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Io+MMsyI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B097610E514;
 Tue, 13 May 2025 05:18:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747113537; x=1778649537;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=M8HYs3f+ilB1ely2bXDzu3mB3B3Yf9qV5Z/4z8gk9bc=;
 b=Io+MMsyIzjjiD5f9pIcah/SlXUMgDHG170FnBNVWjlNrCmkqQjDO1mgp
 yIhCeQPsU4jLcE7vC5lWs6gh8AjB+GjM9gYUe+8V7IHcv4TZqARLwJxZk
 lzSmvttxaA4KahJXyFgEFJkV8wXTn42iVjYTBtr6Ruu/vFGKzi5ekANKy
 PbuvEk3WZX/SI2EA4vumDFNtnHSK5IJDLsWOoZkk6t3msQBhTxpMlyByM
 A0a7lH0wojWYjTQAxCa/RozZ4qCxPrsHyFFeNgLTyIF3/zljl5DWlQNtp
 gM84lML/PB0B3jL1MAlCCQiP5cxRLxEb61vYOqg7WjSX1kV+qvi/m4ztU Q==;
X-CSE-ConnectionGUID: ChdtVVyzSUWmvJuV0jQ3/w==
X-CSE-MsgGUID: 8otiHmhmRBScKr0FLgNiAA==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="51597791"
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="51597791"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 22:18:57 -0700
X-CSE-ConnectionGUID: vLyRlFIuRfGtiUW6p0j+Jw==
X-CSE-MsgGUID: 1Bqd9+CATfW9V5xdXrvZCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="137506112"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa006.jf.intel.com with ESMTP; 12 May 2025 22:18:56 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	ville.syrjala@intel.com
Subject: [PATCH v5 04/17] drm/i915/display: Add VRR DC balance registers
Date: Tue, 13 May 2025 10:46:47 +0530
Message-ID: <20250513051700.507389-5-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250513051700.507389-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250513051700.507389-1-mitulkumar.ajitkumar.golani@intel.com>
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

Add VRR register offsets and bits to access DC Balance configuration.

--v2:
- Separate register definitions. (Ankit)
- Remove usage of dev_priv. (Jani, Nikula)

--v3:
- Convert register address offset, from capital to small. (Ankit)
- Move mask bits near to register offsets. (Ankit)

Co-authored-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr_regs.h | 48 +++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr_regs.h b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
index 6ed0e0dc97e7..204d5b35bc4b 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
@@ -9,6 +9,53 @@
 #include "intel_display_reg_defs.h"
 
 /* VRR registers */
+#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_A		0x604d4
+#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_B		0x614d4
+#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_C		0x624d4
+#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_D		0x634d4
+#define TRANS_VRR_DCB_ADJ_FLIPLINE_CFG(display, \
+				       trans)	_MMIO_TRANS2(display, trans, \
+							     _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_A)
+#define  VRR_DCB_ADJ_FLIPLINE_CNT_MASK			REG_GENMASK(31, 24)
+#define  VRR_DCB_ADJ_FLIPLINE_MASK			REG_GENMASK(19, 0)
+
+#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_A			0x604d8
+#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_B			0x614d8
+#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_C			0x624d8
+#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_D			0x634d8
+#define TRANS_VRR_DCB_ADJ_VMAX_CFG(display, trans)	_MMIO_TRANS2(display, \
+								     trans, \
+								     _TRANS_VRR_DCB_ADJ_VMAX_CFG_A)
+#define  VRR_DCB_ADJ_VMAX_CNT_MASK			REG_GENMASK(31, 24)
+#define  VRR_DCB_ADJ_VMAX_MASK				REG_GENMASK(19, 0)
+
+#define _TRANS_VRR_FLIPLINE_DCB_A			0x60418
+#define _TRANS_VRR_FLIPLINE_DCB_B			0x61418
+#define _TRANS_VRR_FLIPLINE_DCB_C			0x62418
+#define _TRANS_VRR_FLIPLINE_DCB_D			0x63418
+#define TRANS_VRR_FLIPLINE_DCB(display, trans)		_MMIO_TRANS2(display, \
+								     trans, \
+								     _TRANS_VRR_FLIPLINE_DCB_A)
+#define VRR_FLIPLINE_DCB_MASK				REG_GENMASK(19, 0)
+
+#define _TRANS_VRR_VMAX_DCB_A				0x60414
+#define _TRANS_VRR_VMAX_DCB_B				0x61414
+#define _TRANS_VRR_VMAX_DCB_C				0x62414
+#define _TRANS_VRR_VMAX_DCB_D				0x63414
+#define TRANS_VRR_VMAX_DCB(display, trans)		_MMIO_TRANS2(display, \
+								     trans, \
+								     _TRANS_VRR_VMAX_DCB_A)
+#define  VRR_VMAX_DCB_MASK				REG_GENMASK(19, 0)
+
+#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_A			0x604c0
+#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_B			0x614c0
+#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_C			0x624c0
+#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_D			0x634c0
+#define TRANS_ADAPTIVE_SYNC_DCB_CTL(display, trans)	_MMIO_TRANS2(display, \
+								     trans, \
+								     _TRANS_ADAPTIVE_SYNC_DCB_CTL_A)
+#define ADAPTIVE_SYNC_COUNTER_EN			REG_BIT(31)
+
 #define _TRANS_VRR_CTL_A			0x60420
 #define _TRANS_VRR_CTL_B			0x61420
 #define _TRANS_VRR_CTL_C			0x62420
@@ -20,6 +67,7 @@
 #define  VRR_CTL_PIPELINE_FULL_MASK		REG_GENMASK(10, 3)
 #define  VRR_CTL_PIPELINE_FULL(x)		REG_FIELD_PREP(VRR_CTL_PIPELINE_FULL_MASK, (x))
 #define  VRR_CTL_PIPELINE_FULL_OVERRIDE		REG_BIT(0)
+#define  VRR_CTL_DCB_ADJ_ENABLE			REG_BIT(28)
 #define  XELPD_VRR_CTL_VRR_GUARDBAND_MASK	REG_GENMASK(15, 0)
 #define  XELPD_VRR_CTL_VRR_GUARDBAND(x)		REG_FIELD_PREP(XELPD_VRR_CTL_VRR_GUARDBAND_MASK, (x))
 
-- 
2.48.1

