Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 361A1380D63
	for <lists+intel-gfx@lfdr.de>; Fri, 14 May 2021 17:37:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96ECA6F38F;
	Fri, 14 May 2021 15:37:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C467E6F381
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 May 2021 15:37:21 +0000 (UTC)
IronPort-SDR: V0B/2xTcvylrv2amLqdCIKR9jj9qMKoUHgW1WJ9FYWB+LP/LFkOFphmExnmhPQCMUAcDFnAMvR
 5gWaQeizmBTw==
X-IronPort-AV: E=McAfee;i="6200,9189,9984"; a="200243927"
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="200243927"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 08:37:19 -0700
IronPort-SDR: sj0Iu3DyK/u6XvL8AoCWdAlzDjmzCPn4x8K3bMMCQKQ4dA5Kr4dXy1oVR4EbvUhv0oIHTjqbGH
 mySYro/tF7Og==
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="610796579"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 08:37:18 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 May 2021 08:37:04 -0700
Message-Id: <20210514153711.2359617-13-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210514153711.2359617-1-matthew.d.roper@intel.com>
References: <20210514153711.2359617-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 12/19] drm/i915/adl_p: Enable/disable loadgen
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
Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 8 ++++++++
 drivers/gpu/drm/i915/i915_reg.h          | 1 +
 2 files changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index b0ea08136118..feda6a4fb9d0 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -1459,6 +1459,14 @@ tgl_dkl_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
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
index 02910d0299ba..31bc413dbba1 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -10831,6 +10831,7 @@ enum skl_power_gate {
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
