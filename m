Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D779BAFB14
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 10:39:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C83EC10E6E8;
	Wed,  1 Oct 2025 08:39:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BMTbE+5S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0186310E6E8;
 Wed,  1 Oct 2025 08:39:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759307954; x=1790843954;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=O7/ZYTdpk+E+zIufGbKopzM051kG8o+R3TOAK6NaHv8=;
 b=BMTbE+5SuoxXpEuN16H1wxUnTLwBiWg4tGVorZ8ywC3zx+10WiV4grNA
 kxCxI2E7Ybm5f2UDScYJ5PJab3KVhYU17hw0712yXGDLVEFiBIhz2eowi
 84N5Mi3Usl3WbwBjvibG8d0xlJOD20aUii50klwd1nbKO2JIz71eHwxWl
 c2XktjEdSNMJJNAzeTTBdT7Jx9h00NTQ13gk/EwnCWQVzzRniCfmJRrfF
 vaaJFJ9+9bsRt8qLsM+GjoODIWiiPW6ICJXssUXAQMmf4lntJSk4ZfjWd
 UlihBptZgFvr6rW4KMCUs8TBODwgcJg5tvMS34tM9W6me2IlkhI0pBYEI Q==;
X-CSE-ConnectionGUID: Vf+qljfoT2mnf5BNlUy3FQ==
X-CSE-MsgGUID: gOAAmKj+S9iHJOOEL9XzBw==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="61742792"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="61742792"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 01:39:13 -0700
X-CSE-ConnectionGUID: K6GLHPgQTTKWj4lhoGgr8g==
X-CSE-MsgGUID: KX5wNIpHS8CihJ4rNYsC0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="179142838"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa008.fm.intel.com with ESMTP; 01 Oct 2025 01:39:11 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [RFC PATCH 29/39] drm/i915/display: Add .update_dpll_ref_clks
Date: Wed,  1 Oct 2025 11:28:29 +0300
Message-Id: <20251001082839.2585559-30-mika.kahola@intel.com>
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

Add .update_dpll_ref_clks function pointer to MTL+
platforms to support dpll framework. Reusing ICL
function pointer.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 8970c2fad5a5..617139c6e3eb 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4433,6 +4433,7 @@ static const struct intel_dpll_mgr mtl_pll_mgr = {
 	.get_dplls = icl_get_dplls,
 	.put_dplls = icl_put_dplls,
 	.update_active_dpll = icl_update_active_dpll,
+	.update_ref_clks = icl_update_dpll_ref_clks,
 };
 
 /**
-- 
2.34.1

