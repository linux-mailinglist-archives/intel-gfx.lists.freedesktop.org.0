Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4142FC1EC84
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 08:35:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0CBE10E8E4;
	Thu, 30 Oct 2025 07:35:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lhPeVDq1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9ED1E10E8E1;
 Thu, 30 Oct 2025 07:35:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761809707; x=1793345707;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bDAY9JgmB6GcmqEvuH8FPTvEnsdVXgabwmcu7Ppqvn8=;
 b=lhPeVDq1VHm5PDnSuQx8DYF+aGW2vuhuEhMCWFQR9ju/fQD95CmMVz5W
 fRSqg0eEsIrEPBmFR957ttQ9JFT/RK2Bv1tt2Fhe1XcLvbIsWhon6/odg
 Mj7UfZtdahgy0FKiND4Exv6dyKzrJeRtRnjvqsiK9xqksJuS0dAhdggic
 dwLQEmAoWwZK2Y7sGrb3HJAxABY04Icc5sT4x0ruYSxkR15tEZT2ZIuTj
 3a4WnHJ5FhQrhSyXZHKF8hZzrHD5jOsTC5UAopaLQevcky/k4BhgV1rxb
 1ijRanXBHjo9xXPQlnh59ui3dm1HCEhr0JnoY8Psqw2FJHrZy6nzh3qVE g==;
X-CSE-ConnectionGUID: VwFyM7obTnK1XXJxTLvdfw==
X-CSE-MsgGUID: yQJYVqSFTNS66N38D68Jwg==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="75063395"
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="75063395"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 00:35:07 -0700
X-CSE-ConnectionGUID: ykisullXSQm0VxeUmnO+6g==
X-CSE-MsgGUID: Mhh2ZiljQ6+ZOsmWSnTPhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="185075452"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa006.jf.intel.com with ESMTP; 30 Oct 2025 00:35:06 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 20/32] drm/i915/display: MTL+ .put_dplls
Date: Thu, 30 Oct 2025 09:22:37 +0200
Message-Id: <20251030072249.155095-21-mika.kahola@intel.com>
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

Add .put_dplls function pointer to support MTL+ platforms
on dpll framework. Reusing ICL function pointer.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index c6af2816594d..cd612acad6e4 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4448,6 +4448,7 @@ static const struct intel_dpll_mgr mtl_pll_mgr = {
 	.dpll_info = mtl_plls,
 	.compute_dplls = mtl_compute_dplls,
 	.get_dplls = mtl_get_dplls,
+	.put_dplls = icl_put_dplls,
 };
 
 /**
-- 
2.34.1

