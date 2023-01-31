Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 05DC468366C
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Jan 2023 20:23:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A15B10E389;
	Tue, 31 Jan 2023 19:23:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B322410E389
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Jan 2023 19:23:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675192990; x=1706728990;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SuQ2mf4ChhHzLFuDXcd4UvESIt1p0Yz8Z9GrubkIxl8=;
 b=CJNuXYy30zHLydOyK3tBln6zIALLrPACOO4tVAG29zVOjObmuFIQh8L1
 kWIHQLDf4yXKqKrr0XNsJ9BY4CXGBVX+pIzDDrVknc5yangQ5rneVt7DX
 VvTeUE9xUK8T7VQxLabcoYfbz3+023P+2sPSGMVdFRKNKYrhDSHdIDKLZ
 uSH0Fgqa5HQnPxSFQt3TwCru2gmqYLH00Q2NvA3n1zx7r9I327lNvnswF
 WzUzs6n3y/QBacdgbfPB8l1eSINcOz2fEn5o4mcifVcAHadaAMOnFatlb
 TUKXi0B5YT27GJrGvR5kwmPxlCs/SiSLXMhgIMtnYrzLxUl84G+QB0jYx Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="330039384"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="330039384"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 11:22:56 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="773113404"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="773113404"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 11:22:56 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 Jan 2023 11:15:42 -0800
Message-Id: <20230131191542.1695398-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230131191542.1695398-1-lucas.demarchi@intel.com>
References: <20230131191542.1695398-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Move common mmio base out of
 private macros
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Instead of using the common DISPLAY_MMIO_BASE(dev_priv) in all single
macros, only use them in the macros that are to be used outside the
header. This reduces the use of the implicit dev_priv, making it easier
to remove it later.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 73 ++++++++++++++++++---------------
 1 file changed, 39 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 943db8ec63f8..1cde3bcb9c88 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1182,9 +1182,9 @@
 #define PM_VEBOX_CS_ERROR_INTERRUPT		(1 << 12) /* hsw+ */
 #define PM_VEBOX_USER_INTERRUPT			(1 << 10) /* hsw+ */
 
-#define GT_PARITY_ERROR(dev_priv) \
+#define GT_PARITY_ERROR(__i915) \
 	(GT_RENDER_L3_PARITY_ERROR_INTERRUPT | \
-	 (IS_HASWELL(dev_priv) ? GT_RENDER_L3_PARITY_ERROR_INTERRUPT_S1 : 0))
+	 (IS_HASWELL(__i915) ? GT_RENDER_L3_PARITY_ERROR_INTERRUPT_S1 : 0))
 
 /* These are all the "old" interrupts */
 #define ILK_BSD_USER_INTERRUPT				(1 << 5)
@@ -1403,10 +1403,11 @@
 /*
  * Clock control & power management
  */
-#define _DPLL_A (DISPLAY_MMIO_BASE(dev_priv) + 0x6014)
-#define _DPLL_B (DISPLAY_MMIO_BASE(dev_priv) + 0x6018)
-#define _CHV_DPLL_C (DISPLAY_MMIO_BASE(dev_priv) + 0x6030)
-#define DPLL(pipe) _MMIO_PIPE3((pipe), _DPLL_A, _DPLL_B, _CHV_DPLL_C)
+#define _DPLL_A		0x6014
+#define _DPLL_B		0x6018
+#define _CHV_DPLL_C	0x6030
+#define DPLL(pipe) _MMIO(DISPLAY_MMIO_BASE(dev_priv) + \
+			 _PIPE3((pipe), _DPLL_A, _DPLL_B, _CHV_DPLL_C))
 
 #define VGA0	_MMIO(0x6000)
 #define VGA1	_MMIO(0x6004)
@@ -1502,10 +1503,11 @@
 #define   SDVO_MULTIPLIER_SHIFT_HIRES		4
 #define   SDVO_MULTIPLIER_SHIFT_VGA		0
 
-#define _DPLL_A_MD (DISPLAY_MMIO_BASE(dev_priv) + 0x601c)
-#define _DPLL_B_MD (DISPLAY_MMIO_BASE(dev_priv) + 0x6020)
-#define _CHV_DPLL_C_MD (DISPLAY_MMIO_BASE(dev_priv) + 0x603c)
-#define DPLL_MD(pipe) _MMIO_PIPE3((pipe), _DPLL_A_MD, _DPLL_B_MD, _CHV_DPLL_C_MD)
+#define _DPLL_A_MD				0x601c
+#define _DPLL_B_MD				0x6020
+#define _CHV_DPLL_C_MD				0x603c
+#define DPLL_MD(pipe) _MMIO(DISPLAY_MMIO_BASE(dev_priv) + \
+			    _PIPE3((pipe), _DPLL_A_MD, _DPLL_B_MD, _CHV_DPLL_C_MD))
 
 /*
  * UDI pixel divider, controlling how many pixels are stuffed into a packet.
@@ -3323,42 +3325,45 @@
  * is 20 bytes in each direction, hence the 5 fixed
  * data registers
  */
