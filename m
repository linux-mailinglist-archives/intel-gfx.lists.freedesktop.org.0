Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE345729C7A
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jun 2023 16:14:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4769510E6BB;
	Fri,  9 Jun 2023 14:14:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCA3210E6BB
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Jun 2023 14:14:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686320068; x=1717856068;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=j8FwX4osFlzdL9SXqXAzZkw7uJR7uSy8QW/Q2e2vmrY=;
 b=VTiqYCvJ0EfgKdpoXg+JIy4/5phLO3k1PvuBL/0fADrogRzKtBrqAC5m
 lHJPAIE2BareARs/45SQF+adTP+53Ns02Xx3dJcnJ+1Eag0e4NCsCzVBz
 Re6FfC+lTBtGDqQajECCb0Paa5ndJzm1q0f3ThpG4sgWXqNJ7J3Q7khgR
 ma6HXorjMkF3l4v50hldITb10qZjDnUv3rc5d09lxRMBOwhT4ujXQWvXa
 yAMJ0OCtlkdsxw2KrqTLAdLIqXR3UpdwgF8nTUkADBD/rjuVyKumVb1GD
 4E9xoC5XYc/Jg0BzKP6qnJtNFFItqpfPl9j+LZXqyrRAi2Jkk7eMcSumQ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="385966395"
X-IronPort-AV: E=Sophos;i="6.00,229,1681196400"; d="scan'208";a="385966395"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 07:14:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="740183093"
X-IronPort-AV: E=Sophos;i="6.00,229,1681196400"; d="scan'208";a="740183093"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 09 Jun 2023 07:14:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 09 Jun 2023 17:14:21 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Jun 2023 17:13:56 +0300
Message-Id: <20230609141404.12729-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230609141404.12729-1-ville.syrjala@linux.intel.com>
References: <20230609141404.12729-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 05/13] drm/i915/psr: Bring back HSW/BDW PSR
 AUX CH registers/setup
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reintroduce the special PSR AUX CH setup for hsw/bdw. Not all
of it was even removed (BDW AUX data registers were left behind).
Update the code to use REG_BIT() & co. while at it.

v2: Define the SRD_AUX_CTL bits in terms of DP_AUX_CTL bits (Jouni)
    Add a comment explaining the hand rolled DPCD write (Jouni)

Cc: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_dp_aux.h   |  3 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 62 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_psr_regs.h | 12 ++++
 4 files changed, 78 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 197c6e81db14..21b50a5c8a85 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -14,7 +14,7 @@
 #include "intel_pps.h"
 #include "intel_tc.h"
 
-static u32 intel_dp_aux_pack(const u8 *src, int src_bytes)
+u32 intel_dp_aux_pack(const u8 *src, int src_bytes)
 {
 	int i;
 	u32 v = 0;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.h b/drivers/gpu/drm/i915/display/intel_dp_aux.h
index 5b608f9d3499..8447f3e601fe 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.h
@@ -6,6 +6,8 @@
 #ifndef __INTEL_DP_AUX_H__
 #define __INTEL_DP_AUX_H__
 
+#include <linux/types.h>
+
 enum aux_ch;
 struct drm_i915_private;
 struct intel_dp;
@@ -17,5 +19,6 @@ void intel_dp_aux_init(struct intel_dp *intel_dp);
 enum aux_ch intel_dp_aux_ch(struct intel_encoder *encoder);
 
 void intel_dp_aux_irq_handler(struct drm_i915_private *i915);
+u32 intel_dp_aux_pack(const u8 *src, int src_bytes);
 
 #endif /* __INTEL_DP_AUX_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 7f748c7a71f3..5451f44c620f 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -288,6 +288,24 @@ static i915_reg_t psr_iir_reg(struct drm_i915_private *dev_priv,
 		return EDP_PSR_IIR;
 }
 
+static i915_reg_t psr_aux_ctl_reg(struct drm_i915_private *dev_priv,
+				  enum transcoder cpu_transcoder)
+{
+	if (DISPLAY_VER(dev_priv) >= 8)
+		return EDP_PSR_AUX_CTL(cpu_transcoder);
+	else
+		return HSW_SRD_AUX_CTL;
+}
+
+static i915_reg_t psr_aux_data_reg(struct drm_i915_private *dev_priv,
+				   enum transcoder cpu_transcoder, int i)
+{
+	if (DISPLAY_VER(dev_priv) >= 8)
+		return EDP_PSR_AUX_DATA(cpu_transcoder, i);
+	else
+		return HSW_SRD_AUX_DATA(i);
+}
+
 static void psr_irq_control(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
@@ -512,6 +530,43 @@ void intel_psr_init_dpcd(struct intel_dp *intel_dp)
 	}
 }
 
