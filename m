Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA5EC63AC6
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 11:59:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0420F10E37E;
	Mon, 17 Nov 2025 10:59:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XDCTFkmm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C075810E38A;
 Mon, 17 Nov 2025 10:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763377174; x=1794913174;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LF4rfdYKYkbWh6OyUcGGVNedfGVqfpa74CGhoql7kvE=;
 b=XDCTFkmmRBfblQ2lceTwxnQFAYFItPBhWwT7un+V0r+zxhJ8f15mWJL8
 QtABiy5g7pBxgRWqRUjTcQ4AjnO//4tmkwZDjFLC4o8lwPcueNzPpEGeh
 lbNqS14zmIPAHdwOj+78mOvbSxtu0EWRFwiCR1T+sSimZ2hFJ/tLmJK4J
 e/ZOCIXYxwGHOa8wNeSJEzC67/UqM8O7MZe38w2ZVz79bbLvRkfXZPtgF
 KO+Om+b6Yr5RP6Rog16cMlsZqSM3NyWitXlD15uzsv7oxs6hZJfeUAU+/
 jA86EN2AI2PUnmLVsUQFOCu85Gb7efJaC2Z3JjhiIqpbqi+74nlH/FHvT A==;
X-CSE-ConnectionGUID: NYkkz97ZQ5u9IA4YYCVqeQ==
X-CSE-MsgGUID: yW2z9jgwQwOdjTjrev1htA==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="76475420"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="76475420"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 02:59:33 -0800
X-CSE-ConnectionGUID: kyIEpxhQTSOwdLYcb7SdfA==
X-CSE-MsgGUID: CPP1HkZeTcmcYcihtvmVYg==
X-ExtLoop1: 1
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa003.fm.intel.com with ESMTP; 17 Nov 2025 02:59:32 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 24/32] drm/i915/cx0: Add .compare_hw_state hook
Date: Mon, 17 Nov 2025 12:45:54 +0200
Message-Id: <20251117104602.2363671-25-mika.kahola@intel.com>
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

Add .compare_hw_state function pointer for MTL+ platforms
to support dpll framework.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index aee8f1a5848a..c0ba269dc714 100644
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

