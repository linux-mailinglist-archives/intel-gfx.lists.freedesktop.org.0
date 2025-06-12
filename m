Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D83AAD7C77
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 22:35:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE98810E1C7;
	Thu, 12 Jun 2025 20:35:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GVc1eMJj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3486710E1C8;
 Thu, 12 Jun 2025 20:35:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749760503; x=1781296503;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1Qw/ufFaFlA7K5R0eJXMaTNFPzfulYuQsUr0fAvGOmE=;
 b=GVc1eMJjAhtC64Ztmzr+uTGstfZ5VQQXfMY7s2nSjb39wju/QmM3mii5
 uqiCAN24Pf8NsZ9qoGUJQha9pFttCsX+XPMfjnRQIN8jHtIVlZwzox4Ck
 j7HE15HUstmu6vnmtstQe/m+vMDzyk11ELiUaE34Vi9ksvtuJ2K8GQlxC
 DBqYwFL8UT+1X2cTjhE3UI8aacz5w8AsWFvC0jSqwEy/zmUrB24AkhoOs
 NGmNWf+V/1C9STHmZ1V1OkPxbpzjfyhC/GDE9Yy/ux3bQdsHGQYRWN237
 +IHi0PXXuwWSfFOYl7J8eiLRzUX1UANXlaIUlkJYL3PJke+8l+czbv2UQ Q==;
X-CSE-ConnectionGUID: BE+wcrgDS46gQISetm8U9Q==
X-CSE-MsgGUID: 2nDgHJjOSICJxkHsN3Tadg==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="52106979"
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="52106979"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 13:35:03 -0700
X-CSE-ConnectionGUID: DRqf2EYZTi6DklZq3ouQaA==
X-CSE-MsgGUID: a0Yf08BtTwuQfxB7BX/dFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="148520086"
Received: from dbhadane-mobl1.iind.intel.com ([10.190.239.58])
 by fmviesa009.fm.intel.com with ESMTP; 12 Jun 2025 13:35:01 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
Subject: [PATCH v5 7/9] drm/i915/xe3lpd: Extend DMC load path for display
 version 30.02
Date: Fri, 13 Jun 2025 02:04:46 +0530
Message-Id: <20250612203448.2948795-8-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250612203448.2948795-1-dnyaneshwar.bhadane@intel.com>
References: <20250612203448.2948795-1-dnyaneshwar.bhadane@intel.com>
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

Display version 30.02 should be treated the same as other Xe3 IP.
So exteding DMC load path the condition for it.

Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Reviewed-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index a10e56e7cf31..1295d8245a2e 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -179,7 +179,8 @@ static const char *dmc_firmware_default(struct intel_display *display, u32 *size
 	const char *fw_path = NULL;
 	u32 max_fw_size = 0;
 
-	if (DISPLAY_VERx100(display) == 3000) {
+	if (DISPLAY_VERx100(display) == 3002 ||
+	    DISPLAY_VERx100(display) == 3000) {
 		fw_path = XE3LPD_DMC_PATH;
 		max_fw_size = XE2LPD_DMC_MAX_FW_SIZE;
 	} else if (DISPLAY_VERx100(display) == 2000) {
-- 
2.34.1

