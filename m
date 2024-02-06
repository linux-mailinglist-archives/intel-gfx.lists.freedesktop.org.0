Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C89684AEBE
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Feb 2024 08:16:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EFF0112A12;
	Tue,  6 Feb 2024 07:16:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CzCYw9ed";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7B89112A11
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Feb 2024 07:16:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707203782; x=1738739782;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gyMgiYzCZGeuH3iZPuF24vf+SnbtdaNyQJJTyqolhvQ=;
 b=CzCYw9edpBrZrh/qKZtRcJ35vfgp59cDySoSOVpBNInxEq9h0ut2QEua
 HgPgubbav7yN3Ae0mVeipQ5NoixOPHCT0sEWBx+Oxop4ksHKRnEgFVf4Y
 cVXewWGrTiaVRlBfy0EVMvOuP+m97W+efh13KdLDJFu0fZNb9wUqzFmOb
 ZcNUkAdbaKmTub8mjiDR675ovC3VZF0RvmbEP5DMmJAH0R/HPuIlFH+of
 C/cn5FaYkaVTOpGgD9tIDco/trlI6qYuAHWfloRhpstzUjewELk0FSZu1
 4vsK9Yugb2fsjhpy1l2LNo5FF9l0+wl77mcube8FeozsbC/BjF9Xe5tgO g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10975"; a="12041502"
X-IronPort-AV: E=Sophos;i="6.05,246,1701158400"; d="scan'208";a="12041502"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2024 23:16:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10975"; a="824094099"
X-IronPort-AV: E=Sophos;i="6.05,246,1701158400"; d="scan'208";a="824094099"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga001.jf.intel.com with ESMTP; 05 Feb 2024 23:16:20 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 1/2] Revert "drm/i915/display: Skip C10 state verification in
 case of fastset"
Date: Tue,  6 Feb 2024 09:09:36 +0200
Message-Id: <20240206070937.197986-2-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240206070937.197986-1-mika.kahola@intel.com>
References: <20240206070937.197986-1-mika.kahola@intel.com>
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

This reverts commit a1d91c6e989d0e66b89aa911f2cd459d7bdebbe5.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 288a00e083c8..5051e7f5abb1 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -3017,9 +3017,6 @@ static void intel_c10pll_state_verify(const struct intel_crtc_state *state,
 	const struct intel_c10pll_state *mpllb_sw_state = &state->cx0pll_state.c10;
 	int i;
 
-	if (intel_crtc_needs_fastset(state))
-		return;
-
 	for (i = 0; i < ARRAY_SIZE(mpllb_sw_state->pll); i++) {
 		u8 expected = mpllb_sw_state->pll[i];
 
-- 
2.34.1

