Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D419ABF48
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 08:50:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E43CB10E759;
	Wed, 23 Oct 2024 06:50:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mC22ogh4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA6EA10E752;
 Wed, 23 Oct 2024 06:50:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729666250; x=1761202250;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hv5kpSbB7PWfGlJbGBUeRbU1ZdtggY/cIDV1NjfcY9A=;
 b=mC22ogh4tAYLWwbnlMLWduQhS3rx6ST5ll4LBXzU3hnFzgLk9JsYgmTM
 6tyhngKbY9Ab1bVX0Mk6j3fFC/Mg97P037USmzf+zjmCcwIM6E/ZGa0bw
 nWWb+xcyUr47j3tCkVHhDYH6nCL67f8jl+jlu0pmR2aWYr4FhEjDprnLV
 4n96Ryx8fPep7RBlBaIzzSym84rEmjXRT4iGIvzB8IAk/SLLOndDzrcEL
 ghNMsoGR7YmBDEjz3r4addNHe8Haon5DPLQdhwnfQ/3pPPSIkqoXOUBMU
 +5tagCYlk9/HrwmcZUGFhtgvD8xRbLjJ2oe4aD6pOIxwN53OeG5dY6ACG Q==;
X-CSE-ConnectionGUID: nW5JpCdRSUu7b+t9aoBh9A==
X-CSE-MsgGUID: XzhxYgDVQR+Urktp5+cO6A==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="32097471"
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="32097471"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 23:50:50 -0700
X-CSE-ConnectionGUID: c7xaDRfQT8q0JWJxF111hA==
X-CSE-MsgGUID: PXmamDbZSaWa4Wr40Sojtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="84691508"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 23:50:48 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH 05/16] drm/i915/vdsc: Add support for read/write PPS for 3rd
 DSC engine
Date: Wed, 23 Oct 2024 12:22:46 +0530
Message-ID: <20241023065257.190035-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241023065257.190035-1-ankit.k.nautiyal@intel.com>
References: <20241023065257.190035-1-ankit.k.nautiyal@intel.com>
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
registers for the 3rd DSC engine

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c      | 8 +++++---
 drivers/gpu/drm/i915/display/intel_vdsc_regs.h | 6 ++++++
 2 files changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 29b1aa7f4f94..4143109aaab6 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -402,8 +402,10 @@ static void intel_dsc_get_pps_reg(const struct intel_crtc_state *crtc_state, int
 
 	pipe_dsc = is_pipe_dsc(crtc, cpu_transcoder);
 
-	if (dsc_reg_num >= 3)
+	if (dsc_reg_num >= 4)
 		MISSING_CASE(dsc_reg_num);
+	if (dsc_reg_num >= 3)
+		dsc_reg[2] = BMG_DSC2_PPS(pipe, pps);
 	if (dsc_reg_num >= 2)
 		dsc_reg[1] = pipe_dsc ? ICL_DSC1_PPS(pipe, pps) : DSCC_PPS(pps);
 	if (dsc_reg_num >= 1)
@@ -415,7 +417,7 @@ static void intel_dsc_pps_write(const struct intel_crtc_state *crtc_state,
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	i915_reg_t dsc_reg[2];
+	i915_reg_t dsc_reg[3];
 	int i, vdsc_per_pipe, dsc_reg_num;
 
 	vdsc_per_pipe = intel_dsc_get_vdsc_per_pipe(crtc_state);
@@ -815,7 +817,7 @@ static u32 intel_dsc_pps_read(struct intel_crtc_state *crtc_state, int pps,
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	i915_reg_t dsc_reg[2];
+	i915_reg_t dsc_reg[3];
 	int i, vdsc_per_pipe, dsc_reg_num;
 	u32 val;
 
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
index 474a7f9f3881..2d478a84b07c 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
@@ -59,8 +59,10 @@
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
@@ -73,8 +75,12 @@
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

