Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A498A00417
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 07:06:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C382210E7F7;
	Fri,  3 Jan 2025 06:06:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BmjHoC2P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5190310E288
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jan 2025 06:06:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735884396; x=1767420396;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=w/UTSPjUgNS/slHFAmumT8AMymBZkiUr13WoDW8BwL4=;
 b=BmjHoC2PDNYVwRbAA5Uq5zYbv1YAd/AwW7GNi/4YO/Wz52WTwmqeR9x3
 7EKsCxkiausjQsE+Q4srZSSb+YkdTICW57PyKWJ5NtFDGpQCoCUuNl/Xz
 7JNItslKy0kzi4kBV880gHKpV6wh16xYjX1NY0ZnZtTf7QwuAtiTiPzxN
 Cl+VAY1wmMF6Z9YdPFgug+2o0thB/3P9o+pFpyjUyyvddTEPPkdhGTkwG
 Rzs2ii669JQEPBqLr7+anBXJKw3Q+oWk/UkzijNGzITedPuPZI32i6Srz
 wLrWt0RkVE6fu5P7T+ArUrl+ShAKCVf+aZj23bYCGs7WlgbAnUWl5m09g w==;
X-CSE-ConnectionGUID: 1kpNO/2QR7Sb/cLJ1MYahA==
X-CSE-MsgGUID: 0DSJ3TNfSlCCWc3AwcLqsQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11303"; a="40056423"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="40056423"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2025 22:05:46 -0800
X-CSE-ConnectionGUID: YL0fWQizRBmRlXwh/apahg==
X-CSE-MsgGUID: CbGoPJvTQDuaJRDheV+SKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="101557314"
Received: from nitin-super-server.iind.intel.com ([10.145.169.70])
 by orviesa010.jf.intel.com with ESMTP; 02 Jan 2025 22:05:44 -0800
From: Nitin Gote <nitin.r.gote@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: andi.shyti@intel.com,
	Nitin Gote <nitin.r.gote@intel.com>
Subject: [PATCH v1 1/1] drm/i915/gt: Prefer IS_ENABLED() instead of defined()
 on config option
Date: Fri,  3 Jan 2025 11:56:51 +0530
Message-Id: <20250103062651.798249-2-nitin.r.gote@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250103062651.798249-1-nitin.r.gote@intel.com>
References: <20250103062651.798249-1-nitin.r.gote@intel.com>
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

Use IS_ENABLED() instead of defined() for checking whether a kconfig
option is enabled.

Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
index 222c95f62156..e8a04e476c57 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
@@ -18,7 +18,7 @@
 #define GUC_LOG_DEFAULT_CRASH_BUFFER_SIZE	SZ_2M
 #define GUC_LOG_DEFAULT_DEBUG_BUFFER_SIZE	SZ_16M
 #define GUC_LOG_DEFAULT_CAPTURE_BUFFER_SIZE	SZ_1M
-#elif defined(CONFIG_DRM_I915_DEBUG_GEM)
+#elif IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM)
 #define GUC_LOG_DEFAULT_CRASH_BUFFER_SIZE	SZ_1M
 #define GUC_LOG_DEFAULT_DEBUG_BUFFER_SIZE	SZ_2M
 #define GUC_LOG_DEFAULT_CAPTURE_BUFFER_SIZE	SZ_1M
-- 
2.25.1

