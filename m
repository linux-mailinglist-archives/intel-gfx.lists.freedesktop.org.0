Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07E4D7CDADA
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Oct 2023 13:40:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76AF310E3CE;
	Wed, 18 Oct 2023 11:40:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F36010E3CE
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Oct 2023 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697629253; x=1729165253;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jCwkZ+PidRSYSvZWegOIRHSOybjP4kVHC13hkVcaqnA=;
 b=DdFcus9W2Dznb4yndyMbt/hl6AksbDjm3aaOgQXwPsB9zsn9GVBBI/X3
 QjfWMERNPYW0yHzLKe/oK2HTY7HEUwbd6/sJF0UQagG1NlpT41svvoYb5
 ZuSctPCmmecs1uEoDHDhEEg7jpD1wEyyC3vD0J7awJCDEy+Hff38klsba
 D/LeVB3Usw7fe8FYDYCHnQvtXpwwFyvQVndQxQkIV7h3SxKx1Jet6kJ/E
 F2Jx8UYVstZo2YULQrmbJFGAQkY/Y3GSP1cG3R3JiRhxIw41yVUEkEaIT
 xfnazcLebGc/H+CDQECl7oh5iWEDmaAmjrHJz/Uobrt2VUM3lAX0SckVP A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="450216998"
X-IronPort-AV: E=Sophos;i="6.03,234,1694761200"; d="scan'208";a="450216998"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 04:40:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="706419211"
X-IronPort-AV: E=Sophos;i="6.03,234,1694761200"; d="scan'208";a="706419211"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by orsmga003.jf.intel.com with ESMTP; 18 Oct 2023 04:40:50 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Oct 2023 17:06:22 +0530
Message-Id: <20231018113622.2761997-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/mtl: Support HBR3 rate with C10 phy
 and eDP in MTL
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
Cc: ville.syrjala@intel.com, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

eDP specification supports HBR3 link rate since v1.4a. Moreover,
C10 phy can support HBR3 link rate for both DP and eDP. Therefore,
do not clamp the supported rates for eDP at 6.75Gbps.

Cc: <stable@vger.kernel.org>

BSpec: 70073 74224

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1891c0cc187d..2c1034578984 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -430,7 +430,7 @@ static int mtl_max_source_rate(struct intel_dp *intel_dp)
 	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
 
 	if (intel_is_c10phy(i915, phy))
-		return intel_dp_is_edp(intel_dp) ? 675000 : 810000;
+		return 810000;
 
 	return 2000000;
 }
-- 
2.25.1

