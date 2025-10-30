Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E40CFC1ECA9
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 08:35:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49EFF10E922;
	Thu, 30 Oct 2025 07:35:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IAl+wYsT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2AAC10E8E9;
 Thu, 30 Oct 2025 07:35:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761809711; x=1793345711;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HKdwg0+PYycKP2eyEMPyeIh1lWNJrOR4A9gNjNdqew4=;
 b=IAl+wYsThXIUvgg/xhengBtV2WlhIG+51GF5YH6Uzj2bEy5G4opMMSGB
 7acd4ocqK/F9HHjrQZwUUxLVgDc+BgFm1ywQ6Iv9ag7XyePuED1XUB1gc
 m3fGtaso8x8f61L8hTEuJ2ci0Twwaf+Tx7G/twiNTrqv7kSoU0PF9ThvX
 SSXFK6qn17ozT1jnQgDLLRlpRjncY1dmNTfe610TeB65lhxobJ/IMcVvn
 DOzhKBQo8n8M2yBewmkn4Z1YaO4k8OyvAz7RSbyJ+tCRNDBOVAIPEKiPt
 Wd9ifHeJ00OYNb3FKic7ncQ02AsTxODIXn7HO9nc+0cwwCBGPpnNa2/Ku w==;
X-CSE-ConnectionGUID: iROkKJfNQwK3WlJo3Hfr/A==
X-CSE-MsgGUID: rUnwOCLIRrCkxYTGItdieQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="75063398"
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="75063398"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 00:35:10 -0700
X-CSE-ConnectionGUID: /cgRk8YhSf6f1D3kSOuStg==
X-CSE-MsgGUID: iAuzuQpORAGsbcE/Hq5JEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="185075469"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa006.jf.intel.com with ESMTP; 30 Oct 2025 00:35:08 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 22/32] drm/i915/display: Add .update_dpll_ref_clks
Date: Thu, 30 Oct 2025 09:22:39 +0200
Message-Id: <20251030072249.155095-23-mika.kahola@intel.com>
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

Add .update_dpll_ref_clks function pointer to MTL+
platforms to support dpll framework. Reusing ICL
function pointer.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 3b62943e2748..01e649d66f08 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4450,6 +4450,7 @@ static const struct intel_dpll_mgr mtl_pll_mgr = {
 	.get_dplls = mtl_get_dplls,
 	.put_dplls = icl_put_dplls,
 	.update_active_dpll = icl_update_active_dpll,
+	.update_ref_clks = icl_update_dpll_ref_clks,
 };
 
 /**
-- 
2.34.1

