Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F272C9F9AD6
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2024 20:59:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98BD910E3DA;
	Fri, 20 Dec 2024 19:59:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XmgftzL0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CD8B10E3B7
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2024 19:59:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734724743; x=1766260743;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EZwqXO5kOQWBgXRdM4j/SJVYyC1BpC0pimMaazTzaZ0=;
 b=XmgftzL03gbXiZY1NGqDMWGjCHJdzkb53QdcRb3GsMIqOLTgMOywjLTz
 wdOMya8mTGGtOMrG7F2QM1NlAAqwQ6ScUlPeGf04hCjG8VSp+VPwX4/uw
 2y/2zObOoeaWMFT6Y5cmmPXP5vEXU1zWO3jkxeiSOc/n3qTnAyvF5wAnG
 EiIctETa+2eTIQo2mUbfOHXYQ3Ppd4AaD3QVdHpe/tQ686Y6N4VBxSG+6
 ms0tLVyNVuQ1SVX7hChPag7pz8ahNEgDMEAeLLIyAAuERrxUaCqpeSGBw
 b+rsNtx7CLRVunRlxEyOuy3FGW5sbNijMPgC1Gzp81sWeBkK/LcfWypI2 Q==;
X-CSE-ConnectionGUID: sSJGQk3EQ8+MNmcCfLuIqQ==
X-CSE-MsgGUID: SDe38WZiRI6bjrbeXi/tAw==
X-IronPort-AV: E=McAfee;i="6700,10204,11292"; a="35428713"
X-IronPort-AV: E=Sophos;i="6.12,251,1728975600"; d="scan'208";a="35428713"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2024 11:59:03 -0800
X-CSE-ConnectionGUID: snsB2AyjS0mxjJpu1JLR/A==
X-CSE-MsgGUID: 4I+EKmivTy6m8afuD46LOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,251,1728975600"; d="scan'208";a="98414375"
Received: from rvodapal-desk.iind.intel.com ([10.145.162.163])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2024 11:58:58 -0800
From: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: balasubramani.vivekanandan@intel.com, matthew.d.roper@intel.com,
 lucas.demarchi@intel.com, gustavo.sousa@intel.com,
 clinton.a.taylor@intel.com, matthew.s.atwood@intel.com,
 dnyaneshwar.bhadane@intel.com, haridhar.kalvala@intel.com,
 shekhar.chauhan@intel.com
Subject: [PATCH] drm/i915/display: Don't update DBUF_TRACKER_STATE_SERVICE
Date: Sat, 21 Dec 2024 01:26:50 +0530
Message-Id: <20241220195650.3521662-1-ravi.kumar.vodapalli@intel.com>
X-Mailer: git-send-email 2.25.1
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

While display initialization along with MBUS credits programming
DBUF_CTL register is also programmed, as a part of it the
DBUF_TRACKER_STATE_SERVICE is updated to 0x8 value when default
value is other than 0x8 for platforms
1. display version 12
2. DG2.
Other platforms unless stated should use their default value

Bspec: 49213
Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 34465d56def0..9c20459053fe 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1126,9 +1126,6 @@ static void gen12_dbuf_slices_config(struct intel_display *display)
 {
 	enum dbuf_slice slice;
 
-	if (display->platform.alderlake_p)
-		return;
-
 	for_each_dbuf_slice(display, slice)
 		intel_de_rmw(display, DBUF_CTL_S(slice),
 			     DBUF_TRACKER_STATE_SERVICE_MASK,
@@ -1681,7 +1678,7 @@ static void icl_display_core_init(struct intel_display *display,
 	/* 4. Enable CDCLK. */
 	intel_cdclk_init_hw(display);
 
-	if (DISPLAY_VER(display) >= 12)
+	if (DISPLAY_VER(display) == 12 || display->platform.dg2)
 		gen12_dbuf_slices_config(display);
 
 	/* 5. Enable DBUF. */
-- 
2.25.1

