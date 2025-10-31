Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F4DC24979
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Oct 2025 11:48:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B583110EB81;
	Fri, 31 Oct 2025 10:48:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d/LA92sW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 500E710EB6D;
 Fri, 31 Oct 2025 10:48:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761907693; x=1793443693;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dSUPrWYwCTbm7tAWentbm9vZQ3906TUx85SNizHimRQ=;
 b=d/LA92sWFPwbEbLsTgF7GWw4kNdg/9jY77QzPO5ygATenKq63Se1PXl7
 pQn4/6V9eclSM4ceXTzc0LvOCI4BJTGUj8oGgDaoYC8WzIxlmVuBVA2oL
 xIOSKTGFaN5HGBj0dVMZ/MQVDo7E6GEGIHYZp5QS4FGj0q+7aI5eQlAdO
 svRSOGJb2Ms3u3as2Q2QNNZR9O74SkVEjzDrql7WguOnRue1yNp9qlyFm
 Jf/FbxT5hnjq7jLj/2EjBNm4jwqgwa9ivS4IHF21PqLKprfm4q6bjOrhU
 4Z5f7AR6n8qu16VCUBMA9OLrIsPvhUPRVeTugYfZ/ton3f905PWy3BpzF Q==;
X-CSE-ConnectionGUID: LBwc0qP6TF6vnnQHuw6dWQ==
X-CSE-MsgGUID: GDc4evUrRimqy1DKlGEDSw==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="64217586"
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="64217586"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 03:48:13 -0700
X-CSE-ConnectionGUID: hMzlAqdXR5usSy4FDdSVyA==
X-CSE-MsgGUID: Ur3vgRXeQ12j52UX394w9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="223441423"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa001.jf.intel.com with ESMTP; 31 Oct 2025 03:48:12 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [CI 24/32] drm/i915/display: Add .compare_hw_state
Date: Fri, 31 Oct 2025 12:35:41 +0200
Message-Id: <20251031103549.173208-25-mika.kahola@intel.com>
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

