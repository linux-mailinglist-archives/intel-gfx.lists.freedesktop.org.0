Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E3A8D1936
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 13:15:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9135F11218B;
	Tue, 28 May 2024 11:15:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l+qNBPAr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4DB811218B
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 11:15:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716894953; x=1748430953;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=i4UTIRQKptVrj16trMSfI8EJYGrhQm08ACHOGrdLQ8c=;
 b=l+qNBPArRZAqPTowXFpZ5/Ypq8W4TJfngeU7qWeLAW49vvt5STJilOrm
 k2Jr+3imfCmx0drI4Dvv5ijTJmZGHbgEyN7nk0Nz1QKqMjg8pnD3+rIx5
 wZUGp1A6emywSSLe6Xy8rP1a9nFp1F4VIzLblaheSQN5oBwNlmdOy/CLK
 6u7bZXiKvcpzsMlg0wJnNgnO1tFe4qk9OaQMvqiLh75ev19mznBUxODl9
 QLtix9v3iKTwSs39/MxrJHXwC2mGz00+BBptAPuQ8JAV3j1idL6XWcpoQ
 w1jbM4+jMNlcywFHaePNysRwUPXd2AACeCqxCJo5dh2XEcV0omRpg16Nw A==;
X-CSE-ConnectionGUID: G2zrxnGcSsecWTypNmoouw==
X-CSE-MsgGUID: Q1Zq90JbTFOwcsS4CrzXxA==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13353891"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="13353891"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 04:15:52 -0700
X-CSE-ConnectionGUID: BJGdKeHrTi23QT2EgO85xg==
X-CSE-MsgGUID: klcxtI6zSOimFDv/vFp0Mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="39877341"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.13])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 04:15:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/5] drm/i915/gvt: use proper macros for DP AUX CH CTL
 registers
Date: Tue, 28 May 2024 14:15:38 +0300
Message-Id: <f30d35f28ef106d6fb2faf100fe1c5e3a42dfa20.1716894909.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1716894909.git.jani.nikula@intel.com>
References: <cover.1716894909.git.jani.nikula@intel.com>
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

