Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BF6A99C28B
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2024 10:08:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91B2910E3C3;
	Mon, 14 Oct 2024 08:07:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aMtUanWa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6339310E3C0;
 Mon, 14 Oct 2024 08:07:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728893277; x=1760429277;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZJdBYuIqVGp/FCkRcREcrNc/fiZxg4dq8rzJHTYtkcU=;
 b=aMtUanWaotqRXrhgnu4yfVSGYpGQqmBpHfWUX12ttDAoiVuCmCEY/dW3
 +Is45QA0RXGQFw3K3sTB2QPWWfuI/0bQQrjwpwAqHiF6dIre+Gkx6j0Rs
 0AWJZZYJYKKxptmBA7W99wwE46M348rxYzCLhF8tbPqKJmx0HaOQKRv8C
 aicYy4PZimCh4W3OtoEmqrQcWtrxH10jTDjeIm8wzixtYGxS7R5POi8on
 OmBD1cEMGwmMbkNt8fiGGaD6IHhcSHMOzVfWu7uUUIcz4lnovQvRM0KB2
 0F0JTOMQvq2W4k/dz2hERST7fZrt+PBqaBLCOeTRbEOEDhINo8d1coAAE g==;
X-CSE-ConnectionGUID: 0AWvZ4x1QP+IRPHSWYsEQA==
X-CSE-MsgGUID: hOoRc841RTilD1WL23sMYg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="38784427"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="38784427"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 01:07:57 -0700
X-CSE-ConnectionGUID: Ucsbst79Q1KEJHHf9qTO/A==
X-CSE-MsgGUID: 5jKMMJD3RPqWfnI9Zz6G/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,202,1725346800"; d="scan'208";a="100834884"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 01:07:56 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 4/9] drm/i915/vdsc: Add support for read/write PPS for DSC3
Date: Mon, 14 Oct 2024 13:39:55 +0530
Message-ID: <20241014081000.2844245-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241014081000.2844245-1-ankit.k.nautiyal@intel.com>
References: <20241014081000.2844245-1-ankit.k.nautiyal@intel.com>
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

With BMG each pipe has 3 DSC engines, so add bits to read/write the PPS
registers for the 3rd VDSC engine.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c      | 8 +++++---
 drivers/gpu/drm/i915/display/intel_vdsc_regs.h | 6 ++++++
 2 files changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index d4e2eed81122..982dc326b4a1 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -411,8 +411,10 @@ static void intel_dsc_get_pps_reg(const struct intel_crtc_state *crtc_state, int
 
 	pipe_dsc = is_pipe_dsc(crtc, cpu_transcoder);
 
-	if (dsc_reg_num >= 3)
+	if (dsc_reg_num >= 4)
 		MISSING_CASE(dsc_reg_num);
+	if (dsc_reg_num >= 3)
+		dsc_reg[2] = BMG_DSC2_PPS(pipe, pps);
 	if (dsc_reg_num >= 2)
 		dsc_reg[1] = pipe_dsc ? ICL_DSC1_PPS(pipe, pps) : DSCC_PPS(pps);
 	if (dsc_reg_num >= 1)
@@ -424,7 +426,7 @@ static void intel_dsc_pps_write(const struct intel_crtc_state *crtc_state,
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	i915_reg_t dsc_reg[2];
+	i915_reg_t dsc_reg[3];
 	int i, vdsc_per_pipe, dsc_reg_num;
 
 	vdsc_per_pipe = intel_dsc_get_vdsc_per_pipe(crtc_state);
@@ -824,7 +826,7 @@ static u32 intel_dsc_pps_read(struct intel_crtc_state *crtc_state, int pps,
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	i915_reg_t dsc_reg[2];
+	i915_reg_t dsc_reg[3];
 	int i, vdsc_per_pipe, dsc_reg_num;
 	u32 val;
 
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
index 941f4ff6b940..efaeb5e0aea3 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
@@ -61,8 +61,10 @@
 #define DSCC_PPS(pps)				_MMIO(_DSCC_PPS_0 + ((pps) < 12 ? (pps) : (pps) + 12) * 4)
 #define _ICL_DSC0_PICTURE_PARAMETER_SET_0_PB	0x78270
 #define _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB	0x78370
+#define _BMG_DSC2_PICTURE_PARAMETER_SET_0_PB	0x78970
 #define _ICL_DSC0_PICTURE_PARAMETER_SET_0_PC	0x78470
 #define _ICL_DSC1_PICTURE_PARAMETER_SET_0_PC	0x78570
+#define _BMG_DSC2_PICTURE_PARAMETER_SET_0_PC	0x78A70
 #define ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
 							   _ICL_DSC0_PICTURE_PARAMETER_SET_0_PB, \
 							   _ICL_DSC0_PICTURE_PARAMETER_SET_0_PC)
@@ -75,8 +77,12 @@
 #define _ICL_DSC1_PPS_0(pipe)			_PICK_EVEN((pipe) - PIPE_B, \
 							   _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB, \
 							   _ICL_DSC1_PICTURE_PARAMETER_SET_0_PC)
+#define _BMG_DSC2_PPS_0(pipe)			_PICK_EVEN((pipe) - PIPE_B, \
+							   _BMG_DSC2_PICTURE_PARAMETER_SET_0_PB, \
+							   _BMG_DSC2_PICTURE_PARAMETER_SET_0_PC)
 #define  ICL_DSC0_PPS(pipe, pps)		_MMIO(_ICL_DSC0_PPS_0(pipe) + ((pps) * 4))
 #define  ICL_DSC1_PPS(pipe, pps)		_MMIO(_ICL_DSC1_PPS_0(pipe) + ((pps) * 4))
+#define  BMG_DSC2_PPS(pipe, pps)		_MMIO(_BMG_DSC2_PPS_0(pipe) + ((pps) * 4))
 
 /* PPS 0 */
 #define   DSC_PPS0_NATIVE_422_ENABLE		REG_BIT(23)
-- 
2.45.2

