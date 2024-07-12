Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C9B19301CC
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2024 23:59:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E653610EDB7;
	Fri, 12 Jul 2024 21:59:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oIEDA69+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DB1810EDB7
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2024 21:59:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720821571; x=1752357571;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZDSFmsjlGTZDlOy5PlkvnOwK//Qn1bMUa7Yux5C75Qg=;
 b=oIEDA69+VNi4EZNb9PMiWffAbgeuzS9rqAzhvPVHFSQ5peIUscf5IfyH
 q+SvkBXqDPrIpe5WSm90no0kMMSuLkBsLwaT2Lev/eD0JgcT32LdcPOAt
 4Xawvfdhg1JjEUaTql5VM0ES3BR2wuJyq49TPuKqV65tZThdNdfDqt62c
 jMfkuVdSO7M7UtyAH2wCS9Shf0Kv/ARCl6mMdE80tcxanNm2lU6OTcdSx
 g7KbhGC+8lUIctkIUMFj5a3LnFfbvXtq5yohJ/555chMkrZ8y+zHs8evs
 HLMJwWmzB2gMLeXwuuyCJao2NaA2nH+74rNoOfcmfgkUm8tZZ5WJ+Mu12 Q==;
X-CSE-ConnectionGUID: sV2iIggQS0KD+/h8kiaviw==
X-CSE-MsgGUID: ERaOn/iORQOq3PdrSESZnA==
X-IronPort-AV: E=McAfee;i="6700,10204,11131"; a="18421511"
X-IronPort-AV: E=Sophos;i="6.09,204,1716274800"; d="scan'208";a="18421511"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2024 14:59:30 -0700
X-CSE-ConnectionGUID: zbllZh0PQbOPS8RdUCx0lA==
X-CSE-MsgGUID: fWNPRFz5T6ubiNpIR9/2qQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,204,1716274800"; d="scan'208";a="48782320"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.125.150])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2024 14:59:29 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jonathan.cavitt@intel.com, saurabhg.gupta@intel.com,
 dan.carpenter@linaro.org, chris.p.wilson@linux.intel.com
Subject: [PATCH] drm/i915: Allow NULL memory region
Date: Fri, 12 Jul 2024 14:41:56 -0700
Message-Id: <20240712214156.3969584-1-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
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

Prevent a NULL pointer access in intel_memory_regions_hw_probe.

Fixes: 05da7d9f717b ("drm/i915/gem: Downgrade stolen lmem setup warning")
Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
---
 drivers/gpu/drm/i915/intel_memory_region.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
index 172dfa7c3588b..d40ee1b42110a 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/intel_memory_region.c
@@ -368,8 +368,10 @@ int intel_memory_regions_hw_probe(struct drm_i915_private *i915)
 			goto out_cleanup;
 		}
 
-		mem->id = i;
-		i915->mm.regions[i] = mem;
+		if (mem) { /* Skip on non-fatal errors */
+			mem->id = i;
+			i915->mm.regions[i] = mem;
+		}
 	}
 
 	for (i = 0; i < ARRAY_SIZE(i915->mm.regions); i++) {
-- 
2.25.1

