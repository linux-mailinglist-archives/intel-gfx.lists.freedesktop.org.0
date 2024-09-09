Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C1B3972233
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 20:59:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEA4310E654;
	Mon,  9 Sep 2024 18:59:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZtHhom66";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B949D10E655;
 Mon,  9 Sep 2024 18:59:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725908387; x=1757444387;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3yArv+MQ4I3/VZSNWi+IjBhTETyXiLDvAtkYmY4rHOo=;
 b=ZtHhom66vwpupWowDWZrmkLrTcPjr2OVG5h5BkWZ+2V8YWRGBJHyzAlE
 cZrDhgVvy9nwBHC2kLIErPqIYPkWrdoeGHt6yuU8NFEHbcXJEZcOrUGnL
 kcJHibejxaM412YC4T/HXeqULTYMkY3WTytO5ZulegBRDcjiNr4JRU+4l
 sUljkFCCf2coyCZNXYWw8FaLf4ISjBG1KPu2pHH1v72kF64iUjPTlZ/NU
 2eTn34G5ZawNNAegKFjswraC0O+QMEKQjk1an/subdR7+/hIKw9KvWk2R
 dSOzIl1eP1zbI3Tu2v8xAgF9P/b76TAwrnYqrcgYQwWKXlTZbH2Lx/1yI Q==;
X-CSE-ConnectionGUID: edKYJckPSMSTrp5TAvKBag==
X-CSE-MsgGUID: AXl4v30gSl2dLH/D+kw6zQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="24170805"
X-IronPort-AV: E=Sophos;i="6.10,215,1719903600"; d="scan'208";a="24170805"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 11:59:47 -0700
X-CSE-ConnectionGUID: i/xwjVXvT9WQ8Gm6N8M6Lw==
X-CSE-MsgGUID: 8lOCxjUhSu6RxBfWM7fAgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,215,1719903600"; d="scan'208";a="67030725"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.176])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 11:59:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 08/11] drm/i915/reg: fix small register style issues here and
 there
Date: Mon,  9 Sep 2024 21:58:59 +0300
Message-Id: <98e8a3bc5daf9fe525b45e2cdfecd54fd1a404bf.1725908152.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1725908151.git.jani.nikula@intel.com>
References: <cover.1725908151.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Adhere to the style described at the top of i915_reg.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 23 +++++++++++++----------
 1 file changed, 13 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 22641f7b4e1a..993623710700 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2195,6 +2195,7 @@
 /* IVB+ has 3 fitters, 0 is 7x5 capable, the other two only 3x3 */
 #define _PFA_CTL_1		0x68080
 #define _PFB_CTL_1		0x68880
+#define PF_CTL(pipe)		_MMIO_PIPE(pipe, _PFA_CTL_1, _PFB_CTL_1)
 #define   PF_ENABLE			REG_BIT(31)
 #define   PF_PIPE_SEL_MASK_IVB		REG_GENMASK(30, 29) /* ivb/hsw */
 #define   PF_PIPE_SEL_IVB(pipe)		REG_FIELD_PREP(PF_PIPE_SEL_MASK_IVB, (pipe))
@@ -2203,27 +2204,29 @@
 #define   PF_FILTER_MED_3x3		REG_FIELD_PREP(PF_FILTER_MASK, 1)
 #define   PF_FILTER_EDGE_ENHANCE	REG_FIELD_PREP(PF_FILTER_EDGE_MASK, 2)
 #define   PF_FILTER_EDGE_SOFTEN		REG_FIELD_PREP(PF_FILTER_EDGE_MASK, 3)
+
 #define _PFA_WIN_SZ		0x68074
 #define _PFB_WIN_SZ		0x68874
+#define PF_WIN_SZ(pipe)		_MMIO_PIPE(pipe, _PFA_WIN_SZ, _PFB_WIN_SZ)
 #define   PF_WIN_XSIZE_MASK	REG_GENMASK(31, 16)
 #define   PF_WIN_XSIZE(w)	REG_FIELD_PREP(PF_WIN_XSIZE_MASK, (w))
 #define   PF_WIN_YSIZE_MASK	REG_GENMASK(15, 0)
 #define   PF_WIN_YSIZE(h)	REG_FIELD_PREP(PF_WIN_YSIZE_MASK, (h))
+
 #define _PFA_WIN_POS		0x68070
 #define _PFB_WIN_POS		0x68870
