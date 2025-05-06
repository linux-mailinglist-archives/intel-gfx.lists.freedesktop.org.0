Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D279AAC8E0
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 16:57:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6FB210E6C6;
	Tue,  6 May 2025 14:57:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GXR/Rw3V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3B6210E6C6;
 Tue,  6 May 2025 14:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746543443; x=1778079443;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BoUN8LIzPsePMhkEFN2O7nfj0kL4VQ+BXeaIw7jI9Fc=;
 b=GXR/Rw3VnhgZie9w/BXnzb163/IqgJMx2aEKjQmKvga+24Rf0SQQoPAt
 xOAQxQ7uEwEy3a5+O/mvHh7bFVN97XLqNXfBSOvKrcMeZP1/l/u9EMXDy
 rW7jXyGCqSZV/SkwEewdjKzWOOqNXDetZN3l2HRPTCy1mM6AwzMZ4BW8N
 46bmktVwJrMC6NfJJy3+AEq696CixTV8UFB/IJ3GiNqKHQ/HwcifoxG3d
 oFVIaTxoPkhBOwf6Lk+17ESdFpKaJWztiEDYD2zrzMU3MKPwlJyf5e82c
 y1xR5hfvBBfm2zCm6DL+rkUY+UJ9xMUHKpELy5rRMiSsMLWwcDumobF8R g==;
X-CSE-ConnectionGUID: VzzXlcC8R9+8s3EP2DZ+lg==
X-CSE-MsgGUID: 9pUtHQRaQoqLsDfeWG5PBg==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="59206003"
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="59206003"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 07:57:23 -0700
X-CSE-ConnectionGUID: U8sQFLv+T1upYlYIikJHQQ==
X-CSE-MsgGUID: Utj29dULTrCEQerp/30tiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="166572166"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa002.jf.intel.com with ESMTP; 06 May 2025 07:57:21 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	ville.syrjala@intel.com
Subject: [PATCH v4 05/17] drm/i915/display: Add VRR DC balance registers
Date: Tue,  6 May 2025 20:25:05 +0530
Message-ID: <20250506145517.4129419-6-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250506145517.4129419-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250506145517.4129419-1-mitulkumar.ajitkumar.golani@intel.com>
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

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr_regs.h | 48 +++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr_regs.h b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
index 6ed0e0dc97e7..8a10aec4f3cc 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
@@ -9,6 +9,54 @@
 #include "intel_display_reg_defs.h"
 
 /* VRR registers */
+#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_A		0x604D4
+#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_B		0x614D4
+#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_C		0x624D4
+#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_D		0x634D4
+#define TRANS_VRR_DCB_ADJ_FLIPLINE_CFG(display, \
+				       trans)	_MMIO_TRANS2(display, trans, \
+							     _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_A)
+
+#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_A			0x604D8
+#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_B			0x614D8
+#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_C			0x624D8
+#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_D			0x634D8
+#define TRANS_VRR_DCB_ADJ_VMAX_CFG(display, trans)	_MMIO_TRANS2(display, \
+								     trans, \
+								     _TRANS_VRR_DCB_ADJ_VMAX_CFG_A)
+
+#define _TRANS_VRR_FLIPLINE_DCB_A			0x60418
+#define _TRANS_VRR_FLIPLINE_DCB_B			0x61418
+#define _TRANS_VRR_FLIPLINE_DCB_C			0x62418
+#define _TRANS_VRR_FLIPLINE_DCB_D			0x63418
+#define TRANS_VRR_FLIPLINE_DCB(display, trans)		_MMIO_TRANS2(display, \
+								     trans, \
+								     _TRANS_VRR_FLIPLINE_DCB_A)
+
+#define _TRANS_VRR_VMAX_DCB_A				0x60414
+#define _TRANS_VRR_VMAX_DCB_B				0x61414
+#define _TRANS_VRR_VMAX_DCB_C				0x62414
+#define _TRANS_VRR_VMAX_DCB_D				0x63414
+#define TRANS_VRR_VMAX_DCB(display, trans)		_MMIO_TRANS2(display, \
+								     trans, \
+								     _TRANS_VRR_VMAX_DCB_A)
+
+#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_A			0x604C0
+#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_B			0x614C0
+#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_C			0x624C0
+#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_D			0x634C0
+#define TRANS_ADAPTIVE_SYNC_DCB_CTL(display, trans)	_MMIO_TRANS2(display, \
+								     trans, \
+								     _TRANS_ADAPTIVE_SYNC_DCB_CTL_A)
+#define ADAPTIVE_SYNC_COUNTER_EN			REG_BIT(31)
+#define VRR_DCB_ADJ_FLIPLINE_CNT_MASK			REG_GENMASK(31, 24)
+#define VRR_DCB_ADJ_FLIPLINE_MASK			REG_GENMASK(19, 0)
+#define VRR_DCB_ADJ_VMAX_CNT_MASK			REG_GENMASK(31, 24)
+#define VRR_DCB_ADJ_VMAX_MASK				REG_GENMASK(19, 0)
+#define VRR_FLIPLINE_DCB_MASK				REG_GENMASK(19, 0)
+#define VRR_VMAX_DCB_MASK				REG_GENMASK(19, 0)
+#define VRR_CTL_DCB_ADJ_ENABLE				REG_BIT(28)
+
 #define _TRANS_VRR_CTL_A			0x60420
 #define _TRANS_VRR_CTL_B			0x61420
 #define _TRANS_VRR_CTL_C			0x62420
-- 
2.48.1

