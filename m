Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4C96AB7EAD
	for <lists+intel-gfx@lfdr.de>; Thu, 15 May 2025 09:18:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D4AE10E785;
	Thu, 15 May 2025 07:18:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HqzGr0gJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D51010E77F;
 Thu, 15 May 2025 07:18:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747293538; x=1778829538;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IzJ0hvPpbdESCmG3BBlbXrBrO7NEJJuF+JNk+HploFc=;
 b=HqzGr0gJsp+cTJqZqFXg+7vnM/Yxew+aenhZHJjiibedUVmPTF1O8yVB
 kradeFIhf7ME9KDC5dCoUmYi+7bBMdOpKWCwqNr1pRVDJQdwPY6P548dq
 4FRjVuf1IVhX08UcnWA969gVIx1IV5IiSReYF7IFKH0WFLgP+nyS6FCyR
 KCBwGTZQoQGTp7bIlZlQgqauva1yr4mUrroQ17+EsAfD5pocPoF9asnU9
 83blVgxlTLre2n8AIn2O/C6pNfUjmU6TLDPg6ulQ7JVvKqQ9S9JFbq4jG
 H9GYqCm7bvvigwd0kZy4nRj0R08SY46m+LiH1rp2ceoGlo6Bci7Mpd625 g==;
X-CSE-ConnectionGUID: RtriLT//TuOfc5vw9kEQIg==
X-CSE-MsgGUID: GHMMxHOqTbKBxbRnivleLg==
X-IronPort-AV: E=McAfee;i="6700,10204,11433"; a="48901362"
X-IronPort-AV: E=Sophos;i="6.15,290,1739865600"; d="scan'208";a="48901362"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2025 00:18:57 -0700
X-CSE-ConnectionGUID: utv6v/k2TxWcycwSm1pZfQ==
X-CSE-MsgGUID: B6jEJA8bR5GboduJwPvZqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,290,1739865600"; d="scan'208";a="142290383"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa003.fm.intel.com with ESMTP; 15 May 2025 00:18:54 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, jani.nikula@intel.com,
 mika.kahola@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 11/14] drm/i915/dpll: Rename intel_reference_dpll_crtc
Date: Thu, 15 May 2025 12:47:58 +0530
Message-Id: <20250515071801.2221120-12-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250515071801.2221120-1-suraj.kandpal@intel.com>
References: <20250515071801.2221120-1-suraj.kandpal@intel.com>
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

Rename intel_reference_dpll_crtc to intel_dpll_crtc_get in an
effort to have all the exported functions have the name start
with file name.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 1265bc4b4307..db15d4f0328c 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -412,7 +412,7 @@ intel_find_dpll(struct intel_atomic_state *state,
 }
 
 /**
- * intel_reference_dpll_crtc - Get a DPLL reference for a CRTC
+ * intel_dpll_crtc_get - Get a DPLL reference for a CRTC
  * @crtc: CRTC on which behalf the reference is taken
  * @pll: DPLL for which the reference is taken
  * @dpll_state: the DPLL atomic state in which the reference is tracked
@@ -420,9 +420,9 @@ intel_find_dpll(struct intel_atomic_state *state,
  * Take a reference for @pll tracking the use of it by @crtc.
  */
 static void
-intel_reference_dpll_crtc(const struct intel_crtc *crtc,
-			  const struct intel_dpll *pll,
-			  struct intel_dpll_state *dpll_state)
+intel_dpll_crtc_get(const struct intel_crtc *crtc,
+		    const struct intel_dpll *pll,
+		    struct intel_dpll_state *dpll_state)
 {
 	struct intel_display *display = to_intel_display(crtc);
 
@@ -447,7 +447,7 @@ intel_reference_dpll(struct intel_atomic_state *state,
 	if (dpll_state[pll->index].pipe_mask == 0)
 		dpll_state[pll->index].hw_state = *dpll_hw_state;
 
-	intel_reference_dpll_crtc(crtc, pll, &dpll_state[pll->index]);
+	intel_dpll_crtc_get(crtc, pll, &dpll_state[pll->index]);
 }
 
 /**
@@ -4521,7 +4521,7 @@ static void readout_dpll_hw_state(struct intel_display *display,
 			to_intel_crtc_state(crtc->base.state);
 
 		if (crtc_state->hw.active && crtc_state->intel_dpll == pll)
-			intel_reference_dpll_crtc(crtc, pll, &pll->state);
+			intel_dpll_crtc_get(crtc, pll, &pll->state);
 	}
 	pll->active_mask = pll->state.pipe_mask;
 
-- 
2.34.1

