Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CBDE9D3ADE
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 13:43:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E421210E746;
	Wed, 20 Nov 2024 12:43:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VyeqdpYb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAD1D10E742;
 Wed, 20 Nov 2024 12:43:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732106633; x=1763642633;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=el61+cc6kMY72eA62CJdYfMP76PIOHd+jbXAxjj5EpE=;
 b=VyeqdpYbX/x0+pdvq22eaAO2sFf/qsKnw1znHFO+HXiNt+BCoKN+5052
 EGMvneOHPHdtivDO1W/vljxcUkapRHmhlLccsetZPihNS1ViSCBHjA04l
 dOFoihKlxltYdTouH5yMFqU/eOqsNCwNRdIR+19Sg7Jsiim10zih4Qsz2
 odhnBmUp8D5MPQpgOIHXGa0ZRK6F/fM16i+zdz2s8/zFPMZmmqtSZo2pm
 mX6j+hGR0Npb8C+S6bKyQwvp71Rnoo3odjaRxynjwxscGU9rnZx1SHJEm
 o7+ga5URFri/V8MRoZ5v7AZ791ca9yyfjm5mad+HsYyZa2LAzU49tcJW3 Q==;
X-CSE-ConnectionGUID: iGu9Q8NOSjWYVPShqrVT5g==
X-CSE-MsgGUID: eaEVhS1+QA2c+KDI2gb4Uw==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="42783360"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="42783360"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 04:43:52 -0800
X-CSE-ConnectionGUID: zj0YA3ugRia/L+iP3EUDgw==
X-CSE-MsgGUID: 1M0TUUBXRMSl6mHisSviOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="94363509"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.54])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 04:43:50 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Imre Deak <imre.deak@intel.com>
Subject: [CI 06/11] drm/i915/reg: convert DP_TP_CTL/DP_TP_STATUS to REG_BIT()
 and friends
Date: Wed, 20 Nov 2024 14:43:14 +0200
Message-Id: <1ef15e6bb58ca847f89c9b39cbc9771cb57db408.1732106557.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1732106557.git.jani.nikula@intel.com>
References: <cover.1732106557.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Use the modern style for defining register contents. Expand the status
register contents a bit.

TODO: There are more VC payload mapping fields, spanning more registers,
and have more bits on more recent platforms.

v2:
- Fix DP_TP_STATUS_STREAMS_ENABLED_MASK mask (Imre)
- Drop status VC3 payload mapping for now

