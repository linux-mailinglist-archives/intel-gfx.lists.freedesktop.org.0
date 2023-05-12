Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D925F70076F
	for <lists+intel-gfx@lfdr.de>; Fri, 12 May 2023 14:05:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38F1710E122;
	Fri, 12 May 2023 12:05:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C70A10E122
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 May 2023 12:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683893100; x=1715429100;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lrQFqdLS7d9l5nYOIrrzsNHVanhDvOOMpQaL2xmhwtE=;
 b=El2Kwcdv8JdHij0ay3+M/Y87dABxTcclFbVHVahjhbxOZwQe8OMs00wX
 +bUCXRKiMh8g9Dny7sMPqfC6W4yO+Yj/GdHYjBbL94D/KKPL4dupKfAnD
 82CKuOQ84VwXk9zut3KWu7p5EVSc9LzlD/+G6WRFIZoMvIAfwgs89U3HZ
 4sP9/C4dd8R8tkrhoeRcfJL46P8JLIGN7JkFDdhWjj56iiFqd8g8GzmdE
 7zISnQjukTrgHl6gddwhd7NzoSvjTJb27HiA9KT3SP3f9igp4mXSu80+i
 CNcHKNEYNtemr0Gv1OGsZRhOEH8XZGJFuiIR6+L0kEaVPdor7121tOto/ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="416406718"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="416406718"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 05:04:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="694216392"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="694216392"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga007.jf.intel.com with ESMTP; 12 May 2023 05:04:58 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 May 2023 15:00:03 +0300
Message-Id: <20230512120003.587360-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/mtl: Fix expected reg value for
 Thunderbolt PLL disabling
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

While disabling Thunderbolt PLL, we request PLL to be stopped and
wait for ACK bit to be cleared. The expected value should be '0'
instead of '~XELPDP_TBT_CLOCK_ACK' or otherwise we incorrectly
receive dmesg warn "PHY PLL not unlocked in 10us".

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index d94127e7448b..c64cf6778627 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2861,9 +2861,7 @@ static void intel_mtl_tbt_pll_disable(struct intel_encoder *encoder)
 
 	/* 3. Poll on PORT_CLOCK_CTL TBT CLOCK Ack == "0". */
 	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
-					 XELPDP_TBT_CLOCK_ACK,
-					 ~XELPDP_TBT_CLOCK_ACK,
-					 10, 0, NULL))
+					 XELPDP_TBT_CLOCK_ACK, 0, 10, 0, NULL))
 		drm_warn(&i915->drm, "[ENCODER:%d:%s][%c] PHY PLL not unlocked after 10us.\n",
 			 encoder->base.base.id, encoder->base.name, phy_name(phy));
 
-- 
2.34.1

