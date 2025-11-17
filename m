Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A0E5C63AAD
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 11:59:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF2EB10E366;
	Mon, 17 Nov 2025 10:59:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mAF2luH3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAB3510E36D;
 Mon, 17 Nov 2025 10:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763377163; x=1794913163;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Sz3GB/dJe+0qhZzHL9m2k/zxVCRzGxWT+KrJEj2f3VE=;
 b=mAF2luH3to+5q5gciQO8deWN6Ln4m+Wa2x+jKKwsjpl5VEr9apyMGh4A
 yzzFWK+yfwmxVGbrRcqotFjyGNPkk/mucDYhtJSiV5fSExAicbYqvNxpC
 FGEcelcsjQk5RYxfPuUDMXqywJgptlSA0U9vUdFe4xNb+ZdBjXYlXR/Er
 v0tXPrcla4S9ZgupkePVKoJqOt+mJXvKvhkdjMMYXgUkoq4TLafx+v/nj
 tbwPUdKCaAzJYhIAJpDiXczXV/oyeonbTRHXX5EFvlLu6osdxuNbGQoP2
 hgTEY1x+SFuXvC4JGcSdf2xrSLKCFJzsu+mEbRcSOHTvYJOBM2sDV0nV/ Q==;
X-CSE-ConnectionGUID: 84UogewuQhuA6y6O16g7oQ==
X-CSE-MsgGUID: eirkvAGkR0+WqHrTJ1HzfA==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="76475385"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="76475385"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 02:59:23 -0800
X-CSE-ConnectionGUID: yamczFVESmqwM97xw3hwrA==
X-CSE-MsgGUID: OjNc8bK/TpS8dVQeWyrkig==
X-ExtLoop1: 1
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa003.fm.intel.com with ESMTP; 17 Nov 2025 02:59:21 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v2 16/32] drm/i915/cx0: Add PLL information for MTL+
Date: Mon, 17 Nov 2025 12:45:46 +0200
Message-Id: <20251117104602.2363671-17-mika.kahola@intel.com>
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

Start bringing MTL+ platforms as part of PLL framework.
The work is started by adding PLL information and related
function hooks.

BSpec: 55726

v2: Revise commit message and add BSpec ID (Suraj)

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 8c345e1bdd94..23f22c495ec7 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4305,6 +4305,25 @@ static const struct intel_dpll_mgr adlp_pll_mgr = {
 	.compare_hw_state = icl_compare_hw_state,
 };
 
+static const struct intel_dpll_funcs mtl_pll_funcs = {
+};
+
+static const struct dpll_info mtl_plls[] = {
+	{ .name = "DPLL 0", .funcs = &mtl_pll_funcs, .id = DPLL_ID_ICL_DPLL0, },
+	{ .name = "DPLL 1", .funcs = &mtl_pll_funcs, .id = DPLL_ID_ICL_DPLL1, },
+	/* TODO: Add TBT PLL */
+	{ .name = "TC PLL 1", .funcs = &mtl_pll_funcs, .id = DPLL_ID_ICL_MGPLL1, },
+	{ .name = "TC PLL 2", .funcs = &mtl_pll_funcs, .id = DPLL_ID_ICL_MGPLL2, },
+	{ .name = "TC PLL 3", .funcs = &mtl_pll_funcs, .id = DPLL_ID_ICL_MGPLL3, },
+	{ .name = "TC PLL 4", .funcs = &mtl_pll_funcs, .id = DPLL_ID_ICL_MGPLL4, },
+	{}
+};
+
+__maybe_unused
+static const struct intel_dpll_mgr mtl_pll_mgr = {
+	.dpll_info = mtl_plls,
+};
+
 /**
  * intel_dpll_init - Initialize DPLLs
  * @display: intel_display device
-- 
2.34.1

