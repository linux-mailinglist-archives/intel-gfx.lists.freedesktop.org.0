Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6D09AE3E37
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Jun 2025 13:44:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75C6410E361;
	Mon, 23 Jun 2025 11:44:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fVKj/7Bh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFAE810E36F;
 Mon, 23 Jun 2025 11:44:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750679062; x=1782215062;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZHNkab79ZR5kwVTZ8BjAwnxbXy7afCIimQk6X02RdwE=;
 b=fVKj/7BhsqedmcFe2diyWnD6XebYNJosOe0kfjXo9L35T+nLxK4MT7VL
 npAXVhx0Gu7HXpgN5++oWDWYGG3nrI08273eMEJMmp16B8PFNfk5ULuI7
 6DqHUIPR+IAVwHOUmZtjh0a46ZsKrRXQ9shH0xC8VnJdkwnnBjVadXr+R
 JcjYe5Tf6/fV1V6Iccxq7C+O/OG91f2JqSD+4V0ef4YPFCRaSSjw1K9Bq
 6ZXtxbBGQeMPnjpIkW9oFbOutcrnBj7nmEJxPLYTXBFiW9LXnCk9lpYa4
 A+afjrfpFGYRH+SYK0M6YJ4rLkH50F73RXeRNcEs/WCwvXRzKg5TETcgm w==;
X-CSE-ConnectionGUID: 3SDefS8mSsWaXmHsJIS+0Q==
X-CSE-MsgGUID: Ws5s2e9gRISg/xQvj+1o1Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11473"; a="52969613"
X-IronPort-AV: E=Sophos;i="6.16,258,1744095600"; d="scan'208";a="52969613"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 04:44:22 -0700
X-CSE-ConnectionGUID: 9QPP3/48QPqnQx+MtpRFsQ==
X-CSE-MsgGUID: DVcYIt8FQHahpFClj9akkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,258,1744095600"; d="scan'208";a="152093908"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.248])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 04:44:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [CI 5/6] drm/i915/dram: switch to struct drm_device based pcode
 interface
Date: Mon, 23 Jun 2025 14:43:48 +0300
Message-Id: <e0d74a3317cc61d1cbb096b962cfbd7c60f038d4.1750678991.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1750678991.git.jani.nikula@intel.com>
References: <cover.1750678991.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

With the struct drm_device based pcode interface in place in both i915
and xe, we can switch dram code to use that.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/soc/intel_dram.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
index 59032c939d0f..5d43042b0fb5 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -590,8 +590,8 @@ static int icl_pcode_read_mem_global_info(struct drm_i915_private *dev_priv,
 	u32 val = 0;
 	int ret;
 
-	ret = snb_pcode_read(&dev_priv->uncore, ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
-			     ICL_PCODE_MEM_SS_READ_GLOBAL_INFO, &val, NULL);
+	ret = intel_pcode_read(&dev_priv->drm, ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
+			       ICL_PCODE_MEM_SS_READ_GLOBAL_INFO, &val, NULL);
 	if (ret)
 		return ret;
 
-- 
2.39.5

