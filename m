Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86CBFA89B0C
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Apr 2025 12:51:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CE0B10E72D;
	Tue, 15 Apr 2025 10:51:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fr456fJ2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2288710E72E;
 Tue, 15 Apr 2025 10:51:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744714299; x=1776250299;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=C7VBIO29jhzxsr44ECUfF3HRKzvcnN93GH3PP4lL7Q0=;
 b=fr456fJ2D4Ha+NgQ5uHUL93hJIRGQTrw/OEwqVd5O7vxacLUbUus0vph
 lwnEnlc52cUw+Dod1LNYgxlm5d17irNtFHRV+cV74Yp2CHWOr326nE5v0
 AhPwj2XqPEHloyDrJShXIsMgjDY5gSYca8q9mS6Nev9pcj5/+rhE2QCXf
 7q2Id+3oq82q80oVdyokj/iHxVPbh8E+DgZ758zrsxFGIaOziYlurrudd
 3R8GhfC5mqQ7vXgJWYLdcMdpBm686TV+nNx+4U0Yj2jEA/nY7ShReMnJO
 mpAXediRUKilzRGw3jXTey30XqLD+1jyvFJIXUfiL9n4tHSguWekj6EuF A==;
X-CSE-ConnectionGUID: k71Qu+OBTk6okLW+JORlWw==
X-CSE-MsgGUID: viERebwRTWS2KvFlG+1Vlg==
X-IronPort-AV: E=McAfee;i="6700,10204,11403"; a="56854380"
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="56854380"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 03:51:39 -0700
X-CSE-ConnectionGUID: lhpduQE4QGaOMfByBXDABg==
X-CSE-MsgGUID: aAP2ejIOReeMnVHWhV0imA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="153283625"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.35])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 03:51:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 2/3] drm/i915/reg: Add/remove some extra blank lines
Date: Tue, 15 Apr 2025 13:51:21 +0300
Message-Id: <a375380b769adb4e5e6690c750ab497ba367a4e4.1744714233.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1744714233.git.jani.nikula@intel.com>
References: <cover.1744714233.git.jani.nikula@intel.com>
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

