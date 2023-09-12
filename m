Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B76579C4DA
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 06:49:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48B0F10E38C;
	Tue, 12 Sep 2023 04:48:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 085CC10E369;
 Tue, 12 Sep 2023 04:48:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694494115; x=1726030115;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RXQAD9xnpxsnSTA18+Ki+73n1pFbFg5JDewct68lyN8=;
 b=CSJvb4Ji7USRxCmeDg3jobcUbai437F45FMkP5iv9wc2wBs64WhAc1ok
 JRDJIR5QRlfFdBjLsNRNnYWruEv4kaCm9pYJb/o53jMC0ZyLvLz3C6X4M
 runRhoszyw/RhWO3RDOpw5JQk+XPShplCQzeMFYNRLDjBr/GjLA0GvoAk
 l5iBW+vQLCeqB//vWiRbNQ4Y3LHSkvufb4fKC4qtlVoV0phgqKcSfXNUA
 O9AsbCenrITQrpfuQJp0P/InkXm4VwYRGbPsbF7HaJAlLwgtKtV8BtCf3
 kEEtHxkCXBh21oFt5xsHq2fwdqnYBMDQLFSKEf9JYpzv7HvlJjI8ZZr7M Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="378182328"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="378182328"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 21:48:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="1074419953"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="1074419953"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 21:48:34 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Mon, 11 Sep 2023 21:48:23 -0700
