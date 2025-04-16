Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1E15A8B04E
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Apr 2025 08:29:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BD7210E835;
	Wed, 16 Apr 2025 06:29:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c4h8Q/bC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6788910E835
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Apr 2025 06:29:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744784988; x=1776320988;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=4kRoIDYBIs81VT8t8t29C8/ilyejerXO1Cfu7X5/CqA=;
 b=c4h8Q/bC7AYMJp8mWL0cV+BwH2jg2yYrw9WUg7kCO8mT7aGwJ/cm8N2T
 mUCVEYsKVspwVUHGz1Q8BiROsBXLMUPR8QaH7qfEtgKZw2lAExoImuqxc
 VCszuWbkMLhUe74nZ7/ElRUqjFnKe60mo7wi9MhAR/Y82ZS09uCueOjV6
 H14VqqswQdeIA/SIpGxwQ8qQpj9+GajWMEM1hXqD0rC+fSUNkZg6ncB1O
 2vXnJ8SXuR0h1cJio1cnxR/gqBnFIZ1q8y1ChIkVEblu7Vv9kxPQIXrpo
 q+t9Zrybz8YW2X07imsf214+gHCiDzCKl9VzTGOmb2vL3Fq/Fuiv6dGJc w==;
X-CSE-ConnectionGUID: o0gAiiUNTWCG8l1mJ6+7NQ==
X-CSE-MsgGUID: hnVWOR6ZRXW5lXUc9ndvMQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11404"; a="71710241"
X-IronPort-AV: E=Sophos;i="6.15,215,1739865600"; d="scan'208";a="71710241"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 23:29:48 -0700
X-CSE-ConnectionGUID: gzsI6M2MQ5aX8fNiA2j3vw==
X-CSE-MsgGUID: U7yZCJxlTwC68Tl4/Ngdtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,215,1739865600"; d="scan'208";a="130880167"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa007.jf.intel.com with ESMTP; 15 Apr 2025 23:29:46 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v1 1/8] drm/i915/vrr: Add DC balance registers
Date: Wed, 16 Apr 2025 11:57:30 +0530
Message-ID: <20250416062737.1766703-2-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250416062737.1766703-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250416062737.1766703-1-mitulkumar.ajitkumar.golani@intel.com>
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

Add register to access DC Balance registers.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr_regs.h | 43 +++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr_regs.h b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
index 6ed0e0dc97e7..6297108f1357 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
@@ -9,6 +9,20 @@
 #include "intel_display_reg_defs.h"
 
 /* VRR registers */
+#define _TRANS_VRR_VMAX_DCB_A			0x60414 /* lnl+ */
+#define _TRANS_VRR_VMAX_DCB_B			0x61414 /* lnl+ */
+#define TRANS_VRR_VMAX_DCB(trans)		_MMIO_TRANS((trans), \
+							    _TRANS_VRR_VMAX_DCB_A, \
+							    _TRANS_VRR_VMAX_DCB_B)
+#define VRR_VMAX_DCB_MASK			REG_GENMASK(19, 0)
+
+#define _TRANS_VRR_FLIPLINE_DCB_A		0x60418 /* lnl+ */
+#define _TRANS_VRR_FLIPLINE_DCB_B		0x61418 /* lnl+ */
+#define TRANS_VRR_FLIPLINE_DCB(trans)		_MMIO_TRANS((trans), \
+							    _TRANS_VRR_FLIPLINE_DCB_A, \
+							    _TRANS_VRR_FLIPLINE_DCB_B)
+#define VRR_FLIPLINE_DCB_MASK			REG_GENMASK(19, 0)
+
 #define _TRANS_VRR_CTL_A			0x60420
 #define _TRANS_VRR_CTL_B			0x61420
 #define _TRANS_VRR_CTL_C			0x62420
@@ -17,6 +31,7 @@
 #define  VRR_CTL_VRR_ENABLE			REG_BIT(31)
 #define  VRR_CTL_IGN_MAX_SHIFT			REG_BIT(30)
 #define  VRR_CTL_FLIP_LINE_EN			REG_BIT(29)
+#define  VRR_CTL_DCB_ADJ_ENABLE			REG_BIT(28) /* lnl+ */
 #define  VRR_CTL_PIPELINE_FULL_MASK		REG_GENMASK(10, 3)
 #define  VRR_CTL_PIPELINE_FULL(x)		REG_FIELD_PREP(VRR_CTL_PIPELINE_FULL_MASK, (x))
 #define  VRR_CTL_PIPELINE_FULL_OVERRIDE		REG_BIT(0)
@@ -93,6 +108,34 @@
 #define TRANS_VRR_STATUS2(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_STATUS2_A)
 #define  VRR_STATUS2_VERT_LN_CNT_MASK		REG_GENMASK(19, 0)
 
+#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_A		0x604c0 /* lnl+ */
+#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_B		0x614c0 /* lnl+ */
+#define TRANS_ADAPTIVE_SYNC_DCB_CTL(trans)	_MMIO_TRANS((trans), \
+							    _TRANS_ADAPTIVE_SYNC_DCB_CTL_A, \
+							    _TRANS_ADAPTIVE_SYNC_DCB_CTL_B)
+#define  ADAPTIVE_SYNC_COUNTER_EN			REG_BIT(31)
+#define  ADAPTIVE_SYNC_COUNTER_RESET			REG_BIT(30)
+#define  ADAPTIVE_SYNC_ODD_COUNTER_OVERFLOW		REG_BIT(15)
+#define  ADAPTIVE_SYNC_EVEN_COUNTER_OVERFLOW		REG_BIT(14)
+#define  ADAPTIVE_SYNC_ODD_LINE_COUNTER_OVERFLOW	REG_BIT(13)
+#define  ADAPTIVE_SYNC_EVEN_LINE_COUNTER_OVERFLOW	REG_BIT(12)
+
+#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_A	0x604d4 /* lnl+ */
+#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_B	0x614d4 /* lnl+ */
+#define TRANS_VRR_DCB_ADJ_FLIPLINE_CFG(trans)	_MMIO_TRANS((trans), \
+							    _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_A, \
+							    _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_B)
+#define  VRR_DCB_ADJ_FLIPLINE_CNT_MASK		REG_GENMASK(31, 24)
+#define  VRR_DCB_ADJ_FLIPLINE_MASK		REG_GENMASK(19, 0)
+
+#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_A		0x604d8 /* lnl+ */
+#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_B		0x614d8 /* lnl+ */
+#define TRANS_VRR_DCB_ADJ_VMAX_CFG(trans)	_MMIO_TRANS((trans), \
+							    _TRANS_VRR_DCB_ADJ_VMAX_CFG_A, \
+							    _TRANS_VRR_DCB_ADJ_VMAX_CFG_B)
+#define  VRR_DCB_ADJ_VMAX_CNT_MASK		REG_GENMASK(31, 24)
+#define  VRR_DCB_ADJ_VMAX_MASK			REG_GENMASK(19, 0)
+
 #define _TRANS_PUSH_A				0x60a70
 #define _TRANS_PUSH_B				0x61a70
 #define _TRANS_PUSH_C				0x62a70
-- 
2.48.1

