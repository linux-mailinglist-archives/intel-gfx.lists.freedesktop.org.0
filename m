Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 192AE8CD515
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 15:54:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B57C10E2A0;
	Thu, 23 May 2024 13:54:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BTJFfeC9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBDC410E374
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 13:54:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716472458; x=1748008458;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fzItw7pOyuGrZYilcfRm0fsUaShhKOzm4MY/8mlDAAg=;
 b=BTJFfeC9ZnL5vCkGeymFjEorKzyzpCDJPng8TYHR1emF0iQ98h5Qa0dH
 aFfFjshyO6f7dLwjx8u4GPZu6b6XDnFwCl1nvs2pTf6CH9fR2mq5wkf6U
 OJgrI4jwyz/eHiBX7W1ay5EhCeKxwrI/GxOzv28iqOkhAfJS57CyPii/8
 kSYe5R7YZc4HWgukzXFitn8IPFLD4eQqEHN9ve4H7CEoe1X/AnLlxBlqc
 SgN1b0khdOOa8XO1O1qRlZsTuaKdnnH94EJXDwPumKTlYhEAdjTF+wl3c
 927kth2gJHMla1G9sVuwVyNO66LxvvdKMIMDwaiaflaxijSk7E9X772SI A==;
X-CSE-ConnectionGUID: I6k23ZxdTQ2ppkbHV4mnug==
X-CSE-MsgGUID: 23212Q3aTvK5QAjzDbxI/w==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="16576949"
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="16576949"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 06:54:18 -0700
X-CSE-ConnectionGUID: oBw9J59XSAibKcvrYAj9fg==
X-CSE-MsgGUID: dYaxQAjUQjSnn57K/oYJLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="38143482"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmviesa003.fm.intel.com with ESMTP; 23 May 2024 06:54:17 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v2 1/2] drm/i915/display: Revert "drm/i915/display: Skip C10
 state verification in case of fastset"
Date: Thu, 23 May 2024 16:46:48 +0300
Message-Id: <20240523134649.31452-2-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240523134649.31452-1-mika.kahola@intel.com>
References: <20240523134649.31452-1-mika.kahola@intel.com>
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

