Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 65873376EAE
	for <lists+intel-gfx@lfdr.de>; Sat,  8 May 2021 04:29:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 474056E839;
	Sat,  8 May 2021 02:28:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19E976E82B
 for <intel-gfx@lists.freedesktop.org>; Sat,  8 May 2021 02:28:32 +0000 (UTC)
IronPort-SDR: en16i21BOwhnLw+1Ilsg1BE5sD8JofrIxknQHNLy5EO/qfEBNDlG2l6qwTJSnp+/M1C0e6qRZi
 v/8CXdn5UXvg==
X-IronPort-AV: E=McAfee;i="6200,9189,9977"; a="284317026"
X-IronPort-AV: E=Sophos;i="5.82,282,1613462400"; d="scan'208";a="284317026"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2021 19:28:30 -0700
IronPort-SDR: LEGtTjC6huyksZId0nXpzC74rkUsiLcxT2cwl/0HkzI+nuJql9ud8fyvgAGwHd6zv9MCgHSzZ9
 vMsTF7J8yxeA==
X-IronPort-AV: E=Sophos;i="5.82,282,1613462400"; d="scan'208";a="533910148"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2021 19:28:29 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  7 May 2021 19:28:08 -0700
Message-Id: <20210508022820.780227-37-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210508022820.780227-1-matthew.d.roper@intel.com>
References: <20210508022820.780227-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 36/48] drm/i915/adl_p: Enable/disable loadgen
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
index bbfa5bcd4c63..6889be6b9e81 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -1470,6 +1470,14 @@ tgl_dkl_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
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
index 9a52711e3920..3afbea20bdd3 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -10893,6 +10893,7 @@ enum skl_power_gate {
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
