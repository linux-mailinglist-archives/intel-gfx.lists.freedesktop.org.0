Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B13F39D1398
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2024 15:49:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E01610E4F9;
	Mon, 18 Nov 2024 14:49:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F+nL3SUN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70CCD10E4FA;
 Mon, 18 Nov 2024 14:49:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731941381; x=1763477381;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OKjYiOkEL2CPx3g7vfQNeKcMgGQEgCkGJrP4ORL84C4=;
 b=F+nL3SUNTac7iFPh/AQOzSpCO7V0zDkaOqKbzlKg65FyvtOCmTcauc70
 8lSwI2mgaRRO+XMdX4pnpz0B+yZvNtvddzI9e+ZEFYzFO59FEkTvXVazp
 wF4LfEruPSS6cxF6x1/ndVKPvIdH4yCrQi7FFGQNut0TFh3harZfx4aBT
 5USW2KarrO2R2EgyXh56MF6foY0OQWBqLUbk8vLdy4pafY3hO71TdP3xQ
 54y7+79MfDakum8nL4kS1i8ZQICtOTcZdwqEssNbEMOuYx+tBYdP/UrbU
 Z/pKf1Bv/hOpa99vA/bAWoQsYq+44gTfJjNqTmCxGNSu4rNrvf2nddzYT Q==;
X-CSE-ConnectionGUID: egUU0MMXTve7pERuMy51QQ==
X-CSE-MsgGUID: kJ3wD5fPTp6c07MSUPxE7w==
X-IronPort-AV: E=McAfee;i="6700,10204,11260"; a="42414923"
X-IronPort-AV: E=Sophos;i="6.12,164,1728975600"; d="scan'208";a="42414923"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 06:49:41 -0800
X-CSE-ConnectionGUID: QnPnOL1KQFW5SJj8sJvwLw==
X-CSE-MsgGUID: Ur6d0ClkRU2L+3xK+BCDfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,164,1728975600"; d="scan'208";a="120184800"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.148])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 06:49:40 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 06/11] drm/i915/reg: convert DP_TP_CTL/DP_TP_STATUS to
 REG_BIT() and friends
Date: Mon, 18 Nov 2024 16:49:01 +0200
Message-Id: <9c54e8d7a3ff5039e4537cccb97214e63b9805c9.1731941270.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1731941270.git.jani.nikula@intel.com>
References: <cover.1731941270.git.jani.nikula@intel.com>
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

TODO: The payload mapping fields have more bits on more recent
platforms.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 57 +++++++++++++++++----------------
 1 file changed, 30 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 7a35be56b7ef..9c198405349d 100644
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
@@ -3849,14 +3850,16 @@ enum skl_power_gate {
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
+#define   DP_TP_STATUS_AUTOTRAIN_DONE		REG_BIT(12)
+#define   DP_TP_STATUS_STREAMS_ENABLED_MASK	REG_GENMASK(21, 19)
+#define   DP_TP_STATUS_PAYLOAD_MAPPING_VC3_MASK REG_GENMASK(13, 12)
+#define   DP_TP_STATUS_PAYLOAD_MAPPING_VC2_MASK REG_GENMASK(9, 8)
+#define   DP_TP_STATUS_PAYLOAD_MAPPING_VC1_MASK	REG_GENMASK(5, 4)
+#define   DP_TP_STATUS_PAYLOAD_MAPPING_VC0_MASK	REG_GENMASK(1, 0)
 
 /* DDI Buffer Control */
 #define _DDI_BUF_CTL_A				0x64000
-- 
2.39.5

