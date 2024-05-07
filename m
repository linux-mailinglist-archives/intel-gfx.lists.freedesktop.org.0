Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B819A8BE2B8
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2024 14:57:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 398E810F4A6;
	Tue,  7 May 2024 12:57:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fyjZFPwo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 271D510F4A9
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 May 2024 12:57:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715086641; x=1746622641;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ksZ5FExhDB8ObvA9FZ1MaPnvsdsgu6C6k7UNgownqMY=;
 b=fyjZFPwoMQu8cunXX9rgdXwFeJwwFiJvl0gVx3h7OK/ompzVMWnkJDzZ
 ZpyX85jU8a15rZzaEVvBo0Wvog6S9mWPu2LgHUY7Jm5Db3FGembuY4nY2
 SJuR7218HlGbCvR+WM37kZ4CdJyiGKYRkEMLTmRzHc+4p7ZXWQ55OJ3je
 IS1/I+7mStCsxyQsyNADt6Bf2vuKjVc2Mtcmj0skFPcR2a5MbSxqTkBuJ
 82FNYj7ddhqTbwbuc2IcQuRz+AS06GiOR/OBIcAoQG4BxalAdFeIP8cQf
 9R/CS1/fzwitsAK9TYHK0B7z5ycaWitkRpoaZ4vFRof1SQw3aVqCSyLoZ g==;
X-CSE-ConnectionGUID: SNbGlkqtQp2STIJu9itTgQ==
X-CSE-MsgGUID: 7J8CYxc0RSOJzXUsrJ55GQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="11035273"
X-IronPort-AV: E=Sophos;i="6.08,261,1712646000"; d="scan'208";a="11035273"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2024 05:57:21 -0700
X-CSE-ConnectionGUID: yqSUVTKORdumURsuvz77pA==
X-CSE-MsgGUID: YikhJh7JRxS/krezSJKdgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,261,1712646000"; d="scan'208";a="29038171"
Received: from mklonows-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.16])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2024 05:57:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	lucas.demarchi@intel.com,
	rodrigo.vivi@intel.com
Subject: [PATCH 4/5] drm/i915: simplify ULT/ULX subplatform detection
Date: Tue,  7 May 2024 15:56:51 +0300
Message-Id: <0d96bdbcb87672ef1b78b5f78431aab4d2984818.1715086509.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1715086509.git.jani.nikula@intel.com>
References: <cover.1715086509.git.jani.nikula@intel.com>
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

For HSW/BDW ULX machines are also considered ULT. For the sake of
simplicity and clarity, handle this at the IS_XXX_ULT() macro level
instead of two simultaneous subplatforms.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          | 9 ++++++---
 drivers/gpu/drm/i915/intel_device_info.c | 4 ----
 2 files changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index d1d21d433766..9c57af484ba8 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -562,19 +562,22 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_RPLU)
 #define IS_HASWELL_EARLY_SDV(i915) (IS_HASWELL(i915) && \
 				    (INTEL_DEVID(i915) & 0xFF00) == 0x0C00)
+/* BDW ULX machines are also considered ULT. */
 #define IS_BROADWELL_ULT(i915) \
-	IS_SUBPLATFORM(i915, INTEL_BROADWELL, INTEL_SUBPLATFORM_ULT)
+	(IS_SUBPLATFORM(i915, INTEL_BROADWELL, INTEL_SUBPLATFORM_ULT) || \
+	 IS_SUBPLATFORM(i915, INTEL_BROADWELL, INTEL_SUBPLATFORM_ULX))
 #define IS_BROADWELL_ULX(i915) \
 	IS_SUBPLATFORM(i915, INTEL_BROADWELL, INTEL_SUBPLATFORM_ULX)
 #define IS_BROADWELL_GT3(i915)	(IS_BROADWELL(i915) && \
 				 INTEL_INFO(i915)->gt == 3)
+/* HSW ULX machines are also considered ULT. */
 #define IS_HASWELL_ULT(i915) \
-	IS_SUBPLATFORM(i915, INTEL_HASWELL, INTEL_SUBPLATFORM_ULT)
+	(IS_SUBPLATFORM(i915, INTEL_HASWELL, INTEL_SUBPLATFORM_ULT) ||	\
+	 IS_SUBPLATFORM(i915, INTEL_HASWELL, INTEL_SUBPLATFORM_ULX))
 #define IS_HASWELL_GT3(i915)	(IS_HASWELL(i915) && \
 				 INTEL_INFO(i915)->gt == 3)
 #define IS_HASWELL_GT1(i915)	(IS_HASWELL(i915) && \
 				 INTEL_INFO(i915)->gt == 1)
-/* ULX machines are also considered ULT. */
 #define IS_HASWELL_ULX(i915) \
 	IS_SUBPLATFORM(i915, INTEL_HASWELL, INTEL_SUBPLATFORM_ULX)
 #define IS_SKYLAKE_ULT(i915) \
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 27b4a5882be3..a72efa919602 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -232,10 +232,6 @@ static void intel_device_info_subplatform_init(struct drm_i915_private *i915)
 	} else if (find_devid(devid, subplatform_ulx_ids,
 			      ARRAY_SIZE(subplatform_ulx_ids))) {
 		mask = BIT(INTEL_SUBPLATFORM_ULX);
-		if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
-			/* ULX machines are also considered ULT. */
-			mask |= BIT(INTEL_SUBPLATFORM_ULT);
-		}
 	} else if (find_devid(devid, subplatform_portf_ids,
 			      ARRAY_SIZE(subplatform_portf_ids))) {
 		mask = BIT(INTEL_SUBPLATFORM_PORTF);
-- 
2.39.2

