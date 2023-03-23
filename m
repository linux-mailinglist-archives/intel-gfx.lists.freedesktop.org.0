Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D53AF6C6703
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 12:44:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 610A210EA7D;
	Thu, 23 Mar 2023 11:44:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BC2B10EA7C
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Mar 2023 11:44:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679571885; x=1711107885;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zUMU9DVxfO9QQWzy/HKUmicjXe8oa/0K1nu7uEunOaY=;
 b=YCYHw25U40Y19XhgPJNWw9MlHiD1ET/5oabkzooLTuRqBOJUNpYcgzff
 a2dd6HQtb6VzD/bQrDC89w1SEBR0Lc/Pn4j9l37aZwkCrrJFKZKKQGMxZ
 IbUTLcEeV73ly1HCkklgmfhjqKSsBNFZo6wVI10hD573xSUIwgaYkEECD
 SYxL/NcMsOcgLp7gPFg4hLguE6heaGDeeI0R03gCVufWOUeBOcjUtIAa5
 z0A1Ywg1qECgce8ihw2ootu4FGm9XeZ5QksA1NJeG9wo9ORdlYlvYY9nA
 xXJtZEFMzDS5fqP4jc0Al4AYr3UaUMy38iBJ+fUNSR6bJqBYz2ytPu15e w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="425742116"
X-IronPort-AV: E=Sophos;i="5.98,283,1673942400"; d="scan'208";a="425742116"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 04:44:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="746688505"
X-IronPort-AV: E=Sophos;i="5.98,283,1673942400"; d="scan'208";a="746688505"
Received: from unknown (HELO vgovind2-mobl3.fi.intel.com) ([10.237.66.37])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 04:44:43 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Mar 2023 13:44:25 +0200
Message-Id: <20230323114426.41136-2-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230323114426.41136-1-vinod.govindapillai@intel.com>
References: <20230323114426.41136-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/2] drm/i915/reg: fix QGV points register
 access offsets
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Wrong offsets are calculated to read QGV point registers. Fix it
to read from the correct registers.

Bspec: 64602

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index d22ffd7a32dc..8917774dc680 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7724,12 +7724,13 @@ enum skl_power_gate {
 #define   MTL_N_OF_POPULATED_CH_MASK		REG_GENMASK(7, 4)
 #define   MTL_DDR_TYPE_MASK			REG_GENMASK(3, 0)
 
-#define MTL_MEM_SS_INFO_QGV_POINT_LOW(point)	 _MMIO(0x45710 + (point) * 2)
+#define MTL_MEM_SS_INFO_QGV_POINT_OFFSET	0x45710
+#define MTL_MEM_SS_INFO_QGV_POINT_LOW(point)	_MMIO(MTL_MEM_SS_INFO_QGV_POINT_OFFSET + (point) * 8)
 #define   MTL_TRCD_MASK			REG_GENMASK(31, 24)
 #define   MTL_TRP_MASK			REG_GENMASK(23, 16)
 #define   MTL_DCLK_MASK			REG_GENMASK(15, 0)
 
-#define MTL_MEM_SS_INFO_QGV_POINT_HIGH(point)	 _MMIO(0x45714 + (point) * 2)
+#define MTL_MEM_SS_INFO_QGV_POINT_HIGH(point)	_MMIO(MTL_MEM_SS_INFO_QGV_POINT_OFFSET + (point) * 8 + 4)
 #define   MTL_TRAS_MASK			REG_GENMASK(16, 8)
 #define   MTL_TRDPRE_MASK		REG_GENMASK(7, 0)
 
-- 
2.34.1

