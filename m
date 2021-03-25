Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4720434991F
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Mar 2021 19:08:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F8646EE06;
	Thu, 25 Mar 2021 18:08:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DDAE6EDDA
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Mar 2021 18:07:35 +0000 (UTC)
IronPort-SDR: NqSRV8IWL8+eZz5PfO9aV220Stj58EOgIzzRPzTjx8oad8QHiSrABHizGhGEkuA0ZsKmryGdxJ
 cZaKh1gf8oEw==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="178112564"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="178112564"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 11:07:35 -0700
IronPort-SDR: TChAhauhw5+7CYuEqqDfEtQaKmw6De0Y+RtOKO2u1xD3LSClZ+K3zBF18RG1hy/NQsE0+5VgTu
 D9QkAeB9pBgg==
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="453176721"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 11:07:34 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Mar 2021 11:07:09 -0700
Message-Id: <20210325180720.401410-40-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210325180720.401410-1-matthew.d.roper@intel.com>
References: <20210325180720.401410-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 39/50] drm/i915/adl_p: Enable/disable loadgen
 sharing
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
Cc: me@freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Mika Kahola <mika.kahola@intel.com>

Disable loadgen sharing for DP link rate 1.62 GHz and HDMI 5.94 GHz.
For all other modes, we can enable loadgen sharing feature.

BSpec: 55359

Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Clinton Taylor <Clinton.A.Taylor@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 8 ++++++++
 drivers/gpu/drm/i915/i915_reg.h          | 1 +
 2 files changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 1a5213447db1..d58f6d297a2f 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -1460,6 +1460,14 @@ tgl_dkl_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
 		val = intel_de_read(dev_priv, DKL_TX_DPCNTL2(tc_port));
 		val &= ~DKL_TX_DP20BITMODE;
 		intel_de_write(dev_priv, DKL_TX_DPCNTL2(tc_port), val);
+
+		if ((intel_crtc_has_dp_encoder(crtc_state) &&
+		    crtc_state->port_clock == 162000) ||
+		    (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) &&
+		    crtc_state->port_clock == 594000))
+			val |= DKL_TX_LOADGEN_SHARING_PMD_DISABLE;
+		else
+			val &= ~DKL_TX_LOADGEN_SHARING_PMD_DISABLE;
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index f25f68f3b2f4..393071cde6d4 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -10887,6 +10887,7 @@ enum skl_power_gate {
 						     _DKL_TX_DPCNTL1)
 
 #define _DKL_TX_DPCNTL2				0x2C8
+#define  DKL_TX_LOADGEN_SHARING_PMD_DISABLE            REG_BIT(12)
 #define  DKL_TX_DP20BITMODE				(1 << 2)
 #define DKL_TX_DPCNTL2(tc_port) _MMIO(_PORT(tc_port, \
 						     _DKL_PHY1_BASE, \
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
