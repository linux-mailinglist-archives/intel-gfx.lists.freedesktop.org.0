Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CDCCC24982
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Oct 2025 11:48:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E44D10EB91;
	Fri, 31 Oct 2025 10:48:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UJGqs2Dl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3456510EB73;
 Fri, 31 Oct 2025 10:48:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761907698; x=1793443698;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xJqwWCie4ZVSsxd3CJ9imueHZ/QHz1fW7nsLpd7Z38w=;
 b=UJGqs2DloO+bQNuy5MTUgkuSy6rQElQZyCWDn7Uusve/tQaOdiCp8jHb
 7+A3blrjQgIIk1AxO/hxopemXb3hMZCFB0aJQRvqu90WIw+Xy1LuO5ecs
 vO0l4ylmyUM5eZ8JG0R06CDhm2fKPOqoq/71M0dlWcLLhgrMKMR8s/TiE
 n2cjNmxQgEiZt41KsrpZ0agjeTO228gobQHJEo3JBxYUDlVs019sus5B8
 OXp/sGWho/nLW0doMGNtmoL8XbSxIwtaMRQjGjHmcUcBQXYH9FUnCiKEt
 SAkEJC4KIv2m1YFLy5K2MYCEjrjqfylhr4J9JSq6gZbYZrKsQITDBtyeF w==;
X-CSE-ConnectionGUID: ulARiW69R7KtKe8kQ7B0fA==
X-CSE-MsgGUID: Erk/ySAARHqNuvVo8764/A==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="64217590"
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="64217590"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 03:48:18 -0700
X-CSE-ConnectionGUID: ijEPwgMsSOiZRQRK49AirA==
X-CSE-MsgGUID: wxBh9fG0RpGKt5ZMTw0ppQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="223441442"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa001.jf.intel.com with ESMTP; 31 Oct 2025 03:48:17 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>,
	Mika Kahola <mika.kahola@intel.com>
Subject: [CI 28/32] drm/i915/display: PLL verify debug state print
Date: Fri, 31 Oct 2025 12:35:45 +0200
Message-Id: <20251031103549.173208-29-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251031103549.173208-1-mika.kahola@intel.com>
References: <20251031103549.173208-1-mika.kahola@intel.com>
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
index 07bc99ae689c..6cc85a9a781f 100644
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

