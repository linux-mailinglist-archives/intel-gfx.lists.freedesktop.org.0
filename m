Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 917BE7A251C
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 19:47:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B163110E677;
	Fri, 15 Sep 2023 17:47:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02EC610E666;
 Fri, 15 Sep 2023 17:46:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694800012; x=1726336012;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9F3XiNUkwCaukAOGoYtVt9jLpiB9hXtCMGjjb+wuG6E=;
 b=SJ+VI+ZCJK8j0KvaUAszNso62Qf5Gg1iTisa82cE8Z/WCGs+do+t+fKg
 6cTJMY5+XWkeuczOtKHWs0S431iM3KY2sn5jzazFD5cjZ39djq12r6GWI
 sOUQlXZErwCOumdIGko6lN0DrjWTqrx02eSnUTNSgEdl8uqSrssJLphZa
 hxjtZGGkvTZjFRDAIpn4eQbPifzGbIRnrdsWUAWz4EaPl0YEHHTXmIRg/
 89e6CJDEM/NvcwHrIq8WS3kO4rR/VX5LJ9P/iHlHLXlnum1NtdrwKIQJp
 OZVEnBN3RkkRrC1DHpn8NZMfzPljVTKIVkwcnssOh8sKj9ZUrG3pC2+2t Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="445779273"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="445779273"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 10:46:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="868818272"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="868818272"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 10:46:50 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Sep 2023 10:46:35 -0700
Message-Id: <20230915174651.1928176-15-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230915174651.1928176-1-lucas.demarchi@intel.com>
References: <20230915174651.1928176-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 14/30] drm/i915/display: Fix style and
 conventions for DP AUX regs
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

Fix some whitespace issues for register definitions and keep the defines
for DP_AUX_CH_CTL and DP_AUX_CH_DATA in the right place: together with
the bit definition.

While at it add a TODO entry that those defines shouldn't be using an
implicit dev_priv.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_aux_regs.h  | 72 +++++++++----------
 1 file changed, 35 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h b/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
index 5185345277c7..4503d94115d7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
@@ -13,48 +13,28 @@
  * packet size supported is 20 bytes in each direction, hence the 5 fixed data
  * registers
  */
-#define _DPA_AUX_CH_CTL		(DISPLAY_MMIO_BASE(dev_priv) + 0x64010)
-#define _DPA_AUX_CH_DATA1	(DISPLAY_MMIO_BASE(dev_priv) + 0x64014)
-
-#define _DPB_AUX_CH_CTL		(DISPLAY_MMIO_BASE(dev_priv) + 0x64110)
-#define _DPB_AUX_CH_DATA1	(DISPLAY_MMIO_BASE(dev_priv) + 0x64114)
-
-#define DP_AUX_CH_CTL(aux_ch)	_MMIO_PORT(aux_ch, _DPA_AUX_CH_CTL, _DPB_AUX_CH_CTL)
-#define DP_AUX_CH_DATA(aux_ch, i)	_MMIO(_PORT(aux_ch, _DPA_AUX_CH_DATA1, _DPB_AUX_CH_DATA1) + (i) * 4) /* 5 registers */
-
-#define _XELPDP_USBC1_AUX_CH_CTL	0x16F210
-#define _XELPDP_USBC2_AUX_CH_CTL	0x16F410
-#define _XELPDP_USBC3_AUX_CH_CTL	0x16F610
-#define _XELPDP_USBC4_AUX_CH_CTL	0x16F810
-
-#define XELPDP_DP_AUX_CH_CTL(aux_ch)		_MMIO(_PICK(aux_ch, \
-						       _DPA_AUX_CH_CTL, \
-						       _DPB_AUX_CH_CTL, \
-						       0, /* port/aux_ch C is non-existent */ \
-						       _XELPDP_USBC1_AUX_CH_CTL, \
-						       _XELPDP_USBC2_AUX_CH_CTL, \
-						       _XELPDP_USBC3_AUX_CH_CTL, \
-						       _XELPDP_USBC4_AUX_CH_CTL))
-
-#define _XELPDP_USBC1_AUX_CH_DATA1      0x16F214
-#define _XELPDP_USBC2_AUX_CH_DATA1      0x16F414
-#define _XELPDP_USBC3_AUX_CH_DATA1      0x16F614
-#define _XELPDP_USBC4_AUX_CH_DATA1      0x16F814
-
-#define XELPDP_DP_AUX_CH_DATA(aux_ch, i)	_MMIO(_PICK(aux_ch, \
-						       _DPA_AUX_CH_DATA1, \
-						       _DPB_AUX_CH_DATA1, \
-						       0, /* port/aux_ch C is non-existent */ \
-						       _XELPDP_USBC1_AUX_CH_DATA1, \
-						       _XELPDP_USBC2_AUX_CH_DATA1, \
-						       _XELPDP_USBC3_AUX_CH_DATA1, \
-						       _XELPDP_USBC4_AUX_CH_DATA1) + (i) * 4)
 
