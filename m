Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8E94C1ECA8
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 08:35:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48CAB10E921;
	Thu, 30 Oct 2025 07:35:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gD4Xp240";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C66B10E8FF;
 Thu, 30 Oct 2025 07:35:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761809718; x=1793345718;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xJqwWCie4ZVSsxd3CJ9imueHZ/QHz1fW7nsLpd7Z38w=;
 b=gD4Xp240UBQPZiZnk7YdRUXtGqCv+XWjoMuMlruruOYoH7rR7JeINXCD
 61+WUaeSYgg1s/ga4QVu/PwBpakG4Jp8NHyn/jkoRNER65M+817TuXWc3
 B2euccygxLZt0Y9O7cJ8SUReoX+rOVwknhcNnqbgzmYNi1nvptM+kg/9c
 tdtNQIPEQHuj3ViRzn5XCqE7xCsrkEgZ/ZkBJJBglOai4QFApTy8C/e9G
 +gz+nv+3vgf/vQB/Ml7gKli6pwoE899EkRSocjQELVGMgfJMYf1JCwrrN
 Ub17+GffqulLFQAv88dnn23cj6P0pdSmirN7sXF5pqlK1dZyrIaRSjGav A==;
X-CSE-ConnectionGUID: mhLkjbNtTXylDaJjnkwAXg==
X-CSE-MsgGUID: Ar+/3qOCThSsuRK2syQAFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="75063408"
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="75063408"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 00:35:17 -0700
X-CSE-ConnectionGUID: twOfTPXaSJOY20DPme6DwA==
X-CSE-MsgGUID: +vjIYxpQSJC1SsO5lONpcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="185075518"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa006.jf.intel.com with ESMTP; 30 Oct 2025 00:35:15 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>,
	Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 28/32] drm/i915/display: PLL verify debug state print
Date: Thu, 30 Oct 2025 09:22:45 +0200
Message-Id: <20251030072249.155095-29-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251030072249.155095-1-mika.kahola@intel.com>
References: <20251030072249.155095-1-mika.kahola@intel.com>
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

