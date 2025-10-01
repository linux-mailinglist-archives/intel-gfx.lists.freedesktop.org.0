Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42489BAFB0E
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 10:39:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B60A010E6E5;
	Wed,  1 Oct 2025 08:39:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E2d/zFkd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E96410E6E0;
 Wed,  1 Oct 2025 08:39:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759307951; x=1790843951;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Vm+mND1FC1amaaPloFlv+dX//+KPyKBK3hixS0keCl4=;
 b=E2d/zFkdBlc3q5SlEIgg/r+rBnH7WVkwoaNXo/wZ2RJYs2fdsfSTjvd2
 nIPty2ljUHBHUuutuqrC49R5a/e/SkKBwoRKI5RFKtiSjWfZsqChv8Io3
 tx7Rf4e7J4UlhhnBcuJTLNcL9Bm8MsIqwqZ4N5b6GDAWT9GBdKCVz5dVb
 D50DP1DhNGHa6w+Y4yR2GXX8oqUTRuscvTRffhnzl4w30SgE40weuboUT
 +jdgFkKN5Sz2zM2lGyn0uTzwL8vo1A9kb9kgvr7zajcxg2ChclDODt87G
 utI80niFOCMvdW8LU7qvX7hSeA9qRmNInKGXPXIo3Kndwp8nVhwLXnuGS g==;
X-CSE-ConnectionGUID: KESbBxAWRvS57pDh3VjyRA==
X-CSE-MsgGUID: POCcN+krRn6wCrED/CcGiA==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="61742784"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="61742784"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 01:39:11 -0700
X-CSE-ConnectionGUID: Ur6pyRFFTvikiahddqIRPg==
X-CSE-MsgGUID: mjnlpgJKRCmNdtrWriDdSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="179142797"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa008.fm.intel.com with ESMTP; 01 Oct 2025 01:39:09 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [RFC PATCH 27/39] drm/i915/display: MTL+ .put_dplls
Date: Wed,  1 Oct 2025 11:28:27 +0300
Message-Id: <20251001082839.2585559-28-mika.kahola@intel.com>
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

Add .put_dplls function pointer to support MTL+ platforms
on dpll framework. Reusing ICL function pointer.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 3906ef6f5c61..af318a23f1f1 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4431,6 +4431,7 @@ static const struct intel_dpll_mgr mtl_pll_mgr = {
 	.dpll_info = mtl_plls,
 	.compute_dplls = mtl_compute_dplls,
 	.get_dplls = icl_get_dplls,
+	.put_dplls = icl_put_dplls,
 };
 
 /**
-- 
2.34.1

