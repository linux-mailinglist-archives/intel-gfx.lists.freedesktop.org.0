Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4257BBC83CD
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Oct 2025 11:14:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC19410E9A0;
	Thu,  9 Oct 2025 09:14:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bHs+dS2y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4589510E99B;
 Thu,  9 Oct 2025 09:14:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760001275; x=1791537275;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=24cfM/3/o8WjgwXkInWoaXRUq/STalaVRBYSOf464YU=;
 b=bHs+dS2y2AK9x+XFwur3HvD/rEEGM/RvErso+Zs2oiNCWYR7XWJgSzSH
 A3hfY5+PIj9qxYeaO7nQ2cHcEMEyEOtZEs87Yg2ZnCY0GPC9qcyGqsH/a
 STeqEd6Zco8voiZku2AhvipxAad+tlkPGXnIuiO5GIG7aJ6zQJTB6zlnf
 9xtDNe42vXGDXrdMzHZNLaeXIzT2tPsF2Bm1TLngmUu/msKBvpHRfXzat
 36qnjBYVgncNgr/aEkns8a8clUoRVGk9ngIFJYHxFzmV2o4qxWNNVNJ1f
 ERemxNJwms+FeBQ0aVlTse7kjAKRR6JUf7l5e5F28f1kxqP4bsNQ3e9q8 Q==;
X-CSE-ConnectionGUID: XSyc6ocLSKaTA6kG4QlfBg==
X-CSE-MsgGUID: A7l3GgezQB6kOwnLRwfJyA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62123504"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62123504"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 02:14:35 -0700
X-CSE-ConnectionGUID: 6vUtsqfRTl2oZPDL5Zjq9g==
X-CSE-MsgGUID: HFaU+V6FRwKjVGo0YilAig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,215,1754982000"; d="scan'208";a="179918089"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 02:14:33 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 8/8] drm/i915/display: Prepare for vblank_delay for LRR
Date: Thu,  9 Oct 2025 14:31:02 +0530
Message-ID: <20251009090102.850344-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251009090102.850344-1-ankit.k.nautiyal@intel.com>
References: <20251009090102.850344-1-ankit.k.nautiyal@intel.com>
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

Update allow_vblank_delay_fastset() to permit vblank delay adjustments
during with LRR when VRR TG is always active.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index cd499e58bed3..1426218c01d2 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4958,9 +4958,15 @@ static bool allow_vblank_delay_fastset(const struct intel_crtc_state *old_crtc_s
 	 * Allow fastboot to fix up vblank delay (handled via LRR
 	 * codepaths), a bit dodgy as the registers aren't
 	 * double buffered but seems to be working more or less...
+	 *
+	 * Also allow this when the VRR timing generator is always on,
+	 * and optimized guardband is used. In such cases,
+	 * vblank delay may vary even without inherited state, but it's
+	 * still safe as VRR guardband is still same.
 	 */
-	return HAS_LRR(display) && old_crtc_state->inherited &&
-		!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DSI);
+	return HAS_LRR(display) &&
+	       (old_crtc_state->inherited || intel_vrr_always_use_vrr_tg(display)) &&
+	       !intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DSI);
 }
 
 bool
-- 
2.45.2

