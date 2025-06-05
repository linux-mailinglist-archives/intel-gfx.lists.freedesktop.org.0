Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D107ACEDA6
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jun 2025 12:30:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B567810E984;
	Thu,  5 Jun 2025 10:30:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mx/g1+0N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F325110E961;
 Thu,  5 Jun 2025 10:30:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749119410; x=1780655410;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8rdmdTgF6h4WudV+2HUclI87Umu6eCLYqFMnB4RWAPI=;
 b=Mx/g1+0NuE49XerJjPbhJBjCBvzBsvEFprEAEu5LgZnchv64KjUSwXsP
 M2m+30xQHp4QVieNXtzdHAW/hPr7t6vDWGnDT/SYITSc1UEq2IRxtGjI0
 U05azfQlS2zYXXL8vspG1GO7bY3irtxKeWIps1URykCw6cB+za7IRXAdP
 rNJw67dbtKwomO9PbA4jwDY+VlZa1LbUce8ARi8k7YWilQ1T6Ye9TDT8u
 JEVzOY+GCVK078xK+5soj00mZ2qLYdk1+cnymcVR2SGcsLxPCMJQw+Xjf
 GxTQ8CMVpPel2VDKseIF1kPK2PyjkUeEyZZqyiLBHTS8q7euiUe3xK/tm g==;
X-CSE-ConnectionGUID: gFrym8BLRxWDlwcR4Rhasg==
X-CSE-MsgGUID: ko0UfJ+CTcGpXVRST3Dypw==
X-IronPort-AV: E=McAfee;i="6800,10657,11454"; a="51378164"
X-IronPort-AV: E=Sophos;i="6.16,211,1744095600"; d="scan'208";a="51378164"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2025 03:30:10 -0700
X-CSE-ConnectionGUID: x3at5k3bRkaqkVfo4zpZ/Q==
X-CSE-MsgGUID: q0nCxoycSHa6wxTxn0jg6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,211,1744095600"; d="scan'208";a="168639923"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.67])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2025 03:30:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: lucas.demarchi@intel.com,
	rodrigo.vivi@intel.com,
	jani.nikula@intel.com
Subject: [PATCH 5/6] drm/i915/dram: switch to struct drm_device based pcode
 interface
Date: Thu,  5 Jun 2025 13:29:37 +0300
Message-Id: <2e2f966a0e55d81636477d91cf4f71f1e02a2c1d.1749119274.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1749119274.git.jani.nikula@intel.com>
References: <cover.1749119274.git.jani.nikula@intel.com>
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