+/* TODO: Remove implicit dev_priv */
+#define _DPA_AUX_CH_CTL			(DISPLAY_MMIO_BASE(dev_priv) + 0x64010)
+#define _DPB_AUX_CH_CTL			(DISPLAY_MMIO_BASE(dev_priv) + 0x64110)
+#define _XELPDP_USBC1_AUX_CH_CTL	0x16f210
+#define _XELPDP_USBC2_AUX_CH_CTL	0x16f410
+#define _XELPDP_USBC3_AUX_CH_CTL	0x16f610
+#define _XELPDP_USBC4_AUX_CH_CTL	0x16f810
+#define DP_AUX_CH_CTL(aux_ch)		_MMIO_PORT(aux_ch, _DPA_AUX_CH_CTL,	\
+						   _DPB_AUX_CH_CTL)
+#define XELPDP_DP_AUX_CH_CTL(aux_ch)	_MMIO(_PICK(aux_ch, \
+						    _DPA_AUX_CH_CTL, \
+						    _DPB_AUX_CH_CTL, \
+						    0, /* port/aux_ch C is non-existent */ \
+						    _XELPDP_USBC1_AUX_CH_CTL, \
+						    _XELPDP_USBC2_AUX_CH_CTL, \
+						    _XELPDP_USBC3_AUX_CH_CTL, \
+						    _XELPDP_USBC4_AUX_CH_CTL))
 #define   DP_AUX_CH_CTL_SEND_BUSY		REG_BIT(31)
 #define   DP_AUX_CH_CTL_DONE			REG_BIT(30)
 #define   DP_AUX_CH_CTL_INTERRUPT		REG_BIT(29)
 #define   DP_AUX_CH_CTL_TIME_OUT_ERROR		REG_BIT(28)
-
 #define   DP_AUX_CH_CTL_TIME_OUT_MASK		REG_GENMASK(27, 26)
 #define   DP_AUX_CH_CTL_TIME_OUT_400us		REG_FIELD_PREP(DP_AUX_CH_CTL_TIME_OUT_MASK, 0)
 #define   DP_AUX_CH_CTL_TIME_OUT_600us		REG_FIELD_PREP(DP_AUX_CH_CTL_TIME_OUT_MASK, 1)
@@ -83,4 +63,22 @@
 #define   DP_AUX_CH_CTL_SYNC_PULSE_SKL_MASK	REG_GENMASK(4, 0) /* skl+ */
 #define   DP_AUX_CH_CTL_SYNC_PULSE_SKL(c)	REG_FIELD_PREP(DP_AUX_CH_CTL_SYNC_PULSE_SKL_MASK, (c) - 1)
 
+/* TODO: Remove implicit dev_priv */
+#define _DPA_AUX_CH_DATA1		(DISPLAY_MMIO_BASE(dev_priv) + 0x64014)
+#define _DPB_AUX_CH_DATA1		(DISPLAY_MMIO_BASE(dev_priv) + 0x64114)
+#define _XELPDP_USBC1_AUX_CH_DATA1	0x16f214
+#define _XELPDP_USBC2_AUX_CH_DATA1	0x16f414
+#define _XELPDP_USBC3_AUX_CH_DATA1	0x16f614
+#define _XELPDP_USBC4_AUX_CH_DATA1	0x16f814
+#define DP_AUX_CH_DATA(aux_ch, i)	_MMIO(_PORT(aux_ch, _DPA_AUX_CH_DATA1,	\
+						    _DPB_AUX_CH_DATA1) + (i) * 4) /* 5 registers */
+#define XELPDP_DP_AUX_CH_DATA(aux_ch, i)	_MMIO(_PICK(aux_ch, \
+							    _DPA_AUX_CH_DATA1, \
+							    _DPB_AUX_CH_DATA1, \
+							    0, /* port/aux_ch C is non-existent */ \
+							    _XELPDP_USBC1_AUX_CH_DATA1, \
+							    _XELPDP_USBC2_AUX_CH_DATA1, \
+							    _XELPDP_USBC3_AUX_CH_DATA1, \
+							    _XELPDP_USBC4_AUX_CH_DATA1) + (i) * 4)
+
 #endif /* __INTEL_DP_AUX_REGS_H__ */
-- 
2.40.1