-#define _DPA_AUX_CH_CTL		(DISPLAY_MMIO_BASE(dev_priv) + 0x64010)
-#define _DPA_AUX_CH_DATA1	(DISPLAY_MMIO_BASE(dev_priv) + 0x64014)
-
-#define _DPB_AUX_CH_CTL		(DISPLAY_MMIO_BASE(dev_priv) + 0x64110)
-#define _DPB_AUX_CH_DATA1	(DISPLAY_MMIO_BASE(dev_priv) + 0x64114)
-
-#define DP_AUX_CH_CTL(aux_ch)	_MMIO_PORT(aux_ch, _DPA_AUX_CH_CTL, _DPB_AUX_CH_CTL)
-#define DP_AUX_CH_DATA(aux_ch, i)	_MMIO(_PORT(aux_ch, _DPA_AUX_CH_DATA1, _DPB_AUX_CH_DATA1) + (i) * 4) /* 5 registers */
+#define _DPA_AUX_CH_CTL		0x64010
+#define _DPA_AUX_CH_DATA1	0x64014
+#define _DPB_AUX_CH_CTL		0x64110
+#define _DPB_AUX_CH_DATA1	0x64114
+#define DP_AUX_CH_CTL(aux_ch)	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + \
+				      _PORT(aux_ch, _DPA_AUX_CH_CTL, _DPB_AUX_CH_CTL))
+#define DP_AUX_CH_DATA(aux_ch, i)		\
+	_MMIO(DISPLAY_MMIO_BASE(dev_priv) +	\
+	      _PORT(aux_ch, _DPA_AUX_CH_DATA1, _DPB_AUX_CH_DATA1) + (i) * 4) /* 5 registers */
 
 #define _XELPDP_USBC1_AUX_CH_CTL	0x16F210
 #define _XELPDP_USBC2_AUX_CH_CTL	0x16F410
 #define _XELPDP_USBC3_AUX_CH_CTL	0x16F610
 #define _XELPDP_USBC4_AUX_CH_CTL	0x16F810
 
-#define XELPDP_DP_AUX_CH_CTL(aux_ch)		_MMIO(_PICK(aux_ch, \
-						       _DPA_AUX_CH_CTL, \
-						       _DPB_AUX_CH_CTL, \
-						       0, /* port/aux_ch C is non-existent */ \
-						       _XELPDP_USBC1_AUX_CH_CTL, \
-						       _XELPDP_USBC2_AUX_CH_CTL, \
-						       _XELPDP_USBC3_AUX_CH_CTL, \
-						       _XELPDP_USBC4_AUX_CH_CTL))
+#define XELPDP_DP_AUX_CH_CTL(aux_ch)		_MMIO(DISPLAY_MMIO_BASE(dev_priv) + \
+						      _PICK(aux_ch, \
+							    _DPA_AUX_CH_CTL, \
+							    _DPB_AUX_CH_CTL, \
+							    0, /* port/aux_ch C is non-existent */ \
+							    _XELPDP_USBC1_AUX_CH_CTL, \
+							    _XELPDP_USBC2_AUX_CH_CTL, \
+							    _XELPDP_USBC3_AUX_CH_CTL, \
+							    _XELPDP_USBC4_AUX_CH_CTL))
 
 #define _XELPDP_USBC1_AUX_CH_DATA1      0x16F214
 #define _XELPDP_USBC2_AUX_CH_DATA1      0x16F414
 #define _XELPDP_USBC3_AUX_CH_DATA1      0x16F614
 #define _XELPDP_USBC4_AUX_CH_DATA1      0x16F814
 
-#define XELPDP_DP_AUX_CH_DATA(aux_ch, i)	_MMIO(_PICK(aux_ch, \
-						       _DPA_AUX_CH_DATA1, \
-						       _DPB_AUX_CH_DATA1, \
-						       0, /* port/aux_ch C is non-existent */ \
-						       _XELPDP_USBC1_AUX_CH_DATA1, \
-						       _XELPDP_USBC2_AUX_CH_DATA1, \
-						       _XELPDP_USBC3_AUX_CH_DATA1, \
-						       _XELPDP_USBC4_AUX_CH_DATA1) + (i) * 4)
+#define XELPDP_DP_AUX_CH_DATA(aux_ch, i)	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + \
+						      _PICK(aux_ch, \
+							    _DPA_AUX_CH_DATA1, \
+							    _DPB_AUX_CH_DATA1, \
+							    0, /* port/aux_ch C is non-existent */ \
+							    _XELPDP_USBC1_AUX_CH_DATA1, \
+							    _XELPDP_USBC2_AUX_CH_DATA1, \
+							    _XELPDP_USBC3_AUX_CH_DATA1, \
+							    _XELPDP_USBC4_AUX_CH_DATA1) + (i) * 4)
 
 #define   DP_AUX_CH_CTL_SEND_BUSY	    (1 << 31)
 #define   DP_AUX_CH_CTL_DONE		    (1 << 30)
-- 
2.39.0

