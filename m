Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D6FCA224F0
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2025 21:02:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69AC610E8B5;
	Wed, 29 Jan 2025 20:01:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jM18nmL0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 625B010E88F;
 Wed, 29 Jan 2025 20:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738180913; x=1769716913;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ObVtlcP77zvVBys9uz+fP1lD2I0L1wlTwiNmrducPeo=;
 b=jM18nmL0QhIA5oZX25mbJGT9mmHcjX5Ok33cN/pYz5xnMmw9QvszPdi8
 xAHSs73eZorLKb18ix20D6NnVnXuJK3U8plTy8m8fjzFeLnPAsnMx+JZ9
 3YWyc2qC5CNvlpESGrL1y/ZGAS4GYLfTvZXQ1RXw+5cRrtffO61mmz9hQ
 v+FoIo3ZKn4pC6oCEh60efUgfSBIvdB3XCuC5wVQvZRPiA54yIJVf3OSz
 ODeCaNUJ1uJpssgyabrl67cM37MNHCq8DGAWhhgGed30vU6D2DYxLqOUQ
 agAzdKweRMSqSMzIQCH+cNU4r40b5qcT6klUwBhlKqlAOTTxyyJnNajMi g==;
X-CSE-ConnectionGUID: KpqoZpccQ3aHz7EKv4eLxQ==
X-CSE-MsgGUID: ThfncO7PSmqWfPY5S1WbEQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11330"; a="38977717"
X-IronPort-AV: E=Sophos;i="6.13,244,1732608000"; d="scan'208";a="38977717"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 12:01:39 -0800
X-CSE-ConnectionGUID: FQ7UrJdPRkCyq2eSHLB7zA==
X-CSE-MsgGUID: 2tQLq5LkRKalXzwyL+SbyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113750909"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 12:01:37 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@gmail.com>
Subject: [PATCH 11/17] drm/i915/ddi: Sanitize DDI_BUF_CTL register definitions
Date: Wed, 29 Jan 2025 22:02:15 +0200
Message-ID: <20250129200221.2508101-12-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250129200221.2508101-1-imre.deak@intel.com>
References: <20250129200221.2508101-1-imre.deak@intel.com>
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

From: Imre Deak <imre.deak@gmail.com>

Align the DDI_BUF_CTL register flag definitions with how this is done
elsewhere.

Signed-off-by: Imre Deak <imre.deak@gmail.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 22 ++++++++++++----------
 1 file changed, 12 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 7fe4e71fc08ec..5cee6a96270af 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3621,27 +3621,29 @@ enum skl_power_gate {
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
+#define  DDI_BUF_TRANS_SELECT(n)		REG_FIELD_PREP(DDI_BUF_EMP_MASK, n)
+#define  DDI_BUF_PHY_LINK_RATE_MASK		REG_GENMASK(23, 20)
+#define  DDI_BUF_PHY_LINK_RATE(r)		REG_FIELD_PREP(DDI_BUF_PHY_LINK_RATE_MASK, r)
 #define  DDI_BUF_PORT_DATA_MASK			REG_GENMASK(19, 18)
 #define  DDI_BUF_PORT_DATA_10BIT		REG_FIELD_PREP(DDI_BUF_PORT_DATA_MASK, 0)
 #define  DDI_BUF_PORT_DATA_20BIT		REG_FIELD_PREP(DDI_BUF_PORT_DATA_MASK, 1)
 #define  DDI_BUF_PORT_DATA_40BIT		REG_FIELD_PREP(DDI_BUF_PORT_DATA_MASK, 2)
-#define  DDI_BUF_PORT_REVERSAL			(1 << 16)
+#define  DDI_BUF_PORT_REVERSAL			REG_BIT(16)
 #define  DDI_BUF_LANE_STAGGER_DELAY_MASK	REG_GENMASK(15, 8)
 #define  DDI_BUF_LANE_STAGGER_DELAY(symbols)	REG_FIELD_PREP(DDI_BUF_LANE_STAGGER_DELAY_MASK, \
 							       symbols)
-#define  DDI_BUF_IS_IDLE			(1 << 7)
+#define  DDI_BUF_IS_IDLE			REG_BIT(7)
 #define  DDI_BUF_CTL_TC_PHY_OWNERSHIP		REG_BIT(6)
-#define  DDI_A_4_LANES				(1 << 4)
-#define  DDI_PORT_WIDTH(width)			(((width) == 3 ? 4 : ((width) - 1)) << 1)
-#define  DDI_PORT_WIDTH_MASK			(7 << 1)
+#define  DDI_A_4_LANES				REG_BIT(4)
+#define  DDI_PORT_WIDTH_MASK			REG_GENMASK(3, 1)
+#define  DDI_PORT_WIDTH(width)			REG_FIELD_PREP(DDI_PORT_WIDTH_MASK, \
+							       (width) == 3 ? 4 : (width) - 1)
 #define  DDI_PORT_WIDTH_SHIFT			1
-#define  DDI_INIT_DISPLAY_DETECTED		(1 << 0)
+#define  DDI_INIT_DISPLAY_DETECTED		REG_BIT(0)
 
 /* DDI Buffer Translations */
 #define _DDI_BUF_TRANS_A		0x64E00
-- 
2.44.2

