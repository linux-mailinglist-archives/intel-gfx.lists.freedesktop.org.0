Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64AE38CBB19
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2024 08:21:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6001610EDF9;
	Wed, 22 May 2024 06:21:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UOsW7FIK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2CBB10F149
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2024 06:21:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716358872; x=1747894872;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fzItw7pOyuGrZYilcfRm0fsUaShhKOzm4MY/8mlDAAg=;
 b=UOsW7FIK9c874WqD8bTmvtDSsIgNITHuQBnZilD4RVXZ4L7DZz0VvkK3
 QEnz5nkimLYVsXUPcT3RP9mjeBWh33W1hiYp1rIsYhAHa4p8oG/vJfvBH
 1WEnp5dHqTsZwRzMPnWEClF0yL0L4KddnI/Cxvq9o2xJ07/lVTS2+HSKM
 38i+S8AyIRkd5ojEVFVTuVHRSf8pkz2u2grk8mfvd2O1RDnjqpii6EOzi
 utum822nnMijD2TJiQZQP/se4MnHAE/SU699hbTX8yi6xN0orezyyW5xn
 cknXTeTWzgGTj2nqJwkcgRIpMgPUGCZ11eBOrKcaXSbJa4LHgXiRIhWYI w==;
X-CSE-ConnectionGUID: ykIX32kZRmWBaJbCF3BWNw==
X-CSE-MsgGUID: lVuB/JFjSoaf2ABppMlTNQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11079"; a="35098126"
X-IronPort-AV: E=Sophos;i="6.08,179,1712646000"; d="scan'208";a="35098126"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 23:21:12 -0700
X-CSE-ConnectionGUID: 7BxNfYGyS26/I60SofB4KA==
X-CSE-MsgGUID: dpkDFYveSqq8IgyufXCh7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,179,1712646000"; d="scan'208";a="56404489"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmviesa002.fm.intel.com with ESMTP; 21 May 2024 23:21:10 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 1/2] drm/i915/display: Revert "drm/i915/display: Skip C10
 state verification in case of fastset"
Date: Wed, 22 May 2024 09:13:49 +0300
Message-Id: <20240522061350.248749-2-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240522061350.248749-1-mika.kahola@intel.com>
References: <20240522061350.248749-1-mika.kahola@intel.com>
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
index 1b1ebafa49e8..c9e5bb6ecfd7 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -3243,9 +3243,6 @@ static void intel_c10pll_state_verify(const struct intel_crtc_state *state,
 	const struct intel_c10pll_state *mpllb_sw_state = &state->dpll_hw_state.cx0pll.c10;
 	int i;
 
-	if (intel_crtc_needs_fastset(state))
-		return;
-
 	for (i = 0; i < ARRAY_SIZE(mpllb_sw_state->pll); i++) {
 		u8 expected = mpllb_sw_state->pll[i];
 
-- 
2.34.1