Message-Id: <20230912044837.1672060-16-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230912044837.1672060-1-lucas.demarchi@intel.com>
References: <20230912044837.1672060-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 15/29] drm/i915/xe2lpd: Re-order DP AUX regs
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The address of CTL and DATA registers for DP AUX were changed in Xe2_LPD:
now they are all in a single range, with CH_A and CH_B coming right after
the USBC instances. Like was done when moving registers to PICA, use
a helper macro to remap the ch passed to an index that can be used to
calculate the right offset.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 .../i915/display/intel_display_power_well.c   |  6 +++---
 drivers/gpu/drm/i915/display/intel_dp_aux.c   |  8 ++++----
 .../gpu/drm/i915/display/intel_dp_aux_regs.h  | 19 +++++++++++++++++--
 3 files changed, 24 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 820b7d41a0a8..ca0714eba17a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -1800,7 +1800,7 @@ static void xelpdp_aux_power_well_enable(struct drm_i915_private *dev_priv,
 		icl_tc_port_assert_ref_held(dev_priv, power_well,
 					    aux_ch_to_digital_port(dev_priv, aux_ch));
 
-	intel_de_rmw(dev_priv, XELPDP_DP_AUX_CH_CTL(aux_ch),
+	intel_de_rmw(dev_priv, XELPDP_DP_AUX_CH_CTL(dev_priv, aux_ch),
 		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST,
 		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST);
 
@@ -1818,7 +1818,7 @@ static void xelpdp_aux_power_well_disable(struct drm_i915_private *dev_priv,
 {
 	enum aux_ch aux_ch = i915_power_well_instance(power_well)->xelpdp.aux_ch;
 
-	intel_de_rmw(dev_priv, XELPDP_DP_AUX_CH_CTL(aux_ch),
+	intel_de_rmw(dev_priv, XELPDP_DP_AUX_CH_CTL(dev_priv, aux_ch),
 		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST,
 		     0);
 	usleep_range(10, 30);
@@ -1829,7 +1829,7 @@ static bool xelpdp_aux_power_well_enabled(struct drm_i915_private *dev_priv,
 {
 	enum aux_ch aux_ch = i915_power_well_instance(power_well)->xelpdp.aux_ch;
 
-	return intel_de_read(dev_priv, XELPDP_DP_AUX_CH_CTL(aux_ch)) &
+	return intel_de_read(dev_priv, XELPDP_DP_AUX_CH_CTL(dev_priv, aux_ch)) &
 		XELPDP_DP_AUX_CH_CTL_POWER_STATUS;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 2d173bd495a3..b90cad7f567b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -687,10 +687,10 @@ static i915_reg_t xelpdp_aux_ctl_reg(struct intel_dp *intel_dp)
 	case AUX_CH_USBC2:
 	case AUX_CH_USBC3:
 	case AUX_CH_USBC4:
-		return XELPDP_DP_AUX_CH_CTL(aux_ch);
+		return XELPDP_DP_AUX_CH_CTL(dev_priv, aux_ch);
 	default:
 		MISSING_CASE(aux_ch);
-		return XELPDP_DP_AUX_CH_CTL(AUX_CH_A);
+		return XELPDP_DP_AUX_CH_CTL(dev_priv, AUX_CH_A);
 	}
 }
 
@@ -707,10 +707,10 @@ static i915_reg_t xelpdp_aux_data_reg(struct intel_dp *intel_dp, int index)
 	case AUX_CH_USBC2:
 	case AUX_CH_USBC3:
 	case AUX_CH_USBC4:
-		return XELPDP_DP_AUX_CH_DATA(aux_ch, index);
+		return XELPDP_DP_AUX_CH_DATA(dev_priv, aux_ch, index);
 	default:
 		MISSING_CASE(aux_ch);
-		return XELPDP_DP_AUX_CH_DATA(AUX_CH_A, index);
+		return XELPDP_DP_AUX_CH_DATA(dev_priv, AUX_CH_A, index);
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h b/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
index 1e9e018a2a48..b4e96baae25a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
@@ -14,6 +14,13 @@
  * registers
  */
 
+/*
+ * Wrapper macro to convert from aux_ch to the index used in some of the
+ * registers, similarly to __xe2lpd_port_idx().
+ */
+#define __xe2lpd_aux_ch_idx(aux_ch)						\
+       (aux_ch >= AUX_CH_USBC1 ? aux_ch : AUX_CH_USBC4 + 1 + aux_ch - AUX_CH_A)
+
 /* TODO: Remove implicit dev_priv */
 #define _DPA_AUX_CH_CTL			(DISPLAY_MMIO_BASE(dev_priv) + 0x64010)
 #define _DPB_AUX_CH_CTL			(DISPLAY_MMIO_BASE(dev_priv) + 0x64110)
@@ -21,11 +28,15 @@
 #define _XELPDP_USBC2_AUX_CH_CTL	0x16f410
 #define DP_AUX_CH_CTL(aux_ch)		_MMIO_PORT(aux_ch, _DPA_AUX_CH_CTL,	\
 						   _DPB_AUX_CH_CTL)
-#define XELPDP_DP_AUX_CH_CTL(aux_ch)						\
+#define _XELPDP_DP_AUX_CH_CTL(aux_ch)						\
 		_MMIO(_PICK_EVEN_2RANGES(aux_ch, AUX_CH_USBC1,			\
 					 _DPA_AUX_CH_CTL, _DPB_AUX_CH_CTL,	\
 					 _XELPDP_USBC1_AUX_CH_CTL,		\
 					 _XELPDP_USBC2_AUX_CH_CTL))
+#define XELPDP_DP_AUX_CH_CTL(i915__, aux_ch)					\
+		(DISPLAY_VER(i915__) >= 20 ?					\
+		 _XELPDP_DP_AUX_CH_CTL(__xe2lpd_aux_ch_idx(aux_ch)) :		\
+		 _XELPDP_DP_AUX_CH_CTL(aux_ch))
 #define   DP_AUX_CH_CTL_SEND_BUSY		REG_BIT(31)
 #define   DP_AUX_CH_CTL_DONE			REG_BIT(30)
 #define   DP_AUX_CH_CTL_INTERRUPT		REG_BIT(29)
@@ -65,10 +76,14 @@
 #define _XELPDP_USBC2_AUX_CH_DATA1	0x16f414
 #define DP_AUX_CH_DATA(aux_ch, i)	_MMIO(_PORT(aux_ch, _DPA_AUX_CH_DATA1,	\
 						    _DPB_AUX_CH_DATA1) + (i) * 4) /* 5 registers */
-#define XELPDP_DP_AUX_CH_DATA(aux_ch, i)					\
+#define _XELPDP_DP_AUX_CH_DATA(aux_ch, i)					\
 		_MMIO(_PICK_EVEN_2RANGES(aux_ch, AUX_CH_USBC1,			\
 					 _DPA_AUX_CH_DATA1, _DPB_AUX_CH_DATA1,	\
 					 _XELPDP_USBC1_AUX_CH_DATA1,		\
 					 _XELPDP_USBC2_AUX_CH_DATA1) + (i) * 4) /* 5 registers */
+#define XELPDP_DP_AUX_CH_DATA(i915__, aux_ch, i)				\
+		(DISPLAY_VER(i915__) >= 20 ?					\
+		 _XELPDP_DP_AUX_CH_DATA(__xe2lpd_aux_ch_idx(aux_ch), i) :	\
+		 _XELPDP_DP_AUX_CH_DATA(aux_ch, i))
 
 #endif /* __INTEL_DP_AUX_REGS_H__ */
-- 
2.40.1

