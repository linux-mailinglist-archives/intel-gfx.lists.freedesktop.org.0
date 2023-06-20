Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 791B27361CD
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jun 2023 05:00:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BE4C10E07F;
	Tue, 20 Jun 2023 03:00:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44C2810E07F
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jun 2023 03:00:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687230025; x=1718766025;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=K4H+FHL2ZF8t3BIV2CyitCdQivOsmLg0XjxNFoB/1Pg=;
 b=UyxVVIVeiDOlqW/ug9JxGK4xdCpc2/kgiilrGAA4b2kHcOkMYRv5zFIU
 zpVex3tzkJB23SB8O/+K6NM/w++GPIIQEP3seJXE4A3M2fg7uTCY27LI7
 +njBYYNjwwi32VkwSXIp6ltEr6gZ2VMxac0pmdmZ1stHuT11LSxPA60Rg
 kAVoFRLAoU/egyhw47V7uiXhY5haG+jgXeRMa9VpTQPZ4xaB9ERIt2a5j
 4Kaiv4nepz2x5vToCjholJsQJzwovZdbRkG6ibzou6XvP/0FvwQHAaMA+
 GlbOHowYJYTYF6LqpY8y/NlsTvvoXHJ3Nf630Uz+jjtzbTDMfuC6pxLK6 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="358619284"
X-IronPort-AV: E=Sophos;i="6.00,256,1681196400"; d="scan'208";a="358619284"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2023 20:00:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="743644338"
X-IronPort-AV: E=Sophos;i="6.00,256,1681196400"; d="scan'208";a="743644338"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orsmga008.jf.intel.com with ESMTP; 19 Jun 2023 20:00:21 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Jun 2023 08:22:43 +0530
Message-Id: <20230620025243.979317-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display/dp: Remove support for UHBR13.5
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

As per the DP2.1 Spec support for UHBR13.5 is optional. Hence removing
the support for UHBR13.5
UHBR10 can be used for 6k panels.

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 9f40da20e88d..54ddc953e5bc 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -465,7 +465,7 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
 	};
 	static const int icl_rates[] = {
 		162000, 216000, 270000, 324000, 432000, 540000, 648000, 810000,
-		1000000, 1350000,
+		1000000,
 	};
 	static const int bxt_rates[] = {
 		162000, 216000, 243000, 270000, 324000, 432000, 540000
-- 
2.25.1