+static void hsw_psr_setup_aux(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
+	u32 aux_clock_divider, aux_ctl;
+	/* write DP_SET_POWER=D0 */
+	static const u8 aux_msg[] = {
+		[0] = (DP_AUX_NATIVE_WRITE << 4) | ((DP_SET_POWER >> 16) & 0xf),
+		[1] = (DP_SET_POWER >> 8) & 0xff,
+		[2] = DP_SET_POWER & 0xff,
+		[3] = 1 - 1,
+		[4] = DP_SET_POWER_D0,
+	};
+	int i;
+
+	BUILD_BUG_ON(sizeof(aux_msg) > 20);
+	for (i = 0; i < sizeof(aux_msg); i += 4)
+		intel_de_write(dev_priv,
+			       psr_aux_data_reg(dev_priv, cpu_transcoder, i >> 2),
+			       intel_dp_aux_pack(&aux_msg[i], sizeof(aux_msg) - i));
+
+	aux_clock_divider = intel_dp->get_aux_clock_divider(intel_dp, 0);
+
+	/* Start with bits set for DDI_AUX_CTL register */
+	aux_ctl = intel_dp->get_aux_send_ctl(intel_dp, sizeof(aux_msg),
+					     aux_clock_divider);
+
+	/* Select only valid bits for SRD_AUX_CTL */
+	aux_ctl &= EDP_PSR_AUX_CTL_TIME_OUT_MASK |
+		EDP_PSR_AUX_CTL_MESSAGE_SIZE_MASK |
+		EDP_PSR_AUX_CTL_PRECHARGE_2US_MASK |
+		EDP_PSR_AUX_CTL_BIT_CLOCK_2X_MASK;
+
+	intel_de_write(dev_priv, psr_aux_ctl_reg(dev_priv, cpu_transcoder),
+		       aux_ctl);
+}
+
 static void intel_psr_enable_sink(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
@@ -1318,6 +1373,13 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	u32 mask;
 
+	/*
+	 * Only HSW and BDW have PSR AUX registers that need to be setup.
+	 * SKL+ use hardcoded values PSR AUX transactions
+	 */
+	if (DISPLAY_VER(dev_priv) < 9)
+		hsw_psr_setup_aux(intel_dp);
+
 	/*
 	 * Per Spec: Avoid continuous PSR exit by masking MEMUP and HPD also
 	 * mask LPSP to avoid dependency on other drivers that might block
diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
index 998f638ee182..d39951383c92 100644
--- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
@@ -7,6 +7,7 @@
 #define __INTEL_PSR_REGS_H__
 
 #include "intel_display_reg_defs.h"
+#include "intel_dp_aux_regs.h"
 
 #define TRANS_EXITLINE(trans)	_MMIO_TRANS2((trans), _TRANS_EXITLINE_A)
 #define   EXITLINE_ENABLE	REG_BIT(31)
@@ -80,6 +81,17 @@
 #define   EDP_PSR_PRE_ENTRY(trans)	(TGL_PSR_PRE_ENTRY <<		\
 					 _EDP_PSR_TRANS_SHIFT(trans))
 
+#define HSW_SRD_AUX_CTL				_MMIO(0x64810)
+#define _SRD_AUX_CTL_A				0x60810
+#define _SRD_AUX_CTL_EDP			0x6f810
+#define EDP_PSR_AUX_CTL(tran)			_MMIO_TRANS2(tran, _SRD_AUX_CTL_A)
+#define   EDP_PSR_AUX_CTL_TIME_OUT_MASK		DP_AUX_CH_CTL_TIME_OUT_MASK
+#define   EDP_PSR_AUX_CTL_MESSAGE_SIZE_MASK	DP_AUX_CH_CTL_MESSAGE_SIZE_MASK
+#define   EDP_PSR_AUX_CTL_PRECHARGE_2US_MASK	DP_AUX_CH_CTL_PRECHARGE_2US_MASK
+#define   EDP_PSR_AUX_CTL_ERROR_INTERRUPT	REG_BIT(11)
+#define   EDP_PSR_AUX_CTL_BIT_CLOCK_2X_MASK	DP_AUX_CH_CTL_BIT_CLOCK_2X_MASK
+
+#define HSW_SRD_AUX_DATA(i)			_MMIO(0x64814 + (i) * 4) /* 5 registers */
 #define _SRD_AUX_DATA_A				0x60814
 #define _SRD_AUX_DATA_EDP			0x6f814
 #define EDP_PSR_AUX_DATA(tran, i)		_MMIO_TRANS2(tran, _SRD_AUX_DATA_A + (i) * 4) /* 5 registers */
-- 
2.39.3

