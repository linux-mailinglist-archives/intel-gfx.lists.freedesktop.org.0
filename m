Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A202732642
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jun 2023 06:41:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1EDE10E596;
	Fri, 16 Jun 2023 04:41:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0ED6810E596
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Jun 2023 04:41:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686890469; x=1718426469;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hulz9kcKrmaEab4eU/B2a9pn9pX9KOjeejNL523x0Mg=;
 b=ODcJ0kxp94Se2n6CahXPTj5LcwcMVQE1VT7zYRyFMUQgO7M9b8ZWj/Am
 TQs39ju6t42/bV4miDb0Qli4pVS66E0LOTi9uV4RHwhF1PgWqphwA1yy3
 Gu8YWRQetH8Uxcb4WEDiIh57k9xacH5HfAPMR+fAbXzQnPgFywER9e42W
 96XKR40d9whLPPfXHNgjiVpUsK/dS8jCfWN1n5krsEvm9vT4mYXG8icCw
 0GfE7M2H98XRKmPagoFTnFk3X27a/xYnZV1Qu1h8W4IVodru+VBdLaoUU
 B3zZegr4sS3lGd08tgsf6YQI3aP41IVJZIBcYJ2i9QUCDlq1HSycfJdho g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="343857067"
X-IronPort-AV: E=Sophos;i="6.00,246,1681196400"; d="scan'208";a="343857067"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 21:41:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="886945508"
X-IronPort-AV: E=Sophos;i="6.00,246,1681196400"; d="scan'208";a="886945508"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 21:41:07 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Jun 2023 21:39:50 -0700
Message-Id: <20230616043950.1576836-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/mtl: Fix SSC selection for MPLLA
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

Driver does not clear the default SSC for MPLLA. This causes link training
failure when trying to use 10G and 20G rates. Fix the behaviour and enable ssc
only when we really want.

Fixes: 237e7be0bf57 ("drm/i915/mtl: For DP2.0 10G and 20G rates use MPLLA")
Cc: Mika Kahola <mika.kahola@intel.com>
Cc: Clint Taylor <Clinton.A.Taylor@intel.com>
Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index f235df5646ed..1b00ef2c6185 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2434,7 +2434,8 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
 
 	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
 		     XELPDP_LANE1_PHY_CLOCK_SELECT | XELPDP_FORWARD_CLOCK_UNGATE |
-		     XELPDP_DDI_CLOCK_SELECT_MASK | XELPDP_SSC_ENABLE_PLLB, val);
+		     XELPDP_DDI_CLOCK_SELECT_MASK | XELPDP_SSC_ENABLE_PLLA |
+		     XELPDP_SSC_ENABLE_PLLB, val);
 }
 
 static u32 intel_cx0_get_powerdown_update(u8 lane_mask)
-- 
2.34.1

