Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D52433809C
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 23:37:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 411266EF21;
	Thu, 11 Mar 2021 22:36:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 417256EEB1
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 22:36:50 +0000 (UTC)
IronPort-SDR: ntyA4+A+OotbJG+xg/L8LVPIZ82iUFuyOMzbBo8HxOimxf3rt4L/iS7uvzCzKHvBNoHgpN3YhC
 Wv3qm495w+sw==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="250116455"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="250116455"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 14:36:47 -0800
IronPort-SDR: HpCp5dnPKpk/Ro/SApMKYwVey91MIrnRpXP44gPP8OI6Qe2fftD6R9iQzrY4o5MsbglhSwKdHW
 HOq0XMm0gBsQ==
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="438852785"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 14:36:45 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Mar 2021 14:36:21 -0800
Message-Id: <20210311223632.3191939-46-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210311223632.3191939-1-matthew.d.roper@intel.com>
References: <20210311223632.3191939-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 45/56] drm/i915/adl_p: Enable/disable loadgen
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
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 8 ++++++++
 drivers/gpu/drm/i915/i915_reg.h          | 1 +
 2 files changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 7a2a5c92899b..f97d6c488fcd 100644
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
index 0adde69a60f4..275fd4b5c549 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -10866,6 +10866,7 @@ enum skl_power_gate {
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