Use the proper helpers for DP AUX CH CTL registers, instead of
reinventing the wheels.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gvt/handlers.c         | 35 ++++++++++-----------
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c |  8 ++---
 2 files changed, 20 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index cd4ec480138b..708b99be02ac 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -1084,13 +1084,13 @@ static int trigger_aux_channel_interrupt(struct intel_vgpu *vgpu,
 
 	if (reg == i915_mmio_reg_offset(DP_AUX_CH_CTL(AUX_CH_A)))
 		event = AUX_CHANNEL_A;
-	else if (reg == _PCH_DPB_AUX_CH_CTL ||
+	else if (reg == i915_mmio_reg_offset(PCH_DP_AUX_CH_CTL(AUX_CH_B)) ||
 		 reg == i915_mmio_reg_offset(DP_AUX_CH_CTL(AUX_CH_B)))
 		event = AUX_CHANNEL_B;
-	else if (reg == _PCH_DPC_AUX_CH_CTL ||
+	else if (reg == i915_mmio_reg_offset(PCH_DP_AUX_CH_CTL(AUX_CH_C)) ||
 		 reg == i915_mmio_reg_offset(DP_AUX_CH_CTL(AUX_CH_C)))
 		event = AUX_CHANNEL_C;
-	else if (reg == _PCH_DPD_AUX_CH_CTL ||
+	else if (reg == i915_mmio_reg_offset(PCH_DP_AUX_CH_CTL(AUX_CH_D)) ||
 		 reg == i915_mmio_reg_offset(DP_AUX_CH_CTL(AUX_CH_D)))
 		event = AUX_CHANNEL_D;
 	else {
@@ -1154,11 +1154,6 @@ static void dp_aux_ch_ctl_link_training(struct intel_vgpu_dpcd_data *dpcd,
 	}
 }
 
-#define _REG_HSW_DP_AUX_CH_CTL(dp) \
-	((dp) ? (_PCH_DPB_AUX_CH_CTL + ((dp)-1)*0x100) : 0x64010)
-
-#define _REG_SKL_DP_AUX_CH_CTL(dp) (0x64010 + (dp) * 0x100)
-
 #define OFFSET_TO_DP_AUX_PORT(offset) (((offset) & 0xF00) >> 8)
 
 #define dpy_is_valid_port(port)	\
@@ -1182,12 +1177,14 @@ static int dp_aux_ch_ctl_mmio_write(struct intel_vgpu *vgpu,
 	write_vreg(vgpu, offset, p_data, bytes);
 	data = vgpu_vreg(vgpu, offset);
 
-	if ((GRAPHICS_VER(vgpu->gvt->gt->i915) >= 9)
-		&& offset != _REG_SKL_DP_AUX_CH_CTL(port_index)) {
+	if (GRAPHICS_VER(vgpu->gvt->gt->i915) >= 9 &&
+	    offset != i915_mmio_reg_offset(DP_AUX_CH_CTL(port_index))) {
 		/* SKL DPB/C/D aux ctl register changed */
 		return 0;
 	} else if (IS_BROADWELL(vgpu->gvt->gt->i915) &&
-		   offset != _REG_HSW_DP_AUX_CH_CTL(port_index)) {
+		   offset != i915_mmio_reg_offset(port_index ?
+						  PCH_DP_AUX_CH_CTL(port_index) :
+						  DP_AUX_CH_CTL(port_index))) {
 		/* write to the data registers */
 		return 0;
 	}
@@ -2300,12 +2297,12 @@ static int init_generic_mmio_info(struct intel_gvt *gvt)
 		gmbus_mmio_write);
 	MMIO_F(PCH_GPIO_BASE, 6 * 4, F_UNALIGN, 0, 0, D_ALL, NULL, NULL);
 
-	MMIO_F(_MMIO(_PCH_DPB_AUX_CH_CTL), 6 * 4, 0, 0, 0, D_PRE_SKL, NULL,
-		dp_aux_ch_ctl_mmio_write);
-	MMIO_F(_MMIO(_PCH_DPC_AUX_CH_CTL), 6 * 4, 0, 0, 0, D_PRE_SKL, NULL,
-		dp_aux_ch_ctl_mmio_write);
-	MMIO_F(_MMIO(_PCH_DPD_AUX_CH_CTL), 6 * 4, 0, 0, 0, D_PRE_SKL, NULL,
-		dp_aux_ch_ctl_mmio_write);
+	MMIO_F(PCH_DP_AUX_CH_CTL(AUX_CH_B), 6 * 4, 0, 0, 0, D_PRE_SKL, NULL,
+	       dp_aux_ch_ctl_mmio_write);
+	MMIO_F(PCH_DP_AUX_CH_CTL(AUX_CH_C), 6 * 4, 0, 0, 0, D_PRE_SKL, NULL,
+	       dp_aux_ch_ctl_mmio_write);
+	MMIO_F(PCH_DP_AUX_CH_CTL(AUX_CH_D), 6 * 4, 0, 0, 0, D_PRE_SKL, NULL,
+	       dp_aux_ch_ctl_mmio_write);
 
 	MMIO_DH(PCH_ADPA, D_PRE_SKL, NULL, pch_adpa_mmio_write);
 
@@ -2342,8 +2339,8 @@ static int init_generic_mmio_info(struct intel_gvt *gvt)
 	MMIO_DH(SBI_DATA, D_ALL, sbi_data_mmio_read, NULL);
 	MMIO_DH(SBI_CTL_STAT, D_ALL, NULL, sbi_ctl_mmio_write);
 
-	MMIO_F(_MMIO(_DPA_AUX_CH_CTL), 6 * 4, 0, 0, 0, D_ALL, NULL,
-		dp_aux_ch_ctl_mmio_write);
+	MMIO_F(DP_AUX_CH_CTL(AUX_CH_A), 6 * 4, 0, 0, 0, D_ALL, NULL,
+	       dp_aux_ch_ctl_mmio_write);
 
 	MMIO_DH(DDI_BUF_CTL(PORT_A), D_ALL, NULL, ddi_buf_ctl_mmio_write);
 	MMIO_DH(DDI_BUF_CTL(PORT_B), D_ALL, NULL, ddi_buf_ctl_mmio_write);
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 349578cc0fc8..f5c4e4e2f11f 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -517,7 +517,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(SBI_DATA);
 	MMIO_D(SBI_CTL_STAT);
 	MMIO_D(PIXCLK_GATE);
-	MMIO_F(_MMIO(_DPA_AUX_CH_CTL), 6 * 4);
+	MMIO_F(DP_AUX_CH_CTL(AUX_CH_A), 6 * 4);
 	MMIO_D(DDI_BUF_CTL(PORT_A));
 	MMIO_D(DDI_BUF_CTL(PORT_B));
 	MMIO_D(DDI_BUF_CTL(PORT_C));
@@ -888,9 +888,9 @@ static int iterate_pre_skl_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(FORCEWAKE_MT);
 
 	MMIO_D(PCH_ADPA);
-	MMIO_F(_MMIO(_PCH_DPB_AUX_CH_CTL), 6 * 4);
-	MMIO_F(_MMIO(_PCH_DPC_AUX_CH_CTL), 6 * 4);
-	MMIO_F(_MMIO(_PCH_DPD_AUX_CH_CTL), 6 * 4);
+	MMIO_F(PCH_DP_AUX_CH_CTL(AUX_CH_B), 6 * 4);
+	MMIO_F(PCH_DP_AUX_CH_CTL(AUX_CH_C), 6 * 4);
+	MMIO_F(PCH_DP_AUX_CH_CTL(AUX_CH_D), 6 * 4);
 
 	MMIO_F(_MMIO(0x70440), 0xc);
 	MMIO_F(_MMIO(0x71440), 0xc);
-- 
2.39.2