+#define PF_WIN_POS(pipe)	_MMIO_PIPE(pipe, _PFA_WIN_POS, _PFB_WIN_POS)
 #define   PF_WIN_XPOS_MASK	REG_GENMASK(31, 16)
 #define   PF_WIN_XPOS(x)	REG_FIELD_PREP(PF_WIN_XPOS_MASK, (x))
 #define   PF_WIN_YPOS_MASK	REG_GENMASK(15, 0)
 #define   PF_WIN_YPOS(y)	REG_FIELD_PREP(PF_WIN_YPOS_MASK, (y))
+
 #define _PFA_VSCALE		0x68084
 #define _PFB_VSCALE		0x68884
+#define PF_VSCALE(pipe)		_MMIO_PIPE(pipe, _PFA_VSCALE, _PFB_VSCALE)
+
 #define _PFA_HSCALE		0x68090
 #define _PFB_HSCALE		0x68890
-
-#define PF_CTL(pipe)		_MMIO_PIPE(pipe, _PFA_CTL_1, _PFB_CTL_1)
-#define PF_WIN_SZ(pipe)		_MMIO_PIPE(pipe, _PFA_WIN_SZ, _PFB_WIN_SZ)
-#define PF_WIN_POS(pipe)	_MMIO_PIPE(pipe, _PFA_WIN_POS, _PFB_WIN_POS)
-#define PF_VSCALE(pipe)		_MMIO_PIPE(pipe, _PFA_VSCALE, _PFB_VSCALE)
 #define PF_HSCALE(pipe)		_MMIO_PIPE(pipe, _PFA_HSCALE, _PFB_HSCALE)
 
 /*
@@ -3103,11 +3106,12 @@
 #define PCH_DPLL(pll) _MMIO((pll) == 0 ? _PCH_DPLL_A : _PCH_DPLL_B)
 
 #define _PCH_FPA0                0xc6040
+#define _PCH_FPB0                0xc6048
+#define PCH_FP0(pll) _MMIO((pll) == 0 ? _PCH_FPA0 : _PCH_FPB0)
 #define  FP_CB_TUNE		(0x3 << 22)
+
 #define _PCH_FPA1                0xc6044
-#define _PCH_FPB0                0xc6048
 #define _PCH_FPB1                0xc604c
-#define PCH_FP0(pll) _MMIO((pll) == 0 ? _PCH_FPA0 : _PCH_FPB0)
 #define PCH_FP1(pll) _MMIO((pll) == 0 ? _PCH_FPA1 : _PCH_FPB1)
 
 #define PCH_DPLL_TEST           _MMIO(0xc606c)
@@ -4145,6 +4149,7 @@ enum skl_power_gate {
 #define _DPLL1_CFGCR1	0x6C040
 #define _DPLL2_CFGCR1	0x6C048
 #define _DPLL3_CFGCR1	0x6C050
+#define DPLL_CFGCR1(id)	_MMIO_PIPE((id) - SKL_DPLL1, _DPLL1_CFGCR1, _DPLL2_CFGCR1)
 #define  DPLL_CFGCR1_FREQ_ENABLE	(1 << 31)
 #define  DPLL_CFGCR1_DCO_FRACTION_MASK	(0x7fff << 9)
 #define  DPLL_CFGCR1_DCO_FRACTION(x)	((x) << 9)
@@ -4153,6 +4158,7 @@ enum skl_power_gate {
 #define _DPLL1_CFGCR2	0x6C044
 #define _DPLL2_CFGCR2	0x6C04C
 #define _DPLL3_CFGCR2	0x6C054
+#define DPLL_CFGCR2(id)	_MMIO_PIPE((id) - SKL_DPLL1, _DPLL1_CFGCR2, _DPLL2_CFGCR2)
 #define  DPLL_CFGCR2_QDIV_RATIO_MASK	(0xff << 8)
 #define  DPLL_CFGCR2_QDIV_RATIO(x)	((x) << 8)
 #define  DPLL_CFGCR2_QDIV_MODE(x)	((x) << 7)
@@ -4171,9 +4177,6 @@ enum skl_power_gate {
 #define  DPLL_CFGCR2_PDIV_7_INVALID	(5 << 2)
 #define  DPLL_CFGCR2_CENTRAL_FREQ_MASK	(3)
 
-#define DPLL_CFGCR1(id)	_MMIO_PIPE((id) - SKL_DPLL1, _DPLL1_CFGCR1, _DPLL2_CFGCR1)
-#define DPLL_CFGCR2(id)	_MMIO_PIPE((id) - SKL_DPLL1, _DPLL1_CFGCR2, _DPLL2_CFGCR2)
-
 /* ICL Clocks */
 #define ICL_DPCLKA_CFGCR0			_MMIO(0x164280)
 #define  ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy)	(1 << _PICK(phy, 10, 11, 24, 4, 5))
-- 
2.39.2

