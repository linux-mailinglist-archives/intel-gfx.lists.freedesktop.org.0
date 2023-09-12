Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B39E79C4DB
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 06:49:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8053110E38D;
	Tue, 12 Sep 2023 04:48:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEF1610E2CF;
 Tue, 12 Sep 2023 04:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694494114; x=1726030114;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pNbIexoH09e9y6oMZ/exxPhyY2QcFLf9XFqWb2SzcuA=;
 b=GhGqF2XE2Uiq6URSKIqoIcWJhXVbcKRa/MT2ByNW9R7QsJUkJL842YR/
 3ztitY489NENWGhCZIm27qeGfwicA4QvU2Oy8i3QYDkgIL6cLjZ7NwxGR
 6zEHKjxQVPNZzBqNpj21GIckSHjgINrXRwtvmeHPFNRAt2a87teTYmsyS
 r2LTzs8PvW7X6uQlSs9jUKKFfXHQN1gwvLUg8CmLpgwe0GaEbrT5pG+OO
 bZw4oD6q2cH1wDGcwef9ihCzgKxAKHyLPqYLoVjtGTtwKUY5y6igXiMoi
 3kP6s5I8fcXymL7cvKfVCuErO0rjw7HDywvxpATV6ArZsyDdOlw1P4O+S Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="378182326"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="378182326"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 21:48:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="1074419950"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="1074419950"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 21:48:34 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Mon, 11 Sep 2023 21:48:22 -0700
Message-Id: <20230912044837.1672060-15-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230912044837.1672060-1-lucas.demarchi@intel.com>
References: <20230912044837.1672060-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 14/29] drm/i915/display: Use
 _PICK_EVEN_2RANGES() in DP AUX regs
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

XELPDP_DP_AUX_CH_CTL() and XELPDP_DP_AUX_CH_DATA() use 2 ranges. Prefer
using _PICK_EVEN_2RANGES() over PICK().

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_aux_regs.h  | 30 +++++++------------
 1 file changed, 10 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h b/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
index 4503d94115d7..1e9e018a2a48 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
@@ -19,18 +19,13 @@
 #define _DPB_AUX_CH_CTL			(DISPLAY_MMIO_BASE(dev_priv) + 0x64110)
 #define _XELPDP_USBC1_AUX_CH_CTL	0x16f210
 #define _XELPDP_USBC2_AUX_CH_CTL	0x16f410
-#define _XELPDP_USBC3_AUX_CH_CTL	0x16f610
-#define _XELPDP_USBC4_AUX_CH_CTL	0x16f810
 #define DP_AUX_CH_CTL(aux_ch)		_MMIO_PORT(aux_ch, _DPA_AUX_CH_CTL,	\
 						   _DPB_AUX_CH_CTL)
-#define XELPDP_DP_AUX_CH_CTL(aux_ch)	_MMIO(_PICK(aux_ch, \
-						    _DPA_AUX_CH_CTL, \
-						    _DPB_AUX_CH_CTL, \
-						    0, /* port/aux_ch C is non-existent */ \
-						    _XELPDP_USBC1_AUX_CH_CTL, \
-						    _XELPDP_USBC2_AUX_CH_CTL, \
-						    _XELPDP_USBC3_AUX_CH_CTL, \
-						    _XELPDP_USBC4_AUX_CH_CTL))
+#define XELPDP_DP_AUX_CH_CTL(aux_ch)						\
+		_MMIO(_PICK_EVEN_2RANGES(aux_ch, AUX_CH_USBC1,			\
+					 _DPA_AUX_CH_CTL, _DPB_AUX_CH_CTL,	\
+					 _XELPDP_USBC1_AUX_CH_CTL,		\
+					 _XELPDP_USBC2_AUX_CH_CTL))
 #define   DP_AUX_CH_CTL_SEND_BUSY		REG_BIT(31)
 #define   DP_AUX_CH_CTL_DONE			REG_BIT(30)
 #define   DP_AUX_CH_CTL_INTERRUPT		REG_BIT(29)
@@ -68,17 +63,12 @@
 #define _DPB_AUX_CH_DATA1		(DISPLAY_MMIO_BASE(dev_priv) + 0x64114)
 #define _XELPDP_USBC1_AUX_CH_DATA1	0x16f214
 #define _XELPDP_USBC2_AUX_CH_DATA1	0x16f414
-#define _XELPDP_USBC3_AUX_CH_DATA1	0x16f614
-#define _XELPDP_USBC4_AUX_CH_DATA1	0x16f814
 #define DP_AUX_CH_DATA(aux_ch, i)	_MMIO(_PORT(aux_ch, _DPA_AUX_CH_DATA1,	\
 						    _DPB_AUX_CH_DATA1) + (i) * 4) /* 5 registers */
-#define XELPDP_DP_AUX_CH_DATA(aux_ch, i)	_MMIO(_PICK(aux_ch, \
-							    _DPA_AUX_CH_DATA1, \
-							    _DPB_AUX_CH_DATA1, \
-							    0, /* port/aux_ch C is non-existent */ \
-							    _XELPDP_USBC1_AUX_CH_DATA1, \
-							    _XELPDP_USBC2_AUX_CH_DATA1, \
-							    _XELPDP_USBC3_AUX_CH_DATA1, \
-							    _XELPDP_USBC4_AUX_CH_DATA1) + (i) * 4)
+#define XELPDP_DP_AUX_CH_DATA(aux_ch, i)					\
+		_MMIO(_PICK_EVEN_2RANGES(aux_ch, AUX_CH_USBC1,			\
+					 _DPA_AUX_CH_DATA1, _DPB_AUX_CH_DATA1,	\
+					 _XELPDP_USBC1_AUX_CH_DATA1,		\
+					 _XELPDP_USBC2_AUX_CH_DATA1) + (i) * 4) /* 5 registers */
 
 #endif /* __INTEL_DP_AUX_REGS_H__ */
-- 
2.40.1

