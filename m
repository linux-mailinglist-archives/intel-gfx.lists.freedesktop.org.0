Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1E0B89CB78
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 20:08:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DB571127DB;
	Mon,  8 Apr 2024 18:08:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FsRPb+kZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE15611256C;
 Mon,  8 Apr 2024 18:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712599734; x=1744135734;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8c1q5UkTt5s9w3/mz5cNUBo1nt0YNvhHOhM3lFRFsaE=;
 b=FsRPb+kZvAKMLnS6lg/tTxxIvoOJgGW3p2dBGWIobVcyT6Pz37393x6y
 fSqmWW+oap2eNvpGkKAYPGH7Y0gLU1wjaxEKmwE2XvvWH5Td3VdzILnQk
 3IUYDhGzaeFIe3E9gS904m0whzgkpbl4EQzaRAKdCk4X9bp5Xy6x1JmOX
 4Od5MMWZ9KYIiLN6dG1VIEZtypoQll6WNABIFKyoyFYrLrq7sdswme4EQ
 pGXfmlziF5Pe1Zv6TqKjZfIUp9C70pr8zdYuYsFfoGaXP1r+PLO+pTCzL
 dJOZrqIuyufTUSmdNUlg2maXINUag5B3cueuVBo6odGpx5bIsS2tmLNZ1 Q==;
X-CSE-ConnectionGUID: vyxHwQ2tSi2zi7fGsKFAyA==
X-CSE-MsgGUID: 2Lf5kn44SwCIaXtqbbMQdQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11038"; a="19038618"
X-IronPort-AV: E=Sophos;i="6.07,187,1708416000"; d="scan'208";a="19038618"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 11:08:54 -0700
X-CSE-ConnectionGUID: ez/yf6E3QVaFw8yLKpxLFw==
X-CSE-MsgGUID: up5M6FKgROug0+Eyn0ZGOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,187,1708416000"; d="scan'208";a="43145069"
Received: from bauinger-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.42.71])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 11:08:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	lucas.demarchi@intel.com
Subject: [PATCH 1/8] drm/i915/gt: drop display clock info from gt debugfs
Date: Mon,  8 Apr 2024 21:08:36 +0300
Message-Id: <50461f13ab09b162de25d3f3587890548f4db499.1712599670.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1712599670.git.jani.nikula@intel.com>
References: <cover.1712599670.git.jani.nikula@intel.com>
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

The same info is available in i915_cdclk_info.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
index 37e8d50c99ed..4fcba42cfe34 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
@@ -392,10 +392,6 @@ void intel_gt_pm_frequency_dump(struct intel_gt *gt, struct drm_printer *p)
 		drm_puts(p, "no P-state info available\n");
 	}
 
-	drm_printf(p, "Current CD clock frequency: %d kHz\n", i915->display.cdclk.hw.cdclk);
-	drm_printf(p, "Max CD clock frequency: %d kHz\n", i915->display.cdclk.max_cdclk_freq);
-	drm_printf(p, "Max pixel clock frequency: %d kHz\n", i915->max_dotclk_freq);
-
 	intel_runtime_pm_put(uncore->rpm, wakeref);
 }
 
-- 
2.39.2

