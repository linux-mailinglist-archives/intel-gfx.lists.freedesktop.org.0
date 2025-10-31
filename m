Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC61C2495E
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Oct 2025 11:48:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6FB010EB6E;
	Fri, 31 Oct 2025 10:48:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M2nveIob";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0DB010EB6D;
 Fri, 31 Oct 2025 10:48:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761907690; x=1793443690;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=43slUT7seqr3co1M8pnCh1qA5E6o4rGMKcoBr1jIn20=;
 b=M2nveIobOFn3AJibdnBPrrNF/MwIaJtSuIYnwvjZcTD6vAC+ny6H6yCz
 ZJTZ1YPDX7EEXWZVOVRbQ0uj1ZogCJK20V7PbvUTU34/151pYkhyBoZVo
 hrQV0Z0fsgugC4UyXb5cEI/Y/UG61ORflE/P42RmyalOusP/Zz591wzqZ
 38Cqfu0EdsN7SS0oQ9WW3YK/XXe6kA9tC8JjXxjTcTvtO4rHNRaINTHTd
 J43cZ8xVH8AW+dneA0TfWPjKOf1BuZIBHm+DP9cuNyt1a5TJt0HrkFcfX
 LuOvciI/M8jO7cyoRSziB2DYRlBkSfsAc8aCMLcm7ohvkM03WQd3Rxria w==;
X-CSE-ConnectionGUID: ruvxeTJ5RueqPWQlmZsQtg==
X-CSE-MsgGUID: 0uBrvHndRz+TepHbxSwiQQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="64217580"
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="64217580"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 03:48:09 -0700
X-CSE-ConnectionGUID: 829rIBW+RC6GJiM22pUQmQ==
X-CSE-MsgGUID: 9kr5B2WJQuixFoY9y2XHEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="223441406"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa001.jf.intel.com with ESMTP; 31 Oct 2025 03:48:08 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [CI 21/32] drm/i915/display: Add .update_active_dpll
Date: Fri, 31 Oct 2025 12:35:38 +0200
Message-Id: <20251031103549.173208-22-mika.kahola@intel.com>
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

