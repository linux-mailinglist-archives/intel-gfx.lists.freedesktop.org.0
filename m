Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E0FA986A7
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Apr 2025 12:02:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3C8C10E672;
	Wed, 23 Apr 2025 10:02:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RHzIrGhi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D71A710E66D;
 Wed, 23 Apr 2025 10:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745402543; x=1776938543;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=C7VBIO29jhzxsr44ECUfF3HRKzvcnN93GH3PP4lL7Q0=;
 b=RHzIrGhipfYNNrQYLL0BNHVBt8H3VNri2klojyvD7oohifA9nHLN6SjE
 Wh2acf+6qQ8qDmsgR7bI9tB1IhGb1Lsu1QPeBsSPZfB2QIkqdRPqa+aRZ
 tShpQmRwj0TXpKkKBGT8+e1RxQOGchAH0rr1R3+RoGwP6JUPoDn0+kTse
 DJ1Wsu3nMgN9Um6eEvmKcRIR5YHBCICTlbHMXilyaCab/IkcM9bNxtRfD
 hEWsyu9UaPk4bGze9zr96NypSJKZeulx2R5Tv3H3iDl6RgWOgZN3NGn4G
 l2h6/Nd1W+/LtELygupf1o2vEy4zMPBKNyIoA/0BY+Qpb7cus8xtXjrZz g==;
X-CSE-ConnectionGUID: dW0+BAg3QSq3pWOnGGpARQ==
X-CSE-MsgGUID: OQ0mzS9uTDaAdtKO29uMqQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11411"; a="46223161"
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="46223161"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 03:02:23 -0700
X-CSE-ConnectionGUID: RadLywyITTyvAejo5GhxJQ==
X-CSE-MsgGUID: TWdFPRGlRSmNY6Z0c7rwiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="137262545"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.175])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 03:02:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [CI 2/2] drm/i915/reg: Add/remove some extra blank lines
Date: Wed, 23 Apr 2025 13:02:13 +0300
Message-Id: <20250423100213.720585-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250423100213.720585-1-jani.nikula@intel.com>
References: <20250423100213.720585-1-jani.nikula@intel.com>
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

Add/remove some blank lines to/from i915_reg.h primarily to help the
scripted refactoring coming up, separating unrelated registers and
keeping the comments together.

v2: Also add some extra blank lines

Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com> # v1
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 43a5b17e2b20..88c46a7c948f 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -866,6 +866,7 @@
 #define   FP_M2_DIV_MASK	0x0000003f
 #define   FP_M2_PINEVIEW_DIV_MASK	0x000000ff
 #define   FP_M2_DIV_SHIFT		 0
+
 #define DPLL_TEST	_MMIO(0x606c)
 #define   DPLLB_TEST_SDVO_DIV_1		(0 << 22)
 #define   DPLLB_TEST_SDVO_DIV_2		(1 << 22)
@@ -877,11 +878,13 @@
 #define   DPLLA_TEST_N_BYPASS		(1 << 3)
 #define   DPLLA_TEST_M_BYPASS		(1 << 2)
 #define   DPLLA_INPUT_BUFFER_ENABLE	(1 << 0)
+
 #define D_STATE		_MMIO(0x6104)
 #define  DSTATE_GFX_RESET_I830			(1 << 6)
 #define  DSTATE_PLL_D3_OFF			(1 << 3)
 #define  DSTATE_GFX_CLOCK_GATING		(1 << 1)
 #define  DSTATE_DOT_CLOCK_GATING		(1 << 0)
+
 #define DSPCLK_GATE_D(__i915)		_MMIO(DISPLAY_MMIO_BASE(__i915) + 0x6200)
 # define DPUNIT_B_CLOCK_GATE_DISABLE		(1 << 30) /* 965 */
 # define VSUNIT_CLOCK_GATE_DISABLE		(1 << 29) /* 965 */
@@ -1050,7 +1053,6 @@
 /*
  * Overlay regs
  */
-
 #define OVADD			_MMIO(0x30000)
 #define DOVSTA			_MMIO(0x30008)
 #define OC_BUF			(0x3 << 20)
@@ -1106,7 +1108,6 @@
 /*
  * Display engine regs
  */
-
 /* Pipe/transcoder A timing regs */
 #define _TRANS_HTOTAL_A		0x60000
 #define _TRANS_HTOTAL_B		0x61000
@@ -2746,7 +2747,6 @@
  * functionality covered in PCH_PORT_HOTPLUG is split into
  * SHOTPLUG_CTL_DDI and SHOTPLUG_CTL_TC.
  */
-
 #define SHOTPLUG_CTL_DDI				_MMIO(0xc4030)
 #define   SHOTPLUG_CTL_DDI_HPD_ENABLE(hpd_pin)			(0x8 << (_HPD_PIN_DDI(hpd_pin) * 4))
 #define   SHOTPLUG_CTL_DDI_HPD_OUTPUT_DATA(hpd_pin)		(0x4 << (_HPD_PIN_DDI(hpd_pin) * 4))
@@ -2826,7 +2826,6 @@
 #define  TRANS_DPLL_ENABLE(pipe)	(1 << ((pipe) * 4 + 3))
 
 /* transcoder */
-
 #define _PCH_TRANS_HTOTAL_A		0xe0000
 #define _PCH_TRANS_HTOTAL_B		0xe1000
 #define PCH_TRANS_HTOTAL(pipe)		_MMIO_PIPE(pipe, _PCH_TRANS_HTOTAL_A, _PCH_TRANS_HTOTAL_B)
@@ -3757,7 +3756,6 @@ enum skl_power_gate {
 /*
  * SKL Clocks
  */
-
 /* CDCLK_CTL */
 #define CDCLK_CTL			_MMIO(0x46000)
 #define  CDCLK_FREQ_SEL_MASK		REG_GENMASK(27, 26)
-- 
2.39.5

