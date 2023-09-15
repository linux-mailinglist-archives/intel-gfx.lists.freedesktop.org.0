Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E1A27A2526
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 19:47:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6845A10E66C;
	Fri, 15 Sep 2023 17:47:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 182C510E66C;
 Fri, 15 Sep 2023 17:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694800012; x=1726336012;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=y16Me9rxASa/rjQdysCxEZ6OaCLJB6U9N+r8onE04SY=;
 b=Q6fUkqGcf6mIgH+/vaS0y316ZFrRWsoKM5iCAw6hto/PG+Cl4IcTaHs/
 KIHkco4WUg5KLDW9yVdUOKk4qQhLFJoXv/vdFz9yWQU/NqGDE6LDvIZzt
 IOfr4LFtCSk/ZDqDK1RTuOaLM1ZhNlZeh0bhqZeSuWKRiqEZj66Wa54ih
 o2UDtZmLbByArrcOzwB+0/OtL7ZUSv2f1uSI8xO+FNwzIqYnBAz7Bcmgm
 CncyTvPNkOTlWefnoDaliiy0y8vAwydvhZAl1MWvx5a546qGMEY85xOzr
 0zRM/yv4gJjzrEIwGnNuJ0/Lsn4ioYj2fOBKOvKuNItLLXE84VyL6X9wg g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="445779274"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="445779274"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 10:46:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="868818275"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="868818275"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 10:46:50 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Sep 2023 10:46:36 -0700
Message-Id: <20230915174651.1928176-16-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230915174651.1928176-1-lucas.demarchi@intel.com>
References: <20230915174651.1928176-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 15/30] drm/i915/display: Use
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
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

XELPDP_DP_AUX_CH_CTL() and XELPDP_DP_AUX_CH_DATA() use 2 ranges. Prefer
using _PICK_EVEN_2RANGES() over PICK().

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
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

