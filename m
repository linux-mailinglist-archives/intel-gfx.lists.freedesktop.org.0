Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1852BACCDA1
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Jun 2025 21:37:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A916C10E230;
	Tue,  3 Jun 2025 19:37:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PWS/TQia";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E80410E5B8;
 Tue,  3 Jun 2025 19:37:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748979427; x=1780515427;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fnw4O3vCqjyeUzqhj1DItenFSBE05vpVZbPDxZ9zdtA=;
 b=PWS/TQiasZdRgDQR13wGBtmx9LJaDzAQj1z39mSqisJ/myUO29FN42nI
 xhtGSGnq1zt3Uh/KXavlRxVyQ4ysAzzKc7b+QfYhDUqkeZ7bjZ9AUftCZ
 gUv0ggNKreOJQDS7/HdqA93qboWZ5qKPW1el8e49VCNQCi6Egd67XpXLk
 D/1o17ERuXJa+Iaka/6djEe5+3M8Qqd+WKLPcYnx3oi6BFOFQrhtSHL87
 EJLlZSVUhc0mEvolInmzUoKyTuusdC33bichKjg3eHOvA3oNJfVKtcBcY
 0D6IbtXb8EJlbOnIDcRoqA3umt7Fv5H7INPTqGFmfnIq+RtaziUY3UuMb g==;
X-CSE-ConnectionGUID: SRAsE/Q/RnqKG7UMfn+vmA==
X-CSE-MsgGUID: +YgP1xcKSUKZyCjCh36qkA==
X-IronPort-AV: E=McAfee;i="6700,10204,11453"; a="50275988"
X-IronPort-AV: E=Sophos;i="6.16,207,1744095600"; d="scan'208";a="50275988"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2025 12:37:06 -0700
X-CSE-ConnectionGUID: Bsvxo/RwQAyl+9KntMFMcA==
X-CSE-MsgGUID: E+9qFibXTTm3j3K3nDvQSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,207,1744095600"; d="scan'208";a="144844752"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa006.jf.intel.com with ESMTP; 03 Jun 2025 12:37:04 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, ankit.k.nautiyal@intel.com,
 ville.syrjala@intel.com, jani.nikula@intel.com
Subject: [PATCH v6 04/17] drm/i915/display: Add VRR DC balance registers
Date: Wed,  4 Jun 2025 01:05:09 +0530
Message-ID: <20250603193522.2567092-5-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250603193522.2567092-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250603193522.2567092-1-mitulkumar.ajitkumar.golani@intel.com>
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

--v4:
- Use _MMIO_TRANS wherever possible. (Jani)

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr_regs.h | 44 +++++++++++++++++++
 1 file changed, 44 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr_regs.h b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
index 09cdd50d6187..b90dad473d8d 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
@@ -9,6 +9,49 @@
 #include "intel_display_reg_defs.h"
 
 /* VRR registers */
+#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_A	0x604d4
+#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_B	0x614d4
+#define TRANS_VRR_DCB_ADJ_FLIPLINE_CFG(trans)	_MMIO_TRANS(trans, \
+							    _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_A, \
+							    _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_B)
+#define VRR_DCB_ADJ_FLIPLINE_CNT_MASK		REG_GENMASK(31, 24)
+#define VRR_DCB_ADJ_FLIPLINE_MASK		REG_GENMASK(19, 0)
+#define VRR_DCB_ADJ_FLIPLINE(flipline)		REG_FIELD_PREP(VRR_DCB_ADJ_FLIPLINE_MASK, \
+							       (flipline))
+
+#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_A		0x604d8
+#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_B		0x614d8
+#define TRANS_VRR_DCB_ADJ_VMAX_CFG(trans)	_MMIO_TRANS(trans, \
+							    _TRANS_VRR_DCB_ADJ_VMAX_CFG_A, \
+							    _TRANS_VRR_DCB_ADJ_VMAX_CFG_B)
+#define VRR_DCB_ADJ_VMAX_CNT_MASK		REG_GENMASK(31, 24)
+#define VRR_DCB_ADJ_VMAX_MASK			REG_GENMASK(19, 0)
+#define VRR_DCB_ADJ_VMAX(vmax)			REG_FIELD_PREP(VRR_DCB_ADJ_VMAX_MASK, (vmax))
+
+#define _TRANS_VRR_DCB_FLIPLINE_A		0x60418
+#define _TRANS_VRR_DCB_FLIPLINE_B		0x61418
+#define TRANS_VRR_DCB_FLIPLINE(trans)		_MMIO_TRANS(trans, \
+							    _TRANS_VRR_DCB_FLIPLINE_A, \
+							    _TRANS_VRR_DCB_FLIPLINE_B)
+#define VRR_DCB_FLIPLINE_MASK			REG_GENMASK(19, 0)
+#define VRR_DCB_FLIPLINE(flipline)		REG_FIELD_PREP(VRR_DCB_FLIPLINE_MASK, \
+							       (flipline))
+
+#define _TRANS_VRR_DCB_VMAX_A			0x60414
+#define _TRANS_VRR_DCB_VMAX_B			0x61414
+#define TRANS_VRR_DCB_VMAX(trans)		_MMIO_TRANS(trans, \
+							     _TRANS_VRR_DCB_VMAX_A, \
+							     _TRANS_VRR_DCB_VMAX_B)
+#define VRR_DCB_VMAX_MASK			REG_GENMASK(19, 0)
+#define VRR_DCB_VMAX(vmax)			REG_FIELD_PREP(VRR_DCB_VMAX_MASK, (vmax))
+
+#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_A		0x604c0
+#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_B		0x614c0
+#define TRANS_ADAPTIVE_SYNC_DCB_CTL(trans)	_MMIO_TRANS(trans, \
+							     _TRANS_ADAPTIVE_SYNC_DCB_CTL_A, \
+							     _TRANS_ADAPTIVE_SYNC_DCB_CTL_B)
+#define ADAPTIVE_SYNC_COUNTER_EN		REG_BIT(31)
+
 #define _TRANS_VRR_CTL_A			0x60420
 #define _TRANS_VRR_CTL_B			0x61420
 #define _TRANS_VRR_CTL_C			0x62420
@@ -20,6 +63,7 @@
 #define  VRR_CTL_PIPELINE_FULL_MASK		REG_GENMASK(10, 3)
 #define  VRR_CTL_PIPELINE_FULL(x)		REG_FIELD_PREP(VRR_CTL_PIPELINE_FULL_MASK, (x))
 #define  VRR_CTL_PIPELINE_FULL_OVERRIDE		REG_BIT(0)
+#define  VRR_CTL_DCB_ADJ_ENABLE			REG_BIT(28)
 #define  XELPD_VRR_CTL_VRR_GUARDBAND_MASK	REG_GENMASK(15, 0)
 #define  XELPD_VRR_CTL_VRR_GUARDBAND(x)		REG_FIELD_PREP(XELPD_VRR_CTL_VRR_GUARDBAND_MASK, (x))
 
-- 
2.48.1

