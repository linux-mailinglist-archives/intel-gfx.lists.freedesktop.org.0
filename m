Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7AB73FFC4
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jun 2023 17:33:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1B2010E010;
	Tue, 27 Jun 2023 15:33:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2C0D10E010
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jun 2023 15:33:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687880018; x=1719416018;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=H14LhKggDqq07ZHOCFgjcsPo1pK2eY02Fv8VQkdvgCU=;
 b=IROSIJIBsVVhArWHSjLhBLaPbmymEEMwC678Uz7qLp6hUakjFLCouH0N
 wGLumyyLRvV7TMCsOFy0YoqjZH00ia5//4Z5A1o++63HK4u1ZuIvo7l3Q
 FhUYbTVNgYiwrCe28RcVinS7GjHMmOYacAYykcG8skrogH7gJdUaKoARh
 28ak37hhGgp1pCpxncvJYfkuk6mPWr0MBR8B7jMN2kEsF6tK+Zh1g+4Y9
 31OKNxTHF8gIW28VmhPR5YSnpWWgppxdLrbzMEOR8C3g6nUPdy3eik4iN
 5TQJFKwL3ms4V7e3Eonqnc6gHrouxeKf9mhqo1IYer8wE/pABrvh4RODG A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10754"; a="351386312"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="351386312"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2023 08:33:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10754"; a="806533244"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="806533244"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by FMSMGA003.fm.intel.com with ESMTP; 27 Jun 2023 08:33:37 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Jun 2023 21:04:51 +0530
Message-Id: <20230627153451.2834196-2-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230627153451.2834196-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20230627153451.2834196-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/1] drm/i915/display: HDMI2.0/DP1p62Gbps skew
 violation when there is skew between DL PCLK
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

When doing type-C PHY voltage swing programming for HDMI and
DP 1.62Gbps, program DKLP_PCS_GLUE_TX_DPCNTL2[loadgen_sharing_pmd_disable]
to '1'. For other DP frequencies, program
DKLP_PCS_GLUE_TX_DPCNTL2[loadgen_sharing_pmd_disable] to '0'.

This Workaround is specific to Display Version 13

Wa_15010727533

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 13 +++++++++++++
 drivers/gpu/drm/i915/i915_reg.h          |  6 ++++++
 2 files changed, 19 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 61722556bb47..5a6f048f4f1c 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -1362,6 +1362,19 @@ static void tgl_dkl_phy_set_signal_levels(struct intel_encoder *encoder,
 		intel_dkl_phy_rmw(dev_priv, DKL_TX_DPCNTL2(tc_port, ln),
 				  DKL_TX_DP20BITMODE, 0);
 
+		if (DISPLAY_VER(dev_priv) == 13) {
+			if ((crtc_state->port_clock == 594000 &&
+			    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) ||
+			    (crtc_state->port_clock == 162000 &&
+			    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP))) {
+				intel_de_rmw(dev_priv, DKLP_TX_DPCNTL2(tc_port),
+					     LOADGEN_SHARING_PMD_DISABLE, 1);
+			} else {
+				intel_de_rmw(dev_priv, DKLP_TX_DPCNTL2(tc_port),
+					     LOADGEN_SHARING_PMD_DISABLE, 0);
+			}
+		}
+
 		if (IS_ALDERLAKE_P(dev_priv)) {
 			u32 val;
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index dcf64e32cd54..5487301d4ad3 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6663,4 +6663,10 @@ enum skl_power_gate {
 
 #define MTL_MEDIA_GSI_BASE		0x380000
 
+#define _DKLP_PCS_GLUE_TX_DPCNTL2	0xB68
+#define LOADGEN_SHARING_PMD_DISABLE	REG_BIT(2)
+#define DKLP_TX_DPCNTL2(tc_port)	_MMIO(_PORT(tc_port, \
+						    _DKL_PHY1_BASE, \
+						    _DKL_PHY2_BASE) + \
+						    _DKLP_PCS_GLUE_TX_DPCNTL2)
 #endif /* _I915_REG_H_ */
-- 
2.25.1

