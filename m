Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E1D2C1EC87
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 08:35:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04E8A10E8F3;
	Thu, 30 Oct 2025 07:35:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i/HydRlC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9B1810E8E9;
 Thu, 30 Oct 2025 07:35:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761809712; x=1793345712;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dSUPrWYwCTbm7tAWentbm9vZQ3906TUx85SNizHimRQ=;
 b=i/HydRlCurGVTbjMlmLjQhkePEMSZjblNfeMPlwtuL4YJyk16258GDGy
 S1MGvCRWRJ7T5HPIwtkwWK5uc39sCYWGVff77Gyc+dFscY+VbhT4K+T48
 RFeDYoc+bqde0JXXx0cE9MdU8RBH8xndAyKc22PTL+tq++Y2r7nLNxFdM
 Nx7XstIkiIQE9Hu4Swpmt/MsOMi8/8sMK0DMIDhTlKjCgNl984agWDiA5
 7QALKOhPEsXEjD05RubwTYLVd87fkC01PlS9c9oEBnwVEvmi7R8Ym8un3
 wcJM1AlNcBjhNHWHvM7ytSs71ocIjKx3NXMvdwxAehHxSAq7kdOnYCLGk Q==;
X-CSE-ConnectionGUID: A5FIwwUWR9SnbD//t+n6LA==
X-CSE-MsgGUID: IwzxaeZIS9uvKy5T960hqw==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="75063401"
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="75063401"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 00:35:12 -0700
X-CSE-ConnectionGUID: F1QcY3+1Qf2NP/u/OV83Vw==
X-CSE-MsgGUID: 7RB0IqFTT8OS/61ZHZVhoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="185075484"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa006.jf.intel.com with ESMTP; 30 Oct 2025 00:35:11 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 24/32] drm/i915/display: Add .compare_hw_state
Date: Thu, 30 Oct 2025 09:22:41 +0200
Message-Id: <20251030072249.155095-25-mika.kahola@intel.com>
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

Add .compare_hw_state function pointer for MTL+ platforms
to support dpll framework.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index d4b58c426044..d22771cf2ebd 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4449,6 +4449,15 @@ static void mtl_dump_hw_state(struct drm_printer *p,
 	intel_cx0pll_dump_hw_state(p, &dpll_hw_state->cx0pll);
 }
 
+static bool mtl_compare_hw_state(const struct intel_dpll_hw_state *_a,
+				 const struct intel_dpll_hw_state *_b)
+{
+	const struct intel_cx0pll_state *a = &_a->cx0pll;
+	const struct intel_cx0pll_state *b = &_b->cx0pll;
+
+	return intel_cx0pll_compare_hw_state(a, b);
+}
+
 __maybe_unused
 static const struct intel_dpll_mgr mtl_pll_mgr = {
 	.dpll_info = mtl_plls,
@@ -4458,6 +4467,7 @@ static const struct intel_dpll_mgr mtl_pll_mgr = {
 	.update_active_dpll = icl_update_active_dpll,
 	.update_ref_clks = icl_update_dpll_ref_clks,
 	.dump_hw_state = mtl_dump_hw_state,
+	.compare_hw_state = mtl_compare_hw_state,
 };
 
 /**
-- 
2.34.1

