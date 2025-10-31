Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC4B1C2496D
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Oct 2025 11:48:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C311C10EB74;
	Fri, 31 Oct 2025 10:48:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n5wCv/ve";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE9C510EB70;
 Fri, 31 Oct 2025 10:48:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761907691; x=1793443691;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HKdwg0+PYycKP2eyEMPyeIh1lWNJrOR4A9gNjNdqew4=;
 b=n5wCv/veGUpnW6/xPvEA3/qHcdzL53bILwY3WZkbPHI2FLc/ZQVkh5UN
 raBZr2k8ZkoROxA5EweoGNkMBGyFCR8sqJla7LznI+M3/xLYwnCepPRhP
 EtqzZta9Gv238m9WU+6VauBHMHWAP3LJqj7yW+SBQ+IotkQO8LisVho+z
 u97F0VIoGsstAkt1E8322WCmk2DVMql55G6prSgPtmi2uNcf968k67goO
 UWFaNe/dC9EgeXD5eqwMpPtR0sHuFrt8vq82TXZPBHFZIVjKEM4hB4WSa
 /rIqcf84eZzKLSPAHOCPjAbCMsMpwndrfiHROWbd67jSigBxk9W+bNIDW A==;
X-CSE-ConnectionGUID: 5+wSQKcWTX++JAzdjLveQQ==
X-CSE-MsgGUID: aMA5eKc4Q8OYp6nOExIMxg==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="64217581"
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="64217581"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 03:48:11 -0700
X-CSE-ConnectionGUID: ECfdFBMaSMGVCC1/qloL0A==
X-CSE-MsgGUID: p7Lw0yhNTXm5zETPCKWAiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="223441412"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa001.jf.intel.com with ESMTP; 31 Oct 2025 03:48:10 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [CI 22/32] drm/i915/display: Add .update_dpll_ref_clks
Date: Fri, 31 Oct 2025 12:35:39 +0200
Message-Id: <20251031103549.173208-23-mika.kahola@intel.com>
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

