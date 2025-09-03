Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F24AB41E7A
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Sep 2025 14:10:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3171B10E7C3;
	Wed,  3 Sep 2025 12:10:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ae5ugYcI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CE6810E7C3;
 Wed,  3 Sep 2025 12:10:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756901402; x=1788437402;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=W/BxGXbbFiDwtYepKQxgFB+MetmNMv4C+nk0/GlngsE=;
 b=ae5ugYcII1R91bj+9u+ANeMMQIqdSrlaJUaqOF+i/F3QuelTmNLbc14w
 zdvq6mbSdg3yCW4D828m++1M8rhCuuLt//3g+qAuYSh1haHatg9aPeHZg
 RmEWiByk0sNi4CouSZdEu0IW8HzQyemdnV9Y3I/8wEK9L3Pz/pmEIlB2y
 J2M8zRvG3ufAMY+oJILGVMBcm6OTUsKlD4+lhhcy9gPl6tfYbrQqmEeLf
 s3iqX1R/KF5dpVwNqM+6/60Hh+culJFTj0SZd8actTzIqdUu7SO+i7bbQ
 8F285LnHE50WAxtA5fhAGjknoc/MhEIXJ4HQyE1qzKbqRw9Hk2LGqxddp Q==;
X-CSE-ConnectionGUID: JZF9q7nGQrOyLvbu77/6Qw==
X-CSE-MsgGUID: 98YKAUPlQc2p/oSfh5313w==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="62853684"
X-IronPort-AV: E=Sophos;i="6.18,235,1751266800"; d="scan'208";a="62853684"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 05:10:00 -0700
X-CSE-ConnectionGUID: g1Q+IqP7RkWDCkswLQ2mvQ==
X-CSE-MsgGUID: aLlotHa8Qdenv9SvwkI4hQ==
X-ExtLoop1: 1
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa003.fm.intel.com with ESMTP; 03 Sep 2025 05:09:58 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH] drm/i915/display: Initialize phy and ch variables
Date: Wed,  3 Sep 2025 15:01:47 +0300
Message-Id: <20250903120147.1799446-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
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

phy and ch variables are potentially used uninitialized.
To make absolutely sure that these variables are not used
uninitialized let's initialize these with known values as
DPIO_PHY0 and DPIO_CH0, respectively.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 8ea96cc524a1..45b67a3716e9 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -2174,8 +2174,8 @@ static bool bxt_ddi_pll_get_hw_state(struct intel_display *display,
 	struct bxt_dpll_hw_state *hw_state = &dpll_hw_state->bxt;
 	enum port port = (enum port)pll->info->id; /* 1:1 port->PLL mapping */
 	intel_wakeref_t wakeref;
-	enum dpio_phy phy;
-	enum dpio_channel ch;
+	enum dpio_phy phy = DPIO_PHY0;
+	enum dpio_channel ch = DPIO_CH0;
 	u32 val;
 	bool ret;
 
-- 
2.34.1

