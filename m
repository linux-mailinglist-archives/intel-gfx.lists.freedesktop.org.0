Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 941A37A2519
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 19:47:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3011810E672;
	Fri, 15 Sep 2023 17:47:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3133810E663;
 Fri, 15 Sep 2023 17:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694800012; x=1726336012;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NuWfjRfZC5wYjbno3Znq8GXQ4djM6zBw7HRp3/pRgrI=;
 b=Z3sLkVGu80o0amh8gh0Y2ETooLin3sjx4F+LMz/gflpraVwARN3Nl2/O
 X2dCEKDuCuzckUPRAHI+ZOFhhrJJLXugN5Sv+h0F/KUQZZdPknEib9ZxH
 KEZclpzGHPLVJ3F8pq24AWnT1iB+m8xWAX+Fd07/vuiw/ouM39jqm7yRj
 oNTKMqLGuXAsRw6YbSaApA3i/PJmh+z9cS9JXnkQRCgXfdW66k0JxRkQa
 VvF7r2rxwMvwpmtN8h2sOYAypqw55cgxGMpmpqpYJrBUWTHeKrUmoxQpR
 +yIIKc6zmoU9DD2bCs2sa3+REtZ2mQihKPqNgjyTvKW3eh7zYdg2jVs4X A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="445779275"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="445779275"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 10:46:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="868818278"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="868818278"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 10:46:50 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Sep 2023 10:46:37 -0700
Message-Id: <20230915174651.1928176-17-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230915174651.1928176-1-lucas.demarchi@intel.com>
References: <20230915174651.1928176-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 16/30] drm/i915/xe2lpd: Re-order DP AUX regs
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
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The address of CTL and DATA registers for DP AUX were changed in Xe2_LPD:
now they are all in a single range, with CH_A and CH_B coming right after
the USBC instances. Like was done when moving registers to PICA, use
a helper macro to remap the ch passed to an index that can be used to
calculate the right offset.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
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
index 1e9e018a2a48..9d141e86a4b6 100644
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
+	(aux_ch >= AUX_CH_USBC1 ? aux_ch : AUX_CH_USBC4 + 1 + aux_ch - AUX_CH_A)
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

