Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3F94C0F48B
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Oct 2025 17:29:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50B5F10E4FB;
	Mon, 27 Oct 2025 16:29:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YYMKkGFJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 339FD10E4FB;
 Mon, 27 Oct 2025 16:29:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761582576; x=1793118576;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jylIjI0vXa7K7Nu7LNy68mqz5b+7GKD/sdoNmqUiJ78=;
 b=YYMKkGFJ8LDykMyBsQq9XoRngQrr3i91odP/xu5QTmrSNTQyVzDpoz/e
 Ufs5OqjUogkQsmMz1541K1BuM2tJTLM9KAy5tl0Faa3v7hCcnBbnhwNtL
 IVlGeGPsW6N2cRT9Tj7rNlTuAAW5LGoZH2CSI1LZWdZ2aeldNjZBOXBPs
 bDYgNSxxYaVKuTPE3hakvHqqBiu91Y/KwzwTcA++h7pH0x5kqts9S/+bS
 LYaLvLA7Utx4ns7HNJolZ3LfymMtd3XkcQF5AfmKNqQsQUXOcYp3wOFiz
 vUUa9EFpgAffsShhtYnhinU52xh9F0hlxl3HeGDnKIIBGXdE8oo01Hvch Q==;
X-CSE-ConnectionGUID: eDT2nd/zQwiCgZGBZi/19Q==
X-CSE-MsgGUID: /mINngtkQIu2bjdHkgaNyQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="81299319"
X-IronPort-AV: E=Sophos;i="6.19,259,1754982000"; d="scan'208";a="81299319"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 09:29:36 -0700
X-CSE-ConnectionGUID: y/P67qOvQtufZ8r9k/ya1Q==
X-CSE-MsgGUID: mxxJs6fbSi6MqPz8gOP2lw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,259,1754982000"; d="scan'208";a="184785551"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa007.fm.intel.com with ESMTP; 27 Oct 2025 09:29:34 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v8 03/22] drm/i915/vrr: Add VRR DC balance registers
Date: Mon, 27 Oct 2025 21:59:08 +0530
Message-ID: <20251027162927.2655581-4-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251027162927.2655581-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251027162927.2655581-1-mitulkumar.ajitkumar.golani@intel.com>
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

--v5:
- Added LIVE Value registers for VMAX and FLIPLINE as provided by DMC fw
- For pipe B it is temporary and expected to change later once finalised.

--v6:
- Add live value registers for DCB VMAX/FLIPLINE.

--v7:
- Correct commit message file. (Jani Nikula)
- Add bits in highest to lowest order. (Jani Nikula)

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr_regs.h | 69 +++++++++++++++++++
 1 file changed, 69 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr_regs.h b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
index ba9b9215dc11..f828db55d9b2 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
@@ -8,6 +8,74 @@
 
 #include "intel_display_reg_defs.h"
 
+/* VRR registers */
+#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_A	0x604d4
+#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_B	0x614d4
+#define TRANS_VRR_DCB_ADJ_FLIPLINE_CFG(trans)	_MMIO_TRANS(trans, \
+							    _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_A, \
+							    _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_B)
+
+#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_LIVE_A  0x90700
+#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_LIVE_B  0x98700
+#define TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_LIVE(trans) \
+	_MMIO_TRANS(trans, \
+		    _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_LIVE_A, \
+		    _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_LIVE_B)
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
+
+#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_LIVE_A	0x906F8
+#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_LIVE_B	0x986F8
+#define TRANS_VRR_DCB_ADJ_VMAX_CFG_LIVE(trans)	_MMIO_TRANS(trans, \
+							    _TRANS_VRR_DCB_ADJ_VMAX_CFG_LIVE_A, \
+							    _TRANS_VRR_DCB_ADJ_VMAX_CFG_LIVE_B)
+#define VRR_DCB_ADJ_VMAX_CNT_MASK		REG_GENMASK(31, 24)
+#define VRR_DCB_ADJ_VMAX_MASK			REG_GENMASK(19, 0)
+#define VRR_DCB_ADJ_VMAX(vmax)			REG_FIELD_PREP(VRR_DCB_ADJ_VMAX_MASK, (vmax))
+
+#define _TRANS_VRR_DCB_FLIPLINE_A		0x60418
+#define _TRANS_VRR_DCB_FLIPLINE_B		0x61418
+#define TRANS_VRR_DCB_FLIPLINE(trans)		_MMIO_TRANS(trans, \
+							    _TRANS_VRR_DCB_FLIPLINE_A, \
+							    _TRANS_VRR_DCB_FLIPLINE_B)
+
+#define _TRANS_VRR_DCB_FLIPLINE_LIVE_A		0x906FC
+#define _TRANS_VRR_DCB_FLIPLINE_LIVE_B		0x986FC
+#define TRANS_VRR_DCB_FLIPLINE_LIVE(trans)	_MMIO_TRANS(trans, \
+							    _TRANS_VRR_DCB_FLIPLINE_LIVE_A, \
+							    _TRANS_VRR_DCB_FLIPLINE_LIVE_B)
+#define VRR_DCB_FLIPLINE_MASK			REG_GENMASK(19, 0)
+#define VRR_DCB_FLIPLINE(flipline)		REG_FIELD_PREP(VRR_DCB_FLIPLINE_MASK, \
+							       (flipline))
+
+#define _TRANS_VRR_DCB_VMAX_A			0x60414
+#define _TRANS_VRR_DCB_VMAX_B			0x61414
+#define TRANS_VRR_DCB_VMAX(trans)		_MMIO_TRANS(trans, \
+							     _TRANS_VRR_DCB_VMAX_A, \
+							     _TRANS_VRR_DCB_VMAX_B)
+#define _TRANS_VRR_DCB_VMAX_LIVE_A		0x906F4
+#define _TRANS_VRR_DCB_VMAX_LIVE_B		0x986F4
+#define TRANS_VRR_DCB_VMAX_LIVE(trans)		_MMIO_TRANS(trans, \
+							    _TRANS_VRR_DCB_VMAX_LIVE_A, \
+							    _TRANS_VRR_DCB_VMAX_LIVE_B)
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
@@ -19,6 +87,7 @@
 #define   VRR_CTL_CMRR_ENABLE			REG_BIT(27)
 #define   VRR_CTL_PIPELINE_FULL_MASK		REG_GENMASK(10, 3)
 #define   VRR_CTL_PIPELINE_FULL(x)		REG_FIELD_PREP(VRR_CTL_PIPELINE_FULL_MASK, (x))
+#define   VRR_CTL_DCB_ADJ_ENABLE		REG_BIT(28)
 #define   VRR_CTL_PIPELINE_FULL_OVERRIDE	REG_BIT(0)
 #define   XELPD_VRR_CTL_VRR_GUARDBAND_MASK	REG_GENMASK(15, 0)
 #define   XELPD_VRR_CTL_VRR_GUARDBAND(x)	REG_FIELD_PREP(XELPD_VRR_CTL_VRR_GUARDBAND_MASK, (x))
-- 
2.48.1

