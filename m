Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53A74C8D793
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 10:16:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1F5010E7C1;
	Thu, 27 Nov 2025 09:16:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ibc/G4E+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F03710E7BE;
 Thu, 27 Nov 2025 09:16:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764234960; x=1795770960;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tjaB5Vv4HiUW2PETwi4pBUMMPWDc0Bj7jt2urju/JYE=;
 b=Ibc/G4E+cDdlZLDbrRt6wdjuFKwhjAhr0pjQveJwiHGfk5YmwYskhoOg
 K440lXNvd9paCF27cmL6sJf/yy0Tl7z8tZJRykH+rISz9etl9Tq0/sUi6
 C+Io1xhDuSoVonRGYSK6EL0HvCh7NbGeh4Za3W+R7F99W51bmmlR1lJ4d
 NA230VziiVX9s++IBndnT9jhxwPCjiv8n8AN1a9TQyptRFVLjrhndPBH/
 +YJQXDfd8UCX392dLCJ7CbmyELkIGHBk28Pg2/aN1IFaibdQu+KHVe/vN
 ZuQN9SNzxJL4yEfn7Dt1VgoUschRds7X3x7ygdGeaBhG2GUWzJg80EYpJ w==;
X-CSE-ConnectionGUID: UGFIQIjzRRiY4NY6eNVs2g==
X-CSE-MsgGUID: 6lRxSdTuSZGAXgmuwWgSYg==
X-IronPort-AV: E=McAfee;i="6800,10657,11625"; a="77642326"
X-IronPort-AV: E=Sophos;i="6.20,230,1758610800"; d="scan'208";a="77642326"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 01:16:00 -0800
X-CSE-ConnectionGUID: 9YYBwkkiQD6V8xu7/yxG+Q==
X-CSE-MsgGUID: yI+irY4NTiuYVfJQ8cGh2w==
X-ExtLoop1: 1
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa003.fm.intel.com with ESMTP; 27 Nov 2025 01:15:59 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com
Subject: [PATCH v9 03/17] drm/i915/vrr: Add VRR DC balance registers
Date: Thu, 27 Nov 2025 14:46:00 +0530
Message-ID: <20251127091614.648791-4-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251127091614.648791-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251127091614.648791-1-mitulkumar.ajitkumar.golani@intel.com>
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

--v8:
- Register/bitfields indentation changes as per i915_reg.h
mentioned format (Jani, Ankit)

--v9:
- Remove comment. (Ankit)

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr_regs.h | 68 +++++++++++++++++++
 1 file changed, 68 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr_regs.h b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
index ba9b9215dc11..427ada0d3973 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
@@ -8,6 +8,73 @@
 
 #include "intel_display_reg_defs.h"
 
