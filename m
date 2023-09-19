Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 773EA7A6B75
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Sep 2023 21:21:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 815C610E288;
	Tue, 19 Sep 2023 19:21:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA40B10E242
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Sep 2023 19:21:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695151286; x=1726687286;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=y16Me9rxASa/rjQdysCxEZ6OaCLJB6U9N+r8onE04SY=;
 b=OxFl2imIUG9XyVVC7SFIB7mPtQRjRwS/wy5MyzAt1EwbBPKDY0yiyvsG
 TKDyW5alSprt37f/FFhSJs+SJD11eEWJuzqucmkF8JHtIH6HJ7J58TjmJ
 1G7Ag1JashjPfqYg4NfbTr18YJBpt3HiAg4HM389P6bFkCQmTWfL3jMyd
 RlLGpOuA4iqAzmeANVQwY0x17xRWY0PAnZb0IzywDWBamDcA15To7iKsP
 yPoYuNoSOQVDEORrSQUlevNM2hqPcDwd0RMS5QiAWq+jQyJSkxoKwxVyF
 bu+I7wgaCdfBJmzkVb4M3F44Js9iRgsZ7akiirNpQyseREziJf9amMLB8 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="359423138"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="359423138"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 12:21:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="746350078"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="746350078"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 12:21:24 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Sep 2023 12:21:17 -0700
Message-Id: <20230919192128.2045154-11-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230919192128.2045154-1-lucas.demarchi@intel.com>
References: <20230919192128.2045154-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 11/22] drm/i915/display: Use _PICK_EVEN_2RANGES()
 in DP AUX regs
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

