Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF32C1EC89
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 08:35:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 417EC10E8F5;
	Thu, 30 Oct 2025 07:35:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VQR3lxnv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C34C010E8E9;
 Thu, 30 Oct 2025 07:35:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761809708; x=1793345708;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=43slUT7seqr3co1M8pnCh1qA5E6o4rGMKcoBr1jIn20=;
 b=VQR3lxnvK13nIjAZDcAwxhyja+8eW8e/BEpvKMCLTGZW6VbempwtQGAV
 FWzKoDqdDM4RjTF3bUKs3jPjUYE9UD3A/zcisylQK10A3s/7ta8S9v+yJ
 AZ7pFPbH/PG0iBMtp3ETqN35BzVIvrIGSHA1XvxWXvxL6sKRpK6mTRxZL
 A+BY/Ba+vOYqSvyJP3pgCw3RJvUH0QlZNUhTA5sGC4dhu0jKuzaaqqgVD
 PlsBtBxGEU0AAbdff0oYNf2sbKDbJrHhjggVkjCrR47pZy7CsyqmNSLwj
 lI35A2xcsynUZOY2Vot270VCFIGuXa2BzVm7RoxuBaf3LFaPqrJ/Le+uC Q==;
X-CSE-ConnectionGUID: 8yoN9fjrQXi9OFlIhbYaGA==
X-CSE-MsgGUID: gv1zzE+lR/6Jdt3FZ/qBJQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="75063397"
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="75063397"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 00:35:08 -0700
X-CSE-ConnectionGUID: X+fhWHsOTrKtH4p7+TQOCg==
X-CSE-MsgGUID: TyRTOwlrRRSVeD5VaBQocg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="185075458"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa006.jf.intel.com with ESMTP; 30 Oct 2025 00:35:07 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 21/32] drm/i915/display: Add .update_active_dpll
Date: Thu, 30 Oct 2025 09:22:38 +0200
Message-Id: <20251030072249.155095-22-mika.kahola@intel.com>
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

For MTL+ platforms, add .update_active_dpll function pointer
to support dpll framework. Reusing ICL function pointer.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index cd612acad6e4..3b62943e2748 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4449,6 +4449,7 @@ static const struct intel_dpll_mgr mtl_pll_mgr = {
 	.compute_dplls = mtl_compute_dplls,
 	.get_dplls = mtl_get_dplls,
 	.put_dplls = icl_put_dplls,
+	.update_active_dpll = icl_update_active_dpll,
 };
 
 /**
-- 
2.34.1