+#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_A	0x604d4
+#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_B	0x614d4
+#define TRANS_VRR_DCB_ADJ_FLIPLINE_CFG(trans)	_MMIO_TRANS(trans, \
+							    _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_A, \
+							    _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_B)
+#define  VRR_DCB_ADJ_FLIPLINE_CNT_MASK		REG_GENMASK(31, 24)
+#define  VRR_DCB_ADJ_FLIPLINE_MASK		REG_GENMASK(19, 0)
+#define  VRR_DCB_ADJ_FLIPLINE(flipline)		REG_FIELD_PREP(VRR_DCB_ADJ_FLIPLINE_MASK, \
+							       (flipline))
+
+#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_LIVE_A		0x90700
+#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_LIVE_B		0x98700
+#define TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_LIVE(trans)	_MMIO_TRANS(trans, \
+								    _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_LIVE_A, \
+								    _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_LIVE_B)
+
+#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_A		0x604d8
+#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_B		0x614d8
+#define TRANS_VRR_DCB_ADJ_VMAX_CFG(trans)	_MMIO_TRANS(trans, \
+							    _TRANS_VRR_DCB_ADJ_VMAX_CFG_A, \
+							    _TRANS_VRR_DCB_ADJ_VMAX_CFG_B)
+#define  VRR_DCB_ADJ_VMAX_CNT_MASK		REG_GENMASK(31, 24)
+#define  VRR_DCB_ADJ_VMAX_MASK			REG_GENMASK(19, 0)
+#define  VRR_DCB_ADJ_VMAX(vmax)			REG_FIELD_PREP(VRR_DCB_ADJ_VMAX_MASK, (vmax))
+
+#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_LIVE_A	0x906f8
+#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_LIVE_B	0x986f8
+#define TRANS_VRR_DCB_ADJ_VMAX_CFG_LIVE(trans)	_MMIO_TRANS(trans, \
+							    _TRANS_VRR_DCB_ADJ_VMAX_CFG_LIVE_A, \
+							    _TRANS_VRR_DCB_ADJ_VMAX_CFG_LIVE_B)
+
+#define _TRANS_VRR_DCB_FLIPLINE_A		0x60418
+#define _TRANS_VRR_DCB_FLIPLINE_B		0x61418
+#define TRANS_VRR_DCB_FLIPLINE(trans)		_MMIO_TRANS(trans, \
+							    _TRANS_VRR_DCB_FLIPLINE_A, \
+							    _TRANS_VRR_DCB_FLIPLINE_B)
+#define  VRR_DCB_FLIPLINE_MASK			REG_GENMASK(19, 0)
+#define  VRR_DCB_FLIPLINE(flipline)		REG_FIELD_PREP(VRR_DCB_FLIPLINE_MASK, \
+							       (flipline))
+
+#define _TRANS_VRR_DCB_FLIPLINE_LIVE_A		0x906fc
+#define _TRANS_VRR_DCB_FLIPLINE_LIVE_B		0x986fc
+#define TRANS_VRR_DCB_FLIPLINE_LIVE(trans)	_MMIO_TRANS(trans, \
+							    _TRANS_VRR_DCB_FLIPLINE_LIVE_A, \
+							    _TRANS_VRR_DCB_FLIPLINE_LIVE_B)
+
+#define _TRANS_VRR_DCB_VMAX_A			0x60414
+#define _TRANS_VRR_DCB_VMAX_B			0x61414
+#define TRANS_VRR_DCB_VMAX(trans)		_MMIO_TRANS(trans, \
+							     _TRANS_VRR_DCB_VMAX_A, \
+							     _TRANS_VRR_DCB_VMAX_B)
+#define  VRR_DCB_VMAX_MASK			REG_GENMASK(19, 0)
+#define  VRR_DCB_VMAX(vmax)			REG_FIELD_PREP(VRR_DCB_VMAX_MASK, (vmax))
+
+#define _TRANS_VRR_DCB_VMAX_LIVE_A		0x906f4
+#define _TRANS_VRR_DCB_VMAX_LIVE_B		0x986f4
+#define TRANS_VRR_DCB_VMAX_LIVE(trans)		_MMIO_TRANS(trans, \
+							    _TRANS_VRR_DCB_VMAX_LIVE_A, \
+							    _TRANS_VRR_DCB_VMAX_LIVE_B)
+
+#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_A		0x604c0
+#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_B		0x614c0
+#define TRANS_ADAPTIVE_SYNC_DCB_CTL(trans)	_MMIO_TRANS(trans, \
+							     _TRANS_ADAPTIVE_SYNC_DCB_CTL_A, \
+							     _TRANS_ADAPTIVE_SYNC_DCB_CTL_B)
+#define  ADAPTIVE_SYNC_COUNTER_EN		REG_BIT(31)
+
 #define _TRANS_VRR_CTL_A			0x60420
 #define _TRANS_VRR_CTL_B			0x61420
 #define _TRANS_VRR_CTL_C			0x62420
@@ -19,6 +86,7 @@
 #define   VRR_CTL_CMRR_ENABLE			REG_BIT(27)
 #define   VRR_CTL_PIPELINE_FULL_MASK		REG_GENMASK(10, 3)
 #define   VRR_CTL_PIPELINE_FULL(x)		REG_FIELD_PREP(VRR_CTL_PIPELINE_FULL_MASK, (x))
+#define   VRR_CTL_DCB_ADJ_ENABLE		REG_BIT(28)
 #define   VRR_CTL_PIPELINE_FULL_OVERRIDE	REG_BIT(0)
 #define   XELPD_VRR_CTL_VRR_GUARDBAND_MASK	REG_GENMASK(15, 0)
 #define   XELPD_VRR_CTL_VRR_GUARDBAND(x)	REG_FIELD_PREP(XELPD_VRR_CTL_VRR_GUARDBAND_MASK, (x))
-- 
2.48.1

