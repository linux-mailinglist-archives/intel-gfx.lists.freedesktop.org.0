Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F40E6BAFB29
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 10:39:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 729E210E6F4;
	Wed,  1 Oct 2025 08:39:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TMjEp1kG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3795610E6F4;
 Wed,  1 Oct 2025 08:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759307962; x=1790843962;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=U9bpvJs/lgPd82WLX0d5JrvoCr4VvSQSMWbrtggiNVs=;
 b=TMjEp1kGp4rpicrr4+Rewf+v57BlQi6pENL8DLTVUAYDfbxdqXXxefJ5
 mSim5bAKN+V1DGjAwzQ2L62cQtJTFO5IBufaO4AbJiMYh4caIFCo1Q0ZB
 wBX8SZ7T8+38pRvuCJ+V1ylmfxDQAnr1JxE72d3gEdgcB1i8D0xO231Ak
 rCsvBmA3jq4xzAbsJ9x/VBijGYOCYjnhn83RxHxeda5ZyqPL6iu4VT0wC
 SiuyWkAwCReKY1cUp0wXj42HEYJXoVtQmlfFiJd7dVvj5p0hPERjhl+p3
 sH7+eCu9ajNdf8BUJ/OxEc72ttMgu7C6HvDzdqUCY+MqHmtuJla3M/NoP g==;
X-CSE-ConnectionGUID: 32DiGNbhRF+uT8364/+q9Q==
X-CSE-MsgGUID: 3V4KaqrWQFa3b5lMFVQYxw==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="61742826"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="61742826"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 01:39:20 -0700
X-CSE-ConnectionGUID: 60/KAEEjRf2kRlJMlxqX1Q==
X-CSE-MsgGUID: DxP06jmASr2ldVxtf8KPSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="179142939"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa008.fm.intel.com with ESMTP; 01 Oct 2025 01:39:18 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>,
	Mika Kahola <mika.kahola@intel.com>
Subject: [RFC PATCH 35/39] drm/i915/display: PLL verify debug state print
Date: Wed,  1 Oct 2025 11:28:35 +0300
Message-Id: <20251001082839.2585559-36-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251001082839.2585559-1-mika.kahola@intel.com>
References: <20251001082839.2585559-1-mika.kahola@intel.com>
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
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 0f5602e16512..ec33f4084091 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4865,11 +4865,18 @@ verify_single_dpll_state(struct intel_display *display,
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

