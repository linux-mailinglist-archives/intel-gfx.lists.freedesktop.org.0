Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C27FC63AD4
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 11:59:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB51410E397;
	Mon, 17 Nov 2025 10:59:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jmuRAB5F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 188E010E397;
 Mon, 17 Nov 2025 10:59:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763377179; x=1794913179;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZLWW/y76ECYDV6hRH9bwx6H60VXj1JAN+LLJqvYppQk=;
 b=jmuRAB5FgiJBmGJyjjjktI7shdeF7s4KdQhgG8qkBL4kp+sYVz+89egJ
 /3Zh7cPRHvH4GN3+KGtjkJlTSREAVozmCYb4lwxINom0NA4LFw8JCohyI
 EB1hUyZ7XE8BnRzYW+ZDsqr0w/LEtjwO3GQqoPzAws/7t6q38f/ePyOqK
 U3ujif3MHnCEoOxubBZp92Dq9c1Ae6qXhLVazcF9EqNnGJet8ci7Hv0sc
 xH+gurrVXn5Dat96Hn9dijgRovDeVM0ty20eNPUVrJEX5Di6MB6+mcEeB
 CYYisWchBgTIXdeJAA7gNxUXy0+jTfcypRj6mGiK54SQGVhXT+vNF52tA w==;
X-CSE-ConnectionGUID: UQTWZ8D/TLu/m+WlmZt2oQ==
X-CSE-MsgGUID: XY8Q0V/gRHmlq6PznIngkw==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="76475430"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="76475430"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 02:59:39 -0800
X-CSE-ConnectionGUID: NAZ8fHXpT/KRYsLiimHj9g==
X-CSE-MsgGUID: TSmtE0ozQLCMh6oTVTdszA==
X-ExtLoop1: 1
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa003.fm.intel.com with ESMTP; 17 Nov 2025 02:59:37 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>, Mika Kahola <mika.kahola@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 28/32] drm/i915/cx0: PLL verify debug state print
Date: Mon, 17 Nov 2025 12:45:58 +0200
Message-Id: <20251117104602.2363671-29-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251117104602.2363671-1-mika.kahola@intel.com>
References: <20251117104602.2363671-1-mika.kahola@intel.com>
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

From: Imre Deak <imre.deak@intel.com>

Print out hw and sw pll states for better debugging support.

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 85b3fee2d9b6..463677014199 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4882,11 +4882,18 @@ verify_single_dpll_state(struct intel_display *display,
 				 "%s: pll enabled crtcs mismatch (expected 0x%x in 0x%x)\n",
 				 pll->info->name, pipe_mask, pll->state.pipe_mask);
 
-	INTEL_DISPLAY_STATE_WARN(display,
-				 pll->on && memcmp(&pll->state.hw_state, &dpll_hw_state,
-						   sizeof(dpll_hw_state)),
-				 "%s: pll hw state mismatch\n",
-				 pll->info->name);
+	if (INTEL_DISPLAY_STATE_WARN(display,
+				     pll->on && memcmp(&pll->state.hw_state, &dpll_hw_state,
+						       sizeof(dpll_hw_state)),
+				     "%s: pll hw state mismatch\n",
+				     pll->info->name)) {
+		struct drm_printer p = drm_dbg_printer(display->drm, DRM_UT_KMS, NULL);
+
+		drm_printf(&p, "PLL %s HW state:\n", pll->info->name);
+		intel_dpll_dump_hw_state(display, &p, &dpll_hw_state);
+		drm_printf(&p, "PLL %s SW state:\n", pll->info->name);
+		intel_dpll_dump_hw_state(display, &p, &pll->state.hw_state);
+	}
 }
 
 static bool has_alt_port_dpll(const struct intel_dpll *old_pll,
-- 
2.34.1

