Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E24B8B99508
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 12:03:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B06510E6DC;
	Wed, 24 Sep 2025 10:03:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z6URZIDW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA74F10E6E3;
 Wed, 24 Sep 2025 10:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758708203; x=1790244203;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dmY1PXd6LAESyj6WfheXeA7TVLW6u4KUSUZh56rvU0Y=;
 b=Z6URZIDW6/8AuCIq1kHJM//L0q0pz68+2eeLlYCfSxIkhEvsOqQhSSUX
 hTdwBpk9/44Bmbojx4Vr7PJxQ86yPlWv/LNIJkAaM5VcuXfYdkRZab84m
 iCWRoFB+nm6MW2C//D4rR1esxceXBozeamy0r8jIcELsH17nZzvbo8XIV
 +XHJZ5QBMBCDMP5cxCe8v+xyrTk4vVuKRWc+eptEUZdSUBDR0q0CkRhVW
 0r7VIRLIkcRU1RUc2wBdOkhLj2iLh5114ubqKp3v9CNd8o1Ox44qJ0Mp0
 4iWcs8FG8HFUjyGPgQgs8w1NJIdAqVu7U6rFuE3wVHBV3dMCnxYB+cKCF Q==;
X-CSE-ConnectionGUID: +r6K78BCRd6QlASSrUgexg==
X-CSE-MsgGUID: Z5xInlgURTegD4FWsXxoNg==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="60924697"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="60924697"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 03:03:22 -0700
X-CSE-ConnectionGUID: uDUptVxfTDOrJOzPmCAoLw==
X-CSE-MsgGUID: fZNx2uUSSNSPzdJHglpexA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="176287217"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.245.246.157])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 03:03:20 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, jouni.hogander@intel.com,
 kunal1.joshi@intel.com, jani.saarinen@intel.com
Subject: [PATCH] drm/i915/fbc: update the impacted platforms in wa_22014263786
Date: Wed, 24 Sep 2025 13:03:08 +0300
Message-ID: <20250924100308.346808-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
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

wa_22014263786 is not applicable to the BMG and hence exclude it
from the wa.

Bspec: 74212, 66624
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 0d380c825791..2938ee4b64d8 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -934,7 +934,8 @@ static void intel_fbc_program_workarounds(struct intel_fbc *fbc)
 			     0, DPFC_CHICKEN_COMP_DUMMY_PIXEL);
 
 	/* Wa_22014263786:icl,jsl,tgl,dg1,rkl,adls,adlp,mtl */
-	if (DISPLAY_VER(display) >= 11 && !display->platform.dg2)
+	if (DISPLAY_VER(display) >= 11 && !display->platform.dg2 &&
+	    !display->platform.battlemage)
 		intel_de_rmw(display, ILK_DPFC_CHICKEN(fbc->id),
 			     0, DPFC_CHICKEN_FORCE_SLB_INVALIDATION);
 
-- 
2.43.0