Cc: Imre Deak <imre.deak@intel.com>
Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 56 +++++++++++++++++----------------
 1 file changed, 29 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 7a35be56b7ef..f48b5c809cec 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3823,25 +3823,26 @@ enum skl_power_gate {
 #define _TGL_DP_TP_CTL_A		0x60540
 #define DP_TP_CTL(port) _MMIO_PORT(port, _DP_TP_CTL_A, _DP_TP_CTL_B)
 #define TGL_DP_TP_CTL(dev_priv, tran) _MMIO_TRANS2(dev_priv, (tran), _TGL_DP_TP_CTL_A)
-#define  DP_TP_CTL_ENABLE			(1 << 31)
-#define  DP_TP_CTL_FEC_ENABLE			(1 << 30)
-#define  DP_TP_CTL_MODE_SST			(0 << 27)
-#define  DP_TP_CTL_MODE_MST			(1 << 27)
-#define  DP_TP_CTL_FORCE_ACT			(1 << 25)
-#define  DP_TP_CTL_TRAIN_PAT4_SEL_MASK		(3 << 19)
-#define  DP_TP_CTL_TRAIN_PAT4_SEL_TP4A		(0 << 19)
-#define  DP_TP_CTL_TRAIN_PAT4_SEL_TP4B		(1 << 19)
-#define  DP_TP_CTL_TRAIN_PAT4_SEL_TP4C		(2 << 19)
-#define  DP_TP_CTL_ENHANCED_FRAME_ENABLE	(1 << 18)
-#define  DP_TP_CTL_FDI_AUTOTRAIN		(1 << 15)
-#define  DP_TP_CTL_LINK_TRAIN_MASK		(7 << 8)
-#define  DP_TP_CTL_LINK_TRAIN_PAT1		(0 << 8)
-#define  DP_TP_CTL_LINK_TRAIN_PAT2		(1 << 8)
-#define  DP_TP_CTL_LINK_TRAIN_PAT3		(4 << 8)
-#define  DP_TP_CTL_LINK_TRAIN_PAT4		(5 << 8)
-#define  DP_TP_CTL_LINK_TRAIN_IDLE		(2 << 8)
-#define  DP_TP_CTL_LINK_TRAIN_NORMAL		(3 << 8)
-#define  DP_TP_CTL_SCRAMBLE_DISABLE		(1 << 7)
+#define   DP_TP_CTL_ENABLE			REG_BIT(31)
+#define   DP_TP_CTL_FEC_ENABLE			REG_BIT(30)
+#define   DP_TP_CTL_MODE_MASK			REG_BIT(27)
+#define   DP_TP_CTL_MODE_SST			REG_FIELD_PREP(DP_TP_CTL_MODE_MASK, 0)
+#define   DP_TP_CTL_MODE_MST			REG_FIELD_PREP(DP_TP_CTL_MODE_MASK, 1)
+#define   DP_TP_CTL_FORCE_ACT			REG_BIT(25)
+#define   DP_TP_CTL_TRAIN_PAT4_SEL_MASK		REG_GENMASK(20, 19)
+#define   DP_TP_CTL_TRAIN_PAT4_SEL_TP4A		REG_FIELD_PREP(DP_TP_CTL_TRAIN_PAT4_SEL_MASK, 0)
+#define   DP_TP_CTL_TRAIN_PAT4_SEL_TP4B		REG_FIELD_PREP(DP_TP_CTL_TRAIN_PAT4_SEL_MASK, 1)
+#define   DP_TP_CTL_TRAIN_PAT4_SEL_TP4C		REG_FIELD_PREP(DP_TP_CTL_TRAIN_PAT4_SEL_MASK, 2)
+#define   DP_TP_CTL_ENHANCED_FRAME_ENABLE	REG_BIT(18)
+#define   DP_TP_CTL_FDI_AUTOTRAIN		REG_BIT(15)
+#define   DP_TP_CTL_LINK_TRAIN_MASK		REG_GENMASK(10, 8)
+#define   DP_TP_CTL_LINK_TRAIN_PAT1		REG_FIELD_PREP(DP_TP_CTL_LINK_TRAIN_MASK, 0)
+#define   DP_TP_CTL_LINK_TRAIN_PAT2		REG_FIELD_PREP(DP_TP_CTL_LINK_TRAIN_MASK, 1)
+#define   DP_TP_CTL_LINK_TRAIN_PAT3		REG_FIELD_PREP(DP_TP_CTL_LINK_TRAIN_MASK, 4)
+#define   DP_TP_CTL_LINK_TRAIN_PAT4		REG_FIELD_PREP(DP_TP_CTL_LINK_TRAIN_MASK, 5)
+#define   DP_TP_CTL_LINK_TRAIN_IDLE		REG_FIELD_PREP(DP_TP_CTL_LINK_TRAIN_MASK, 2)
+#define   DP_TP_CTL_LINK_TRAIN_NORMAL		REG_FIELD_PREP(DP_TP_CTL_LINK_TRAIN_MASK, 3)
+#define   DP_TP_CTL_SCRAMBLE_DISABLE		REG_BIT(7)
 
 /* DisplayPort Transport Status */
 #define _DP_TP_STATUS_A			0x64044
@@ -3849,14 +3850,15 @@ enum skl_power_gate {
 #define _TGL_DP_TP_STATUS_A		0x60544
 #define DP_TP_STATUS(port) _MMIO_PORT(port, _DP_TP_STATUS_A, _DP_TP_STATUS_B)
 #define TGL_DP_TP_STATUS(dev_priv, tran) _MMIO_TRANS2(dev_priv, (tran), _TGL_DP_TP_STATUS_A)
-#define  DP_TP_STATUS_FEC_ENABLE_LIVE		(1 << 28)
-#define  DP_TP_STATUS_IDLE_DONE			(1 << 25)
-#define  DP_TP_STATUS_ACT_SENT			(1 << 24)
-#define  DP_TP_STATUS_MODE_STATUS_MST		(1 << 23)
-#define  DP_TP_STATUS_AUTOTRAIN_DONE		(1 << 12)
-#define  DP_TP_STATUS_PAYLOAD_MAPPING_VC2	(3 << 8)
-#define  DP_TP_STATUS_PAYLOAD_MAPPING_VC1	(3 << 4)
-#define  DP_TP_STATUS_PAYLOAD_MAPPING_VC0	(3 << 0)
+#define   DP_TP_STATUS_FEC_ENABLE_LIVE		REG_BIT(28)
+#define   DP_TP_STATUS_IDLE_DONE		REG_BIT(25)
+#define   DP_TP_STATUS_ACT_SENT			REG_BIT(24)
+#define   DP_TP_STATUS_MODE_STATUS_MST		REG_BIT(23)
+#define   DP_TP_STATUS_STREAMS_ENABLED_MASK	REG_GENMASK(18, 16) /* 17:16 on hsw but bit 18 mbz */
+#define   DP_TP_STATUS_AUTOTRAIN_DONE		REG_BIT(12)
+#define   DP_TP_STATUS_PAYLOAD_MAPPING_VC2_MASK REG_GENMASK(9, 8)
+#define   DP_TP_STATUS_PAYLOAD_MAPPING_VC1_MASK	REG_GENMASK(5, 4)
+#define   DP_TP_STATUS_PAYLOAD_MAPPING_VC0_MASK	REG_GENMASK(1, 0)
 
 /* DDI Buffer Control */
 #define _DDI_BUF_CTL_A				0x64000
-- 
2.39.5

