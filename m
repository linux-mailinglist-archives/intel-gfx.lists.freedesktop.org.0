Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19626A3602B
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 15:19:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90D6D10ECAD;
	Fri, 14 Feb 2025 14:19:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JRHxBEul";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9935110ECB5;
 Fri, 14 Feb 2025 14:19:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739542762; x=1771078762;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jqWYKPraH4WpU6IENdqokyMcgs4lBOMbFBPQet6IPXo=;
 b=JRHxBEulRAVi77aRh3ZWc948GG+CaXmgq1ySi16qVGbjc2Z5uE4+KTjd
 syuq87CaS6Hz0KYAq1GFrMIjstat8DJK/fXukVopKh1Qqu/ds2HVcUgRS
 61vuVOArH0lvVmzu8ETMVlK8nSxsryKoSLvGhYQgu2sE/gr5F0m6IWf6e
 sbI3f5Y+d0oXkwZEE+0An6VyjIk7jgl+LYLSfuVUaxNzW3f549dOSDRPJ
 ycnXLA2XRaHg0vEyz6F7XX6wCS/NGnkdr1kKgFEQO6DKt9c81csLDbHf2
 xmRy8IsPVCERzO7QAuZERoDlH9WzBhTO28yamc8uCSDAFc6OJPaxjY3kI Q==;
X-CSE-ConnectionGUID: SqqT641MQcqD8IImxvZULA==
X-CSE-MsgGUID: VMZxX6fsQZOddGj8xoP90A==
X-IronPort-AV: E=McAfee;i="6700,10204,11345"; a="27892517"
X-IronPort-AV: E=Sophos;i="6.13,286,1732608000"; d="scan'208";a="27892517"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 06:19:21 -0800
X-CSE-ConnectionGUID: TweFm7msTyKx13SYSEdpeQ==
X-CSE-MsgGUID: XuP9pAksTqGKTzOR1MmgTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="136694385"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 06:19:19 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 11/11] drm/i915/ddi: Sanitize DDI_BUF_CTL register
 definitions
Date: Fri, 14 Feb 2025 16:20:01 +0200
Message-ID: <20250214142001.552916-12-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250214142001.552916-1-imre.deak@intel.com>
References: <20250214142001.552916-1-imre.deak@intel.com>
MIME-Version: 1.0
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

Align the DDI_BUF_CTL register flag definitions with how this is done
elsewhere.

v2: Robustify macro calls with parens. (Jani)

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 22 ++++++++++++----------
 1 file changed, 12 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 50efaab3b5536..3a936a4aa2e88 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3625,27 +3625,29 @@ enum skl_power_gate {
 #define _DDI_BUF_CTL_B				0x64100
 /* Known as DDI_CTL_DE in MTL+ */
 #define DDI_BUF_CTL(port) _MMIO_PORT(port, _DDI_BUF_CTL_A, _DDI_BUF_CTL_B)
-#define  DDI_BUF_CTL_ENABLE			(1 << 31)
+#define  DDI_BUF_CTL_ENABLE			REG_BIT(31)
 #define  XE2LPD_DDI_BUF_D2D_LINK_ENABLE		REG_BIT(29)
 #define  XE2LPD_DDI_BUF_D2D_LINK_STATE		REG_BIT(28)
-#define  DDI_BUF_TRANS_SELECT(n)	((n) << 24)
-#define  DDI_BUF_EMP_MASK			(0xf << 24)
-#define  DDI_BUF_PHY_LINK_RATE(r)		((r) << 20)
+#define  DDI_BUF_EMP_MASK			REG_GENMASK(27, 24)
+#define  DDI_BUF_TRANS_SELECT(n)		REG_FIELD_PREP(DDI_BUF_EMP_MASK, (n))
+#define  DDI_BUF_PHY_LINK_RATE_MASK		REG_GENMASK(23, 20)
+#define  DDI_BUF_PHY_LINK_RATE(r)		REG_FIELD_PREP(DDI_BUF_PHY_LINK_RATE_MASK, (r))
 #define  DDI_BUF_PORT_DATA_MASK			REG_GENMASK(19, 18)
 #define  DDI_BUF_PORT_DATA_10BIT		REG_FIELD_PREP(DDI_BUF_PORT_DATA_MASK, 0)
 #define  DDI_BUF_PORT_DATA_20BIT		REG_FIELD_PREP(DDI_BUF_PORT_DATA_MASK, 1)
 #define  DDI_BUF_PORT_DATA_40BIT		REG_FIELD_PREP(DDI_BUF_PORT_DATA_MASK, 2)
-#define  DDI_BUF_PORT_REVERSAL			(1 << 16)
+#define  DDI_BUF_PORT_REVERSAL			REG_BIT(16)
 #define  DDI_BUF_LANE_STAGGER_DELAY_MASK	REG_GENMASK(15, 8)
 #define  DDI_BUF_LANE_STAGGER_DELAY(symbols)	REG_FIELD_PREP(DDI_BUF_LANE_STAGGER_DELAY_MASK, \
 							       (symbols))
-#define  DDI_BUF_IS_IDLE			(1 << 7)
+#define  DDI_BUF_IS_IDLE			REG_BIT(7)
 #define  DDI_BUF_CTL_TC_PHY_OWNERSHIP		REG_BIT(6)
-#define  DDI_A_4_LANES				(1 << 4)
-#define  DDI_PORT_WIDTH(width)			(((width) == 3 ? 4 : ((width) - 1)) << 1)
-#define  DDI_PORT_WIDTH_MASK			(7 << 1)
+#define  DDI_A_4_LANES				REG_BIT(4)
+#define  DDI_PORT_WIDTH_MASK			REG_GENMASK(3, 1)
+#define  DDI_PORT_WIDTH(width)			REG_FIELD_PREP(DDI_PORT_WIDTH_MASK, \
+							       ((width) == 3 ? 4 : (width) - 1))
 #define  DDI_PORT_WIDTH_SHIFT			1
-#define  DDI_INIT_DISPLAY_DETECTED		(1 << 0)
+#define  DDI_INIT_DISPLAY_DETECTED		REG_BIT(0)
 
 /* DDI Buffer Translations */
 #define _DDI_BUF_TRANS_A		0x64E00
-- 
2.44.2

